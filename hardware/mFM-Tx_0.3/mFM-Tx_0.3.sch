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
EELAYER 25 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "musicFromMotion Tx"
Date "2018-04-16"
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
P 5700 7950
F 0 "P2" H 5600 8400 50  0000 L CNN
F 1 "Header_1x5" H 5600 8300 50  0000 L CNN
F 2 "mFM:ADXL335_header" H 5650 7950 50  0001 C CNN
F 3 "" H 5650 7950 50  0000 C CNN
	1    5700 7950
	1    0    0    -1  
$EndComp
$Comp
L +VDD #PWR01
U 1 1 59B8BA77
P 6150 7600
F 0 "#PWR01" H 6150 7450 50  0001 C CNN
F 1 "+VDD" H 6150 7740 50  0000 C CNN
F 2 "" H 6150 7600 50  0000 C CNN
F 3 "" H 6150 7600 50  0000 C CNN
	1    6150 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59B8BA98
P 5950 8250
F 0 "#PWR02" H 5950 8000 50  0001 C CNN
F 1 "GND" H 5950 8100 50  0000 C CNN
F 2 "" H 5950 8250 50  0000 C CNN
F 3 "" H 5950 8250 50  0000 C CNN
	1    5950 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 8150 6150 8150
Wire Wire Line
	5950 7750 5950 8250
Wire Wire Line
	5850 7750 5950 7750
Wire Wire Line
	6150 8150 6150 7600
Text GLabel 6300 7850 2    60   Output ~ 0
ACC_Z
Text GLabel 6300 7950 2    60   Output ~ 0
ACC_Y
Text GLabel 6300 8050 2    60   Output ~ 0
ACC_X
Wire Wire Line
	6300 7850 5850 7850
Wire Wire Line
	5850 7950 6300 7950
Wire Wire Line
	6300 8050 5850 8050
$Comp
L +VDD #PWR03
U 1 1 59B8C006
P 2100 7600
F 0 "#PWR03" H 2100 7450 50  0001 C CNN
F 1 "+VDD" H 2100 7740 50  0000 C CNN
F 2 "" H 2100 7600 50  0000 C CNN
F 3 "" H 2100 7600 50  0000 C CNN
	1    2100 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7750 2100 7600
$Comp
L GND #PWR04
U 1 1 59B8C01C
P 2100 9000
F 0 "#PWR04" H 2100 8750 50  0001 C CNN
F 1 "GND" H 2100 8850 50  0000 C CNN
F 2 "" H 2100 9000 50  0000 C CNN
F 3 "" H 2100 9000 50  0000 C CNN
	1    2100 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 8850 2100 9000
Text GLabel 2700 8150 2    60   Input ~ 0
NRF_CE
Text GLabel 2700 8300 2    60   Input ~ 0
NRF_~CS~
Text GLabel 1500 8150 0    60   Input ~ 0
SPI_SCK
Text GLabel 1500 8300 0    60   Input ~ 0
SPI_MOSI
Text GLabel 1500 8450 0    60   Output ~ 0
SPI_MISO
Text GLabel 2700 8450 2    60   Output ~ 0
NRF_~IRQ~
$Comp
L Header_1x2 P3
U 1 1 59B8C979
P 7600 1850
F 0 "P3" H 7500 2250 50  0000 L CNN
F 1 "Header_1x2" H 7500 2150 50  0000 L CNN
F 2 "mFM:B2B-PH-K-S" H 7550 1850 50  0001 C CNN
F 3 "" H 7550 1850 50  0000 C CNN
F 4 "150mAh lipo" H 7500 2050 50  0000 L CNN "Description"
	1    7600 1850
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR05
U 1 1 59B8CAD2
P 8050 1600
F 0 "#PWR05" H 8050 1450 50  0001 C CNN
F 1 "+BATT" H 8050 1740 50  0000 C CNN
F 2 "" H 8050 1600 50  0000 C CNN
F 3 "" H 8050 1600 50  0000 C CNN
	1    8050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1800 8050 1800
Wire Wire Line
	8050 1800 8050 1600
