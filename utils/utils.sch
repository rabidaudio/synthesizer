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
L power:GND #PWR025
U 1 1 5ECA13B1
P 9900 1450
F 0 "#PWR025" H 9900 1200 50  0001 C CNN
F 1 "GND" H 9905 1277 50  0000 C CNN
F 2 "" H 9900 1450 50  0001 C CNN
F 3 "" H 9900 1450 50  0001 C CNN
	1    9900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3750 3750 3750
Wire Wire Line
	3700 3450 3750 3450
Wire Wire Line
	3750 3450 3750 3750
Connection ~ 3750 3750
Wire Wire Line
	3750 3750 3900 3750
Connection ~ 3900 3750
Wire Wire Line
	3900 3750 3950 3750
$Comp
L power:GND #PWR016
U 1 1 5ECD1341
P 7050 4050
F 0 "#PWR016" H 7050 3800 50  0001 C CNN
F 1 "GND" H 7055 3877 50  0000 C CNN
F 2 "" H 7050 4050 50  0001 C CNN
F 3 "" H 7050 4050 50  0001 C CNN
	1    7050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4050 7050 3950
Wire Wire Line
	7050 3950 7150 3950
Wire Wire Line
	7900 3850 7750 3850
Wire Wire Line
	7000 3750 7100 3750
Connection ~ 7100 3750
Wire Wire Line
	7100 3750 7150 3750
$Comp
L Device:R R9
U 1 1 5ECD4025
P 7550 3300
F 0 "R9" V 7757 3300 50  0000 C CNN
F 1 "100K" V 7666 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 7480 3300 50  0001 C CNN
F 3 "~" H 7550 3300 50  0001 C CNN
	1    7550 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5ECC6761
P 6850 3750
F 0 "R6" V 7057 3750 50  0000 C CNN
F 1 "100K" V 6966 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 6780 3750 50  0001 C CNN
F 3 "~" H 6850 3750 50  0001 C CNN
	1    6850 3750
	0    -1   -1   0   
$EndComp
Text GLabel 3300 3450 0    50   Input ~ 0
AIN
Text GLabel 3300 3750 0    50   Input ~ 0
BIN
Text GLabel 7850 2050 2    50   Input ~ 0
~OUT
Text GLabel 8100 3850 2    50   Input ~ 0
OUT
Wire Wire Line
	8100 3850 7900 3850
Connection ~ 7900 3850
Wire Wire Line
	3400 3450 3300 3450
Wire Wire Line
	3400 3750 3300 3750
$Comp
L power:GND #PWR01
U 1 1 5EC97FBA
P 1200 1600
F 0 "#PWR01" H 1200 1350 50  0001 C CNN
F 1 "GND" H 1205 1427 50  0000 C CNN
F 2 "" H 1200 1600 50  0001 C CNN
F 3 "" H 1200 1600 50  0001 C CNN
	1    1200 1600
	1    0    0    -1  
$EndComp
Text GLabel 1750 1200 2    50   Input ~ 0
AIN
$Comp
L power:GND #PWR02
U 1 1 5EC9F2D1
P 1200 2750
F 0 "#PWR02" H 1200 2500 50  0001 C CNN
F 1 "GND" H 1205 2577 50  0000 C CNN
F 2 "" H 1200 2750 50  0001 C CNN
F 3 "" H 1200 2750 50  0001 C CNN
	1    1200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2750 1200 2700
Wire Wire Line
	1500 2700 1200 2700
Connection ~ 1200 2700
Wire Wire Line
	1200 2700 1200 2650
Text GLabel 1750 2350 2    50   Input ~ 0
BIN
$Comp
L power:GND #PWR03
U 1 1 5ECA2998
P 1200 3850
F 0 "#PWR03" H 1200 3600 50  0001 C CNN
F 1 "GND" H 1205 3677 50  0000 C CNN
F 2 "" H 1200 3850 50  0001 C CNN
F 3 "" H 1200 3850 50  0001 C CNN
	1    1200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3850 1200 3800
Wire Wire Line
	1400 3250 1500 3250
Wire Wire Line
	1500 3800 1200 3800
