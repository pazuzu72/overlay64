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
LIBS:lm1881
LIBS:overlay64-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM1881 U1
U 1 1 56A1EDB5
P 4500 3350
F 0 "U1" H 4250 3600 60  0000 C CNN
F 1 "LM1881" H 4650 3100 60  0000 C CNN
F 2 "" H 4450 3200 60  0000 C CNN
F 3 "" H 4450 3200 60  0000 C CNN
	1    4500 3350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG01
U 1 1 56A1EF0B
P 10450 1050
F 0 "#FLG01" H 10450 1145 50  0001 C CNN
F 1 "PWR_FLAG" H 10450 1230 50  0000 C CNN
F 2 "" H 10450 1050 60  0000 C CNN
F 3 "" H 10450 1050 60  0000 C CNN
	1    10450 1050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 56A1EF40
P 10450 1050
F 0 "#PWR02" H 10450 900 50  0001 C CNN
F 1 "VCC" H 10450 1200 50  0000 C CNN
F 2 "" H 10450 1050 60  0000 C CNN
F 3 "" H 10450 1050 60  0000 C CNN
	1    10450 1050
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 56A1EF56
P 10900 1050
F 0 "#FLG03" H 10900 1145 50  0001 C CNN
F 1 "PWR_FLAG" H 10900 1230 50  0000 C CNN
F 2 "" H 10900 1050 60  0000 C CNN
F 3 "" H 10900 1050 60  0000 C CNN
	1    10900 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 56A1EF6C
P 10900 1050
F 0 "#PWR04" H 10900 800 50  0001 C CNN
F 1 "GND" H 10900 900 50  0000 C CNN
F 2 "" H 10900 1050 60  0000 C CNN
F 3 "" H 10900 1050 60  0000 C CNN
	1    10900 1050
	1    0    0    -1  
$EndComp
$Comp
L CP C4
U 1 1 56A1EFFD
P 10500 6050
F 0 "C4" H 10525 6150 50  0000 L CNN
F 1 "10uF" H 10525 5950 50  0000 L CNN
F 2 "" H 10538 5900 30  0000 C CNN
F 3 "" H 10500 6050 60  0000 C CNN
	1    10500 6050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 56A1F13D
P 10500 5900
F 0 "#PWR05" H 10500 5750 50  0001 C CNN
F 1 "VCC" H 10500 6050 50  0000 C CNN
F 2 "" H 10500 5900 60  0000 C CNN
F 3 "" H 10500 5900 60  0000 C CNN
	1    10500 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 56A1F155
P 10500 6200
F 0 "#PWR06" H 10500 5950 50  0001 C CNN
F 1 "GND" H 10500 6050 50  0000 C CNN
F 2 "" H 10500 6200 60  0000 C CNN
F 3 "" H 10500 6200 60  0000 C CNN
	1    10500 6200
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 56A1F16D
P 10800 6050
F 0 "C5" H 10825 6150 50  0000 L CNN
F 1 "100nF" H 10825 5950 50  0000 L CNN
F 2 "" H 10838 5900 30  0000 C CNN
F 3 "" H 10800 6050 60  0000 C CNN
	1    10800 6050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 56A1F1A2
P 10800 5900
F 0 "#PWR07" H 10800 5750 50  0001 C CNN
F 1 "VCC" H 10800 6050 50  0000 C CNN
F 2 "" H 10800 5900 60  0000 C CNN
F 3 "" H 10800 5900 60  0000 C CNN
	1    10800 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 56A1F1BC
P 10800 6200
F 0 "#PWR08" H 10800 5950 50  0001 C CNN
F 1 "GND" H 10800 6050 50  0000 C CNN
F 2 "" H 10800 6200 60  0000 C CNN
F 3 "" H 10800 6200 60  0000 C CNN
	1    10800 6200
	1    0    0    -1  
$EndComp
NoConn ~ 5000 3450
NoConn ~ 5000 3250
$Comp
L C C6
U 1 1 56A1F270
P 5400 3550
F 0 "C6" H 5425 3650 50  0000 L CNN
F 1 "100nF" H 5425 3450 50  0000 L CNN
F 2 "" H 5438 3400 30  0000 C CNN
F 3 "" H 5400 3550 60  0000 C CNN
	1    5400 3550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 56A1F3BB
P 5550 3350
F 0 "#PWR09" H 5550 3100 50  0001 C CNN
F 1 "GND" H 5550 3200 50  0000 C CNN
F 2 "" H 5550 3350 60  0000 C CNN
F 3 "" H 5550 3350 60  0000 C CNN
	1    5550 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 56A1F3DF
