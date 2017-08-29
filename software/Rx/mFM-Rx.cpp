/*
 * mFM-Rx.cpp
 * 
 * Copyright 2017  Calvin A. Cherry (calvincherry@mail.com)
 *                 calcium3000.wordpress.com
 * 
 * UDP socket sections generously provided by binarytides.com
 * (http://www.binarytides.com/programming-udp-sockets-c-linux).
 * 
 * 
 * Compilation:
 *  1.  Download the RF24 library from TMRh20's GitHub repository
 *      (http://tmrh20.github.io).
 *  2.  Navigate to the RF24/examples_linux folder and copy this file
 *      into this directory.
 *  3.  Open the Makefile and append ' mFM-Rx' (no quotes) to the
 *      'PROGRAMS' line after 'transfer'.
 *  4.  Open Terminal in this directory and run 'make' (no quotes).  If
 *      all went well there will be no error in the console output and
 *      a new 'mFM-Rx' executable will appear.
 * 
 * Use:
 *   This program is designed for use with a Raspberry Pi model 3.  (No
 *   testing has been done on other models, but model 2 should also work.)
 *   An nRF24L01+ transceiver module serves to communicate with the motion
 *   sensor nodes, connected as follows:
 *   
 *   Raspberry Pi | nRF24L01+
 *   -------------+----------
 *   +3.3V (17)   | VDD
 *   GND (20)     | GND
 *   BCM 11 (23)  | SCK
 *   BCM 10 (19)  | MOSI
 *   BCM 9 (21)   | MISO
 *   BCM 25 (22)  | CE
 *   BCM 8 (24)   | CSN
 *   
 *   To run the program after compilation, either use the mFM-RxGUI or
 *   as follows via the command line:
 *   
 *   sudo ./mFM-Rx server port
 *   
 *   where 'server' is the server name (typically '127.0.0.1') and 'port'
 *   is the port number.
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
 */

#include <cstdlib>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <sstream>
#include <string>
#include <arpa/inet.h>
#include <sys/socket.h>
#include "RF24.h"


using namespace std;

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * FUNCTION DECLARATIONS
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
// Retrieve accelerometer and battery status data from Tx nodes
void get_values_from_node(uint8_t node_number);
// Print error and exit if UDP connection fails
void die(char *s);
// Populate UDP message array with Tx payload values
void build_udp_message(void);


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * CONSTANTS
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
// Node numbers and associated pipes for RF24
const uint8_t nodes[5] = {0, 1, 2, 3, 4};
const uint64_t pipes[5] = {0xc0dca1151ALL,
                           0xc0dca1152BLL,
                           0xc0dca1153CLL,
                           0xc0dca1154DLL,
                           0xc0dca1155ELL};


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * VARIABLES
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
// Byte to send to Tx nodes
uint8_t send_byte;

// Radio connection timeout
const uint8_t TIMEOUT_MS = 10;

// Payload structure received from Tx nodes
struct payload {
    char node;
    char value_x;
    char value_y;
    char value_z;
    char battery_status;
} tx_accelerometer_values;

// RF24 radio object (CE = BCM 22, CSN = BCM 24)
RF24 radio(RPI_V2_GPIO_P1_22, RPI_V2_GPIO_P1_24, BCM2835_SPI_SPEED_8MHZ);