Connection ~ 1200 3800
Wire Wire Line
	1200 3800 1200 3750
Text GLabel 1750 3450 2    50   Input ~ 0
GATE
Wire Wire Line
	1750 3450 1400 3450
$Comp
L power:GND #PWR04
U 1 1 5ECA7FBB
P 1250 5900
F 0 "#PWR04" H 1250 5650 50  0001 C CNN
F 1 "GND" H 1255 5727 50  0000 C CNN
F 2 "" H 1250 5900 50  0001 C CNN
F 3 "" H 1250 5900 50  0001 C CNN
	1    1250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5900 1250 5800
Wire Wire Line
	1050 5250 950  5250
Wire Wire Line
	950  5250 950  5350
Wire Wire Line
	950  5800 1250 5800
Connection ~ 1250 5800
Wire Wire Line
	1250 5800 1250 5750
Wire Wire Line
	1050 5350 950  5350
Connection ~ 950  5350
Wire Wire Line
	950  5350 950  5800
Text GLabel 850  5450 0    50   Input ~ 0
~OUT
Wire Wire Line
	850  5450 1000 5450
$Comp
L power:GND #PWR05
U 1 1 5ECB6ABD
P 1200 4900
F 0 "#PWR05" H 1200 4650 50  0001 C CNN
F 1 "GND" H 1205 4727 50  0000 C CNN
F 2 "" H 1200 4900 50  0001 C CNN
F 3 "" H 1200 4900 50  0001 C CNN
	1    1200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4900 1200 4800
Wire Wire Line
	1000 4250 900  4250
Wire Wire Line
	900  4250 900  4350
Wire Wire Line
	900  4800 1200 4800
Connection ~ 1200 4800
Wire Wire Line
	1200 4800 1200 4750
Wire Wire Line
	1000 4350 900  4350
Connection ~ 900  4350
Wire Wire Line
	900  4350 900  4800
Text GLabel 800  4450 0    50   Input ~ 0
OUT
Wire Wire Line
	800  4450 950  4450
Wire Wire Line
	1650 3550 1400 3550
Text Notes 4000 4150 0    50   ~ 0
inverting sum
Text Notes 7500 4050 0    50   ~ 0
re-invert
Wire Wire Line
	1050 5550 1000 5550
Wire Wire Line
	1000 5550 1000 5450
Connection ~ 1000 5450
Wire Wire Line
	1000 5450 1050 5450
Wire Wire Line
	1000 4550 950  4550
Wire Wire Line
	950  4550 950  4450
Connection ~ 950  4450
Wire Wire Line
	950  4450 1000 4450
Text Notes 4550 3000 2    50   ~ 0
center detent pot so it sits at g=1
Text GLabel 6150 3500 0    50   Input ~ 0
GATE
Wire Wire Line
	3900 3300 3900 3750
Wire Wire Line
	3900 3300 4100 3300
Wire Wire Line
	4350 3450 4350 3500
Wire Wire Line
	4350 3500 4100 3500
Wire Wire Line
	4100 3500 4100 3300
Connection ~ 4100 3300
Wire Wire Line
	4100 3300 4200 3300
Wire Wire Line
	4550 3850 4650 3850
Wire Wire Line
	4500 3300 4650 3300
Wire Wire Line
	4650 3300 4650 3850
$Comp
L Device:LED D1
U 1 1 5ECB63E0
P 10050 4350
F 0 "D1" V 10089 4233 50  0000 R CNN
F 1 "LED" V 9998 4233 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:LED-3MM-SQUARE-ANODE" H 10050 4350 50  0001 C CNN
F 3 "~" H 10050 4350 50  0001 C CNN
	1    10050 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 3250 1500 3350
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5ECC1DA3
P 9950 4800
F 0 "Q3" H 10140 4846 50  0000 L CNN
F 1 "2N3904" H 10140 4755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 10150 4725 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9950 4800 50  0001 L CNN
	1    9950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5100 10050 5000
