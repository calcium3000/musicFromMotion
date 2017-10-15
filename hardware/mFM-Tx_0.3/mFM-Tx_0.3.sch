EESchema Schematic File Version 2
LIBS:mFM_comp
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mFM-Tx_0.3-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "musicFromMotion Tx"
Date "2017-10-14"
Rev "0.3"
Comp ""
Comment1 "calcium3000.wordpress.com"
Comment2 "By Calvin A. Cherry >> calvincherry@gmail.com"
Comment3 "Released under the TAPR Open Hardware License >> http://tapr.org/ohl"
Comment4 ""
$EndDescr
$Comp
L Header_1x5 P2
U 1 1 59B8B94E
P 5950 4850
F 0 "P2" H 5850 5300 50  0000 L CNN
F 1 "Header_1x5" H 5850 5200 50  0000 L CNN
F 2 "mFM:ADXL335_header" H 5900 4850 50  0001 C CNN
F 3 "" H 5900 4850 50  0000 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
$Comp
L +VDD #PWR01
U 1 1 59B8BA77
P 6400 4500
F 0 "#PWR01" H 6400 4350 50  0001 C CNN
F 1 "+VDD" H 6400 4640 50  0000 C CNN
F 2 "" H 6400 4500 50  0000 C CNN
F 3 "" H 6400 4500 50  0000 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59B8BA98
P 6200 5150
F 0 "#PWR02" H 6200 4900 50  0001 C CNN
F 1 "GND" H 6200 5000 50  0000 C CNN
F 2 "" H 6200 5150 50  0000 C CNN
F 3 "" H 6200 5150 50  0000 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5050 6400 5050
Wire Wire Line
	6200 4650 6200 5150
Wire Wire Line
	6100 4650 6200 4650
Wire Wire Line
	6400 5050 6400 4500
Text GLabel 6550 4750 2    60   Output ~ 0
ACC_Z
Text GLabel 6550 4850 2    60   Output ~ 0
ACC_Y
Text GLabel 6550 4950 2    60   Output ~ 0
ACC_X
Wire Wire Line
	6550 4750 6100 4750
Wire Wire Line
	6100 4850 6550 4850
Wire Wire Line
	6550 4950 6100 4950
$Comp
L +VDD #PWR03
U 1 1 59B8C006
P 1900 4600
F 0 "#PWR03" H 1900 4450 50  0001 C CNN
F 1 "+VDD" H 1900 4740 50  0000 C CNN
F 2 "" H 1900 4600 50  0000 C CNN
F 3 "" H 1900 4600 50  0000 C CNN
	1    1900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4750 1900 4600
$Comp
L GND #PWR04
U 1 1 59B8C01C
P 1900 6000
F 0 "#PWR04" H 1900 5750 50  0001 C CNN
F 1 "GND" H 1900 5850 50  0000 C CNN
F 2 "" H 1900 6000 50  0000 C CNN
F 3 "" H 1900 6000 50  0000 C CNN
	1    1900 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5850 1900 6000
Text GLabel 2500 5150 2    60   Input ~ 0
NRF_CE
Text GLabel 2500 5300 2    60   Input ~ 0
NRF_~CS~
Text GLabel 1300 5150 0    60   Input ~ 0
SPI_SCK
Text GLabel 1300 5300 0    60   Input ~ 0
SPI_MOSI
Text GLabel 1300 5450 0    60   Output ~ 0
SPI_MISO
Text GLabel 2500 5450 2    60   Output ~ 0
NRF_~IRQ~
$Comp
L Header_1x2 P3
U 1 1 59B8C979
P 7900 1450
F 0 "P3" H 7800 1850 50  0000 L CNN
F 1 "Header_1x2" H 7800 1750 50  0000 L CNN
F 2 "mFM:B2B-PH-K-S" H 7850 1450 50  0001 C CNN
F 3 "" H 7850 1450 50  0000 C CNN
F 4 "150mAh lipo" H 7800 1650 50  0000 L CNN "Description"
	1    7900 1450
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR05
U 1 1 59B8CAD2
P 8350 1200
F 0 "#PWR05" H 8350 1050 50  0001 C CNN
F 1 "+BATT" H 8350 1340 50  0000 C CNN
F 2 "" H 8350 1200 50  0000 C CNN
F 3 "" H 8350 1200 50  0000 C CNN
	1    8350 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1400 8350 1400
Wire Wire Line
	8350 1400 8350 1200
