EESchema Schematic File Version 4
EELAYER 30 0
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
L Device:Crystal Y1
U 1 1 631D1D82
P 3700 3300
F 0 "Y1" V 3654 3431 50  0000 L CNN
F 1 "16MHz" V 3700 2900 50  0000 L CNN
F 2 "Crystal:Crystal_HC52-8mm_Vertical" H 3700 3300 50  0001 C CNN
F 3 "~" H 3700 3300 50  0001 C CNN
	1    3700 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 631D327B
P 4050 3550
F 0 "C4" V 3798 3550 50  0000 C CNN
F 1 "22p" V 3889 3550 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 4088 3400 50  0001 C CNN
F 3 "~" H 4050 3550 50  0001 C CNN
	1    4050 3550
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 631D3BC8
P 4050 3050
F 0 "C3" V 3798 3050 50  0000 C CNN
F 1 "22p" V 3889 3050 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 4088 2900 50  0001 C CNN
F 3 "~" H 4050 3050 50  0001 C CNN
	1    4050 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 631D53B0
P 4250 3800
F 0 "#PWR016" H 4250 3550 50  0001 C CNN
F 1 "GND" H 4255 3627 50  0000 C CNN
F 2 "" H 4250 3800 50  0001 C CNN
F 3 "" H 4250 3800 50  0001 C CNN
	1    4250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3050 4200 3050
Wire Wire Line
	3900 3050 3700 3050
Wire Wire Line
	3700 3050 3700 3150
Wire Wire Line
	4250 3050 4250 3550
Wire Wire Line
	4200 3550 4250 3550
Connection ~ 4250 3550
Wire Wire Line
	4250 3550 4250 3800
Wire Wire Line
	3900 3550 3700 3550
Wire Wire Line
	3700 3550 3700 3450
Wire Wire Line
	3700 3550 3500 3550
Connection ~ 3700 3550
Wire Wire Line
	3700 3050 3500 3050
Connection ~ 3700 3050
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 631D9A85
P 1300 6900
F 0 "J1" H 971 6996 50  0000 R CNN
F 1 "AVR-ISP-6" H 971 6905 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 1050 6950 50  0001 C CNN
F 3 " ~" H 25  6350 50  0001 C CNN
	1    1300 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 631DAA91
P 2250 6800
F 0 "R1" H 2320 6846 50  0000 L CNN
F 1 "10K" H 2320 6755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2180 6800 50  0001 C CNN
F 3 "~" H 2250 6800 50  0001 C CNN
	1    2250 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 631DB30A
P 2250 6500
F 0 "#PWR010" H 2250 6350 50  0001 C CNN
F 1 "+5V" H 2265 6673 50  0000 C CNN
F 2 "" H 2250 6500 50  0001 C CNN
F 3 "" H 2250 6500 50  0001 C CNN
	1    2250 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6500 2250 6650
$Comp
L power:GND #PWR06
U 1 1 631E1FB8
P 1200 7450
F 0 "#PWR06" H 1200 7200 50  0001 C CNN
F 1 "GND" H 1205 7277 50  0000 C CNN
F 2 "" H 1200 7450 50  0001 C CNN
F 3 "" H 1200 7450 50  0001 C CNN
	1    1200 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 7450 1200 7300
$Comp
L power:+5V #PWR05
U 1 1 631E28A2
P 1200 6250
F 0 "#PWR05" H 1200 6100 50  0001 C CNN
F 1 "+5V" H 1215 6423 50  0000 C CNN
F 2 "" H 1200 6250 50  0001 C CNN
F 3 "" H 1200 6250 50  0001 C CNN
	1    1200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6250 1200 6400
Text Label 2550 7000 0    50   ~ 0
~RESET
Wire Wire Line
	2250 6950 2250 7000
Text Label 1900 6800 0    50   ~ 0
MOSI
Text Label 1900 6700 0    50   ~ 0
MISO
Text Label 1900 6900 0    50   ~ 0
SCK
Wire Wire Line
	1900 6700 1700 6700
Wire Wire Line
	1700 6800 1900 6800
Wire Wire Line
	1900 6900 1700 6900
$Comp
L Device:C C2
U 1 1 632029DB
P 1000 2950
F 0 "C2" H 1115 2996 50  0000 L CNN
F 1 "10n" H 1115 2905 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 1038 2800 50  0001 C CNN
F 3 "~" H 1000 2950 50  0001 C CNN
	1    1000 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 632032FD
P 1000 3250
F 0 "#PWR03" H 1000 3000 50  0001 C CNN
F 1 "GND" H 1005 3077 50  0000 C CNN
F 2 "" H 1000 3250 50  0001 C CNN
F 3 "" H 1000 3250 50  0001 C CNN
	1    1000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 6320D00B
P 850 850
F 0 "#PWR01" H 850 700 50  0001 C CNN
F 1 "+5V" H 865 1023 50  0000 C CNN
F 2 "" H 850 850 50  0001 C CNN
F 3 "" H 850 850 50  0001 C CNN
	1    850  850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6320D359