Text GLabel 9350 4800 0    50   Input ~ 0
GATE
$Comp
L Device:R R7
U 1 1 5ECF0A91
P 9450 5250
F 0 "R7" H 9520 5296 50  0000 L CNN
F 1 "100K" H 9520 5205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 9380 5250 50  0001 C CNN
F 3 "~" H 9450 5250 50  0001 C CNN
	1    9450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4500 10050 4600
Wire Wire Line
	9350 4800 9450 4800
$Comp
L Device:R_POT_Dual_Separate RV1
U 2 1 5ED32DF1
P 4350 3300
F 0 "RV1" V 4143 3300 50  0000 C CNN
F 1 "200K" V 4234 3300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4350 3300 50  0001 C CNN
F 3 "~" H 4350 3300 50  0001 C CNN
	2    4350 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV1
U 1 1 5ED34631
P 3600 2100
F 0 "RV1" H 3531 2146 50  0000 R CNN
F 1 "200K" H 3531 2055 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3600 2100 50  0001 C CNN
F 3 "~" H 3600 2100 50  0001 C CNN
	1    3600 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5ECB414F
P 3550 3750
F 0 "R4" V 3343 3750 50  0000 C CNN
F 1 "100K" V 3434 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 3480 3750 50  0001 C CNN
F 3 "~" H 3550 3750 50  0001 C CNN
	1    3550 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5ECB39F0
P 3550 3450
F 0 "R3" V 3343 3450 50  0000 C CNN
F 1 "100K" V 3434 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 3480 3450 50  0001 C CNN
F 3 "~" H 3550 3450 50  0001 C CNN
	1    3550 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 1950 3600 1900
Wire Wire Line
	1400 2150 1500 2150
Wire Wire Line
	1200 1500 1200 1550
Wire Wire Line
	1400 1300 1500 1300
Wire Wire Line
	1400 1200 1750 1200
Wire Wire Line
	1500 1000 1400 1000
Wire Wire Line
	1500 1300 1500 1550
Wire Wire Line
	1500 1550 1200 1550
Connection ~ 1500 1300
Connection ~ 1200 1550
Wire Wire Line
	1200 1550 1200 1600
Wire Wire Line
	1400 2350 1750 2350
Wire Wire Line
	1400 2450 1500 2450
Connection ~ 1500 2450
Wire Wire Line
	1500 2450 1500 2700
$Comp
L power:GND #PWR012
U 1 1 5EF58D03
P 3850 4050
F 0 "#PWR012" H 3850 3800 50  0001 C CNN
F 1 "GND" H 3855 3877 50  0000 C CNN
F 2 "" H 3850 4050 50  0001 C CNN
F 3 "" H 3850 4050 50  0001 C CNN
	1    3850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4050 3850 3950
Wire Wire Line
	3850 3950 3950 3950
Wire Wire Line
	3950 2100 3750 2100
Wire Wire Line
	4650 2000 4550 2000
$Comp
L synth:DG403 U2
U 1 1 5F0435F7
P 6250 2850
F 0 "U2" H 6250 3075 50  0000 C CNN
F 1 "DG403" H 6250 2984 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6250 2150 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 6250 2850 50  0001 C CNN
	1    6250 2850
	-1   0    0    -1  
$EndComp
$Comp
L synth:DG403 U2
U 2 1 5F0A3698
P 5250 2850
F 0 "U2" H 5250 3075 50  0000 C CNN
F 1 "DG403" H 5250 2984 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5250 2150 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 5250 2850 50  0001 C CNN
	2    5250 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 2050 7800 2050
Wire Wire Line
	7150 1950 7100 1950
Wire Wire Line
	7100 1950 7100 1750
Wire Wire Line
	7100 1750 7800 1750
Wire Wire Line
	7800 1750 7800 2050
Connection ~ 7800 2050
Wire Wire Line
	7800 2050 7850 2050
$Comp
L power:GND #PWR015
U 1 1 5F12579B
P 5850 4050
F 0 "#PWR015" H 5850 3800 50  0001 C CNN
F 1 "GND" H 5855 3877 50  0000 C CNN
F 2 "" H 5850 4050 50  0001 C CNN
F 3 "" H 5850 4050 50  0001 C CNN
	1    5850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3500 6250 3350