$Comp
L GND #PWR06
U 1 1 59B8CBE1
P 8350 1550
F 0 "#PWR06" H 8350 1300 50  0001 C CNN
F 1 "GND" H 8350 1400 50  0000 C CNN
F 2 "" H 8350 1550 50  0000 C CNN
F 3 "" H 8350 1550 50  0000 C CNN
	1    8350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1500 8350 1500
Wire Wire Line
	8350 1500 8350 1550
$Comp
L R R2
U 1 1 59B8D6BC
P 5550 2100
F 0 "R2" H 5600 2150 50  0000 L CNN
F 1 "1k" H 5600 2050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 5480 2100 50  0001 C CNN
F 3 "" H 5550 2100 50  0000 C CNN
	1    5550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1850 5550 1950
$Comp
L LED D1
U 1 1 59B8D878
P 6150 2500
F 0 "D1" H 6250 2250 50  0000 R CNN
F 1 "Blue_LED" H 6250 2350 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 6150 2500 50  0001 C CNN
F 3 "" H 6150 2500 50  0000 C CNN
	1    6150 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2250 5550 2500
Text GLabel 6550 2500 2    60   Input ~ 0
LED_K
Text GLabel 3300 2450 2    60   Output ~ 0
LED_K
Text GLabel 3300 2650 2    60   Output ~ 0
NRF_CE
Text GLabel 3300 2250 2    60   Output ~ 0
NRF_~CS~
Text GLabel 3300 1950 2    60   Output ~ 0
SPI_SCK
Text GLabel 3300 2150 2    60   Output ~ 0
SPI_MOSI
Text GLabel 3300 2050 2    60   Input ~ 0
SPI_MISO
Text GLabel 3300 2550 2    60   Input ~ 0
NRF_~IRQ~
Text GLabel 3300 1650 2    60   Input ~ 0
ACC_X
Text GLabel 3300 1750 2    60   Input ~ 0
ACC_Y
Text GLabel 3300 1850 2    60   Input ~ 0
ACC_Z
Text GLabel 4250 7100 0    60   Output ~ 0
TINY_~RST~
Wire Wire Line
	4500 7100 4250 7100
Text GLabel 3300 2750 2    60   Input ~ 0
TINY_~RST~
$Comp
L SPDT SW1
U 1 1 59B9004C
P 9450 1450
F 0 "SW1" H 9300 1850 50  0000 L CNN
F 1 "SPDT" H 9300 1750 50  0000 L CNN
F 2 "mFM:CL-SB-12B-11T" H 9400 1600 50  0001 C CNN
F 3 "" H 9400 1600 50  0000 C CNN
	1    9450 1450
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR07
U 1 1 59B90551
P 8950 1250
F 0 "#PWR07" H 8950 1100 50  0001 C CNN
F 1 "+BATT" H 8950 1390 50  0000 C CNN
F 2 "" H 8950 1250 50  0000 C CNN
F 3 "" H 8950 1250 50  0000 C CNN
	1    8950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1450 8950 1450
Wire Wire Line
	8950 1450 8950 1250
Text GLabel 9950 1300 2    60   Output ~ 0
LDO_VBATT
Text GLabel 8150 4550 0    60   Input ~ 0
LDO_VBATT
Wire Wire Line
	8150 4550 9000 4550
Wire Wire Line
	8900 4700 9000 4700
Wire Wire Line
	8900 4700 8900 4550
Connection ~ 8900 4550
$Comp
L C C4
U 1 1 59B91510
P 8500 4850
F 0 "C4" H 8600 4900 50  0000 L CNN
F 1 "4.7uF" H 8600 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8538 4700 50  0001 C CNN
F 3 "" H 8500 4850 50  0000 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4700 8500 4550
Connection ~ 8500 4550
$Comp
L GND #PWR08
U 1 1 59B916C1
P 9450 5100
F 0 "#PWR08" H 9450 4850 50  0001 C CNN
F 1 "GND" H 9450 4950 50  0000 C CNN
F 2 "" H 9450 5100 50  0000 C CNN
F 3 "" H 9450 5100 50  0000 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4900 9450 5100
$Comp
L GND #PWR09
U 1 1 59B917B4
P 8500 5100
F 0 "#PWR09" H 8500 4850 50  0001 C CNN
F 1 "GND" H 8500 4950 50  0000 C CNN
F 2 "" H 8500 5100 50  0000 C CNN
F 3 "" H 8500 5100 50  0000 C CNN
	1    8500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5000 8500 5100