P 850 1350
F 0 "#PWR02" H 850 1100 50  0001 C CNN
F 1 "GND" H 855 1177 50  0000 C CNN
F 2 "" H 850 1350 50  0001 C CNN
F 3 "" H 850 1350 50  0001 C CNN
	1    850  1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6320DB7E
P 850 1100
F 0 "C1" H 965 1146 50  0000 L CNN
F 1 "10u" H 965 1055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_Tantal_D4.5mm_P2.50mm" H 888 950 50  0001 C CNN
F 3 "~" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1350 850  1250
Wire Wire Line
	850  950  850  850 
$Comp
L power:GND #PWR04
U 1 1 63211587
P 1200 1350
F 0 "#PWR04" H 1200 1100 50  0001 C CNN
F 1 "GND" H 1205 1177 50  0000 C CNN
F 2 "" H 1200 1350 50  0001 C CNN
F 3 "" H 1200 1350 50  0001 C CNN
	1    1200 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 63211B65
P 2500 750
F 0 "#PWR011" H 2500 600 50  0001 C CNN
F 1 "+5V" H 2515 923 50  0000 C CNN
F 2 "" H 2500 750 50  0001 C CNN
F 3 "" H 2500 750 50  0001 C CNN
	1    2500 750 
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2 J4
U 1 1 6321922B
P 6750 5600
F 0 "J4" H 6570 5583 50  0000 R CNN
F 1 "CLOCK_OUT" H 6570 5674 50  0000 R CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 6750 5600 50  0001 C CNN
F 3 "~" H 6750 5600 50  0001 C CNN
	1    6750 5600
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack2 J5
U 1 1 6321A6EF
P 6750 6150
F 0 "J5" H 6570 6133 50  0000 R CNN
F 1 "SUBDIV_OUT" H 6570 6224 50  0000 R CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 6750 6150 50  0001 C CNN
F 3 "~" H 6750 6150 50  0001 C CNN
	1    6750 6150
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6322250C
P 4100 5500
F 0 "SW1" V 4054 5648 50  0000 L CNN
F 1 "SW_Push" V 4145 5648 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4100 5700 50  0001 C CNN
F 3 "~" H 4100 5700 50  0001 C CNN
	1    4100 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 63223989
P 4100 5950
F 0 "R4" H 4170 5996 50  0000 L CNN
F 1 "10K" H 4170 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4030 5950 50  0001 C CNN
F 3 "~" H 4100 5950 50  0001 C CNN
	1    4100 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 63227A93
P 4100 6250
F 0 "#PWR015" H 4100 6000 50  0001 C CNN
F 1 "GND" H 4105 6077 50  0000 C CNN
F 2 "" H 4100 6250 50  0001 C CNN
F 3 "" H 4100 6250 50  0001 C CNN
	1    4100 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6250 4100 6100
Wire Wire Line
	4100 5800 4100 5750
Wire Wire Line
	4100 5300 4100 5200
Wire Wire Line
	7200 2400 6950 2400
Wire Wire Line
	6950 1450 5700 1450
Wire Wire Line
	5700 1350 6850 1350
Wire Wire Line
	6850 2300 7200 2300
Wire Wire Line
	5700 1250 6750 1250
Wire Wire Line
	6750 2200 7200 2200
Wire Wire Line
	5700 1150 6650 1150
Wire Wire Line
	6650 2100 7200 2100
Wire Wire Line
	5700 1050 6550 1050
Wire Wire Line
	6550 2000 7200 2000
Wire Wire Line
	5700 950  6450 950 
Wire Wire Line
	6450 1900 7200 1900
Wire Wire Line
	7200 1800 6350 1800
Wire Wire Line
	6350 850  5700 850 
Wire Wire Line
	6950 2400 6950 1450
Wire Wire Line
	6750 2200 6750 1250
Wire Wire Line
	6650 2100 6650 1150
Wire Wire Line
	6550 2000 6550 1050
Wire Wire Line
	6450 1900 6450 950 
Wire Wire Line
	6350 1800 6350 850 
Wire Wire Line
	7850 2500 7800 2500
Wire Wire Line
	7850 2500 7850 2700
Wire Wire Line
	9500 2500 9450 2500
Connection ~ 6950 1450
Wire Wire Line
	6850 2300 6850 1350
Connection ~ 6850 1350
Wire Wire Line
	6750 1250 8400 1250
Connection ~ 6750 1250
Connection ~ 6650 1150
Connection ~ 6550 1050
Connection ~ 6450 950 
Wire Wire Line
	6350 850  8000 850 
Connection ~ 6350 850 
Wire Wire Line
	10500 2400 10250 2400
Wire Wire Line
	10150 2300 10500 2300
Wire Wire Line
	10050 2200 10500 2200
Wire Wire Line
	9950 2100 10500 2100