Wire Wire Line
	6150 3500 6250 3500
Wire Wire Line
	1500 2150 1500 2450
Text GLabel 1750 2250 2    50   Input ~ 0
B_CONN
Text GLabel 1750 1100 2    50   Input ~ 0
A_CONN
Wire Wire Line
	1500 1000 1500 1300
Wire Wire Line
	1750 1100 1400 1100
Wire Wire Line
	1750 2250 1400 2250
Wire Wire Line
	4650 2850 4950 2850
Connection ~ 4650 2000
Wire Wire Line
	4950 3050 4650 3050
Wire Wire Line
	4650 3050 4650 3300
Connection ~ 4650 3300
Text GLabel 5150 3500 0    50   Input ~ 0
CONST
Wire Wire Line
	5150 3500 5250 3500
Wire Wire Line
	5250 3500 5250 3350
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5F2E9244
P 3300 6850
F 0 "Q1" H 3490 6896 50  0000 L CNN
F 1 "2N3904" H 3490 6805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 3500 6775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3300 6850 50  0001 L CNN
	1    3300 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5F2E924E
P 3400 7150
F 0 "#PWR09" H 3400 6900 50  0001 C CNN
F 1 "GND" H 3405 6977 50  0000 C CNN
F 2 "" H 3400 7150 50  0001 C CNN
F 3 "" H 3400 7150 50  0001 C CNN
	1    3400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7150 3400 7050
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5F2F22C3
P 4300 6850
F 0 "Q2" H 4490 6896 50  0000 L CNN
F 1 "2N3904" H 4490 6805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 4500 6775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4300 6850 50  0001 L CNN
	1    4300 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F2F22CD
P 4400 7150
F 0 "#PWR014" H 4400 6900 50  0001 C CNN
F 1 "GND" H 4405 6977 50  0000 C CNN
F 2 "" H 4400 7150 50  0001 C CNN
F 3 "" H 4400 7150 50  0001 C CNN
	1    4400 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7150 4400 7050
Text GLabel 3000 7150 3    50   Input ~ 0
A_CONN
Text GLabel 4000 7150 3    50   Input ~ 0
B_CONN
Wire Wire Line
	3000 7150 3000 6850
Wire Wire Line
	3000 6850 3100 6850
Wire Wire Line
	4000 7150 4000 6850
Wire Wire Line
	4000 6850 4100 6850
$Comp
L Device:R R2
U 1 1 5F30B3D5
P 3400 5750
F 0 "R2" H 3470 5796 50  0000 L CNN
F 1 "100K" H 3470 5705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 3330 5750 50  0001 C CNN
F 3 "~" H 3400 5750 50  0001 C CNN
	1    3400 5750
	1    0    0    -1  
$EndComp
$Comp
L synth:DG403 U2
U 3 1 5F3217BC
P 9300 1350
F 0 "U2" H 9530 1346 50  0000 L CNN
F 1 "DG403" H 9530 1255 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 9300 650 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 9300 1350 50  0001 C CNN
	3    9300 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR010
U 1 1 5F32CDA5
P 3600 1500
F 0 "#PWR010" H 3600 1350 50  0001 C CNN
F 1 "+12V" H 3615 1673 50  0000 C CNN
F 2 "" H 3600 1500 50  0001 C CNN
F 3 "" H 3600 1500 50  0001 C CNN
	1    3600 1500
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR011
U 1 1 5F351606
P 2800 3050
F 0 "#PWR011" H 2800 3150 50  0001 C CNN
F 1 "-12V" H 2815 3223 50  0000 C CNN
F 2 "" H 2800 3050 50  0001 C CNN
F 3 "" H 2800 3050 50  0001 C CNN
	1    2800 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 3000 1650 3550
Wire Wire Line
	3000 6850 3000 6700
Connection ~ 3000 6850
Wire Wire Line
	4000 6750 4000 6850
Connection ~ 4000 6850
Wire Wire Line
	3000 6300 3000 6400
Wire Wire Line
	4000 6300 4000 6450
Wire Wire Line
	3400 6650 3400 6000
Wire Wire Line
	4400 6650 4400 6000