Wire Wire Line
	9750 1300 9950 1300
$Comp
L +VDD #PWR010
U 1 1 59B920C9
P 10050 4400
F 0 "#PWR010" H 10050 4250 50  0001 C CNN
F 1 "+VDD" H 10050 4540 50  0000 C CNN
F 2 "" H 10050 4400 50  0000 C CNN
F 3 "" H 10050 4400 50  0000 C CNN
	1    10050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4550 10050 4550
Wire Wire Line
	10050 4550 10050 4400
$Comp
L GND #PWR011
U 1 1 59B92260
P 10650 5000
F 0 "#PWR011" H 10650 4750 50  0001 C CNN
F 1 "GND" H 10650 4850 50  0000 C CNN
F 2 "" H 10650 5000 50  0000 C CNN
F 3 "" H 10650 5000 50  0000 C CNN
	1    10650 5000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59B92266
P 10650 4750
F 0 "C5" H 10750 4800 50  0000 L CNN
F 1 "4.7uF" H 10750 4700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10688 4600 50  0001 C CNN
F 3 "" H 10650 4750 50  0000 C CNN
	1    10650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 4900 10650 5000
Wire Wire Line
	10650 4500 10650 4600
$Comp
L +VDD #PWR012
U 1 1 59B92350
P 10650 4500
F 0 "#PWR012" H 10650 4350 50  0001 C CNN
F 1 "+VDD" H 10650 4640 50  0000 C CNN
F 2 "" H 10650 4500 50  0000 C CNN
F 3 "" H 10650 4500 50  0000 C CNN
	1    10650 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59B925B7
P 4900 2350
F 0 "#PWR013" H 4900 2100 50  0001 C CNN
F 1 "GND" H 4900 2200 50  0000 C CNN
F 2 "" H 4900 2350 50  0000 C CNN
F 3 "" H 4900 2350 50  0000 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59B925BD
P 4900 2100
F 0 "C3" H 5000 2150 50  0000 L CNN
F 1 "0.1uF" H 5000 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4938 1950 50  0001 C CNN
F 3 "" H 4900 2100 50  0000 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2250 4900 2350
Wire Wire Line
	4900 1850 4900 1950
$Comp
L +VDD #PWR014
U 1 1 59B925C5
P 4900 1850
F 0 "#PWR014" H 4900 1700 50  0001 C CNN
F 1 "+VDD" H 4900 1990 50  0000 C CNN
F 2 "" H 4900 1850 50  0000 C CNN
F 3 "" H 4900 1850 50  0000 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59B9261E
P 3350 5450
F 0 "#PWR015" H 3350 5200 50  0001 C CNN
F 1 "GND" H 3350 5300 50  0000 C CNN
F 2 "" H 3350 5450 50  0000 C CNN
F 3 "" H 3350 5450 50  0000 C CNN
	1    3350 5450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59B92624
P 3350 5200
F 0 "C1" H 3450 5250 50  0000 L CNN
F 1 "4.7uF" H 3450 5150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3388 5050 50  0001 C CNN
F 3 "" H 3350 5200 50  0000 C CNN
	1    3350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5350 3350 5450
Wire Wire Line
	3350 4950 3350 5050
$Comp
L +VDD #PWR016
U 1 1 59B9262C
P 3350 4950
F 0 "#PWR016" H 3350 4800 50  0001 C CNN
F 1 "+VDD" H 3350 5090 50  0000 C CNN
F 2 "" H 3350 4950 50  0000 C CNN
F 3 "" H 3350 4950 50  0000 C CNN
	1    3350 4950
	1    0    0    -1  
$EndComp
$Comp
L +VDD #PWR017
U 1 1 59B928D2
P 900 1400
F 0 "#PWR017" H 900 1250 50  0001 C CNN
F 1 "+VDD" H 900 1540 50  0000 C CNN
F 2 "" H 900 1400 50  0000 C CNN
F 3 "" H 900 1400 50  0000 C CNN
	1    900  1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1400 900  1550
Wire Wire Line
	900  1550 1050 1550
$Comp
L GND #PWR018
U 1 1 59B92B31
P 4200 2050
F 0 "#PWR018" H 4200 1800 50  0001 C CNN
F 1 "GND" H 4200 1900 50  0000 C CNN
F 2 "" H 4200 2050 50  0000 C CNN
F 3 "" H 4200 2050 50  0000 C CNN
	1    4200 2050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59B92B37