P 5400 3150
F 0 "R2" V 5480 3150 50  0000 C CNN
F 1 "680k" V 5400 3150 50  0000 C CNN
F 2 "" V 5330 3150 30  0000 C CNN
F 3 "" H 5400 3150 30  0000 C CNN
	1    5400 3150
	0    -1   -1   0   
$EndComp
$Comp
L Crystal_Small Y1
U 1 1 56A1F7F7
P 950 2050
F 0 "Y1" H 950 2150 50  0000 C CNN
F 1 "16MHz" H 950 1950 50  0000 C CNN
F 2 "" H 950 2050 60  0000 C CNN
F 3 "" H 950 2050 60  0000 C CNN
	1    950  2050
	0    1    1    0   
$EndComp
$Comp
L CP_Small C1
U 1 1 56A1F950
P 950 1750
F 0 "C1" H 960 1820 50  0000 L CNN
F 1 "18pF" H 960 1670 50  0000 L CNN
F 2 "" H 950 1750 60  0000 C CNN
F 3 "" H 950 1750 60  0000 C CNN
	1    950  1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 56A1F989
P 950 1650
F 0 "#PWR010" H 950 1400 50  0001 C CNN
F 1 "GND" H 950 1500 50  0000 C CNN
F 2 "" H 950 1650 60  0000 C CNN
F 3 "" H 950 1650 60  0000 C CNN
	1    950  1650
	-1   0    0    1   
$EndComp
$Comp
L CP_Small C2
U 1 1 56A1FAA4
P 950 2350
F 0 "C2" H 960 2420 50  0000 L CNN
F 1 "18pF" H 960 2270 50  0000 L CNN
F 2 "" H 950 2350 60  0000 C CNN
F 3 "" H 950 2350 60  0000 C CNN
	1    950  2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 56A1FB8E
P 950 2450
F 0 "#PWR011" H 950 2200 50  0001 C CNN
F 1 "GND" H 950 2300 50  0000 C CNN
F 2 "" H 950 2450 60  0000 C CNN
F 3 "" H 950 2450 60  0000 C CNN
	1    950  2450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 56A1FF3A
P 1400 2650
F 0 "#PWR012" H 1400 2500 50  0001 C CNN
F 1 "VCC" H 1400 2800 50  0000 C CNN
F 2 "" H 1400 2650 60  0000 C CNN
F 3 "" H 1400 2650 60  0000 C CNN
	1    1400 2650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR013
U 1 1 56A20155
P 2200 5150
F 0 "#PWR013" H 2200 4900 50  0001 C CNN
F 1 "GND" H 2200 5000 50  0000 C CNN
F 2 "" H 2200 5150 60  0000 C CNN
F 3 "" H 2200 5150 60  0000 C CNN
	1    2200 5150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 56A21959
P 9150 4250
F 0 "P2" H 9150 4400 50  0000 C CNN
F 1 "LUMA OUT" V 9250 4250 50  0000 C CNN
F 2 "" H 9150 4250 60  0000 C CNN
F 3 "" H 9150 4250 60  0000 C CNN
	1    9150 4250
	1    0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 56A21C9B
P 8950 4300
F 0 "#PWR014" H 8950 4050 50  0001 C CNN
F 1 "GND" H 8950 4150 50  0000 C CNN
F 2 "" H 8950 4300 60  0000 C CNN
F 3 "" H 8950 4300 60  0000 C CNN
	1    8950 4300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 56A22434
P 7650 3900
F 0 "C3" H 7675 4000 50  0000 L CNN
F 1 "100nF" H 7675 3800 50  0000 L CNN
F 2 "" H 7688 3750 30  0000 C CNN
F 3 "" H 7650 3900 60  0000 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 56A607BC
P 8300 4050
F 0 "R1" V 8380 4050 50  0000 C CNN
F 1 "1k" V 8300 4050 50  0000 C CNN
F 2 "" V 8230 4050 30  0000 C CNN
F 3 "" H 8300 4050 30  0000 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR015
U 1 1 56A60D28
P 2400 1150
F 0 "#PWR015" H 2400 1000 50  0001 C CNN
F 1 "VCC" H 2400 1300 50  0000 C CNN
F 2 "" H 2400 1150 60  0000 C CNN
F 3 "" H 2400 1150 60  0000 C CNN
	1    2400 1150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 56A60D5A
P 2200 1150
F 0 "#PWR016" H 2200 1000 50  0001 C CNN
F 1 "VCC" H 2200 1300 50  0000 C CNN
F 2 "" H 2200 1150 60  0000 C CNN
F 3 "" H 2200 1150 60  0000 C CNN
	1    2200 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 56A60DBD