Wire Wire Line
	4400 6000 3400 6000
Connection ~ 3400 6000
Wire Wire Line
	3400 6000 3400 5900
Text GLabel 4550 6000 2    50   Input ~ 0
CONST
Wire Wire Line
	4550 6000 4400 6000
Connection ~ 4400 6000
Wire Wire Line
	3400 5500 3400 5600
Text Notes 3700 5700 0    50   ~ 0
When either AIN or BIN is connected, the ground\nat *_CONN is disconnected, turning the transistor\non, shorting control of the first switch low, which\nswitches from the constant voltage source to the\nsumming source
Wire Wire Line
	6600 3050 6600 2950
Wire Wire Line
	6600 3050 6550 3050
Wire Wire Line
	6550 2950 6600 2950
$Comp
L power:+12V #PWR027
U 1 1 5F56A034
P 10250 950
F 0 "#PWR027" H 10250 800 50  0001 C CNN
F 1 "+12V" H 10265 1123 50  0000 C CNN
F 2 "" H 10250 950 50  0001 C CNN
F 3 "" H 10250 950 50  0001 C CNN
	1    10250 950 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR028
U 1 1 5F56A82F
P 10250 1850
F 0 "#PWR028" H 10250 1950 50  0001 C CNN
F 1 "-12V" H 10265 2023 50  0000 C CNN
F 2 "" H 10250 1850 50  0001 C CNN
F 3 "" H 10250 1850 50  0001 C CNN
	1    10250 1850
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR023
U 1 1 5F56B294
P 9400 800
F 0 "#PWR023" H 9400 650 50  0001 C CNN
F 1 "+12V" H 9415 973 50  0000 C CNN
F 2 "" H 9400 800 50  0001 C CNN
F 3 "" H 9400 800 50  0001 C CNN
	1    9400 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5F56B858
P 9200 2000
F 0 "#PWR022" H 9200 1750 50  0001 C CNN
F 1 "GND" H 9205 1827 50  0000 C CNN
F 2 "" H 9200 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR024
U 1 1 5F56BC7C
P 9400 2000
F 0 "#PWR024" H 9400 2100 50  0001 C CNN
F 1 "-12V" H 9415 2173 50  0000 C CNN
F 2 "" H 9400 2000 50  0001 C CNN
F 3 "" H 9400 2000 50  0001 C CNN
	1    9400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2000 9400 1900
Wire Wire Line
	9200 2000 9200 1900
Wire Wire Line
	9200 900  9200 800 
Wire Wire Line
	9400 900  9400 800 
$Comp
L power:-12V #PWR020
U 1 1 5F5C5039
P 8650 1800
F 0 "#PWR020" H 8650 1900 50  0001 C CNN
F 1 "-12V" H 8665 1973 50  0000 C CNN
F 2 "" H 8650 1800 50  0001 C CNN
F 3 "" H 8650 1800 50  0001 C CNN
	1    8650 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 1800 8650 1700
$Comp
L power:+12V #PWR019
U 1 1 5F5CB1BB
P 8650 1000
F 0 "#PWR019" H 8650 850 50  0001 C CNN
F 1 "+12V" H 8665 1173 50  0000 C CNN
F 2 "" H 8650 1000 50  0001 C CNN
F 3 "" H 8650 1000 50  0001 C CNN
	1    8650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1000 8650 1100
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5F655EB5
P 4250 2000
F 0 "U1" H 4300 1850 50  0000 C CNN
F 1 "TL074" H 4200 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4300 2200 50  0001 C CNN
	1    4250 2000
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 5F668025
P 4250 3850
F 0 "U1" H 4300 3700 50  0000 C CNN
F 1 "TL074" H 4200 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4300 4050 50  0001 C CNN
	2    4250 3850
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 5F678C78
P 7450 3850
F 0 "U1" H 7500 3700 50  0000 C CNN
F 1 "TL074" H 7400 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7400 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7500 4050 50  0001 C CNN
	3    7450 3850
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5F68992E
P 7450 2050
F 0 "U1" H 7450 1900 50  0000 C CNN
F 1 "TL074" H 7400 2050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7400 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7500 2250 50  0001 C CNN
	4    7450 2050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 5F69F02B
