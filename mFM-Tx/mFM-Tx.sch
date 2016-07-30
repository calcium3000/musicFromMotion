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
Title "musicFromMotion Transmitter (Tx)"
Date "2016-07-22"
Rev "A"
Comp ""
Comment1 "By Calvin A. Cherry >> ccherry@riseup.net"
Comment2 "Released under the TAPR Open Hardware License >> http://tapr.org/ohl.html"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R10
U 1 1 5781601B
P 9150 3650
F 0 "R10" V 9230 3650 50  0000 C CNN
F 1 "22k" V 9150 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9080 3650 50  0001 C CNN
F 3 "" H 9150 3650 50  0000 C CNN
	1    9150 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5781601C
P 9400 3700
F 0 "#PWR01" H 9400 3450 50  0001 C CNN
F 1 "GND" H 9400 3550 50  0000 C CNN
F 2 "" H 9400 3700 50  0000 C CNN
F 3 "" H 9400 3700 50  0000 C CNN
	1    9400 3700
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5781601D
P 7750 3450
F 0 "C11" H 7775 3550 50  0000 L CNN
F 1 "33nF" H 7775 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7788 3300 50  0001 C CNN
F 3 "" H 7750 3450 50  0000 C CNN
	1    7750 3450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR02
U 1 1 5781601E
P 7500 3750
F 0 "#PWR02" H 7500 3500 50  0001 C CNN
F 1 "GND" H 7500 3600 50  0000 C CNN
F 2 "" H 7500 3750 50  0000 C CNN
F 3 "" H 7500 3750 50  0000 C CNN
	1    7500 3750
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 57816021
P 8900 3400
F 0 "C15" H 8925 3500 50  0000 L CNN
F 1 "1nF" H 8925 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8938 3250 50  0001 C CNN
F 3 "" H 8900 3400 50  0000 C CNN
	1    8900 3400
	0    -1   -1   0   
$EndComp
$Comp
L C C14
U 1 1 57816022
P 8900 3150
F 0 "C14" H 8925 3250 50  0000 L CNN
F 1 "10nF" H 8925 3050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8938 3000 50  0001 C CNN
F 3 "" H 8900 3150 50  0000 C CNN
	1    8900 3150
	0    -1   -1   0   
$EndComp
$Comp
L ABM8_crystal Y1
U 1 1 57816023
P 8550 5650
F 0 "Y1" H 8550 5800 50  0000 C CNN
F 1 "16MHz" H 8700 5500 50  0000 C CNN
F 2 "mFM:ABM8" H 8550 5650 50  0001 C CNN
F 3 "" H 8550 5650 50  0000 C CNN
	1    8550 5650
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 57816024
P 8100 5900
F 0 "C12" H 8125 6000 50  0000 L CNN
F 1 "22pF" H 8125 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8138 5750 50  0001 C CNN
F 3 "" H 8100 5900 50  0000 C CNN
	1    8100 5900
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 57816025
P 9000 5900
F 0 "C13" H 9025 6000 50  0000 L CNN
F 1 "22pF" H 9025 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 9038 5750 50  0001 C CNN
F 3 "" H 9000 5900 50  0000 C CNN
	1    9000 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 57816026
P 8550 6150
F 0 "#PWR03" H 8550 5900 50  0001 C CNN
F 1 "GND" H 8550 6000 50  0000 C CNN
F 2 "" H 8550 6150 50  0000 C CNN
F 3 "" H 8550 6150 50  0000 C CNN
	1    8550 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57816027
P 8400 5050
F 0 "#PWR04" H 8400 4800 50  0001 C CNN
F 1 "GND" H 8400 4900 50  0000 C CNN
F 2 "" H 8400 5050 50  0000 C CNN
F 3 "" H 8400 5050 50  0000 C CNN
	1    8400 5050
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 5781602A
P 9900 4350
F 0 "L2" V 9850 4350 50  0000 C CNN
F 1 "3.9nH" V 10000 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 9900 4350 50  0001 C CNN
F 3 "" H 9900 4350 50  0000 C CNN
	1    9900 4350
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 5781602B
P 9550 4700
F 0 "L1" V 9500 4700 50  0000 C CNN
F 1 "8.2nH" V 9650 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 9550 4700 50  0001 C CNN
F 3 "" H 9550 4700 50  0000 C CNN
	1    9550 4700
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L3
U 1 1 5781602C
P 9950 5050
F 0 "L3" V 9900 5050 50  0000 C CNN
F 1 "2.7nH" V 10050 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 9950 5050 50  0001 C CNN
F 3 "" H 9950 5050 50  0000 C CNN
	1    9950 5050
	0    -1   -1   0   
$EndComp
$Comp
L C C17
U 1 1 5781602D
P 10350 5450
F 0 "C17" H 10375 5550 50  0000 L CNN
F 1 "4.7pF" H 10375 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10388 5300 50  0001 C CNN
F 3 "" H 10350 5450 50  0000 C CNN
	1    10350 5450
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5781602E
P 10050 5450
F 0 "C16" H 10075 5550 50  0000 L CNN
F 1 "2.2nF" H 10075 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10088 5300 50  0001 C CNN
F 3 "" H 10050 5450 50  0000 C CNN
	1    10050 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5781602F