$Comp
L GND #PWR06
U 1 1 59B8CBE1
P 8050 1950
F 0 "#PWR06" H 8050 1700 50  0001 C CNN
F 1 "GND" H 8050 1800 50  0000 C CNN
F 2 "" H 8050 1950 50  0000 C CNN
F 3 "" H 8050 1950 50  0000 C CNN
	1    8050 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1900 8050 1900
Wire Wire Line
	8050 1900 8050 1950
$Comp
L R R2
U 1 1 59B8D6BC
P 4500 3300
F 0 "R2" H 4600 3400 50  0000 L CNN
F 1 "1k" H 4600 3300 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4430 3300 50  0001 C CNN
F 3 "" H 4500 3300 50  0000 C CNN
F 4 "RC0603FR-071KL" H 4600 3200 50  0000 L CNN "Part number"
	1    4500 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3050 4500 3150
$Comp
L LED D1
U 1 1 59B8D878
P 5100 3900
F 0 "D1" H 5250 3550 50  0000 R CNN
F 1 "LED_Blue" H 5250 3650 50  0000 R CNN
F 2 "LEDs:LED_0603_HandSoldering" H 5100 3900 50  0001 C CNN
F 3 "" H 5100 3900 50  0000 C CNN
F 4 "150060BS75000" H 5250 3750 50  0000 R CNN "Part number"
	1    5100 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 3450 4500 3900
Text GLabel 5500 3900 2    60   Input ~ 0
LED_K
Text GLabel 3600 2700 2    60   Output ~ 0
LED_K
Text GLabel 3600 2900 2    60   Output ~ 0
NRF_CE
Text GLabel 3600 2500 2    60   Output ~ 0
NRF_~CS~
Text GLabel 3600 2200 2    60   Output ~ 0
SPI_SCK
Text GLabel 3600 2400 2    60   Output ~ 0
SPI_MOSI
Text GLabel 3600 2300 2    60   Input ~ 0
SPI_MISO
Text GLabel 3600 2800 2    60   Input ~ 0
NRF_~IRQ~
Text GLabel 3600 1900 2    60   Input ~ 0
ACC_X
Text GLabel 3600 2000 2    60   Input ~ 0
ACC_Y
Text GLabel 3600 2100 2    60   Input ~ 0
ACC_Z
Text GLabel 1450 6000 0    60   Output ~ 0
TINY_~RST~
Wire Wire Line
	1700 6000 1450 6000
Text GLabel 3600 3000 2    60   Input ~ 0
TINY_~RST~
$Comp
L SPDT SW1
U 1 1 59B9004C
P 9150 2000
F 0 "SW1" H 8900 2550 50  0000 L CNN
F 1 "SPDT" H 8900 2450 50  0000 L CNN
F 2 "mFM:CL-SB-12B-11T" H 9100 2150 50  0001 C CNN
F 3 "" H 9100 2150 50  0000 C CNN
F 4 "CL-SB-12B-11T" H 8900 2350 50  0000 L CNN "Part number"
	1    9150 2000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR07
U 1 1 59B90551
P 8650 1600
F 0 "#PWR07" H 8650 1450 50  0001 C CNN
F 1 "+BATT" H 8650 1740 50  0000 C CNN
F 2 "" H 8650 1600 50  0000 C CNN
F 3 "" H 8650 1600 50  0000 C CNN
	1    8650 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2000 8650 2000
Wire Wire Line
	8650 2000 8650 1600
Text GLabel 9650 1850 2    60   Output ~ 0
LDO_VBATT
Text GLabel 7950 4650 0    60   Input ~ 0
LDO_VBATT
Wire Wire Line
	7950 4650 8300 4650
Wire Wire Line
	8300 4650 9200 4650
Wire Wire Line
	9200 4650 9300 4650
Wire Wire Line
	9200 4800 9300 4800
Wire Wire Line
	9200 4800 9200 4650
Connection ~ 9200 4650
$Comp
L C C4
U 1 1 59B91510
P 8300 4950
F 0 "C4" H 8450 5050 50  0000 L CNN
F 1 "4.7uF" H 8450 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8338 4800 50  0001 C CNN
F 3 "" H 8300 4950 50  0000 C CNN
F 4 "CL21A475KOFNNNG" H 8450 4850 50  0000 L CNN "Part number"
	1    8300 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4800 8300 4650