P 8750 1400
F 0 "U1" H 8708 1446 50  0000 L CNN
F 1 "TL074" H 8708 1355 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8700 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8800 1600 50  0001 C CNN
	5    8750 1400
	1    0    0    -1  
$EndComp
$Comp
L synth:AudioJack2_Ground_Switch ~OUT1
U 1 1 5F172D3A
P 1250 5450
F 0 "~OUT1" H 1070 5468 50  0000 R CNN
F 1 "AudioJack2_Ground_Switch" H 1070 5377 50  0000 R CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1250 5650 50  0001 C CNN
F 3 "~" H 1250 5650 50  0001 C CNN
	1    1250 5450
	-1   0    0    -1  
$EndComp
$Comp
L synth:AudioJack2_Ground_Switch OUT1
U 1 1 5F1745B0
P 1200 4450
F 0 "OUT1" H 1020 4468 50  0000 R CNN
F 1 "AudioJack2_Ground_Switch" H 1020 4377 50  0000 R CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1200 4650 50  0001 C CNN
F 3 "~" H 1200 4650 50  0001 C CNN
	1    1200 4450
	-1   0    0    -1  
$EndComp
$Comp
L synth:AudioJack2_Ground_Switch B_IN1
U 1 1 5F170E51
P 1200 2350
F 0 "B_IN1" H 1232 2775 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1232 2684 50  0000 C CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1200 2550 50  0001 C CNN
F 3 "~" H 1200 2550 50  0001 C CNN
	1    1200 2350
	1    0    0    -1  
$EndComp
$Comp
L synth:AudioJack2_Ground_Switch A_IN1
U 1 1 5F14C66A
P 1200 1200
F 0 "A_IN1" H 1232 1625 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1232 1534 50  0000 C CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1200 1400 50  0001 C CNN
F 3 "~" H 1200 1400 50  0001 C CNN
	1    1200 1200
	1    0    0    -1  
$EndComp
$Comp
L synth:AudioJack2_Ground_Switch GATE1
U 1 1 5F1721FE
P 1200 3450
F 0 "GATE1" H 1232 3875 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 1232 3784 50  0000 C CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1200 3650 50  0001 C CNN
F 3 "~" H 1200 3650 50  0001 C CNN
	1    1200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F30ADA8
P 3000 6550
F 0 "R1" H 3070 6596 50  0000 L CNN
F 1 "100K" H 3070 6505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 2930 6550 50  0001 C CNN
F 3 "~" H 3000 6550 50  0001 C CNN
	1    3000 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F30B999
P 4000 6600
F 0 "R5" H 4070 6646 50  0000 L CNN
F 1 "100K" H 4070 6555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 3930 6600 50  0001 C CNN
F 3 "~" H 4000 6600 50  0001 C CNN
	1    4000 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4100 10050 4200
$Comp
L power:+12V #PWR0101
U 1 1 5F168A18
P 10050 4100
F 0 "#PWR0101" H 10050 3950 50  0001 C CNN
F 1 "+12V" H 10065 4273 50  0000 C CNN
F 2 "" H 10050 4100 50  0001 C CNN
F 3 "" H 10050 4100 50  0001 C CNN
	1    10050 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5F168FE2
P 4000 6300
F 0 "#PWR0102" H 4000 6150 50  0001 C CNN
F 1 "+12V" H 4015 6473 50  0000 C CNN
F 2 "" H 4000 6300 50  0001 C CNN
F 3 "" H 4000 6300 50  0001 C CNN
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 5F16998A
P 3000 6300
F 0 "#PWR0103" H 3000 6150 50  0001 C CNN
F 1 "+12V" H 3015 6473 50  0000 C CNN
F 2 "" H 3000 6300 50  0001 C CNN
F 3 "" H 3000 6300 50  0001 C CNN
	1    3000 6300
	1    0    0    -1  
