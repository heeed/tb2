EESchema Schematic File Version 4
EELAYER 26 0
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
L Connector:Raspberry_Pi_2_3 J1
U 1 1 5C7ED889
P 2450 2550
F 0 "J1" H 2450 4028 50  0000 C CNN
F 1 "Raspberry Pi Zero W" H 2450 3937 50  0000 C CNN
F 2 "" H 2450 2550 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2450 2550 50  0001 C CNN
	1    2450 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J2
U 1 1 5C7ED9F4
P 4950 2600
F 0 "J2" H 4950 4078 50  0000 C CNN
F 1 "Pi juice" H 4950 3987 50  0000 C CNN
F 2 "" H 4950 2600 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 4950 2600 50  0001 C CNN
	1    4950 2600
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U?
U 1 1 5C7EDB92
P 4950 6150
F 0 "U?" H 4950 7328 50  0000 C CNN
F 1 "L293D" H 4950 7237 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5200 5400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 4650 6850 50  0001 C CNN
	1    4950 6150
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:L293D U?
U 1 1 5C7EDEAE
P 2350 6200
F 0 "U?" H 2350 7378 50  0000 C CNN
F 1 "L293D" H 2350 7287 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 2600 5450 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 2050 6900 50  0001 C CNN
	1    2350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5150 5050 4600
Wire Wire Line
	5050 4600 2450 4600
Wire Wire Line
	2450 4600 2450 5200
Wire Wire Line
	2250 5200 2250 4900
Wire Wire Line
	2250 4900 4850 4900
Wire Wire Line
	4850 4900 4850 5150
Wire Wire Line
	1100 5200 2250 5200
Connection ~ 2250 5200
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5C7EEDAD
P 3200 5650
F 0 "J?" H 3280 5642 50  0000 L CNN
F 1 "Motor1" H 3280 5551 50  0000 L CNN
F 2 "" H 3200 5650 50  0001 C CNN
F 3 "~" H 3200 5650 50  0001 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5800 3000 5800
Wire Wire Line
	3000 5800 3000 5750
Wire Wire Line
	3000 5650 3000 5600
Wire Wire Line
	2850 5600 3000 5600
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5C7EF31D
P 3200 6250
F 0 "J?" H 3280 6242 50  0000 L CNN
F 1 "Motor2" H 3280 6151 50  0000 L CNN
F 2 "" H 3200 6250 50  0001 C CNN
F 3 "~" H 3200 6250 50  0001 C CNN
	1    3200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6400 3000 6400
Wire Wire Line
	3000 6400 3000 6350
Wire Wire Line
	3000 6250 3000 6200
Wire Wire Line
	2850 6200 3000 6200
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5C7EF5AB
P 5750 5600
F 0 "J?" H 5830 5592 50  0000 L CNN
F 1 "Motor3" H 5830 5501 50  0000 L CNN
F 2 "" H 5750 5600 50  0001 C CNN
F 3 "~" H 5750 5600 50  0001 C CNN
	1    5750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5750 5550 5750
Wire Wire Line
	5550 5750 5550 5700
Wire Wire Line
	5550 5600 5550 5550
Wire Wire Line
	5400 5550 5550 5550
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5C7EF7F1
P 5800 6200
F 0 "J?" H 5880 6192 50  0000 L CNN
F 1 "Motor4" H 5880 6101 50  0000 L CNN
F 2 "" H 5800 6200 50  0001 C CNN
F 3 "~" H 5800 6200 50  0001 C CNN
	1    5800 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6350 5600 6350
Wire Wire Line
	5600 6350 5600 6300
Wire Wire Line
	5600 6200 5600 6150
Wire Wire Line
	5450 6150 5600 6150
Wire Wire Line
	4750 850  4750 1300
Wire Wire Line
	1100 850  4750 850 
Wire Wire Line
	1100 1250 1100 5200
Wire Wire Line
	1100 850  1100 1250
Connection ~ 1100 1250
Wire Wire Line
	1100 1250 2250 1250
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5C7F0E8B
P 5800 4650
F 0 "J?" H 5880 4642 50  0000 L CNN
F 1 "Motor Power" H 5880 4551 50  0000 L CNN
F 2 "" H 5800 4650 50  0001 C CNN
F 3 "~" H 5800 4650 50  0001 C CNN
	1    5800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4800 5600 4800
Wire Wire Line
	5600 4800 5600 4750