Wire Wire Line
	9850 2000 10500 2000
Wire Wire Line
	9750 1900 10500 1900
Wire Wire Line
	10500 1800 9650 1800
Wire Wire Line
	10250 2400 10250 1450
Wire Wire Line
	10150 2300 10150 1350
Wire Wire Line
	10050 2200 10050 1250
Wire Wire Line
	9950 2100 9950 1150
Wire Wire Line
	9850 2000 9850 1050
Wire Wire Line
	9750 1900 9750 950 
Wire Wire Line
	9650 1800 9650 850 
Wire Wire Line
	11150 2500 11100 2500
Wire Wire Line
	8400 1250 10050 1250
Wire Wire Line
	8000 850  9650 850 
Connection ~ 8000 850 
Connection ~ 8400 1250
Wire Wire Line
	9500 2500 9500 2800
Wire Wire Line
	11150 2500 11150 2900
$Comp
L Regulator_Linear:L7805 U2
U 1 1 633A9C5D
P 2100 850
F 0 "U2" H 2100 1092 50  0000 C CNN
F 1 "L7805" H 2100 1001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2125 700 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2100 800 50  0001 C CNN
	1    2100 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 633B7AC5
P 2100 1250
F 0 "#PWR09" H 2100 1000 50  0001 C CNN
F 1 "GND" H 2105 1077 50  0000 C CNN
F 2 "" H 2100 1250 50  0001 C CNN
F 3 "" H 2100 1250 50  0001 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1250 2100 1150
$Comp
L Switch:SW_Rotary8 SW3
U 1 1 6343AB1D
P 5750 3900
F 0 "SW3" H 5652 4481 50  0000 C CNN
F 1 "SW_Rotary8" H 5652 4390 50  0000 C CNN
F 2 "synth:RM100772BCB" H 5550 4600 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/C200/DS-Serie%23LOR.pdf" H 5550 4600 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 63444956
P 6500 3550
F 0 "R6" V 6500 3850 50  0000 C CNN
F 1 "10K" V 6500 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 3550 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 63446D80
P 6500 3650
F 0 "R7" V 6500 3950 50  0000 C CNN
F 1 "10K" V 6500 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 3650 50  0001 C CNN
F 3 "~" H 6500 3650 50  0001 C CNN
	1    6500 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 63446FD2
P 6500 3750
F 0 "R8" V 6500 4050 50  0000 C CNN
F 1 "10K" V 6500 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 3750 50  0001 C CNN
F 3 "~" H 6500 3750 50  0001 C CNN
	1    6500 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 6344735F
P 6500 3850
F 0 "R9" V 6500 4150 50  0000 C CNN
F 1 "10K" V 6500 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 3850 50  0001 C CNN
F 3 "~" H 6500 3850 50  0001 C CNN
	1    6500 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 63447683
P 6500 4050
F 0 "R10" V 6500 3750 50  0000 C CNN
F 1 "10K" V 6500 4050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 4050 50  0001 C CNN
F 3 "~" H 6500 4050 50  0001 C CNN
	1    6500 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 63447B60
P 6500 4150
F 0 "R11" V 6500 4450 50  0000 C CNN
F 1 "10K" V 6500 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 4150 50  0001 C CNN
F 3 "~" H 6500 4150 50  0001 C CNN
	1    6500 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 63447ED8
P 6500 4250
F 0 "R12" V 6500 4550 50  0000 C CNN
F 1 "10K" V 6500 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6430 4250 50  0001 C CNN
F 3 "~" H 6500 4250 50  0001 C CNN
	1    6500 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4300 6250 4300
Wire Wire Line
	6150 4200 6350 4200
Wire Wire Line
	6350 4200 6350 4250
Wire Wire Line
	6650 4250 6700 4250
Wire Wire Line
	6700 4250 6700 4300
Wire Wire Line
	6700 4300 6250 4300
Connection ~ 6250 4300
Wire Wire Line
	6150 4100 6350 4100
Wire Wire Line
	6350 4100 6350 4150
Wire Wire Line
	6650 4150 6700 4150
Wire Wire Line
	6700 4150 6700 4200
Wire Wire Line
	6700 4200 6350 4200
Connection ~ 6350 4200
Wire Wire Line
	6350 4000 6350 4050
Wire Wire Line
	6650 4050 6700 4050
Wire Wire Line
	6700 4050 6700 4100
Wire Wire Line
	6700 4100 6350 4100
Connection ~ 6350 4100
Wire Wire Line
	6350 3800 6350 3850
Wire Wire Line
	6650 3850 6700 3850
Wire Wire Line
	6700 3850 6700 4000
Wire Wire Line
	6700 4000 6350 4000
Connection ~ 6350 4000
Wire Wire Line
	6350 3700 6350 3750
Wire Wire Line
	6350 3600 6350 3650
Wire Wire Line
	6150 4000 6350 4000
Wire Wire Line
	6150 3800 6350 3800