P 10200 5700
F 0 "#PWR05" H 10200 5450 50  0001 C CNN
F 1 "GND" H 10200 5550 50  0000 C CNN
F 2 "" H 10200 5700 50  0000 C CNN
F 3 "" H 10200 5700 50  0000 C CNN
	1    10200 5700
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 57816030
P 10650 4350
F 0 "C18" H 10675 4450 50  0000 L CNN
F 1 "1.5pF" H 10675 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10688 4200 50  0001 C CNN
F 3 "" H 10650 4350 50  0000 C CNN
	1    10650 4350
	0    1    1    0   
$EndComp
$Comp
L C C19
U 1 1 57816031
P 10950 4650
F 0 "C19" H 10975 4750 50  0000 L CNN
F 1 "1pF" H 10975 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10988 4500 50  0001 C CNN
F 3 "" H 10950 4650 50  0000 C CNN
	1    10950 4650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 57816032
P 10950 4850
F 0 "#PWR06" H 10950 4600 50  0001 C CNN
F 1 "GND" H 10950 4700 50  0000 C CNN
F 2 "" H 10950 4850 50  0000 C CNN
F 3 "" H 10950 4850 50  0000 C CNN
	1    10950 4850
	1    0    0    -1  
$EndComp
$Comp
L 2450AT18A100E Y2
U 1 1 57816033
P 10950 3650
F 0 "Y2" H 11050 3550 60  0000 C CNN
F 1 "2450AT18A100E" H 10950 3850 60  0001 C CNN
F 2 "mFM:2450AT" H 10950 3650 60  0001 C CNN
F 3 "" H 10950 3650 60  0000 C CNN
	1    10950 3650
	1    0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 578164E2
P 1000 5450
F 0 "BT1" H 1100 5500 50  0000 L CNN
F 1 "Lipo battery" H 1100 5400 50  0000 L CNN
F 2 "mFM:CR2450_clip" V 1000 5490 50  0001 C CNN
F 3 "" V 1000 5490 50  0000 C CNN
	1    1000 5450
	1    0    0    -1  
$EndComp
$Comp
L MMA8653FCR1 U1
U 1 1 57844D2A
P 2450 2200
F 0 "U1" H 2250 1750 60  0000 C CNN
F 1 "MMA8653FCR1" H 2450 2650 60  0000 C CNN
F 2 "mFM:DFN-10-2mmx2mm" H 2400 2200 60  0001 C CNN
F 3 "" H 2400 2200 60  0000 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR07
U 1 1 578451FB
P 1750 1350
F 0 "#PWR07" H 1750 1200 50  0001 C CNN
F 1 "VDD" H 1750 1500 50  0000 C CNN
F 2 "" H 1750 1350 50  0000 C CNN
F 3 "" H 1750 1350 50  0000 C CNN
	1    1750 1350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 578452C1
P 1500 1600
F 0 "C1" H 1525 1700 50  0000 L CNN
F 1 "0.1uF" H 1525 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1538 1450 50  0001 C CNN
F 3 "" H 1500 1600 50  0000 C CNN
	1    1500 1600
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5784533E
P 1500 1900
F 0 "C2" H 1525 2000 50  0000 L CNN
F 1 "1uF" H 1525 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1538 1750 50  0001 C CNN
F 3 "" H 1500 1900 50  0000 C CNN
	1    1500 1900
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 578453C3
P 3100 2350
F 0 "C7" H 3125 2450 50  0000 L CNN
F 1 "0.1uF" H 3125 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3138 2200 50  0001 C CNN
F 3 "" H 3100 2350 50  0000 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 57845B67
P 1250 2000
F 0 "#PWR08" H 1250 1750 50  0001 C CNN
F 1 "GND" H 1250 1850 50  0000 C CNN
F 2 "" H 1250 2000 50  0000 C CNN
F 3 "" H 1250 2000 50  0000 C CNN
	1    1250 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 57845C3F
P 2900 2600
F 0 "#PWR09" H 2900 2350 50  0001 C CNN
F 1 "GND" H 2900 2450 50  0000 C CNN
F 2 "" H 2900 2600 50  0000 C CNN
F 3 "" H 2900 2600 50  0000 C CNN
	1    2900 2600
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5784603D
P 1950 1650
F 0 "R1" V 2030 1650 50  0000 C CNN
F 1 "1k" V 1950 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 1880 1650 50  0001 C CNN
F 3 "" H 1950 1650 50  0000 C CNN
	1    1950 1650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 57846094
P 2950 1650
F 0 "R3" V 3030 1650 50  0000 C CNN
F 1 "1k" V 2950 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 2880 1650 50  0001 C CNN
F 3 "" H 2950 1650 50  0000 C CNN
	1    2950 1650
	1    0    0    -1  