Connection ~ 8300 4650
$Comp
L GND #PWR08
U 1 1 59B916C1
P 9750 5200
F 0 "#PWR08" H 9750 4950 50  0001 C CNN
F 1 "GND" H 9750 5050 50  0000 C CNN
F 2 "" H 9750 5200 50  0000 C CNN
F 3 "" H 9750 5200 50  0000 C CNN
	1    9750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5000 9750 5200
$Comp
L GND #PWR09
U 1 1 59B917B4
P 8300 5200
F 0 "#PWR09" H 8300 4950 50  0001 C CNN
F 1 "GND" H 8300 5050 50  0000 C CNN
F 2 "" H 8300 5200 50  0000 C CNN
F 3 "" H 8300 5200 50  0000 C CNN
	1    8300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5100 8300 5200
Wire Wire Line
	9450 1850 9650 1850
$Comp
L +VDD #PWR010
U 1 1 59B920C9
P 10350 4500
F 0 "#PWR010" H 10350 4350 50  0001 C CNN
F 1 "+VDD" H 10350 4640 50  0000 C CNN
F 2 "" H 10350 4500 50  0000 C CNN
F 3 "" H 10350 4500 50  0000 C CNN
	1    10350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4650 10350 4650
Wire Wire Line
	10350 4650 10350 4500
$Comp
L GND #PWR011
U 1 1 59B92260
P 10500 5650
F 0 "#PWR011" H 10500 5400 50  0001 C CNN
F 1 "GND" H 10500 5500 50  0000 C CNN
F 2 "" H 10500 5650 50  0000 C CNN
F 3 "" H 10500 5650 50  0000 C CNN
	1    10500 5650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 59B92266
P 10500 5400
F 0 "C5" H 10650 5500 50  0000 L CNN
F 1 "4.7uF" H 10650 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10538 5250 50  0001 C CNN
F 3 "" H 10500 5400 50  0000 C CNN
F 4 "CL21A475KOFNNNG" H 10650 5300 50  0000 L CNN "Part number"
	1    10500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5550 10500 5650
Wire Wire Line
	10500 5150 10500 5250
$Comp
L +VDD #PWR012
U 1 1 59B92350
P 10500 5150
F 0 "#PWR012" H 10500 5000 50  0001 C CNN
F 1 "+VDD" H 10500 5290 50  0000 C CNN
F 2 "" H 10500 5150 50  0000 C CNN
F 3 "" H 10500 5150 50  0000 C CNN
	1    10500 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 59B925B7
P 3000 4100
F 0 "#PWR013" H 3000 3850 50  0001 C CNN
F 1 "GND" H 3000 3950 50  0000 C CNN
F 2 "" H 3000 4100 50  0000 C CNN
F 3 "" H 3000 4100 50  0000 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 59B925BD
P 3000 3850
F 0 "C3" H 3150 3950 50  0000 L CNN
F 1 "0.1uF" H 3150 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3038 3700 50  0001 C CNN
F 3 "" H 3000 3850 50  0000 C CNN
F 4 "CL10B104KA8NNNC" H 3150 3750 50  0000 L CNN "Part number"
	1    3000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4000 3000 4100
Wire Wire Line
	3000 3600 3000 3700
$Comp
L +VDD #PWR014
U 1 1 59B925C5
P 3000 3600
F 0 "#PWR014" H 3000 3450 50  0001 C CNN
F 1 "+VDD" H 3000 3740 50  0000 C CNN
F 2 "" H 3000 3600 50  0000 C CNN
F 3 "" H 3000 3600 50  0000 C CNN
	1    3000 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 59B9261E
P 3550 8450
F 0 "#PWR015" H 3550 8200 50  0001 C CNN
F 1 "GND" H 3550 8300 50  0000 C CNN
F 2 "" H 3550 8450 50  0000 C CNN
F 3 "" H 3550 8450 50  0000 C CNN
	1    3550 8450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59B92624