P 4200 1800
F 0 "C2" H 4300 1850 50  0000 L CNN
F 1 "0.1uF" H 4300 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4238 1650 50  0001 C CNN
F 3 "" H 4200 1800 50  0000 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1950 4200 2050
Wire Wire Line
	3150 1550 4200 1550
Wire Wire Line
	4200 1550 4200 1650
$Comp
L GND #PWR019
U 1 1 59B92D99
P 900 2900
F 0 "#PWR019" H 900 2650 50  0001 C CNN
F 1 "GND" H 900 2750 50  0000 C CNN
F 2 "" H 900 2900 50  0000 C CNN
F 3 "" H 900 2900 50  0000 C CNN
	1    900  2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2750 900  2900
Wire Wire Line
	1050 2750 900  2750
Wire Wire Line
	3300 2750 3150 2750
Wire Wire Line
	3300 1950 3150 1950
Wire Wire Line
	3150 2050 3300 2050
Wire Wire Line
	3300 2150 3150 2150
Wire Wire Line
	3300 1650 3150 1650
Wire Wire Line
	3150 1750 3300 1750
Wire Wire Line
	3300 1850 3150 1850
Wire Wire Line
	3150 2550 3300 2550
Wire Wire Line
	3300 2450 3150 2450
Wire Wire Line
	3150 2250 3300 2250
Wire Wire Line
	3150 2650 3300 2650
Text Notes 4750 6400 0    100  ~ 20
PROGRAMMING
Text Notes 1500 4250 0    100  ~ 20
RADIO TRANSCEIVER
Text Notes 8350 900  0    100  ~ 20
LIPO BATTERY
Text Notes 1650 950  0    100  ~ 20
MICROCONTROLLER
Text Notes 5650 4150 0    100  ~ 20
ACCELEROMETER
Text Notes 8700 4050 0    100  ~ 20
VOLTAGE REGULATOR
Text Label 3200 1550 0    60   ~ 0
TINY_AREF
$Comp
L +VDD #PWR020
U 1 1 59BB4CD6
P 5550 1850
F 0 "#PWR020" H 5550 1700 50  0001 C CNN
F 1 "+VDD" H 5550 1990 50  0000 C CNN
F 2 "" H 5550 1850 50  0000 C CNN
F 3 "" H 5550 1850 50  0000 C CNN
	1    5550 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2500 5950 2500
Wire Wire Line
	6350 2500 6550 2500
$Comp
L Header_1x2 P4
U 1 1 59BB53CE
P 7900 2500
F 0 "P4" H 7800 2900 50  0000 L CNN
F 1 "Header_1x2" H 7800 2800 50  0000 L CNN
F 2 "mFM:B2B-PH-K-S" H 7850 2500 50  0001 C CNN
F 3 "" H 7850 2500 50  0000 C CNN
F 4 "Charger" H 7800 2700 50  0000 L CNN "Description"
	1    7900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2450 8350 2450
$Comp
L GND #PWR021
U 1 1 59BB53DC
P 8350 2600
F 0 "#PWR021" H 8350 2350 50  0001 C CNN
F 1 "GND" H 8350 2450 50  0000 C CNN
F 2 "" H 8350 2600 50  0000 C CNN
F 3 "" H 8350 2600 50  0000 C CNN
	1    8350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2550 8350 2550
Wire Wire Line
	8350 2550 8350 2600
Text GLabel 9950 1600 2    60   Input ~ 0
CHRG_VBATT
Wire Wire Line
	9950 1600 9750 1600
Text GLabel 8350 2450 2    60   Output ~ 0
CHRG_VBATT
Text Label 5600 2500 0    60   ~ 0
LED_A
$Comp
L Header_2x3 P1
U 1 1 59BD9971
P 4750 7000
F 0 "P1" H 4650 7350 50  0000 L CNN
F 1 "Header_2x3" H 4650 7250 50  0000 L CNN
F 2 "mFM:Socket_Strip_Straight_2x03_Pitch2.54mm_SMD" H 4750 7000 50  0001 C CNN
F 3 "" H 4750 5800 50  0000 C CNN
	1    4750 7000
	1    0    0    -1  
$EndComp
Text GLabel 4250 6900 0    60   Output ~ 0
SPI_MISO
Wire Wire Line
	4250 6900 4500 6900