P 2400 5150
F 0 "#PWR017" H 2400 4900 50  0001 C CNN
F 1 "GND" H 2400 5000 50  0000 C CNN
F 2 "" H 2400 5150 60  0000 C CNN
F 3 "" H 2400 5150 60  0000 C CNN
	1    2400 5150
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA1284-P IC1
U 1 1 56A61EAE
P 2400 3150
F 0 "IC1" H 1550 5030 40  0000 L BNN
F 1 "ATMEGA1284-P" H 2800 1200 40  0000 L BNN
F 2 "DIL40" H 2400 3150 30  0000 C CIN
F 3 "" H 2400 3150 60  0000 C CNN
	1    2400 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 56A64736
P 9200 5600
F 0 "P5" H 9200 5750 50  0000 C CNN
F 1 "CHROMA OUT" V 9300 5600 50  0000 C CNN
F 2 "" H 9200 5600 60  0000 C CNN
F 3 "" H 9200 5600 60  0000 C CNN
	1    9200 5600
	1    0    0    1   
$EndComp
$Comp
L GND #PWR018
U 1 1 56A64742
P 9000 5650
F 0 "#PWR018" H 9000 5400 50  0001 C CNN
F 1 "GND" H 9000 5500 50  0000 C CNN
F 2 "" H 9000 5650 60  0000 C CNN
F 3 "" H 9000 5650 60  0000 C CNN
	1    9000 5650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 56A647FD
P 8300 5400
F 0 "R3" V 8380 5400 50  0000 C CNN
F 1 "1k" V 8300 5400 50  0000 C CNN
F 2 "" V 8230 5400 30  0000 C CNN
F 3 "" H 8300 5400 30  0000 C CNN
	1    8300 5400
	1    0    0    -1  
$EndComp
NoConn ~ 1400 1450
$Comp
L ZENERsmall D1
U 1 1 56A668DE
P 4150 4700
F 0 "D1" H 4150 4800 40  0000 C CNN
F 1 "3.6V" H 4150 4600 30  0000 C CNN
F 2 "" H 4150 4700 60  0000 C CNN
F 3 "" H 4150 4700 60  0000 C CNN
	1    4150 4700
	0    1    1    0   
$EndComp
$Comp
L ZENERsmall D2
U 1 1 56A66B70
P 4400 4700
F 0 "D2" H 4400 4800 40  0000 C CNN
F 1 "3.6V" H 4400 4600 30  0000 C CNN
F 2 "" H 4400 4700 60  0000 C CNN
F 3 "" H 4400 4700 60  0000 C CNN
	1    4400 4700
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 56A66C78
P 4700 4350
F 0 "R5" V 4600 4350 50  0000 C CNN
F 1 "68" V 4700 4350 50  0000 C CNN
F 2 "" V 4630 4350 30  0000 C CNN
F 3 "" H 4700 4350 30  0000 C CNN
	1    4700 4350
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 56A66D48
P 4700 4450
F 0 "R6" V 4800 4450 50  0000 C CNN
F 1 "68" V 4700 4450 50  0000 C CNN
F 2 "" V 4630 4450 30  0000 C CNN
F 3 "" H 4700 4450 30  0000 C CNN
	1    4700 4450
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 56A670D8
P 4450 4200
F 0 "R4" V 4530 4200 50  0000 C CNN
F 1 "1k5" V 4450 4200 50  0000 C CNN
F 2 "" V 4380 4200 30  0000 C CNN
F 3 "" H 4450 4200 30  0000 C CNN
	1    4450 4200
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR019
U 1 1 56A671DD
P 4450 4050
F 0 "#PWR019" H 4450 3900 50  0001 C CNN
F 1 "VCC" H 4450 4200 50  0000 C CNN
F 2 "" H 4450 4050 60  0000 C CNN
F 3 "" H 4450 4050 60  0000 C CNN
	1    4450 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 56A67D09
P 4150 4800
F 0 "#PWR020" H 4150 4550 50  0001 C CNN
F 1 "GND" H 4150 4650 50  0000 C CNN
F 2 "" H 4150 4800 60  0000 C CNN
F 3 "" H 4150 4800 60  0000 C CNN
	1    4150 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 56A67D5A
P 4400 4800
F 0 "#PWR021" H 4400 4550 50  0001 C CNN
F 1 "GND" H 4400 4650 50  0000 C CNN
F 2 "" H 4400 4800 60  0000 C CNN
F 3 "" H 4400 4800 60  0000 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 56A6473C
P 7700 5650
F 0 "#PWR022" H 7700 5400 50  0001 C CNN
F 1 "GND" H 7700 5500 50  0000 C CNN
F 2 "" H 7700 5650 60  0000 C CNN
F 3 "" H 7700 5650 60  0000 C CNN
	1    7700 5650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 56A64730