$EndComp
NoConn ~ 2000 2200
NoConn ~ 2000 2500
$Comp
L C C3
U 1 1 57846CC6
P 1600 2600
F 0 "C3" H 1625 2700 50  0000 L CNN
F 1 "0.1uF" H 1625 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1638 2450 50  0001 C CNN
F 3 "" H 1600 2600 50  0000 C CNN
	1    1600 2600
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 57846E6C
P 1600 2800
F 0 "#PWR010" H 1600 2550 50  0001 C CNN
F 1 "GND" H 1600 2650 50  0000 C CNN
F 2 "" H 1600 2800 50  0000 C CNN
F 3 "" H 1600 2800 50  0000 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
$Comp
L TC1015-2.8V U2
U 1 1 578477EC
P 2950 4450
F 0 "U2" H 2750 4000 60  0000 C CNN
F 1 "TC1015-2.8V" H 2950 4900 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 2900 4450 60  0001 C CNN
F 3 "" H 2900 4450 60  0000 C CNN
	1    2950 4450
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 57847995
P 3450 4900
F 0 "C8" H 3475 5000 50  0000 L CNN
F 1 "470pF" H 3475 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3488 4750 50  0001 C CNN
F 3 "" H 3450 4900 50  0000 C CNN
	1    3450 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 578479EC
P 3450 5100
F 0 "#PWR011" H 3450 4850 50  0001 C CNN
F 1 "GND" H 3450 4950 50  0000 C CNN
F 2 "" H 3450 5100 50  0000 C CNN
F 3 "" H 3450 5100 50  0000 C CNN
	1    3450 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 57847A36
P 2450 4500
F 0 "#PWR012" H 2450 4250 50  0001 C CNN
F 1 "GND" H 2450 4350 50  0000 C CNN
F 2 "" H 2450 4500 50  0000 C CNN
F 3 "" H 2450 4500 50  0000 C CNN
	1    2450 4500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR013
U 1 1 57847A80
P 3650 4100
F 0 "#PWR013" H 3650 3950 50  0001 C CNN
F 1 "VDD" H 3650 4250 50  0000 C CNN
F 2 "" H 3650 4100 50  0000 C CNN
F 3 "" H 3650 4100 50  0000 C CNN
	1    3650 4100
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 57847DAA
P 3650 4400
F 0 "C9" H 3675 4500 50  0000 L CNN
F 1 "1uF" H 3675 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3688 4250 50  0001 C CNN
F 3 "" H 3650 4400 50  0000 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 57848009
P 3650 4600
F 0 "#PWR014" H 3650 4350 50  0001 C CNN
F 1 "GND" H 3650 4450 50  0000 C CNN
F 2 "" H 3650 4600 50  0000 C CNN
F 3 "" H 3650 4600 50  0000 C CNN
	1    3650 4600
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 57848388
P 2150 4450
F 0 "C5" H 2175 4550 50  0000 L CNN
F 1 "1uF" H 2175 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2188 4300 50  0001 C CNN
F 3 "" H 2150 4450 50  0000 C CNN
	1    2150 4450
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 578484D1
P 2150 4650
F 0 "#PWR015" H 2150 4400 50  0001 C CNN
F 1 "GND" H 2150 4500 50  0000 C CNN
F 2 "" H 2150 4650 50  0000 C CNN
F 3 "" H 2150 4650 50  0000 C CNN
	1    2150 4650
	1    0    0    -1  
$EndComp
$Comp
L AAT3681 U3
U 1 1 57848B89
P 2950 5800
F 0 "U3" H 2750 5350 60  0000 C CNN
F 1 "AAT3681" H 2950 6250 60  0000 C CNN
F 2 "mFM:SC70JW-8" H 2900 5800 60  0001 C CNN
F 3 "" H 2900 5800 60  0000 C CNN
	1    2950 5800
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 57848BEE
P 3850 6100
F 0 "D1" H 3850 6200 50  0000 C CNN
F 1 "LED" H 3850 6000 50  0000 C CNN
F 2 "LEDs:LED_0402" H 3850 6100 50  0001 C CNN
F 3 "" H 3850 6100 50  0000 C CNN
	1    3850 6100
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 57848CEF
P 4150 5550
F 0 "R4" V 4230 5550 50  0000 C CNN
F 1 "1k" V 4150 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4080 5550 50  0001 C CNN
F 3 "" H 4150 5550 50  0000 C CNN
	1    4150 5550
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 57849A05
P 1950 6100
F 0 "R2" H 2050 6100 50  0000 C CNN
F 1 "16.2k" V 1950 6100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 1880 6100 50  0001 C CNN
F 3 "" H 1950 6100 50  0000 C CNN
	1    1950 6100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5784A562
P 3650 5750
F 0 "#PWR016" H 3650 5500 50  0001 C CNN
F 1 "GND" H 3650 5600 50  0000 C CNN
F 2 "" H 3650 5750 50  0000 C CNN
F 3 "" H 3650 5750 50  0000 C CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG P1
U 1 1 5784A690
P 2250 7300
F 0 "P1" H 2575 7175 50  0000 C CNN
F 1 "USB_micro" H 2250 7500 50  0000 C CNN
F 2 "Connect:USB_Micro-B_10103594-0001LF" V 2200 7200 50  0001 C CNN
F 3 "" V 2200 7200 50  0000 C CNN
	1    2250 7300
	-1   0    0    1   