P 3550 8200
F 0 "C1" H 3700 8300 50  0000 L CNN
F 1 "4.7uF" H 3700 8200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3588 8050 50  0001 C CNN
F 3 "" H 3550 8200 50  0000 C CNN
F 4 "CL21A475KOFNNNG" H 3700 8100 50  0000 L CNN "Part number"
	1    3550 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 8350 3550 8450
Wire Wire Line
	3550 7950 3550 8050
$Comp
L +VDD #PWR016
U 1 1 59B9262C
P 3550 7950
F 0 "#PWR016" H 3550 7800 50  0001 C CNN
F 1 "+VDD" H 3550 8090 50  0000 C CNN
F 2 "" H 3550 7950 50  0000 C CNN
F 3 "" H 3550 7950 50  0000 C CNN
	1    3550 7950
	1    0    0    -1  
$EndComp
$Comp
L +VDD #PWR017
U 1 1 59B928D2
P 1200 1650
F 0 "#PWR017" H 1200 1500 50  0001 C CNN
F 1 "+VDD" H 1200 1790 50  0000 C CNN
F 2 "" H 1200 1650 50  0000 C CNN
F 3 "" H 1200 1650 50  0000 C CNN
	1    1200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1650 1200 1800
Wire Wire Line
	1200 1800 1350 1800
$Comp
L GND #PWR018
U 1 1 59B92B31
P 4500 2300
F 0 "#PWR018" H 4500 2050 50  0001 C CNN
F 1 "GND" H 4500 2150 50  0000 C CNN
F 2 "" H 4500 2300 50  0000 C CNN
F 3 "" H 4500 2300 50  0000 C CNN
	1    4500 2300
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59B92B37
P 4500 2050
F 0 "C2" H 4650 2150 50  0000 L CNN
F 1 "0.1uF" H 4650 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4538 1900 50  0001 C CNN
F 3 "" H 4500 2050 50  0000 C CNN
F 4 "CL10B104KA8NNNC" H 4650 1950 50  0000 L CNN "Part number"
	1    4500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2200 4500 2300
Wire Wire Line
	3450 1800 4500 1800
Wire Wire Line
	4500 1800 4500 1900
$Comp
L GND #PWR019
U 1 1 59B92D99
P 1200 3150
F 0 "#PWR019" H 1200 2900 50  0001 C CNN
F 1 "GND" H 1200 3000 50  0000 C CNN
F 2 "" H 1200 3150 50  0000 C CNN
F 3 "" H 1200 3150 50  0000 C CNN
	1    1200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3000 1200 3150
Wire Wire Line
	1350 3000 1200 3000
Wire Wire Line
	3600 3000 3450 3000
Wire Wire Line
	3600 2200 3450 2200
Wire Wire Line
	3450 2300 3600 2300
Wire Wire Line
	3600 2400 3450 2400
Wire Wire Line
	3600 1900 3450 1900
Wire Wire Line
	3450 2000 3600 2000
Wire Wire Line
	3600 2100 3450 2100
Wire Wire Line
	3450 2800 3600 2800
Wire Wire Line
	3600 2700 3450 2700
Wire Wire Line
	3450 2500 3600 2500
Wire Wire Line
	3450 2900 3600 2900
Text Notes 900  5250 0    100  ~ 20
PROGRAMMING
Text Notes 900  7250 0    100  ~ 20
RADIO TRANSCEIVER
Text Notes 7300 1150 0    100  ~ 20
BATTERY
Text Notes 900  1150 0    100  ~ 20
MICROCONTROLLER
Text Notes 5400 7250 0    100  ~ 20
ACCELEROMETER
Text Notes 7300 4050 0    100  ~ 20
VOLTAGE REGULATOR
Text Label 3500 1800 0    60   ~ 0
TINY_AREF
$Comp
L +VDD #PWR020
U 1 1 59BB4CD6
P 4500 3050
F 0 "#PWR020" H 4500 2900 50  0001 C CNN
F 1 "+VDD" H 4500 3190 50  0000 C CNN
F 2 "" H 4500 3050 50  0000 C CNN
F 3 "" H 4500 3050 50  0000 C CNN
	1    4500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3900 4900 3900