Wire Wire Line
	6150 3700 6350 3700
Wire Wire Line
	6150 3600 6350 3600
Wire Wire Line
	6150 3500 6250 3500
Wire Wire Line
	6350 3500 6350 3550
Wire Wire Line
	6650 3550 6700 3550
Wire Wire Line
	6700 3550 6700 3600
Wire Wire Line
	6700 3600 6350 3600
Connection ~ 6350 3600
Wire Wire Line
	6650 3650 6700 3650
Wire Wire Line
	6700 3650 6700 3700
Wire Wire Line
	6700 3700 6350 3700
Connection ~ 6350 3700
Wire Wire Line
	6650 3750 6700 3750
Wire Wire Line
	6700 3750 6700 3800
Wire Wire Line
	6700 3800 6350 3800
Connection ~ 6350 3800
Wire Wire Line
	6250 3400 6250 3500
Connection ~ 6250 3500
Wire Wire Line
	6250 3500 6350 3500
Text Label 4950 3900 2    50   ~ 0
KNOB
Wire Wire Line
	4950 3900 5150 3900
Text Label 6350 5600 2    50   ~ 0
CLOCK_OUT
Text Label 6350 6150 2    50   ~ 0
SUBDIV_OUT
Wire Wire Line
	6350 6150 6550 6150
Wire Wire Line
	6350 5600 6550 5600
$Comp
L Switch:SW_Push SW2
U 1 1 635529EA
P 5250 5500
F 0 "SW2" V 5204 5648 50  0000 L CNN
F 1 "SW_Push" V 5295 5648 50  0000 L CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5250 5700 50  0001 C CNN
F 3 "~" H 5250 5700 50  0001 C CNN
	1    5250 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 635529F4
P 5250 5950
F 0 "R5" H 5320 5996 50  0000 L CNN
F 1 "10K" H 5320 5905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 5180 5950 50  0001 C CNN
F 3 "~" H 5250 5950 50  0001 C CNN
	1    5250 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 63552A08
P 5250 6250
F 0 "#PWR018" H 5250 6000 50  0001 C CNN
F 1 "GND" H 5255 6077 50  0000 C CNN
F 2 "" H 5250 6250 50  0001 C CNN
F 3 "" H 5250 6250 50  0001 C CNN
	1    5250 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6250 5250 6100
Wire Wire Line
	5250 5800 5250 5750
Wire Wire Line
	5250 5300 5250 5200
Text Label 3850 5750 2    50   ~ 0
SW1
Text Label 5050 5750 2    50   ~ 0
SW2
Wire Wire Line
	5050 5750 5250 5750
Connection ~ 5250 5750
Wire Wire Line
	5250 5750 5250 5700
Wire Wire Line
	3850 5750 4100 5750
Connection ~ 4100 5750
Wire Wire Line
	4100 5750 4100 5700
$Comp
L power:GND #PWR08
U 1 1 635867DA
P 1850 5500
F 0 "#PWR08" H 1850 5250 50  0001 C CNN
F 1 "GND" H 1855 5327 50  0000 C CNN
F 2 "" H 1850 5500 50  0001 C CNN
F 3 "" H 1850 5500 50  0001 C CNN
	1    1850 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 63586C31
P 1850 2200
F 0 "#PWR07" H 1850 2050 50  0001 C CNN
F 1 "+5V" H 1865 2373 50  0000 C CNN
F 2 "" H 1850 2200 50  0001 C CNN
F 3 "" H 1850 2200 50  0001 C CNN
	1    1850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2350 1850 2250
Wire Wire Line
	1850 5500 1850 5350
Text Label 2700 3150 0    50   ~ 0
SCK
Text Label 2700 3550 0    50   ~ 0
B_KNOB
Wire Wire Line
	2700 3550 2450 3550
Text Label 3250 3000 0    50   ~ 0
MOSI
Text Label 2700 3050 0    50   ~ 0
MISO
Text Label 2700 2650 0    50   ~ 0
B_SW1
Text Label 2700 2750 0    50   ~ 0
B_SW2
$Comp
L Connector:AudioJack2 J3
U 1 1 6328406C
P 6750 5200
F 0 "J3" H 6570 5183 50  0000 R CNN
F 1 "CV_IN" H 6570 5274 50  0000 R CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 6750 5200 50  0001 C CNN
F 3 "~" H 6750 5200 50  0001 C CNN
	1    6750 5200
	1    0    0    1   
$EndComp
Text Label 7150 5200 0    50   ~ 0
CV_IN
Wire Wire Line
	7150 5200 6950 5200
Text Label 2700 3650 0    50   ~ 0
B_CV_IN
Text Label 2700 2950 0    50   ~ 0
B_SUBDIV_OUT
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U1
U 1 1 6338075D
P 1850 3850
F 0 "U1" H 1206 3896 50  0000 R CNN
F 1 "ATmega328P-PU" H 1206 3805 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 1850 3850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 1850 3850 50  0001 C CNN
	1    1850 3850
	1    0    0    -1  