Wire Wire Line
	5600 4650 5600 4600
Wire Wire Line
	5050 4600 5600 4600
Connection ~ 5050 4600
$Comp
L power:GND #PWR?
U 1 1 5C7F1886
P 5450 4800
F 0 "#PWR?" H 5450 4550 50  0001 C CNN
F 1 "GND" H 5455 4627 50  0000 C CNN
F 2 "" H 5450 4800 50  0001 C CNN
F 3 "" H 5450 4800 50  0001 C CNN
	1    5450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C7F191D
P 4950 7100
F 0 "#PWR?" H 4950 6850 50  0001 C CNN
F 1 "GND" H 4955 6927 50  0000 C CNN
F 2 "" H 4950 7100 50  0001 C CNN
F 3 "" H 4950 7100 50  0001 C CNN
	1    4950 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6950 4850 6950
Connection ~ 4850 6950
Wire Wire Line
	4850 6950 4950 6950
Connection ~ 5050 6950
Wire Wire Line
	5050 6950 5150 6950
Wire Wire Line
	4950 7100 4950 6950
Connection ~ 4950 6950
Wire Wire Line
	4950 6950 5050 6950
$Comp
L power:GND #PWR?
U 1 1 5C7F24B9
P 2350 7200
F 0 "#PWR?" H 2350 6950 50  0001 C CNN
F 1 "GND" H 2355 7027 50  0000 C CNN
F 2 "" H 2350 7200 50  0001 C CNN
F 3 "" H 2350 7200 50  0001 C CNN
	1    2350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7000 2250 7000
Connection ~ 2250 7000
Wire Wire Line
	2250 7000 2350 7000
Connection ~ 2450 7000
Wire Wire Line
	2450 7000 2550 7000
Wire Wire Line
	2350 7000 2350 7200
Connection ~ 2350 7000
Wire Wire Line
	2350 7000 2450 7000
Wire Wire Line
	4900 4100 5050 4100
$Comp
L power:GND #PWR?
U 1 1 5C7F3B67
P 4900 4100
F 0 "#PWR?" H 4900 3850 50  0001 C CNN
F 1 "GND" H 4905 3927 50  0000 C CNN
F 2 "" H 4900 4100 50  0001 C CNN
F 3 "" H 4900 4100 50  0001 C CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3900 4650 3900
Connection ~ 4650 3900
Wire Wire Line
	4650 3900 4750 3900
Connection ~ 4750 3900
Wire Wire Line
	4750 3900 4850 3900
Connection ~ 4850 3900
Wire Wire Line
	4850 3900 4950 3900
Connection ~ 4950 3900
Connection ~ 5050 3900
Wire Wire Line
	5050 3900 5150 3900
Connection ~ 5150 3900
Wire Wire Line
	5150 3900 5250 3900
Wire Wire Line
	5050 4100 5050 3900
Wire Wire Line
	2300 4000 2450 4000
$Comp
L power:GND #PWR?
U 1 1 5C7F56D2
P 2300 4000
F 0 "#PWR?" H 2300 3750 50  0001 C CNN
F 1 "GND" H 2305 3827 50  0000 C CNN
F 2 "" H 2300 4000 50  0001 C CNN
F 3 "" H 2300 4000 50  0001 C CNN
	1    2300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3850 2150 3850
Wire Wire Line
	5000 3900 5050 3900
Wire Wire Line
	4950 3900 5050 3900
Connection ~ 2150 3850
Wire Wire Line
	2150 3850 2250 3850
Connection ~ 2250 3850
Wire Wire Line
	2250 3850 2350 3850
Connection ~ 2350 3850
Wire Wire Line
	2350 3850 2450 3850
Connection ~ 2450 3850
Wire Wire Line
	2450 3850 2550 3850
Connection ~ 2550 3850
Wire Wire Line
	2550 3850 2650 3850
Connection ~ 2650 3850
Wire Wire Line
	2650 3850 2750 3850
Wire Wire Line
	2450 4000 2450 3850
Wire Wire Line
	1650 2750 1400 2750
Wire Wire Line
	1400 2750 1400 5800
Wire Wire Line
	1400 5800 1850 5800
Wire Wire Line
	1650 2850 1500 2850
Wire Wire Line
	1500 2850 1500 5600
Wire Wire Line
	1500 5600 1850 5600
$EndSCHEMATC