Text GLabel 4250 7000 0    60   Output ~ 0
SPI_SCK
Wire Wire Line
	4250 7000 4500 7000
Wire Wire Line
	5000 7100 5250 7100
Wire Wire Line
	5250 6900 5000 6900
Text GLabel 5250 7000 2    60   Output ~ 0
SPI_MOSI
Wire Wire Line
	5250 7000 5000 7000
$Comp
L +VDD #PWR022
U 1 1 59BDA0F0
P 5250 6750
F 0 "#PWR022" H 5250 6600 50  0001 C CNN
F 1 "+VDD" H 5250 6890 50  0000 C CNN
F 2 "" H 5250 6750 50  0000 C CNN
F 3 "" H 5250 6750 50  0000 C CNN
	1    5250 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6900 5250 6750
$Comp
L GND #PWR023
U 1 1 59BDA36C
P 5250 7250
F 0 "#PWR023" H 5250 7000 50  0001 C CNN
F 1 "GND" H 5250 7100 50  0000 C CNN
F 2 "" H 5250 7250 50  0000 C CNN
F 3 "" H 5250 7250 50  0000 C CNN
	1    5250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 7100 5250 7250
$Comp
L MIC5205-3.3 U3
U 1 1 59CEF045
P 9450 4600
F 0 "U3" H 9150 4900 50  0000 L CNN
F 1 "MIC5205-3.0" H 9150 4800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 9450 4700 50  0001 C CIN
F 3 "" H 9450 4600 50  0000 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
NoConn ~ 9900 4700
$Comp
L ATtiny441-SSU U2
U 1 1 59E22A74
P 2100 2150
F 0 "U2" H 1200 3050 50  0000 L CNN
F 1 "ATtiny441-SSU" H 1200 2950 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2100 1950 50  0001 C CIN
F 3 "" H 2100 2150 50  0000 C CNN
	1    2100 2150
	1    0    0    -1  
$EndComp
$Comp
L nRF24L01+_module U1
U 1 1 59E24432
P 1900 5300
F 0 "U1" H 2000 5900 60  0000 L CNN
F 1 "nRF24L01+_module" H 2000 5800 60  0000 L CNN
F 2 "mFM:nRF24L01p_mini_header" H 1900 5300 60  0001 C CNN
F 3 "" H 1900 5300 60  0001 C CNN
	1    1900 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5450 1450 5450
Wire Wire Line
	1450 5300 1300 5300
Wire Wire Line
	1300 5150 1450 5150
Wire Wire Line
	2350 5150 2500 5150
Wire Wire Line
	2500 5300 2350 5300
Wire Wire Line
	2350 5450 2500 5450
$Comp
L R R3
U 1 1 59E2ECD5
P 6600 7000
F 0 "R3" H 6650 7050 50  0000 L CNN
F 1 "10k" H 6650 6950 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 6530 7000 50  0001 C CNN
F 3 "" H 6600 7000 50  0000 C CNN
	1    6600 7000
	1    0    0    -1  
$EndComp
Text GLabel 6450 7300 0    60   Input ~ 0
TINY_~RST~
Wire Wire Line
	6600 7150 6600 7300
Wire Wire Line
	6600 7300 6450 7300
$Comp
L +VDD #PWR024
U 1 1 59E2EF40
P 6600 6750
F 0 "#PWR024" H 6600 6600 50  0001 C CNN
F 1 "+VDD" H 6600 6890 50  0000 C CNN
F 2 "" H 6600 6750 50  0000 C CNN
F 3 "" H 6600 6750 50  0000 C CNN
	1    6600 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 6850 6600 6750
$Comp
L R R1
U 1 1 59E2F1EB
P 2600 6550
F 0 "R1" H 2650 6600 50  0000 L CNN
F 1 "10k" H 2650 6500 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2530 6550 50  0001 C CNN
F 3 "" H 2600 6550 50  0000 C CNN
	1    2600 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6700 2600 6850
Wire Wire Line
	2600 6850 2450 6850
$Comp
L +VDD #PWR025
U 1 1 59E2F1F4
P 2600 6300
F 0 "#PWR025" H 2600 6150 50  0001 C CNN
F 1 "+VDD" H 2600 6440 50  0000 C CNN
F 2 "" H 2600 6300 50  0000 C CNN
F 3 "" H 2600 6300 50  0000 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6400 2600 6300
Text GLabel 2450 6850 0    60   Input ~ 0
NRF_~CS~
$EndSCHEMATC
