EESchema Schematic File Version 2
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
LIBS:mFM_comp
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "musicFromMotion Receiver (Rx)"
Date "2017-05-14"
Rev "B"
Comp ""
Comment1 "By Calvin A. Cherry >> calvincherry@gmail.com"
Comment2 "Released under the TAPR Open Hardware License >> http://tapr.org/ohl.html"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NRF24L01P_MINI U1
U 1 1 5917CBC4
P 6650 3850
F 0 "U1" H 6250 4550 60  0000 L CNN
F 1 "NRF24L01P_MINI" H 6800 4550 60  0000 L CNN
F 2 "mFM:nRF24L01p_mini_TH" H 6650 3850 60  0001 C CNN
F 3 "" H 6650 3850 60  0000 C CNN
	1    6650 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 P1
U 1 1 5917CC13
P 3800 3700
F 0 "P1" H 3700 4050 50  0000 L CNN
F 1 "02x04" H 3700 3950 50  0000 L CNN
F 2 "mFM:Socket_Strip_Straight_2x04_mirrored" H 3800 3400 50  0001 C CNN
F 3 "" H 3800 2500 50  0000 C CNN
	1    3800 3700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5917CC70
P 3950 5350
F 0 "C1" H 4050 5400 50  0000 L CNN
F 1 "10uF" H 4050 5300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3988 5200 50  0001 C CNN
F 3 "" H 3950 5350 50  0000 C CNN
	1    3950 5350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR01
U 1 1 5917CF4D
P 6650 2950
F 0 "#PWR01" H 6650 2800 50  0001 C CNN
F 1 "VDD" H 6650 3100 50  0000 C CNN
F 2 "" H 6650 2950 50  0000 C CNN
F 3 "" H 6650 2950 50  0000 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 5917CF68
P 3950 5100
F 0 "#PWR02" H 3950 4950 50  0001 C CNN
F 1 "VDD" H 3950 5250 50  0000 C CNN
F 2 "" H 3950 5100 50  0000 C CNN
F 3 "" H 3950 5100 50  0000 C CNN
	1    3950 5100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 5917CF7C
P 3450 3450
F 0 "#PWR03" H 3450 3300 50  0001 C CNN
F 1 "VDD" H 3450 3600 50  0000 C CNN
F 2 "" H 3450 3450 50  0000 C CNN
F 3 "" H 3450 3450 50  0000 C CNN
	1    3450 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5917CF8F
P 4150 4050
F 0 "#PWR04" H 4150 3800 50  0001 C CNN
F 1 "GND" H 4150 3900 50  0000 C CNN
F 2 "" H 4150 4050 50  0000 C CNN
F 3 "" H 4150 4050 50  0000 C CNN
	1    4150 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5917CFAA
P 3950 5600
F 0 "#PWR05" H 3950 5350 50  0001 C CNN
F 1 "GND" H 3950 5450 50  0000 C CNN
F 2 "" H 3950 5600 50  0000 C CNN
F 3 "" H 3950 5600 50  0000 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5917CFBE
P 6650 4750
F 0 "#PWR06" H 6650 4500 50  0001 C CNN
F 1 "GND" H 6650 4600 50  0000 C CNN
F 2 "" H 6650 4750 50  0000 C CNN
F 3 "" H 6650 4750 50  0000 C CNN
	1    6650 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4650 6650 4750
Wire Wire Line
	6650 2950 6650 3050
Wire Wire Line
	3550 3550 3450 3550
Wire Wire Line
	3450 3550 3450 3450
Wire Wire Line
	4150 4050 4150 3650
Wire Wire Line
	4150 3650 4050 3650
Text GLabel 3400 3650 0    60   Input ~ 0
MOSI
Text GLabel 3400 3750 0    60   Output ~ 0
MISO
Text GLabel 3400 3850 0    60   Input ~ 0
SCK
Wire Wire Line
	3550 3650 3400 3650
Wire Wire Line
	3400 3750 3550 3750
Wire Wire Line
	3550 3850 3400 3850
Text GLabel 4250 3850 2    60   Input ~ 0
~CSN
Text GLabel 4250 3750 2    60   Input ~ 0
CE
Text GLabel 4250 3550 2    60   Output ~ 0
~IRQ
Wire Wire Line
	4250 3750 4050 3750
Wire Wire Line
	4050 3850 4250 3850
Wire Wire Line
	4250 3550 4050 3550
Wire Wire Line
	3950 5100 3950 5200
Wire Wire Line
	3950 5500 3950 5600
Text GLabel 5950 3350 0    60   Input ~ 0
CE
Text GLabel 5950 3950 0    60   Input ~ 0
MOSI
Text GLabel 5950 4150 0    60   Output ~ 0
MISO
Text GLabel 5950 4350 0    60   Output ~ 0
~IRQ
Text GLabel 5950 3550 0    60   Input ~ 0
~CSN
Text GLabel 5950 3750 0    60   Input ~ 0
SCK
Wire Wire Line
	5950 3750 6100 3750
Wire Wire Line
	6100 3950 5950 3950
Wire Wire Line
	5950 4150 6100 4150
Wire Wire Line
	5950 4350 6100 4350
Wire Wire Line
	6100 3350 5950 3350
Wire Wire Line
	5950 3550 6100 3550
$EndSCHEMATC