$EndComp
Text Notes 8000 2750 0    50   ~ 0
TODO from sample:\nsumming pot is backwards\nnoise near center of constant\nhard click on gate
$Comp
L synth:EURORACK_CONN_10 J1
U 1 1 60EA9D6D
P 10250 1400
F 0 "J1" H 10430 1446 50  0000 L CNN
F 1 "EURORACK_CONN_10" H 10430 1355 50  0000 L CNN
F 2 "synth:EURORACK_10_IDC" V 10450 850 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" H 10150 1700 50  0001 C CNN
	1    10250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 950  10250 1050
Wire Wire Line
	10250 1850 10250 1750
Wire Wire Line
	9900 1450 9900 1400
Wire Wire Line
	9900 1400 9950 1400
$Comp
L power:+12V #PWR0104
U 1 1 60F3845C
P 3400 5500
F 0 "#PWR0104" H 3400 5350 50  0001 C CNN
F 1 "+12V" H 3415 5673 50  0000 C CNN
F 2 "" H 3400 5500 50  0001 C CNN
F 3 "" H 3400 5500 50  0001 C CNN
	1    3400 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0105
U 1 1 60F388FA
P 1650 3000
F 0 "#PWR0105" H 1650 2850 50  0001 C CNN
F 1 "+12V" H 1665 3173 50  0000 C CNN
F 2 "" H 1650 3000 50  0001 C CNN
F 3 "" H 1650 3000 50  0001 C CNN
	1    1650 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60F64F55
P 9200 800
F 0 "#PWR?" H 9200 650 50  0001 C CNN
F 1 "+12V" H 9215 973 50  0000 C CNN
F 2 "" H 9200 800 50  0001 C CNN
F 3 "" H 9200 800 50  0001 C CNN
	1    9200 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60EBB51A
P 3600 1750
F 0 "R?" V 3393 1750 50  0000 C CNN
F 1 "130K" V 3484 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 3530 1750 50  0001 C CNN
F 3 "~" H 3600 1750 50  0001 C CNN
	1    3600 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60EBC8D5
P 2800 2800
F 0 "R?" V 2593 2800 50  0000 C CNN
F 1 "130K" V 2684 2800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 2730 2800 50  0001 C CNN
F 3 "~" H 2800 2800 50  0001 C CNN
	1    2800 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 3050 2800 2950
Wire Wire Line
	3600 1500 3600 1600
Wire Wire Line
	4650 2000 4650 2850
Text Notes 3850 1550 0    50   ~ 0
-5v to +5v constant
Wire Wire Line
	6600 2950 6600 2150
Connection ~ 6600 2950
Wire Wire Line
	6700 3750 6600 3750
Wire Wire Line
	6600 3750 6600 3050
Connection ~ 6600 3050
Wire Wire Line
	6600 2150 7150 2150
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 60F871A0
P 5750 3750
F 0 "SW?" V 5704 3898 50  0000 L CNN
F 1 "SW_BI_UNI" V 5795 3898 50  0000 L CNN
F 2 "" H 5750 3750 50  0001 C CNN
F 3 "~" H 5750 3750 50  0001 C CNN
	1    5750 3750
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 60F89DEF
P 5650 4050
F 0 "#PWR?" H 5650 4150 50  0001 C CNN
F 1 "-12V" H 5665 4223 50  0000 C CNN
F 2 "" H 5650 4050 50  0001 C CNN
F 3 "" H 5650 4050 50  0001 C CNN
	1    5650 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 4050 5650 3950
Wire Wire Line
	5850 4050 5850 3950
Wire Wire Line
	5550 3050 5650 3050
Wire Wire Line
	5650 3050 5650 2950
Wire Wire Line
	5650 2850 5950 2850
Wire Wire Line
	5650 2950 5550 2950
Connection ~ 5650 2950
Wire Wire Line
	5650 2950 5650 2850
Wire Wire Line
	5750 3050 5950 3050
Wire Wire Line
	5750 3050 5750 3550
$Comp
L power:+12V #PWR?
U 1 1 6100365F
P 9450 3650
F 0 "#PWR?" H 9450 3500 50  0001 C CNN
F 1 "+12V" H 9465 3823 50  0000 C CNN
F 2 "" H 9450 3650 50  0001 C CNN
F 3 "" H 9450 3650 50  0001 C CNN
	1    9450 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6100414E