$EndComp
$Comp
L synth:SM460281N U3
U 1 1 633C33D1
P 7500 2100
F 0 "U3" H 7500 2767 50  0000 C CNN
F 1 "SM460281N" H 7500 2676 50  0000 C CNN
F 2 "synth:SM460281N_ARKLED_0.28mm_CC_7-segment_LED" H 7500 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809052128_ARKLED-Wuxi-ARK-Tech-Elec-SM460281N-7_C252194.pdf" H 7100 2650 50  0001 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
$Comp
L synth:SM460281N U4
U 1 1 634FBEE0
P 9150 2100
F 0 "U4" H 9150 2767 50  0000 C CNN
F 1 "SM460281N" H 9150 2676 50  0000 C CNN
F 2 "synth:SM460281N_ARKLED_0.28mm_CC_7-segment_LED" H 9150 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809052128_ARKLED-Wuxi-ARK-Tech-Elec-SM460281N-7_C252194.pdf" H 8750 2650 50  0001 C CNN
	1    9150 2100
	1    0    0    -1  
$EndComp
$Comp
L synth:SM460281N U5
U 1 1 6352FAB2
P 10800 2100
F 0 "U5" H 10800 2767 50  0000 C CNN
F 1 "SM460281N" H 10800 2676 50  0000 C CNN
F 2 "synth:SM460281N_ARKLED_0.28mm_CC_7-segment_LED" H 10800 1550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1809052128_ARKLED-Wuxi-ARK-Tech-Elec-SM460281N-7_C252194.pdf" H 10400 2650 50  0001 C CNN
	1    10800 2100
	1    0    0    -1  
$EndComp
Text Label 5700 850  2    50   ~ 0
LED6
Text Label 5700 950  2    50   ~ 0
LED5
Text Label 5700 1050 2    50   ~ 0
LED4
Text Label 5700 1150 2    50   ~ 0
LED3
Text Label 5700 1250 2    50   ~ 0
LED2
Text Label 5700 1350 2    50   ~ 0
LED1
Text Label 5700 1450 2    50   ~ 0
LED0
Text Label 6250 2700 2    50   ~ 0
LED_C1
Text Label 6250 2800 2    50   ~ 0
LED_C2
Text Label 6250 2900 2    50   ~ 0
LED_C3
$Comp
L synth:EURORACK_CONN_10 J2
U 1 1 63734A1D
P 1600 1250
F 0 "J2" H 1780 1296 50  0000 L CNN
F 1 "EURORACK_CONN_10" H 1780 1205 50  0000 L CNN
F 2 "synth:EURORACK_10_IDC" V 1800 700 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" H 1500 1550 50  0001 C CNN
	1    1600 1250
	1    0    0    -1  
$EndComp
NoConn ~ 1600 1600
Wire Wire Line
	1200 1350 1200 1250
Wire Wire Line
	1200 1250 1300 1250
Wire Wire Line
	1800 850  1600 850 
Wire Wire Line
	1600 850  1600 900 
Wire Wire Line
	2500 750  2500 850 
Wire Wire Line
	2500 850  2400 850 
Wire Wire Line
	2700 3650 2450 3650
Wire Wire Line
	2450 2950 2600 2950
Wire Wire Line
	2700 2850 2450 2850
Wire Wire Line
	2450 2750 2700 2750
Wire Wire Line
	2700 2650 2450 2650
Wire Wire Line
	2450 3350 3500 3350
Wire Wire Line
	3500 3350 3500 3550
Wire Wire Line
	2450 3250 3500 3250
Wire Wire Line
	3500 3250 3500 3050
Text Label 3150 3750 0    50   ~ 0
B_LED_C1
Text Label 3150 3850 0    50   ~ 0
B_LED_C2
Text Label 3150 3950 0    50   ~ 0
B_LED_C3
Wire Wire Line
	2550 7000 2250 7000
Wire Wire Line
	2600 3000 2600 2950
Connection ~ 2600 2950
Wire Wire Line
	2600 2950 2700 2950
Wire Wire Line
	2700 4150 2450 4150
Wire Wire Line
	2450 3050 2700 3050
Wire Wire Line
	2450 3150 2700 3150
Wire Wire Line
	2600 3000 3250 3000
Wire Wire Line
	2700 3950 2450 3950
Wire Wire Line
	2450 3850 2700 3850
Wire Wire Line
	2700 3750 2450 3750
Wire Wire Line
	2700 4350 2450 4350
Wire Wire Line
	2450 4450 2700 4450
Wire Wire Line
	2700 4550 2450 4550
Wire Wire Line
	2450 4650 2700 4650
Wire Wire Line
	2700 4750 2450 4750
Wire Wire Line
	2450 4850 2700 4850
Wire Wire Line
	2700 4950 2450 4950
