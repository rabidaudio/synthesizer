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
P 9950 1800
F 0 "#PWR025" H 9950 1550 50  0001 C CNN
F 1 "GND" H 9955 1627 50  0000 C CNN
F 2 "" H 9950 1800 50  0001 C CNN
F 3 "" H 9950 1800 50  0001 C CNN
	1    9950 1800
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
P 6800 3550
F 0 "#PWR016" H 6800 3300 50  0001 C CNN
F 1 "GND" H 6805 3377 50  0000 C CNN
F 2 "" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3550 6800 3450
Wire Wire Line
	6800 3450 6900 3450
Wire Wire Line
	7650 2900 7650 3350
Wire Wire Line
	7650 3350 7500 3350
Wire Wire Line
	6750 3250 6850 3250
Wire Wire Line
	7450 2900 7650 2900
Wire Wire Line
	7150 2900 6850 2900
Wire Wire Line
	6850 2900 6850 3250
Connection ~ 6850 3250
Wire Wire Line
	6850 3250 6900 3250
$Comp
L Device:R R9
U 1 1 5ECD4025
P 7300 2900
F 0 "R9" V 7507 2900 50  0000 C CNN
F 1 "100K" V 7416 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 7230 2900 50  0001 C CNN
F 3 "~" H 7300 2900 50  0001 C CNN
	1    7300 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5ECC6761
P 6600 3250
F 0 "R6" V 6807 3250 50  0000 C CNN
F 1 "100K" V 6716 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 6530 3250 50  0001 C CNN
F 3 "~" H 6600 3250 50  0001 C CNN
	1    6600 3250
	0    -1   -1   0   
$EndComp
Text GLabel 3300 3450 0    50   Input ~ 0
AIN
Text GLabel 3300 3750 0    50   Input ~ 0
BIN
Text GLabel 7550 2450 2    50   Input ~ 0
~OUT
Text GLabel 7850 3350 2    50   Input ~ 0
OUT
Wire Wire Line
	7850 3350 7650 3350
Connection ~ 7650 3350
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
Text Notes 7250 3550 0    50   ~ 0
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
gain 0-2\nideally 1 detent pot so it sits at g=1
Text Notes 7550 6250 0    50   ~ 0
This is a trick to only use the LED to show gate state\nif the GATE jack is used. When jack is unplugged,\nGATE_CONN is grounded, turning off the transistor.\nWhen jack is plugged, GATE_CONN floats, allowing\nthe gate to control the transistor. R10 gives an input\nimpedance of 100K, since LED is driven by power\nsupply. LED on current depends on GATE
Text GLabel 5950 3700 0    50   Input ~ 0
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
P 7250 4900
F 0 "D1" V 7289 4783 50  0000 R CNN
F 1 "LED" V 7198 4783 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:LED-3MM-SQUARE-ANODE" H 7250 4900 50  0001 C CNN
F 3 "~" H 7250 4900 50  0001 C CNN
	1    7250 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5ECB7499
P 7250 5800
F 0 "R8" H 7320 5846 50  0000 L CNN
F 1 "10K" H 7320 5755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 7180 5800 50  0001 C CNN
F 3 "~" H 7250 5800 50  0001 C CNN
	1    7250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3250 1500 3800
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5ECC1DA3
P 7150 5350
F 0 "Q3" H 7340 5396 50  0000 L CNN
F 1 "2N3904" H 7340 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92" H 7350 5275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7150 5350 50  0001 L CNN
	1    7150 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5ECC2E81
P 7250 6050
F 0 "#PWR018" H 7250 5800 50  0001 C CNN
F 1 "GND" H 7255 5877 50  0000 C CNN
F 2 "" H 7250 6050 50  0001 C CNN
F 3 "" H 7250 6050 50  0001 C CNN
	1    7250 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 6050 7250 5950
Text GLabel 1750 3350 2    50   Input ~ 0
GATE_CONN
Wire Wire Line
	1750 3350 1400 3350
Text GLabel 6800 5550 3    50   Input ~ 0
GATE_CONN
Wire Wire Line
	7250 5650 7250 5550
Text GLabel 6700 4800 0    50   Input ~ 0
GATE
$Comp
L Device:R R7
U 1 1 5ECF0A91
P 6800 5100
F 0 "R7" H 6870 5146 50  0000 L CNN
F 1 "100K" H 6870 5055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P2.54mm_Vertical" V 6730 5100 50  0001 C CNN
F 3 "~" H 6800 5100 50  0001 C CNN
	1    6800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5350 6800 5350