$EndComp
NoConn ~ 2150 7000
NoConn ~ 2250 7000
NoConn ~ 2350 7000
$Comp
L GND #PWR017
U 1 1 5784ABC4
P 1800 7450
F 0 "#PWR017" H 1800 7200 50  0001 C CNN
F 1 "GND" H 1800 7300 50  0000 C CNN
F 2 "" H 1800 7450 50  0000 C CNN
F 3 "" H 1800 7450 50  0000 C CNN
	1    1800 7450
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5784ADFA
P 2100 6800
F 0 "C4" H 2125 6900 50  0000 L CNN
F 1 "10uF" H 2125 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2138 6650 50  0001 C CNN
F 3 "" H 2100 6800 50  0000 C CNN
	1    2100 6800
	0    1    -1   0   
$EndComp
$Comp
L C C6
U 1 1 5784BD17
P 2200 6100
F 0 "C6" H 2225 6200 50  0000 L CNN
F 1 "1uF" H 2225 6000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2238 5950 50  0001 C CNN
F 3 "" H 2200 6100 50  0000 C CNN
	1    2200 6100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5784BD1E
P 2200 6350
F 0 "#PWR018" H 2200 6100 50  0001 C CNN
F 1 "GND" H 2200 6200 50  0000 C CNN
F 2 "" H 2200 6350 50  0000 C CNN
F 3 "" H 2200 6350 50  0000 C CNN
	1    2200 6350
	1    0    0    -1  
$EndComp
$Comp
L SPDT SW1
U 1 1 5784C6EC
P 1450 5100
F 0 "SW1" H 1400 5300 50  0000 C CNN
F 1 "SPDT" H 1400 4850 50  0000 C CNN
F 2 "mFM:SW_SPDT_SMD" H 1400 5250 50  0001 C CNN
F 3 "" H 1400 5250 50  0000 C CNN
	1    1450 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5785B5E1
P 1000 5700
F 0 "#PWR019" H 1000 5450 50  0001 C CNN
F 1 "GND" H 1000 5550 50  0000 C CNN
F 2 "" H 1000 5700 50  0000 C CNN
F 3 "" H 1000 5700 50  0000 C CNN
	1    1000 5700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR020
U 1 1 5785C8B9
P 5300 1750
F 0 "#PWR020" H 5300 1600 50  0001 C CNN
F 1 "VDD" H 5300 1900 50  0000 C CNN
F 2 "" H 5300 1750 50  0000 C CNN
F 3 "" H 5300 1750 50  0000 C CNN
	1    5300 1750
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5785C9EE
P 5600 1900
F 0 "C10" H 5625 2000 50  0000 L CNN
F 1 "0.1uF" H 5625 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5638 1750 50  0001 C CNN
F 3 "" H 5600 1900 50  0000 C CNN
	1    5600 1900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5785D029
P 6150 1900
F 0 "#PWR021" H 6150 1650 50  0001 C CNN
F 1 "GND" H 6150 1750 50  0000 C CNN
F 2 "" H 6150 1900 50  0000 C CNN
F 3 "" H 6150 1900 50  0000 C CNN
	1    6150 1900
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5785D6EE
P 4700 2200
F 0 "R5" V 4780 2200 50  0000 C CNN
F 1 "10k" V 4700 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4630 2200 50  0001 C CNN
F 3 "" H 4700 2200 50  0000 C CNN
	1    4700 2200
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 5786372F
P 5250 4500
F 0 "R6" V 5330 4500 50  0000 C CNN
F 1 "46.5k" V 5250 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5180 4500 50  0001 C CNN
F 3 "" H 5250 4500 50  0000 C CNN
	1    5250 4500
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 57863959
P 5500 4750
F 0 "R7" V 5580 4750 50  0000 C CNN
F 1 "100k" V 5500 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 5430 4750 50  0001 C CNN
F 3 "" H 5500 4750 50  0000 C CNN
	1    5500 4750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR022
U 1 1 57863E55
P 5500 4950
F 0 "#PWR022" H 5500 4700 50  0001 C CNN
F 1 "GND" H 5500 4800 50  0000 C CNN
F 2 "" H 5500 4950 50  0000 C CNN
F 3 "" H 5500 4950 50  0000 C CNN
	1    5500 4950
	1    0    0    -1  