P 7500 5600
F 0 "P3" H 7500 5750 50  0000 C CNN
F 1 "CHROMA IN" V 7600 5600 50  0000 C CNN
F 2 "" H 7500 5600 60  0000 C CNN
F 3 "" H 7500 5600 60  0000 C CNN
	1    7500 5600
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR023
U 1 1 56A21C62
P 7650 4300
F 0 "#PWR023" H 7650 4050 50  0001 C CNN
F 1 "GND" H 7650 4150 50  0000 C CNN
F 2 "" H 7650 4300 60  0000 C CNN
F 3 "" H 7650 4300 60  0000 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 56A21703
P 7450 4250
F 0 "P1" H 7450 4400 50  0000 C CNN
F 1 "LUMA IN" V 7550 4250 50  0000 C CNN
F 2 "" H 7450 4250 60  0000 C CNN
F 3 "" H 7450 4250 60  0000 C CNN
	1    7450 4250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X05 P4
U 1 1 56A68B2B
P 5300 4450
F 0 "P4" H 5300 4750 50  0000 C CNN
F 1 "USB" V 5400 4450 50  0000 C CNN
F 2 "" H 5300 4450 60  0000 C CNN
F 3 "" H 5300 4450 60  0000 C CNN
	1    5300 4450
	1    0    0    -1  
$EndComp
NoConn ~ 5100 4250
NoConn ~ 5100 4550
$Comp
L GND #PWR024
U 1 1 56A68FC9
P 5100 4650
F 0 "#PWR024" H 5100 4400 50  0001 C CNN
F 1 "GND" H 5100 4500 50  0000 C CNN
F 2 "" H 5100 4650 60  0000 C CNN
F 3 "" H 5100 4650 60  0000 C CNN
	1    5100 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 3350 5250 3350
Wire Wire Line
	5250 3550 5250 3150
Wire Wire Line
	5550 3550 5550 3150
Connection ~ 5250 3350
Connection ~ 5550 3350
Wire Wire Line
	950  1850 950  1950
Wire Wire Line
	950  2150 950  2250
Connection ~ 8300 5550
Wire Wire Line
	7650 4050 7650 4200
Wire Wire Line
	3400 4350 4550 4350
Wire Wire Line
	3400 4450 4550 4450
Connection ~ 4450 4350
Wire Wire Line
	4150 4600 4150 4350
Connection ~ 4150 4350
Wire Wire Line
	4400 4600 4400 4450
Connection ~ 4400 4450
Wire Wire Line
	4850 4350 5100 4350
Wire Wire Line
	4850 4450 5100 4450
Wire Wire Line
	3400 4250 3950 4250
Wire Wire Line
	3950 4250 3950 3450
Wire Wire Line
	3950 3450 4000 3450
Wire Wire Line
	3400 4150 3750 4150
Wire Wire Line
	3750 4150 3750 3250
Wire Wire Line
	3750 3250 4000 3250
Text Label 3400 1450 0    60   ~ 0
PA0
Text Label 3400 1550 0    60   ~ 0
PA1
Text Label 3400 1650 0    60   ~ 0
PA2
Text Label 3400 1750 0    60   ~ 0
PA3
Text Label 3400 1850 0    60   ~ 0
PA4
Text Label 3400 1950 0    60   ~ 0
PA5
Text Label 3400 2050 0    60   ~ 0
PA6
Text Label 3400 2150 0    60   ~ 0
PA7
Text Label 3400 2350 0    60   ~ 0
PB0
Text Label 3400 2450 0    60   ~ 0
PB1
Text Label 3400 2550 0    60   ~ 0
PB2
Text Label 3400 2650 0    60   ~ 0
PB3
Text Label 3400 2750 0    60   ~ 0
PB4
Text Label 3400 2850 0    60   ~ 0
PB5
Text Label 3400 2950 0    60   ~ 0
PB6
Text Label 3400 3050 0    60   ~ 0
PB7
Text Label 3400 3250 0    60   ~ 0
PC0
Text Label 3400 3350 0    60   ~ 0
PC1
Text Label 3400 3450 0    60   ~ 0
PC2
Text Label 3400 3550 0    60   ~ 0
PC3
Text Label 3400 3650 0    60   ~ 0
PC4
Text Label 3400 3750 0    60   ~ 0
PC5
Text Label 3400 3850 0    60   ~ 0
PC6
Text Label 3400 3950 0    60   ~ 0
PC7
NoConn ~ 3400 4550
NoConn ~ 3400 4650
Wire Wire Line
	7700 5550 9000 5550