$Comp
L Device:LED D1
U 1 1 63D8017D
P 3450 1200
F 0 "D1" V 3489 1082 50  0000 R CNN
F 1 "LED" V 3398 1082 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 3450 1200 50  0001 C CNN
F 3 "~" H 3450 1200 50  0001 C CNN
	1    3450 1200
	0    -1   -1   0   
$EndComp
Text Label 3300 1850 2    50   ~ 0
LED_A
Wire Wire Line
	3300 1850 3450 1850
Wire Wire Line
	3450 1850 3450 1750
Wire Wire Line
	3450 1450 3450 1350
Wire Wire Line
	3450 1050 3450 950 
$Comp
L Device:LED D2
U 1 1 63DA6C63
P 4050 1200
F 0 "D2" V 4089 1082 50  0000 R CNN
F 1 "LED" V 3998 1082 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 4050 1200 50  0001 C CNN
F 3 "~" H 4050 1200 50  0001 C CNN
	1    4050 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 63DA6C6D
P 4050 1600
F 0 "R3" H 4120 1646 50  0000 L CNN
F 1 "1K" H 4120 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3980 1600 50  0001 C CNN
F 3 "~" H 4050 1600 50  0001 C CNN
	1    4050 1600
	1    0    0    -1  
$EndComp
Text Label 3900 1850 2    50   ~ 0
LED_B
Wire Wire Line
	3900 1850 4050 1850
Wire Wire Line
	4050 1850 4050 1750
Wire Wire Line
	4050 1450 4050 1350
Wire Wire Line
	4050 1050 4050 950 
Text Label 2700 4050 0    50   ~ 0
B_LED_A
Wire Wire Line
	2700 4050 2450 4050
Wire Wire Line
	2450 5050 2700 5050
Wire Wire Line
	1950 2350 1950 2250
Wire Wire Line
	1950 2250 1850 2250
Connection ~ 1850 2250
Wire Wire Line
	1850 2250 1850 2200
Wire Wire Line
	2250 7000 1700 7000
Connection ~ 2250 7000
Wire Wire Line
	1000 3100 1000 3250
Wire Wire Line
	1000 2800 1000 2650
Wire Wire Line
	1000 2650 1250 2650
$Comp
L Connector:Conn_01x05_Male J10
U 1 1 63323658
P 10200 3900
F 0 "J10" H 10308 4281 50  0000 C CNN
F 1 "Conn_01x05_Male" V 10100 4000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10200 3900 50  0001 C CNN
F 3 "~" H 10200 3900 50  0001 C CNN
	1    10200 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J6
U 1 1 63325045
P 9800 3900
F 0 "J6" H 9650 4300 50  0000 L CNN
F 1 "Conn_01x05_Female" V 9850 3700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 9800 3900 50  0001 C CNN
F 3 "~" H 9800 3900 50  0001 C CNN
	1    9800 3900
	1    0    0    -1  
$EndComp
Text Label 2700 5050 0    50   ~ 0
B_LED_B
Text Label 2700 4350 0    50   ~ 0
B_LED0
Text Label 2700 4450 0    50   ~ 0
B_LED1
Text Label 2700 4550 0    50   ~ 0
B_LED2
Text Label 2700 4650 0    50   ~ 0
B_LED3
Text Label 2700 4750 0    50   ~ 0
B_LED4
Text Label 2700 4850 0    50   ~ 0
B_LED5
Text Label 2700 4950 0    50   ~ 0
B_LED6
Text Label 2700 4150 0    50   ~ 0
~RESET
Text Label 9500 6350 2    50   ~ 0
B_LED_B
Text Label 9500 4000 2    50   ~ 0
B_LED0
Text Label 9500 4100 2    50   ~ 0
B_LED1
Text Label 9500 4450 2    50   ~ 0
B_LED2
Text Label 9500 4550 2    50   ~ 0
B_LED3
Text Label 9500 4650 2    50   ~ 0
B_LED4
Text Label 9500 4750 2    50   ~ 0
B_LED5
Text Label 9500 4850 2    50   ~ 0
B_LED6
$Comp
L power:+5V #PWR0101
U 1 1 6334253F
P 9000 5450
F 0 "#PWR0101" H 9000 5300 50  0001 C CNN
F 1 "+5V" H 9015 5623 50  0000 C CNN
F 2 "" H 9000 5450 50  0001 C CNN
F 3 "" H 9000 5450 50  0001 C CNN
	1    9000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 63342CA7
P 9000 5750
F 0 "#PWR0102" H 9000 5500 50  0001 C CNN
F 1 "GND" H 9005 5577 50  0000 C CNN
F 2 "" H 9000 5750 50  0001 C CNN
F 3 "" H 9000 5750 50  0001 C CNN
	1    9000 5750
	1    0    0    -1  