$EndComp
Text GLabel 3050 1900 2    60   Input ~ 0
SDA
Text GLabel 1900 2050 0    60   Input ~ 0
SCL
Text GLabel 7000 3050 2    60   Input ~ 0
MOSI
Text GLabel 7000 2650 2    60   Input ~ 0
CE
Text GLabel 7000 2850 2    60   Input ~ 0
~CSN
Text GLabel 6000 4050 2    60   Input ~ 0
~IRQ
Text GLabel 7700 4450 0    60   Input ~ 0
MOSI
Text GLabel 7700 4150 0    60   Input ~ 0
CE
Text GLabel 7700 4250 0    60   Input ~ 0
~CSN
Text GLabel 8100 5000 0    60   Input ~ 0
~IRQ
Text GLabel 7650 4550 0    60   Input ~ 0
MISO
Text GLabel 7700 4350 0    60   Input ~ 0
SCK
Text GLabel 7000 3250 2    60   Input ~ 0
SCK
Text GLabel 6000 3850 2    60   Input ~ 0
MISO
Text GLabel 4600 2850 0    60   Input ~ 0
SDA
Text GLabel 4600 2650 0    60   Input ~ 0
SCL
Text GLabel 4600 3050 0    60   Input ~ 0
VPP
Text GLabel 5450 6050 0    60   Input ~ 0
VPP
Text GLabel 5450 6350 0    60   Input ~ 0
ICSPDAT
$Comp
L VDD #PWR023
U 1 1 5786F157
P 5600 6000
F 0 "#PWR023" H 5600 5850 50  0001 C CNN
F 1 "VDD" H 5600 6150 50  0000 C CNN
F 2 "" H 5600 6000 50  0000 C CNN
F 3 "" H 5600 6000 50  0000 C CNN
	1    5600 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5786F6D0
P 5600 6500
F 0 "#PWR024" H 5600 6250 50  0001 C CNN
F 1 "GND" H 5600 6350 50  0000 C CNN
F 2 "" H 5600 6500 50  0000 C CNN
F 3 "" H 5600 6500 50  0000 C CNN
	1    5600 6500
	1    0    0    -1  
$EndComp
Text Notes 2300 3750 0    79   ~ 16
POWER SUPPLY
Text Notes 2000 1050 0    79   ~ 16
ACCELEROMETER
Text Notes 5050 1450 0    79   ~ 16
MICROCONTROLLER
Text Notes 5150 5650 0    79   ~ 16
ICSP HEADER
Text Notes 7850 2700 0    79   ~ 16
RADIO TRANSCEIVER
$Comp
L VDD #PWR025
U 1 1 57874949
P 9300 4100
F 0 "#PWR025" H 9300 3950 50  0001 C CNN
F 1 "VDD" H 9300 4250 50  0000 C CNN
F 2 "" H 9300 4100 50  0000 C CNN
F 3 "" H 9300 4100 50  0000 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR026
U 1 1 57874D32
P 8400 3050
F 0 "#PWR026" H 8400 2900 50  0001 C CNN
F 1 "VDD" H 8400 3200 50  0000 C CNN
F 2 "" H 8400 3050 50  0000 C CNN
F 3 "" H 8400 3050 50  0000 C CNN
	1    8400 3050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR027
U 1 1 57875045
P 7800 4900
F 0 "#PWR027" H 7800 4750 50  0001 C CNN
F 1 "VDD" H 7800 5050 50  0000 C CNN
F 2 "" H 7800 4900 50  0000 C CNN
F 3 "" H 7800 4900 50  0000 C CNN
	1    7800 4900
	1    0    0    -1  
$EndComp
$Comp
L PIC16LF18323 U4
U 1 1 578C3575
P 5600 2950
F 0 "U4" H 5000 2250 60  0000 C CNN
F 1 "PIC16LF18323" H 6300 3650 60  0000 C CNN
F 2 "mFM:UQFN-16_4x4mm_Pitch0.65mm_Pad2x2mm" H 5600 2950 60  0001 C CNN
F 3 "" H 5600 2950 60  0000 C CNN
	1    5600 2950
	1    0    0    -1  
$EndComp
NoConn ~ 5700 2100
NoConn ~ 5500 2100
$Comp
L R R8
U 1 1 578C62A7
P 6750 2650
F 0 "R8" V 6830 2650 50  0000 C CNN
F 1 "0" V 6750 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6680 2650 50  0001 C CNN
F 3 "" H 6750 2650 50  0000 C CNN
	1    6750 2650
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 578C64FE
P 6750 2850
F 0 "R9" V 6830 2850 50  0000 C CNN
F 1 "0" V 6750 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 6680 2850 50  0001 C CNN
F 3 "" H 6750 2850 50  0000 C CNN
	1    6750 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 578C790C
P 4900 2100
F 0 "#PWR028" H 4900 1850 50  0001 C CNN
F 1 "GND" H 4900 1950 50  0000 C CNN
F 2 "" H 4900 2100 50  0000 C CNN
F 3 "" H 4900 2100 50  0000 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
Text GLabel 6600 2350 2    60   Input ~ 0
ICSPDAT
Text GLabel 6600 2500 2    60   Input ~ 0
ICSPCLK
Text GLabel 5450 6450 0    60   Input ~ 0
ICSPCLK
$Comp
L CONN_01X05 P2
U 1 1 578CA2F1
P 5850 6250
F 0 "P2" H 5850 6550 50  0000 C CNN
F 1 "CONN_01X05" V 5950 6250 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05" H 5850 6250 50  0001 C CNN
F 3 "" H 5850 6250 50  0000 C CNN
	1    5850 6250
	1    0    0    -1  