$Comp
L CONN_01X08 P6
U 1 1 56A7223F
P 10800 2100
F 0 "P6" H 10800 2550 50  0000 C CNN
F 1 "PORTA" V 10900 2100 50  0000 C CNN
F 2 "" H 10800 2100 60  0000 C CNN
F 3 "" H 10800 2100 60  0000 C CNN
	1    10800 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P7
U 1 1 56A72585
P 10800 3000
F 0 "P7" H 10800 3450 50  0000 C CNN
F 1 "PORTB" V 10900 3000 50  0000 C CNN
F 2 "" H 10800 3000 60  0000 C CNN
F 3 "" H 10800 3000 60  0000 C CNN
	1    10800 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P8
U 1 1 56A726ED
P 10800 3900
F 0 "P8" H 10800 4350 50  0000 C CNN
F 1 "PORTC" V 10900 3900 50  0000 C CNN
F 2 "" H 10800 3900 60  0000 C CNN
F 3 "" H 10800 3900 60  0000 C CNN
	1    10800 3900
	1    0    0    -1  
$EndComp
Text Label 10600 1750 2    60   ~ 0
PA0
Text Label 10600 1850 2    60   ~ 0
PA1
Text Label 10600 1950 2    60   ~ 0
PA2
Text Label 10600 2050 2    60   ~ 0
PA3
Text Label 10600 2150 2    60   ~ 0
PA4
Text Label 10600 2250 2    60   ~ 0
PA5
Text Label 10600 2350 2    60   ~ 0
PA6
Text Label 10600 2450 2    60   ~ 0
PA7
Text Label 10600 2650 2    60   ~ 0
PB0
Text Label 10600 2750 2    60   ~ 0
PB1
Text Label 10600 2850 2    60   ~ 0
PB2
Text Label 10600 2950 2    60   ~ 0
PB3
Text Label 10600 3050 2    60   ~ 0
PB4
Text Label 10600 3150 2    60   ~ 0
PB5
Text Label 10600 3250 2    60   ~ 0
PB6
Text Label 10600 3350 2    60   ~ 0
PB7
Text Label 10600 3550 2    60   ~ 0
PC0
Text Label 10600 3650 2    60   ~ 0
PC1
Text Label 10600 3750 2    60   ~ 0
PC2
Text Label 10600 3850 2    60   ~ 0
PC3
Text Label 10600 3950 2    60   ~ 0
PC4
Text Label 10600 4050 2    60   ~ 0
PC5
Text Label 10600 4150 2    60   ~ 0
PC6
Text Label 10600 4250 2    60   ~ 0
PC7
$Comp
L Q_NPN_BCE Q?
U 1 1 56A78043
P 8200 3700
F 0 "Q?" H 8500 3750 50  0000 R CNN
F 1 "NPN" H 8550 3650 50  0000 R CNN
F 2 "" H 8400 3800 29  0000 C CNN
F 3 "" H 8200 3700 60  0000 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_BCE Q?
U 1 1 56A78122
P 8200 5050
F 0 "Q?" H 8500 5100 50  0000 R CNN
F 1 "NPN" H 8550 5000 50  0000 R CNN
F 2 "" H 8400 5150 29  0000 C CNN
F 3 "" H 8200 5050 60  0000 C CNN
	1    8200 5050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56A78363
P 8300 4850
F 0 "#PWR?" H 8300 4700 50  0001 C CNN
F 1 "VCC" H 8300 5000 50  0000 C CNN
F 2 "" H 8300 4850 60  0000 C CNN
F 3 "" H 8300 4850 60  0000 C CNN
	1    8300 4850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 56A78618
P 8300 3500
F 0 "#PWR?" H 8300 3350 50  0001 C CNN
F 1 "VCC" H 8300 3650 50  0000 C CNN
F 2 "" H 8300 3500 60  0000 C CNN
F 3 "" H 8300 3500 60  0000 C CNN
	1    8300 3500
	1    0    0    -1  
$EndComp
NoConn ~ 3400 4750
Text Label 4000 3350 2    60   ~ 0
LUMA
Wire Wire Line
	1400 1850 950  1850
Wire Wire Line
	950  2250 1400 2250
Text Label 7650 3750 2    60   ~ 0
LUMA
Text Label 3400 4850 0    60   ~ 0
OUT
Text Label 8000 3700 2    60   ~ 0
OUT
Text Label 8000 5050 2    60   ~ 0
OUT
Wire Wire Line
	7650 4200 8950 4200
Connection ~ 8300 4200
$EndSCHEMATC