$EndComp
Text Label 9500 6050 2    50   ~ 0
B_KNOB
Text Label 9500 3900 2    50   ~ 0
B_CV_IN
Text Label 9500 5250 2    50   ~ 0
B_LED_C1
Text Label 9500 5350 2    50   ~ 0
B_LED_C2
Text Label 9500 5450 2    50   ~ 0
B_LED_C3
Text Label 9500 6250 2    50   ~ 0
B_LED_A
Text Label 2700 2850 0    50   ~ 0
B_CLOCK_OUT
Text Label 9500 6150 2    50   ~ 0
B_SW1
Text Label 9500 6450 2    50   ~ 0
B_SW2
Text Label 9500 3800 2    50   ~ 0
B_SUBDIV_OUT
Text Label 9500 3700 2    50   ~ 0
B_CLOCK_OUT
$Comp
L Connector:Conn_01x05_Male J11
U 1 1 633C2E72
P 10200 4650
F 0 "J11" H 10308 5031 50  0000 C CNN
F 1 "Conn_01x05_Male" V 10100 4750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10200 4650 50  0001 C CNN
F 3 "~" H 10200 4650 50  0001 C CNN
	1    10200 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J7
U 1 1 633C2E7C
P 9800 4650
F 0 "J7" H 9650 5050 50  0000 L CNN
F 1 "Conn_01x05_Female" V 9850 4450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 9800 4650 50  0001 C CNN
F 3 "~" H 9800 4650 50  0001 C CNN
	1    9800 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J12
U 1 1 633ED584
P 10200 5450
F 0 "J12" H 10308 5831 50  0000 C CNN
F 1 "Conn_01x05_Male" V 10100 5550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10200 5450 50  0001 C CNN
F 3 "~" H 10200 5450 50  0001 C CNN
	1    10200 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J8
U 1 1 633ED58E
P 9800 5450
F 0 "J8" H 9650 5850 50  0000 L CNN
F 1 "Conn_01x05_Female" V 9850 5250 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 9800 5450 50  0001 C CNN
F 3 "~" H 9800 5450 50  0001 C CNN
	1    9800 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J13
U 1 1 633FDEA6
P 10200 6250
F 0 "J13" H 10308 6631 50  0000 C CNN
F 1 "Conn_01x05_Male" V 10100 6350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10200 6250 50  0001 C CNN
F 3 "~" H 10200 6250 50  0001 C CNN
	1    10200 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J9
U 1 1 633FDEB0
P 9800 6250
F 0 "J9" H 9650 6650 50  0000 L CNN
F 1 "Conn_01x05_Female" V 9850 6050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 9800 6250 50  0001 C CNN
F 3 "~" H 9800 6250 50  0001 C CNN
	1    9800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 6450 9600 6450
Wire Wire Line
	9600 6350 9500 6350
Wire Wire Line
	9500 6250 9600 6250
Wire Wire Line
	9600 6150 9500 6150
Wire Wire Line
	9500 6050 9600 6050
Wire Wire Line
	9600 5650 9000 5650
Wire Wire Line
	9000 5650 9000 5750
Wire Wire Line
	9600 5550 9000 5550
Wire Wire Line
	9000 5550 9000 5450
Wire Wire Line
	9600 5450 9500 5450
Wire Wire Line
	9500 5350 9600 5350
Wire Wire Line
	9600 5250 9500 5250
Wire Wire Line
	9500 4850 9600 4850
Wire Wire Line
	9600 4750 9500 4750
Wire Wire Line
	9500 4650 9600 4650
Wire Wire Line
	9600 4550 9500 4550
Wire Wire Line
	9500 4450 9600 4450
Wire Wire Line
	9600 4100 9500 4100
Wire Wire Line
	9500 4000 9600 4000
Wire Wire Line
	9600 3900 9500 3900
Wire Wire Line
	9500 3800 9600 3800
Wire Wire Line
	9600 3700 9500 3700
Text Label 10500 4100 0    50   ~ 0
LED0
Text Label 10500 4450 0    50   ~ 0
LED2
Text Label 10500 4750 0    50   ~ 0
LED3
Text Label 10500 5250 0    50   ~ 0
LED4
Text Label 10500 5350 0    50   ~ 0
LED5
Text Label 10500 5450 0    50   ~ 0
LED6
Text Label 10500 3900 0    50   ~ 0
CV_IN
Text Label 10500 3800 0    50   ~ 0
SUBDIV_OUT
Text Label 10500 3700 0    50   ~ 0
CLOCK_OUT
Text Label 10500 6350 0    50   ~ 0
LED_B
Text Label 10500 6050 0    50   ~ 0
KNOB
Text Label 10500 6250 0    50   ~ 0
LED_A
Text Label 10500 6150 0    50   ~ 0
SW1
Text Label 10500 6450 0    50   ~ 0
SW2
Text Label 10500 4000 0    50   ~ 0
LED_C1
Text Label 10500 4550 0    50   ~ 0
LED_C2
Text Label 10500 4850 0    50   ~ 0
LED_C3
Text Label 10500 5550 0    50   ~ 0
AVCC
Text Label 6350 5700 2    50   ~ 0
AGND
Wire Wire Line
	10500 5650 10400 5650