$EndComp
Text Label 1600 2350 0    60   ~ 0
ACC_BYP
Text Label 5500 4450 1    60   ~ 0
PIC_RD_VBATT
Text Label 2450 6750 1    60   ~ 0
VUSB
Text Label 1950 5700 0    60   ~ 0
CHGR_ISET
Text Label 1800 5350 3    60   ~ 0
CHGR_VBATT
Text Label 1800 4750 1    60   ~ 0
LDO_VBATT
Text Label 3450 4700 1    60   ~ 0
LDO_BYP
Text Label 8600 5450 0    60   ~ 0
NRF_XC1
Text Label 8100 5450 0    60   ~ 0
NRF_XC2
Text Label 9400 5050 1    60   ~ 0
NRF_ANT1
Text Label 9300 5200 1    60   ~ 0
NRF_VDD_PA
Text Label 9150 4350 0    60   ~ 0
NRF_ANT2
Text Label 10950 4350 1    60   ~ 0
NRF_ANT_OUT
Text Label 10200 4350 0    60   ~ 0
NRF_LC
Text Label 8300 3450 2    60   ~ 0
NRF_DVDD
Text Label 8600 3650 0    60   ~ 0
NRF_IREF
Text Label 4150 6050 1    60   ~ 0
LED_A
$Comp
L +BATT #PWR029
U 1 1 5790C23B
P 4150 5300
F 0 "#PWR029" H 4150 5150 50  0001 C CNN
F 1 "+BATT" H 4150 5440 50  0000 C CNN
F 2 "" H 4150 5300 50  0000 C CNN
F 3 "" H 4150 5300 50  0000 C CNN
	1    4150 5300
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR030
U 1 1 5790CAD8
P 1000 5000
F 0 "#PWR030" H 1000 4850 50  0001 C CNN
F 1 "+BATT" H 1000 5140 50  0000 C CNN
F 2 "" H 1000 5000 50  0000 C CNN
F 3 "" H 1000 5000 50  0000 C CNN
	1    1000 5000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR031
U 1 1 5790CFE3
P 5000 4400
F 0 "#PWR031" H 5000 4250 50  0001 C CNN
F 1 "+BATT" H 5000 4540 50  0000 C CNN
F 2 "" H 5000 4400 50  0000 C CNN
F 3 "" H 5000 4400 50  0000 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L nRF24L01+ U5
U 1 1 579183FD
P 8400 4350
F 0 "U5" H 8000 3850 60  0000 C CNN
F 1 "nRF24L01+" H 7700 4700 60  0000 C CNN
F 2 "mFM:VFQFN-20_4x4mm_Pitch0.5mm_Pad2x2mm" H 8400 4350 60  0001 C CNN
F 3 "" H 8400 4350 60  0000 C CNN
	1    8400 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 57930D8B
P 9100 4650
F 0 "#PWR032" H 9100 4400 50  0001 C CNN
F 1 "GND" H 9100 4500 50  0000 C CNN
F 2 "" H 9100 4650 50  0000 C CNN
F 3 "" H 9100 4650 50  0000 C CNN
	1    9100 4650
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 579812EA
P 3850 3250
F 0 "R11" V 3930 3250 50  0000 C CNN
F 1 "R" V 3850 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 3780 3250 50  0001 C CNN
F 3 "" H 3850 3250 50  0000 C CNN
	1    3850 3250
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 579813A6
P 4400 3550
F 0 "R12" V 4480 3550 50  0000 C CNN
F 1 "R" V 4400 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 4330 3550 50  0001 C CNN
F 3 "" H 4400 3550 50  0000 C CNN
	1    4400 3550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR033
U 1 1 579817E1
P 4400 3750
F 0 "#PWR033" H 4400 3500 50  0001 C CNN
F 1 "GND" H 4400 3600 50  0000 C CNN
F 2 "" H 4400 3750 50  0000 C CNN
F 3 "" H 4400 3750 50  0000 C CNN
	1    4400 3750
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR034
U 1 1 579818A4
P 3600 3150
F 0 "#PWR034" H 3600 3000 50  0001 C CNN
F 1 "VDD" H 3600 3300 50  0000 C CNN
F 2 "" H 3600 3150 50  0000 C CNN
F 3 "" H 3600 3150 50  0000 C CNN
	1    3600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3250 3700 3250
Wire Wire Line
	3600 3150 3600 3250
Wire Wire Line
	4400 3700 4400 3750
Connection ~ 4400 3250
Wire Wire Line
	4400 3250 4400 3400
Wire Wire Line
	4000 3250 4750 3250
Wire Wire Line
	1950 5700 1950 5950
Connection ~ 2200 6300
Wire Wire Line
	1950 6300 2200 6300
Wire Wire Line
	9100 4250 9050 4250
Wire Wire Line
	5000 4400 5000 4500
Connection ~ 1000 5100
Wire Wire Line
	1100 5100 1000 5100
Wire Wire Line
	4150 5400 4150 5300
Wire Wire Line
	4150 6100 4150 5700
Wire Wire Line
	4050 6100 4150 6100
Wire Wire Line
	3400 6100 3650 6100
Wire Wire Line
	3650 5700 3650 5750
Wire Wire Line
	3500 5900 3400 5900
Wire Wire Line
	5450 6450 5650 6450