Wire Wire Line
	6800 5350 6800 5250
Wire Wire Line
	7250 5050 7250 5150
Wire Wire Line
	6700 4800 6800 4800
Wire Wire Line
	6800 4800 6800 4950
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
P 3600 2400
F 0 "RV1" H 3531 2446 50  0000 R CNN
F 1 "200K" H 3531 2355 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3600 2400 50  0001 C CNN
F 3 "~" H 3600 2400 50  0001 C CNN
	1    3600 2400
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
	3600 2250 3600 2200
Wire Wire Line
	3600 2600 3600 2550
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
	3950 2400 3750 2400
Wire Wire Line
	3950 2200 3850 2200
Wire Wire Line
	3850 2200 3850 1950
Wire Wire Line
	3850 1950 4650 1950
Wire Wire Line
	4650 1950 4650 2300
Wire Wire Line
	4650 2300 4550 2300
$Comp
L synth:DG403 U2
U 1 1 5F0435F7
P 6050 3050
F 0 "U2" H 6050 3275 50  0000 C CNN
F 1 "DG403" H 6050 3184 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 6050 2350 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 6050 3050 50  0001 C CNN
	1    6050 3050
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
	7450 2450 7500 2450
Wire Wire Line
	6850 2350 6800 2350
Wire Wire Line
	6800 2350 6800 2150
Wire Wire Line
	6800 2150 7500 2150
Wire Wire Line
	7500 2150 7500 2450
Connection ~ 7500 2450
Wire Wire Line
	7500 2450 7550 2450
Wire Wire Line
	6450 3250 6400 3250
$Comp
L power:GND #PWR015
U 1 1 5F12579B
P 5700 3350
F 0 "#PWR015" H 5700 3100 50  0001 C CNN
F 1 "GND" H 5705 3177 50  0000 C CNN
F 2 "" H 5700 3350 50  0001 C CNN
F 3 "" H 5700 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3700 6050 3550
Wire Wire Line
	5950 3700 6050 3700
Wire Wire Line
	5550 3050 5650 3050
Wire Wire Line
	5650 2950 5650 3050
Wire Wire Line
	5650 2950 5550 2950
Connection ~ 5650 3050
Wire Wire Line
	5650 3050 5750 3050
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
	4650 2300 4650 2850
Wire Wire Line
	4650 2850 4950 2850
Connection ~ 4650 2300
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
P 3600 2200
F 0 "#PWR010" H 3600 2050 50  0001 C CNN
F 1 "+12V" H 3615 2373 50  0000 C CNN
F 2 "" H 3600 2200 50  0001 C CNN
F 3 "" H 3600 2200 50  0001 C CNN
	1    3600 2200
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR011
U 1 1 5F351606
P 3600 2600
F 0 "#PWR011" H 3600 2700 50  0001 C CNN
F 1 "-12V" H 3615 2773 50  0000 C CNN
F 2 "" H 3600 2600 50  0001 C CNN
F 3 "" H 3600 2600 50  0001 C CNN
	1    3600 2600
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5F353500
P 1650 3000
F 0 "#PWR06" H 1650 2850 50  0001 C CNN
F 1 "+5V" H 1665 3173 50  0000 C CNN
F 2 "" H 1650 3000 50  0001 C CNN
F 3 "" H 1650 3000 50  0001 C CNN
	1    1650 3000
	1    0    0    -1  
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
$Comp
L power:+5V #PWR08
U 1 1 5F3B7B28
P 3400 5500
F 0 "#PWR08" H 3400 5350 50  0001 C CNN
F 1 "+5V" H 3415 5673 50  0000 C CNN
F 2 "" H 3400 5500 50  0001 C CNN
F 3 "" H 3400 5500 50  0001 C CNN
	1    3400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5500 3400 5600
Text Notes 3700 5700 0    50   ~ 0
When either AIN or BIN is connected, the ground\nat *_CONN is disconnected, turining the transistor\non, shorting control of the first switch low, which\nswitches from the constant voltage source to the\nsumming source
Wire Wire Line
	6800 5550 6800 5350
Connection ~ 6800 5350
Wire Wire Line
	5700 3350 5700 3250
Wire Wire Line
	5700 3250 5750 3250
