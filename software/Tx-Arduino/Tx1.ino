/*
 * Rx_GUI.cpp
 * 
 * Copyright 2017  Calvin A. Cherry (calvincherry@mail.com)
 * 
 * RF24 library courtesy of TMRh20.
 * http://tmrh20.github.io/RF24
 * 
 * LowPower library courtesy of RocketScream.
 * https://github.com/rocketscream/Low-Powerdfx
 * 
 * Secret Arduino voltmeter provided by Provide Your Own
 * https://provideyourown.com/2012/secret-arduino-voltmeter-measure-battery-voltage
 * 
 * Use:
 * 
 * 
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 */

#include <SPI.h>
#include <LowPower.h>
#include <RF24.h>


#define ACTING_GROUND_1     A0
#define ACTING_GROUND_2     6
#define ANALOG_X            A3
#define ANALOG_Y            A2
#define ANALOG_Z            A1
#define CE_PIN              9
#define CSN_PIN             8


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * CONSTANTS
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
const uint8_t THIS_NODE_NUMBER = 1;

const uint64_t PIPES[5] = {0xc0dca1150ALL,
                           0xc0dca1151BLL,
                           0xc0dca1152CLL,
                           0xc0dca1153DLL,
                           0xc0dca1154ELL};

const float ADC_CORRECTION_FACTOR = 2.968 / 2.85609;
const float V_BATTERY_LOW = 2.9;
const float V_BATTERY_SHUTDOWN = 2.8;


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * VARIABLES
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
boolean low_battery_shutdown = false;

byte measure_battery_counter = 0;
byte received_byte = 0;

struct payload {
  byte node_number = 250 + THIS_NODE_NUMBER;
  byte value_x = 0;
  byte value_y = 0;
  byte value_z = 0;
  byte battery_status = 1;
} tx_accelerometer_values;

RF24 radio(CE_PIN, CSN_PIN);


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * FUNCTIONS
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
 // Setup radio, acting grounds, and accelerometer inputs
void setup(void)
{
  radio.begin();
  
  radio.setDataRate(RF24_1MBPS);
  radio.setPALevel(RF24_PA_LOW);
  
  radio.openWritingPipe(PIPES[THIS_NODE_NUMBER]);
  radio.openReadingPipe(1, PIPES[0]);
  radio.startListening();
  
  pinMode(ACTING_GROUND_1, OUTPUT);
  pinMode(ACTING_GROUND_2, OUTPUT);
  digitalWrite(ACTING_GROUND_1, LOW);
  digitalWrite(ACTING_GROUND_2, LOW);
  
  pinMode(ANALOG_X, INPUT);
  pinMode(ANALOG_Y, INPUT);
  pinMode(ANALOG_Z, INPUT);
} // setup()


// Main loop
void loop(void)
{
  // If any data is received
  if (radio.available())
  {
    while(radio.available())
    {
      // Read node number from Rx
      radio.read(&received_byte, 1);
    }
    
    if (received_byte == tx_accelerometer_values.node_number)
    {
      // Read accelerometer values and transmit
      radio.stopListening();
      get_tx_accelerometer_values();
      radio.write(&tx_accelerometer_values, sizeof(tx_accelerometer_values));
      
      // Sleep for 15ms
      radio.powerDown();
      LowPower.idle(SLEEP_15MS, ADC_OFF, TIMER2_OFF, TIMER1_OFF,
                    TIMER0_OFF, SPI_OFF, USART0_OFF, TWI_OFF);
      radio.powerUp();
      radio.startListening();
    }
  }
  
  if (low_battery_shutdown)
  {
    power_down_mode();
  }
  
  // Measure battery voltage every 256 cycles (about every 5 seconds)
  if (measure_battery_counter == 0)
  {
    measure_battery_voltage();
  }
  measure_battery_counter += 1;
} // loop()


// Read accelerometer values from analog pins
void get_tx_accelerometer_values(void)
{
  tx_accelerometer_values.value_x = map(analogRead(ANALOG_X),0,1023,0,127);
  tx_accelerometer_values.value_y = map(analogRead(ANALOG_Y),0,1023,0,127);
  tx_accelerometer_values.value_z = map(analogRead(ANALOG_Z),0,1023,0,127);
} // get_tx_accelerometer_values()


// Measure battery voltage and set battery status variable
void measure_battery_voltage(void)
{
  float current_vdd = read_vdd() * ADC_CORRECTION_FACTOR;

  if(current_vdd >= V_BATTERY_LOW)
  {
    tx_accelerometer_values.battery_status = 1;
    low_battery_shutdown = false;
  }
  else if(current_vdd >= V_BATTERY_SHUTDOWN)
  {
    tx_accelerometer_values.battery_status = 0;
    low_battery_shutdown = false;
  }
  else
  {
    tx_accelerometer_values.battery_status = 0;
    low_battery_shutdown = true;
  }
} // measure_battery_voltage()


// Use 'secret voltmeter' to measure battery voltage
float read_vdd(void)
{
  ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  
  delay(3);
  ADCSRA |= _BV(ADSC);
  while (bit_is_set(ADCSRA, ADSC));
  
  uint8_t low_byte  = ADCL;
  uint8_t high_byte = ADCH;
  
  float result = (high_byte << 8) | low_byte;
  
  result = 1125.3 / result;
  return result;
} // read_vdd()


// Power down Tx and check battery voltage every 8 seconds until ample battery
//   voltage is restored
void power_down_mode(void)
{
  radio.powerDown();
  
  while(low_battery_shutdown)
  {
    LowPower.powerDown(SLEEP_8S, ADC_ON, BOD_OFF);
    measure_battery_voltage();
  }
  
  radio.powerUp();
  radio.startListening();
} // power_down_mode()