Wire Wire Line
	5450 6350 5650 6350
Wire Wire Line
	5600 6250 5600 6500
Wire Wire Line
	5650 6250 5600 6250
Wire Wire Line
	5650 6050 5450 6050
Wire Wire Line
	5600 6150 5650 6150
Wire Wire Line
	5600 6000 5600 6150
Connection ~ 6550 2850
Wire Wire Line
	6550 2500 6550 2850
Connection ~ 6500 2650
Wire Wire Line
	6500 2350 6500 2650
Wire Wire Line
	6600 2350 6500 2350
Wire Wire Line
	6600 2500 6550 2500
Connection ~ 4700 3050
Wire Wire Line
	4700 2050 4700 1900
Wire Wire Line
	4700 3050 4700 2350
Wire Wire Line
	4600 3050 4750 3050
Wire Wire Line
	5100 2050 5100 2100
Wire Wire Line
	4900 2050 5100 2050
Wire Wire Line
	4900 2100 4900 2050
Wire Wire Line
	4600 2650 4750 2650
Wire Wire Line
	4600 2850 4750 2850
Wire Wire Line
	6900 2850 7000 2850
Wire Wire Line
	7000 2650 6900 2650
Wire Wire Line
	6450 2650 6600 2650
Wire Wire Line
	5700 4050 6000 4050
Wire Wire Line
	5700 3800 5700 4050
Wire Wire Line
	7000 3250 6450 3250
Wire Wire Line
	5900 3850 5900 3800
Wire Wire Line
	6000 3850 5900 3850
Connection ~ 5900 1900
Wire Wire Line
	5900 2100 5900 1900
Connection ~ 2950 1400
Connection ~ 3100 2200
Wire Wire Line
	3350 2200 3350 1400
Wire Wire Line
	5000 4500 5100 4500
Wire Wire Line
	1000 5000 1000 5300
Wire Wire Line
	8200 5000 8100 5000
Wire Wire Line
	7650 4550 7750 4550
Wire Wire Line
	7750 4450 7700 4450
Wire Wire Line
	7700 4350 7750 4350
Wire Wire Line
	7750 4250 7700 4250
Wire Wire Line
	7700 4150 7750 4150
Wire Wire Line
	6450 2850 6600 2850
Wire Wire Line
	6450 3050 7000 3050
Connection ~ 2950 1900
Wire Wire Line
	2950 1800 2950 1900
Wire Wire Line
	2900 1900 3050 1900
Connection ~ 1950 2050
Wire Wire Line
	5500 4900 5500 4950
Connection ~ 5500 4500
Wire Wire Line
	5500 3800 5500 4600
Wire Wire Line
	5400 4500 5500 4500
Connection ~ 5300 1900
Wire Wire Line
	4700 1900 5450 1900
Wire Wire Line
	5750 1900 6150 1900
Wire Wire Line
	5300 1750 5300 2100
Wire Wire Line
	1000 5600 1000 5700
Wire Wire Line
	1800 4950 1800 4200
Wire Wire Line
	1800 5900 1800 5250
Connection ~ 2150 4200
Connection ~ 2200 5900
Wire Wire Line
	2200 6250 2200 6350
Wire Wire Line
	2200 5950 2200 5900
Wire Wire Line
	7500 3450 7500 3750
Wire Wire Line
	8750 3150 8400 3150
Connection ~ 1800 7000
Wire Wire Line
	1950 6800 1800 6800
Connection ~ 1800 7400
Wire Wire Line
	1800 7400 1850 7400
Wire Wire Line
	1800 6800 1800 7450
Wire Wire Line
	2050 7000 1800 7000
Connection ~ 3500 5700
Wire Wire Line
	3400 5700 3650 5700
Wire Wire Line
	3500 5500 3500 5900
Wire Wire Line
	3400 5500 3500 5500
Connection ~ 2450 6800
Connection ~ 2450 6100
Wire Wire Line
	2500 5500 2450 5500
Wire Wire Line
	1950 5700 2500 5700
Wire Wire Line
	1950 6250 1950 6300
Wire Wire Line
	1800 5900 2500 5900
Wire Wire Line
	2450 5500 2450 7000
Wire Wire Line
	2450 6100 2500 6100
Wire Wire Line
	2450 6800 2250 6800
Wire Wire Line
	2150 4600 2150 4650
Connection ~ 2350 4200
Wire Wire Line
	2150 4300 2150 4200
Wire Wire Line
	1800 4200 2500 4200
Wire Wire Line
	2350 4700 2350 4200
Wire Wire Line
	2500 4700 2350 4700
Wire Wire Line
	2450 4450 2450 4500
Wire Wire Line
	2500 4450 2450 4450
Wire Wire Line
	3650 4550 3650 4600
Connection ~ 3650 4200
Wire Wire Line
	3650 4100 3650 4250
Wire Wire Line
	3400 4200 3650 4200
Wire Wire Line
	3450 5050 3450 5100
Wire Wire Line
	3450 4700 3450 4750
Wire Wire Line
	3400 4700 3450 4700
Wire Wire Line
	1600 2750 1600 2800
Wire Wire Line
	1600 2350 2000 2350