Wire Wire Line
	5300 3900 5500 3900
$Comp
L Header_1x2 P4
U 1 1 59BB53CE
P 7600 2900
F 0 "P4" H 7500 3300 50  0000 L CNN
F 1 "Header_1x2" H 7500 3200 50  0000 L CNN
F 2 "mFM:B2B-PH-K-S" H 7550 2900 50  0001 C CNN
F 3 "" H 7550 2900 50  0000 C CNN
F 4 "Charger" H 7500 3100 50  0000 L CNN "Description"
	1    7600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2850 8050 2850
$Comp
L GND #PWR021
U 1 1 59BB53DC
P 8050 3000
F 0 "#PWR021" H 8050 2750 50  0001 C CNN
F 1 "GND" H 8050 2850 50  0000 C CNN
F 2 "" H 8050 3000 50  0000 C CNN
F 3 "" H 8050 3000 50  0000 C CNN
	1    8050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2950 8050 2950
Wire Wire Line
	8050 2950 8050 3000
Text GLabel 9650 2150 2    60   Input ~ 0
CHRG_VBATT
Wire Wire Line
	9650 2150 9450 2150
Text GLabel 8050 2850 2    60   Output ~ 0
CHRG_VBATT
Text Label 4550 3900 0    60   ~ 0
LED_A
$Comp
L Header_2x3 P1
U 1 1 59BD9971
P 1950 5900
F 0 "P1" H 1850 6250 50  0000 L CNN
F 1 "Header_2x3" H 1850 6150 50  0000 L CNN
F 2 "mFM:Socket_Strip_Straight_2x03_Pitch2.54mm_SMD" H 1950 5900 50  0001 C CNN
F 3 "" H 1950 4700 50  0000 C CNN
	1    1950 5900
	1    0    0    -1  
$EndComp
Text GLabel 1450 5800 0    60   Output ~ 0
SPI_MISO
Wire Wire Line
	1450 5800 1700 5800
Text GLabel 1450 5900 0    60   Output ~ 0
SPI_SCK
Wire Wire Line
	1450 5900 1700 5900
Wire Wire Line
	2200 6000 2450 6000
Wire Wire Line
	2450 5800 2200 5800
Text GLabel 2450 5900 2    60   Output ~ 0
SPI_MOSI
Wire Wire Line
	2450 5900 2200 5900
$Comp
L +VDD #PWR022
U 1 1 59BDA0F0
P 2450 5650
F 0 "#PWR022" H 2450 5500 50  0001 C CNN
F 1 "+VDD" H 2450 5790 50  0000 C CNN
F 2 "" H 2450 5650 50  0000 C CNN
F 3 "" H 2450 5650 50  0000 C CNN
	1    2450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5800 2450 5650
$Comp
L GND #PWR023
U 1 1 59BDA36C
P 2450 6150
F 0 "#PWR023" H 2450 5900 50  0001 C CNN
F 1 "GND" H 2450 6000 50  0000 C CNN
F 2 "" H 2450 6150 50  0000 C CNN
F 3 "" H 2450 6150 50  0000 C CNN
	1    2450 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6000 2450 6150
$Comp
L MIC5205-3.3 U3
U 1 1 59CEF045
P 9750 4700
F 0 "U3" H 9450 5150 50  0000 L CNN
F 1 "LDO_3.0V" H 9450 5050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 9750 4800 50  0001 C CIN
F 3 "" H 9750 4700 50  0000 C CNN
F 4 "MIC5205-3.0" H 9450 4950 50  0000 L CNN "Part number"
	1    9750 4700
	1    0    0    -1  
$EndComp
NoConn ~ 10200 4800
$Comp
L ATtiny441-SSU U2
U 1 1 59E22A74
P 2400 2400
F 0 "U2" H 1500 3400 50  0000 L CNN
F 1 "Microcontroller, 8-bit" H 1500 3300 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2400 2200 50  0001 C CIN
F 3 "" H 2400 2400 50  0000 C CNN
F 4 "ATtiny441-SSU" H 1500 3200 50  0000 L CNN "Part number"
	1    2400 2400
	1    0    0    -1  