Wire Wire Line
	10400 5550 10500 5550
Wire Wire Line
	10500 5450 10400 5450
Wire Wire Line
	10400 5350 10500 5350
Wire Wire Line
	10500 5250 10400 5250
Wire Wire Line
	10400 6050 10500 6050
Wire Wire Line
	10500 6150 10400 6150
Wire Wire Line
	10400 6250 10500 6250
Wire Wire Line
	10500 6350 10400 6350
Wire Wire Line
	10400 6450 10500 6450
Wire Wire Line
	10500 4850 10400 4850
Wire Wire Line
	10400 4750 10500 4750
Wire Wire Line
	10500 4650 10400 4650
Wire Wire Line
	10400 4550 10500 4550
Wire Wire Line
	10500 4450 10400 4450
Wire Wire Line
	10400 4100 10500 4100
Wire Wire Line
	10500 4000 10400 4000
Wire Wire Line
	10400 3900 10500 3900
Wire Wire Line
	10500 3800 10400 3800
Wire Wire Line
	10400 3700 10500 3700
Text Label 6250 3400 1    50   ~ 0
AVCC
Text Label 6350 6250 2    50   ~ 0
AGND
Text Label 7150 5300 0    50   ~ 0
AGND
Text Label 5250 5200 1    50   ~ 0
AVCC
Text Label 4100 5200 1    50   ~ 0
AVCC
Wire Wire Line
	6350 6250 6550 6250
Wire Wire Line
	6350 5700 6550 5700
Wire Wire Line
	6950 5300 7150 5300
Text Label 6250 4500 3    50   ~ 0
AGND
Wire Wire Line
	6250 4300 6250 4500
Text Label 3450 950  1    50   ~ 0
AVCC
Text Label 4050 950  1    50   ~ 0
AVCC
$Comp
L Device:R R13
U 1 1 63915D28
P 2850 3750
F 0 "R13" V 2750 3700 50  0000 L CNN
F 1 "1K" V 2850 3700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2780 3750 50  0001 C CNN
F 3 "~" H 2850 3750 50  0001 C CNN
	1    2850 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 63916389
P 2850 3850
F 0 "R14" V 2950 3800 50  0000 L CNN
F 1 "1K" V 2850 3800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2780 3850 50  0001 C CNN
F 3 "~" H 2850 3850 50  0001 C CNN
	1    2850 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 639166C2
P 2850 3950
F 0 "R15" V 2950 3900 50  0000 L CNN
F 1 "1K" V 2850 3900 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 2780 3950 50  0001 C CNN
F 3 "~" H 2850 3950 50  0001 C CNN
	1    2850 3950
	0    1    1    0   
$EndComp
Text Label 10500 5650 0    50   ~ 0
AGND
$Comp
L Device:R R2
U 1 1 63D809C6
P 3450 1600
F 0 "R2" H 3520 1646 50  0000 L CNN
F 1 "1K" H 3520 1555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3380 1600 50  0001 C CNN
F 3 "~" H 3450 1600 50  0001 C CNN
	1    3450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2700 7850 2700
Wire Wire Line
	6250 2800 9500 2800
Wire Wire Line
	6250 2900 11150 2900
Wire Wire Line
	3150 3950 3000 3950
Wire Wire Line
	3000 3850 3150 3850
Wire Wire Line
	3150 3750 3000 3750
Text Label 10500 4650 0    50   ~ 0
LED1
Wire Wire Line
	6550 1050 8200 1050
Wire Wire Line
	6450 950  8100 950 
Wire Wire Line
	8850 2100 8000 2100
Wire Wire Line
	8000 850  8000 2100
Wire Wire Line
	8850 2000 8100 2000
Wire Wire Line
	8100 2000 8100 950 
Connection ~ 8100 950 
Wire Wire Line
	8100 950  9750 950 
Wire Wire Line
	6650 1150 8300 1150
Wire Wire Line
	8850 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1050
Connection ~ 8200 1050
Wire Wire Line
	8200 1050 9850 1050
Wire Wire Line
	8850 1800 8300 1800
Wire Wire Line
	8300 1800 8300 1150
Connection ~ 8300 1150
Wire Wire Line
	8300 1150 9950 1150
Wire Wire Line
	6950 1450 8600 1450
Wire Wire Line
	6850 1350 8500 1350
Wire Wire Line
	8850 2400 8400 2400
Wire Wire Line
	8400 1250 8400 2400
Wire Wire Line
	8850 2300 8500 2300
Wire Wire Line
	8500 2300 8500 1350
Connection ~ 8500 1350
Wire Wire Line
	8500 1350 10150 1350
Wire Wire Line
	8850 2200 8600 2200
Wire Wire Line
	8600 2200 8600 1450
Connection ~ 8600 1450
Wire Wire Line
	8600 1450 10250 1450
$EndSCHEMATC