P 9450 3950
F 0 "R?" V 9243 3950 50  0000 C CNN
F 1 "100K" V 9334 3950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 9380 3950 50  0001 C CNN
F 3 "~" H 9450 3950 50  0001 C CNN
	1    9450 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 3650 9450 3800
$Comp
L Switch:SW_Push SW?
U 1 1 6100B594
P 9450 4450
F 0 "SW?" V 9496 4402 50  0000 R CNN
F 1 "SW_BI_UNI" V 9405 4402 50  0000 R CNN
F 2 "" H 9450 4650 50  0001 C CNN
F 3 "~" H 9450 4650 50  0001 C CNN
	1    9450 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 4250 9450 4100
$Comp
L Switch:SW_DPDT_x2 SW?
U 2 1 61024B91
P 3150 2450
F 0 "SW?" H 3150 2735 50  0000 C CNN
F 1 "SW_BI_UNI" H 3150 2644 50  0000 C CNN
F 2 "" H 3150 2450 50  0001 C CNN
F 3 "~" H 3150 2450 50  0001 C CNN
	2    3150 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 2650 2800 2550
Wire Wire Line
	2800 2550 2950 2550
Wire Wire Line
	3350 2450 3600 2450
Wire Wire Line
	3600 2250 3600 2450
$Comp
L power:GND #PWR?
U 1 1 6103E3A0
P 2650 2450
F 0 "#PWR?" H 2650 2200 50  0001 C CNN
F 1 "GND" H 2655 2277 50  0000 C CNN
F 2 "" H 2650 2450 50  0001 C CNN
F 3 "" H 2650 2450 50  0001 C CNN
	1    2650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2450 2650 2350
Wire Wire Line
	2650 2350 2950 2350
Wire Wire Line
	3950 1900 3900 1900
Wire Wire Line
	3900 1900 3900 1750
Wire Wire Line
	3900 1750 4650 1750
Wire Wire Line
	4650 1750 4650 2000
Wire Wire Line
	7400 3300 7100 3300
Wire Wire Line
	7700 3300 7900 3300
Wire Wire Line
	7900 3300 7900 3850
Wire Wire Line
	7100 3300 7100 3750
$Comp
L power:GND #PWR?
U 1 1 610BC219
P 9450 5500
F 0 "#PWR?" H 9450 5250 50  0001 C CNN
F 1 "GND" H 9455 5327 50  0000 C CNN
F 2 "" H 9450 5500 50  0001 C CNN
F 3 "" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3350 1400 3350
Connection ~ 1500 3350
Wire Wire Line
	1500 3350 1500 3800
Wire Wire Line
	9450 4650 9450 4800
Wire Wire Line
	9450 5400 9450 5500
Wire Wire Line
	9450 5100 9450 4800
Wire Wire Line
	9450 4800 9750 4800
Connection ~ 9450 4800
$Comp
L Device:D D?
U 1 1 6117496F
P 10050 5250
F 0 "D?" V 10096 5170 50  0000 R CNN
F 1 "D" V 10005 5170 50  0000 R CNN
F 2 "" H 10050 5250 50  0001 C CNN
F 3 "~" H 10050 5250 50  0001 C CNN
	1    10050 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 5900 10050 5800
$Comp
L power:GND #PWR018
U 1 1 5ECC2E81
P 10050 5900
F 0 "#PWR018" H 10050 5650 50  0001 C CNN
F 1 "GND" H 10055 5727 50  0000 C CNN
F 2 "" H 10050 5900 50  0001 C CNN
F 3 "" H 10050 5900 50  0001 C CNN
	1    10050 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5ECB7499
P 10050 5650
F 0 "R8" H 10120 5696 50  0000 L CNN
F 1 "10K" H 10120 5605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 9980 5650 50  0001 C CNN
F 3 "~" H 10050 5650 50  0001 C CNN
	1    10050 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 5500 10050 5400
Text Notes 10300 5350 0    50   ~ 0
TODO diode is to put the level the gate turns on the led\ncloser to the one of the switch (~2.4V)
$EndSCHEMATC