$EndComp
$Comp
L nRF24L01+_module U1
U 1 1 59E24432
P 2100 8300
F 0 "U1" H 2200 8900 60  0000 L CNN
F 1 "nRF24L01+_module" H 2200 8800 60  0000 L CNN
F 2 "mFM:nRF24L01p_mini_header" H 2100 8300 60  0001 C CNN
F 3 "" H 2100 8300 60  0001 C CNN
	1    2100 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 8450 1650 8450
Wire Wire Line
	1650 8300 1500 8300
Wire Wire Line
	1500 8150 1650 8150
Wire Wire Line
	2550 8150 2700 8150
Wire Wire Line
	2700 8300 2550 8300
Wire Wire Line
	2550 8450 2700 8450
$Comp
L R R3
U 1 1 59E2ECD5
P 1850 3800
F 0 "R3" H 1950 3900 50  0000 L CNN
F 1 "10k" H 1950 3800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1780 3800 50  0001 C CNN
F 3 "" H 1850 3800 50  0000 C CNN
F 4 "RC0603FR-0710KL" H 1950 3700 50  0000 L CNN "Part number"
	1    1850 3800
	1    0    0    -1  
$EndComp
Text GLabel 1700 4100 0    60   Input ~ 0
TINY_~RST~
Wire Wire Line
	1850 3950 1850 4100
Wire Wire Line
	1850 4100 1700 4100
$Comp
L +VDD #PWR024
U 1 1 59E2EF40
P 1850 3550
F 0 "#PWR024" H 1850 3400 50  0001 C CNN
F 1 "+VDD" H 1850 3690 50  0000 C CNN
F 2 "" H 1850 3550 50  0000 C CNN
F 3 "" H 1850 3550 50  0000 C CNN
	1    1850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3650 1850 3550
$Comp
L R R1
U 1 1 59E2F1EB
P 3100 9300
F 0 "R1" H 3200 9400 50  0000 L CNN
F 1 "10k" H 3200 9300 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3030 9300 50  0001 C CNN
F 3 "" H 3100 9300 50  0000 C CNN
F 4 "RC0603FR-0710KL" H 3200 9200 50  0000 L CNN "Part number"
	1    3100 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 9450 3100 9600
Wire Wire Line
	3100 9600 2950 9600
$Comp
L +VDD #PWR025
U 1 1 59E2F1F4
P 3100 9050
F 0 "#PWR025" H 3100 8900 50  0001 C CNN
F 1 "+VDD" H 3100 9190 50  0000 C CNN
F 2 "" H 3100 9050 50  0000 C CNN
F 3 "" H 3100 9050 50  0000 C CNN
	1    3100 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 9150 3100 9050
Text GLabel 2950 9600 0    60   Input ~ 0
NRF_~CS~
Wire Notes Line
	7300 4100 11500 4100
Wire Notes Line
	11500 4100 11500 6000
Wire Notes Line
	11500 6000 7300 6000
Wire Notes Line
	7300 6000 7300 4100
Wire Notes Line
	5400 7300 5400 8600
Wire Notes Line
	5400 8600 6800 8600
Wire Notes Line
	6800 8600 6800 7300
Wire Notes Line
	6800 7300 5400 7300
Wire Notes Line
	900  5300 900  6500
Wire Notes Line
	900  6500 3100 6500
Wire Notes Line
	3100 6500 3100 5300
Wire Notes Line
	3100 5300 900  5300
Wire Notes Line
	900  7300 900  9800
Wire Notes Line
	900  9800 4600 9800
Wire Notes Line
	4600 9800 4600 7300
Wire Notes Line
	4600 7300 900  7300
Wire Notes Line
	7300 1200 7300 3300
Wire Notes Line
	7300 3300 10400 3300
Wire Notes Line
	10400 3300 10400 1200
Wire Notes Line
	10400 1200 7300 1200
Wire Notes Line
	900  1200 6000 1200
Wire Notes Line
	6000 1200 6000 4500
Wire Notes Line
	6000 4500 900  4500
Wire Notes Line
	900  4500 900  1200
$EndSCHEMATC