Wire Wire Line
	1600 2450 1600 2350
Wire Wire Line
	1900 2050 2000 2050
Wire Wire Line
	1950 1800 1950 2050
Connection ~ 1950 1400
Wire Wire Line
	1950 1500 1950 1400
Connection ~ 1750 1400
Wire Wire Line
	3350 1400 1750 1400
Wire Wire Line
	2950 1400 2950 1500
Connection ~ 1250 1900
Wire Wire Line
	1250 1600 1350 1600
Wire Wire Line
	1250 1600 1250 2000
Wire Wire Line
	1350 1900 1250 1900
Connection ~ 1750 1600
Wire Wire Line
	1750 1600 1650 1600
Connection ~ 1750 1900
Connection ~ 2900 2350
Connection ~ 2900 2500
Wire Wire Line
	2900 2050 2900 2600
Wire Wire Line
	2900 2350 2900 2350
Wire Wire Line
	2900 2500 3100 2500
Wire Wire Line
	2900 2200 3350 2200
Wire Wire Line
	1750 1350 1750 1900
Wire Wire Line
	1650 1900 2000 1900
Connection ~ 8050 3700
Wire Wire Line
	8050 3800 8050 3700
Connection ~ 8100 5650
Wire Wire Line
	9100 4250 9100 4650
Connection ~ 10950 4350
Wire Wire Line
	10200 4350 10500 4350
Wire Wire Line
	10950 3850 10950 4500
Wire Wire Line
	10800 4350 10950 4350
Wire Wire Line
	10950 4850 10950 4800
Wire Wire Line
	9300 5200 10350 5200
Wire Wire Line
	9300 4550 9300 5200
Wire Wire Line
	9050 4550 9300 4550
Connection ~ 9550 5050
Connection ~ 10200 5650
Wire Wire Line
	10200 5650 10200 5700
Wire Wire Line
	10050 5650 10050 5600
Wire Wire Line
	10050 5650 10350 5650
Wire Wire Line
	10350 5650 10350 5600
Connection ~ 10050 5200
Wire Wire Line
	10050 5200 10050 5300
Connection ~ 10350 5200
Wire Wire Line
	10350 5050 10250 5050
Wire Wire Line
	10350 5050 10350 5300
Wire Wire Line
	9400 4450 9400 5050
Wire Wire Line
	9050 4450 9400 4450
Wire Wire Line
	9400 5050 9650 5050
Wire Wire Line
	9550 5000 9550 5050
Connection ~ 9550 4350
Wire Wire Line
	9550 4400 9550 4350
Wire Wire Line
	9050 4350 9600 4350
Wire Wire Line
	9300 4150 9050 4150
Wire Wire Line
	9300 4100 9300 4150
Wire Wire Line
	7800 5100 7800 4900
Wire Wire Line
	8300 5100 7800 5100
Wire Wire Line
	8300 5000 8300 5100
Wire Wire Line
	8400 5000 8400 5050
Connection ~ 8550 6100
Wire Wire Line
	8550 5800 8550 6150
Wire Wire Line
	9000 6100 9000 6050
Wire Wire Line
	8100 6100 9000 6100
Wire Wire Line
	8100 6050 8100 6100
Wire Wire Line
	8100 5650 8400 5650
Wire Wire Line
	8100 5450 8100 5750
Wire Wire Line
	8500 5450 8100 5450
Wire Wire Line
	8500 5000 8500 5450
Wire Wire Line
	8600 5000 8600 5450
Connection ~ 9000 5650
Wire Wire Line
	8700 5650 9000 5650
Wire Wire Line
	9000 5450 9000 5750
Wire Wire Line
	8600 5450 9000 5450
Connection ~ 9400 3400
Wire Wire Line
	9050 3150 9400 3150
Connection ~ 9400 3550
Wire Wire Line
	9050 3400 9400 3400
Connection ~ 8400 3400
Wire Wire Line
	8400 3400 8750 3400
Connection ~ 8400 3150
Wire Wire Line
	8400 3050 8400 3700
Connection ~ 9400 3650
Wire Wire Line
	8500 3550 8500 3700
Wire Wire Line
	9400 3550 8500 3550
Connection ~ 7500 3700
Wire Wire Line
	7500 3700 8200 3700
Wire Wire Line
	8300 3450 8300 3700
Wire Wire Line
	7900 3450 8300 3450
Wire Wire Line
	7600 3450 7500 3450
Wire Wire Line
	9400 3150 9400 3700
Wire Wire Line
	9400 3650 9300 3650
Wire Wire Line
	8600 3650 9000 3650
Wire Wire Line
	8600 3700 8600 3650
Text Label 4000 3250 0    60   ~ 0
PIC_RD_NODENUM
Text GLabel 3500 6200 3    60   Input ~ 0
LED_K
Wire Wire Line
	3500 6200 3500 6100
Connection ~ 3500 6100
Text GLabel 5200 3850 0    60   Input ~ 0
LED_K
Wire Wire Line
	5300 3800 5300 3850
Wire Wire Line
	5300 3850 5200 3850
$EndSCHEMATC