// UDP message array
char message[18];


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * MAIN PROGRAM
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
int main(int argc, char *argv[])
{
    // UDP socket variables
    struct sockaddr_in si_other;
    int s;
    int slen = sizeof(si_other);

    // argv[2] = port number
    unsigned int port;
    sscanf(argv[2], "%u", &port);
    
    // Initialize nRF24L01+ radio
    radio.begin();

    radio.setDataRate(RF24_1MBPS);
    radio.setPALevel(RF24_PA_LOW);

    radio.openWritingPipe(pipes[0]);
    radio.openReadingPipe(1, pipes[1]);
    radio.openReadingPipe(2, pipes[2]);
    radio.openReadingPipe(3, pipes[3]);
    radio.openReadingPipe(4, pipes[4]);
    radio.startListening();

    // Open UDP socket
    if((s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
    {
        die((char*)"socket");
    }
  
    memset((char*)&si_other, 0, sizeof(si_other));
    si_other.sin_family = AF_INET;
    si_other.sin_port = htons(port);
    
    // argv[1] = IP address (typically "127.0.0.1")
    if(inet_aton(argv[1], &si_other.sin_addr) == 0)
    {
        fprintf(stderr, "inet_aton() failed\n");
        exit(1);
    }
    
    // Main loop
    while(1)
    {
        // Get value for node 0 (left hand) and send over UDP
        get_values_from_node(250 + nodes[1]);
        build_udp_message();
        if(sendto(s, message, strlen(message), 0, (struct sockaddr*)&si_other, slen) == -1)
        {
            die((char*)"sendto");
        }
        delay(5);

        // Get value for node 1 (right hand) and send over UDP
        get_values_from_node(250 + nodes[2]);
        build_udp_message();
        if(sendto(s, message, strlen(message), 0, (struct sockaddr*)&si_other, slen) == -1)
        {
            die((char*)"sendto");
        }
        delay(5);

        // Get value for node 2 (left foot) and send over UDP
        get_values_from_node(250 + nodes[3]);
        build_udp_message();
        if(sendto(s, message, strlen(message), 0, (struct sockaddr*)&si_other, slen) == -1)
        {
            die((char*)"sendto");
        }
        delay(5);

        // Get value for node 3 (right foot) and send over UDP
        get_values_from_node(250 + nodes[4]);
        build_udp_message();
        if(sendto(s, message, strlen(message), 0, (struct sockaddr*)&si_other, slen) == -1)
        {
            die((char*)"sendto");
        }
        delay(5);
    }
    
    return 0;
} // main()


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * FUNCTION DEFINITIONS
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
// Transmit node number and read payload if no timeout occurs
void get_values_from_node(uint8_t node_number)
{
    send_byte = node_number;

    radio.stopListening();
    radio.write(&send_byte, 1);
    radio.startListening();

    uint16_t start_wait = millis();
    bool timeout = false;

    while (!radio.available())
    {
        if (millis() - start_wait > TIMEOUT_MS)
        {
            timeout = true;
            break;
        }
    }

    if (!timeout)
    {
        radio.read(&tx_accelerometer_values, sizeof(tx_accelerometer_values));
    }
} // get_values_from_node()


// Print error message and end the program
void die(char *s)
{
    perror(s);
    exit(1);
} // die()


// Populate UDP message array with characters representing accelerometer
//   values in the format '[node number] [x] [y] [z] [battery status]\n'
void build_udp_message(void)
{
    message[0] = ((tx_accelerometer_values.node - 50) / 100) + '0';
    message[1] = ((tx_accelerometer_values.node - 200) / 10) + '0';
    message[2] = tx_accelerometer_values.node - 250 + '0';
    message[3] = ' ';
    message[4] = tx_accelerometer_values.value_x / 100 + '0';
    message[5] = tx_accelerometer_values.value_x / 10 + '0';
    message[6] = tx_accelerometer_values.value_x % 10 + '0';
    message[7] = ' ';
    message[8] = tx_accelerometer_values.value_y / 100 + '0';
    message[9] = tx_accelerometer_values.value_y / 10 + '0';
    message[10] = tx_accelerometer_values.value_y % 10 + '0';
    message[11] = ' ';
    message[12] = tx_accelerometer_values.value_z / 100 + '0';
    message[13] = tx_accelerometer_values.value_z / 10 + '0';
    message[14] = tx_accelerometer_values.value_z % 10 + '0';
    message[15] = ' ';
    message[16] = tx_accelerometer_values.battery_status + '0';
    message[17] = '\n';
} // build_udp_message()