Wire Wire Line
	6400 3250 6400 3150
Connection ~ 6400 3250
Wire Wire Line
	6400 3250 6350 3250
Wire Wire Line
	6350 3150 6400 3150
$Comp
L synth:EURORACK_CONN_16 J6
U 1 1 5F4C5E03
P 10300 1350
F 0 "J6" H 10380 1346 50  0000 L CNN
F 1 "EURORACK_CONN_16" H 10380 1255 50  0000 L CNN
F 2 "synth:EURORACK_16_IDC" H 10750 650 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" V 10350 1400 50  0001 C CNN
	1    10300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1700 9950 1800
$Comp
L power:+5V #PWR026
U 1 1 5F569A85
P 10000 1050
F 0 "#PWR026" H 10000 900 50  0001 C CNN
F 1 "+5V" H 10015 1223 50  0000 C CNN
F 2 "" H 10000 1050 50  0001 C CNN
F 3 "" H 10000 1050 50  0001 C CNN
	1    10000 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 5F56A034
P 10250 1050
F 0 "#PWR027" H 10250 900 50  0001 C CNN
F 1 "+12V" H 10265 1223 50  0000 C CNN
F 2 "" H 10250 1050 50  0001 C CNN
F 3 "" H 10250 1050 50  0001 C CNN
	1    10250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR028
U 1 1 5F56A82F
P 10250 1800
F 0 "#PWR028" H 10250 1900 50  0001 C CNN
F 1 "-12V" H 10265 1973 50  0000 C CNN
F 2 "" H 10250 1800 50  0001 C CNN
F 3 "" H 10250 1800 50  0001 C CNN
	1    10250 1800
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5F56AD63
P 9200 800
F 0 "#PWR021" H 9200 650 50  0001 C CNN
F 1 "+5V" H 9215 973 50  0000 C CNN
F 2 "" H 9200 800 50  0001 C CNN
F 3 "" H 9200 800 50  0001 C CNN
	1    9200 800 
	1    0    0    -1  
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
Wire Wire Line
	10000 1100 10000 1050
Wire Wire Line
	10250 1100 10250 1050
Wire Wire Line
	10250 1700 10250 1800
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
Wire Wire Line
	6850 2550 6400 2550
Wire Wire Line
	6400 2550 6400 3150
Connection ~ 6400 3150
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5F655EB5
P 4250 2300
F 0 "U1" H 4300 2150 50  0000 C CNN
F 1 "TL074" H 4200 2300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4200 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4300 2500 50  0001 C CNN
	1    4250 2300
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
P 7200 3350
F 0 "U1" H 7250 3200 50  0000 C CNN
F 1 "TL074" H 7150 3350 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7150 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7250 3550 50  0001 C CNN
	3    7200 3350
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5F68992E
P 7150 2450
F 0 "U1" H 7150 2300 50  0000 C CNN
F 1 "TL074" H 7100 2450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7100 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7200 2650 50  0001 C CNN
	4    7150 2450
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
	7250 4650 7250 4750
$Comp
L power:+12V #PWR?
U 1 1 5F168A18
P 7250 4650
F 0 "#PWR?" H 7250 4500 50  0001 C CNN
F 1 "+12V" H 7265 4823 50  0000 C CNN
F 2 "" H 7250 4650 50  0001 C CNN
F 3 "" H 7250 4650 50  0001 C CNN
	1    7250 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F168FE2
P 4000 6300
F 0 "#PWR?" H 4000 6150 50  0001 C CNN
F 1 "+12V" H 4015 6473 50  0000 C CNN
F 2 "" H 4000 6300 50  0001 C CNN
F 3 "" H 4000 6300 50  0001 C CNN
	1    4000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F16998A
P 3000 6300
F 0 "#PWR?" H 3000 6150 50  0001 C CNN
F 1 "+12V" H 3015 6473 50  0000 C CNN
F 2 "" H 3000 6300 50  0001 C CNN
F 3 "" H 3000 6300 50  0001 C CNN
	1    3000 6300
	1    0    0    -1  
$EndComp
Text Notes 8750 3600 0    50   ~ 0
TODO from sample:\nsumming pot is backwards\nnoise near center of constant\nhard click on gate
Text Notes 5650 2900 1    50   ~ 0
TODO: If necessary, could move the buffer of ~OUT~ to here
$EndSCHEMATC
