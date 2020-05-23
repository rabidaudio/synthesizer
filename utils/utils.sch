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
L power:+12V #PWR0101
U 1 1 5ECA049A
P 10400 800
F 0 "#PWR0101" H 10400 650 50  0001 C CNN
F 1 "+12V" H 10415 973 50  0000 C CNN
F 2 "" H 10400 800 50  0001 C CNN
F 3 "" H 10400 800 50  0001 C CNN
	1    10400 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0102
U 1 1 5ECA0BEB
P 10400 1600
F 0 "#PWR0102" H 10400 1700 50  0001 C CNN
F 1 "-12V" H 10415 1773 50  0000 C CNN
F 2 "" H 10400 1600 50  0001 C CNN
F 3 "" H 10400 1600 50  0001 C CNN
	1    10400 1600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5ECA13B1
P 10050 1600
F 0 "#PWR0103" H 10050 1350 50  0001 C CNN
F 1 "GND" H 10055 1427 50  0000 C CNN
F 2 "" H 10050 1600 50  0001 C CNN
F 3 "" H 10050 1600 50  0001 C CNN
	1    10050 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5ECA2564
P 10950 800
F 0 "#PWR0104" H 10950 650 50  0001 C CNN
F 1 "+12V" H 10965 973 50  0000 C CNN
F 2 "" H 10950 800 50  0001 C CNN
F 3 "" H 10950 800 50  0001 C CNN
	1    10950 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0105
U 1 1 5ECA620E
P 10950 1600
F 0 "#PWR0105" H 10950 1700 50  0001 C CNN
F 1 "-12V" H 10965 1773 50  0000 C CNN
F 2 "" H 10950 1600 50  0001 C CNN
F 3 "" H 10950 1600 50  0001 C CNN
	1    10950 1600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5ECB39F0
P 2500 2050
F 0 "R3" V 2293 2050 50  0000 C CNN
F 1 "100K" V 2384 2050 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2430 2050 50  0001 C CNN
F 3 "~" H 2500 2050 50  0001 C CNN
	1    2500 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5ECB414F
P 2500 2350
F 0 "R5" V 2293 2350 50  0000 C CNN
F 1 "100K" V 2384 2350 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2430 2350 50  0001 C CNN
F 3 "~" H 2500 2350 50  0001 C CNN
	1    2500 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5ECB4AC2
P 3350 2000
F 0 "RV1" V 3143 2000 50  0000 C CNN
F 1 "200K" V 3234 2000 50  0000 C CNN
F 2 "KiCad/Potentiometers.pretty:Potentiometer_Trimmer_Vishay_T73YP_Horizontal" H 3350 2000 50  0001 C CNN
F 3 "~" H 3350 2000 50  0001 C CNN
	1    3350 2000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5ECB8733
P 2800 2650
F 0 "#PWR0106" H 2800 2400 50  0001 C CNN
F 1 "GND" H 2805 2477 50  0000 C CNN
F 2 "" H 2800 2650 50  0001 C CNN
F 3 "" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2650 2800 2550
Wire Wire Line
	2800 2550 2900 2550
Wire Wire Line
	2650 2350 2700 2350
Wire Wire Line
	2650 2050 2700 2050
Wire Wire Line
	2700 2050 2700 2350
Connection ~ 2700 2350
Wire Wire Line
	2700 2350 2850 2350
Wire Wire Line
	2850 2350 2850 2000
Connection ~ 2850 2350
Wire Wire Line
	2850 2350 2900 2350
Wire Wire Line
	3350 2150 3350 2200
Wire Wire Line
	3350 2200 3150 2200
Wire Wire Line
	3150 2200 3150 2000
Wire Wire Line
	3150 2000 3200 2000
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5ECC53AF
P 3200 1350
F 0 "Q1" V 3449 1350 50  0000 C CNN
F 1 "2N7000" V 3540 1350 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-92_Molded_Narrow" H 3400 1275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3200 1350 50  0001 L CNN
	1    3200 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5ECD1341
P 4050 3200
F 0 "#PWR0107" H 4050 2950 50  0001 C CNN
F 1 "GND" H 4055 3027 50  0000 C CNN
F 2 "" H 4050 3200 50  0001 C CNN
F 3 "" H 4050 3200 50  0001 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3200 4050 3100
Wire Wire Line
	4050 3100 4150 3100
Wire Wire Line
	4900 2550 4900 3000
Wire Wire Line
	4900 3000 4750 3000
Wire Wire Line
	4000 2900 4100 2900
Wire Wire Line
	3500 2450 3600 2450
Wire Wire Line
	3150 2000 2850 2000
Connection ~ 3150 2000
Wire Wire Line
	3600 2000 3600 2300
Wire Wire Line
	3500 2000 3600 2000
Wire Wire Line
	4700 2550 4900 2550
Wire Wire Line
	4400 2550 4100 2550
Wire Wire Line
	4100 2550 4100 2900
Connection ~ 4100 2900
Wire Wire Line
	4100 2900 4150 2900
Connection ~ 3600 2000
$Comp
L Device:R R9
U 1 1 5ECD4025
P 4550 2550
F 0 "R9" V 4757 2550 50  0000 C CNN
F 1 "100K" V 4666 2550 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 4480 2550 50  0001 C CNN
F 3 "~" H 4550 2550 50  0001 C CNN
	1    4550 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5ECC6761
P 3850 2900
F 0 "R7" V 4057 2900 50  0000 C CNN
F 1 "100K" V 3966 2900 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 3780 2900 50  0001 C CNN
F 3 "~" H 3850 2900 50  0001 C CNN
	1    3850 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2900 3600 2900
Wire Wire Line
	3600 2900 3600 2450
Connection ~ 3600 2450
Wire Wire Line
	3400 1450 3600 1450
Wire Wire Line
	3600 1450 3600 2000
Wire Wire Line
	3000 1450 2850 1450
Wire Wire Line
	2850 1450 2850 2000
Connection ~ 2850 2000
Text GLabel 2250 2050 0    50   Input ~ 0
1_AIN
Text GLabel 2250 2350 0    50   Input ~ 0
1_BIN
Text GLabel 2350 900  0    50   Input ~ 0
1_GATE
$Comp
L Device:R R1
U 1 1 5ED0F46D
P 2450 1200
F 0 "R1" H 2520 1246 50  0000 L CNN
F 1 "100K" H 2520 1155 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2380 1200 50  0001 C CNN
F 3 "~" H 2450 1200 50  0001 C CNN
	1    2450 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5ED0FAFD
P 2450 1450
F 0 "#PWR0108" H 2450 1200 50  0001 C CNN
F 1 "GND" H 2455 1277 50  0000 C CNN
F 2 "" H 2450 1450 50  0001 C CNN
F 3 "" H 2450 1450 50  0001 C CNN
	1    2450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1450 2450 1350
Text GLabel 3800 2300 2    50   Input ~ 0
1_~OUT
Wire Wire Line
	3800 2300 3600 2300
Connection ~ 3600 2300
Wire Wire Line
	3600 2300 3600 2450
Text GLabel 5100 3000 2    50   Input ~ 0
1_OUT
Wire Wire Line
	5100 3000 4900 3000
Connection ~ 4900 3000
Wire Wire Line
	2350 2050 2250 2050
Wire Wire Line
	2350 2350 2250 2350
$Comp
L Connector:AudioJack2_Ground_Switch J1
U 1 1 5EC96195
P 800 1000
F 0 "J1" H 832 1425 50  0000 C CNN
F 1 "1_AIN" H 832 1334 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 800 1200 50  0001 C CNN
F 3 "~" H 800 1200 50  0001 C CNN
	1    800  1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EC97FBA
P 800 1400
F 0 "#PWR0109" H 800 1150 50  0001 C CNN
F 1 "GND" H 805 1227 50  0000 C CNN
F 2 "" H 800 1400 50  0001 C CNN
F 3 "" H 800 1400 50  0001 C CNN
	1    800  1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1400 800  1350
Wire Wire Line
	1000 800  1100 800 
Wire Wire Line
	1100 800  1100 900 
Wire Wire Line
	1100 1350 800  1350
Connection ~ 800  1350
Wire Wire Line
	800  1350 800  1300
Wire Wire Line
	1000 900  1100 900 
Connection ~ 1100 900 
Wire Wire Line
	1100 900  1100 1100
Wire Wire Line
	1000 1100 1100 1100
Connection ~ 1100 1100
Wire Wire Line
	1100 1100 1100 1350
Text GLabel 1350 1000 2    50   Input ~ 0
1_AIN
Wire Wire Line
	1350 1000 1000 1000
$Comp
L Connector:AudioJack2_Ground_Switch J2
U 1 1 5EC9F2C7
P 800 2150
F 0 "J2" H 832 2575 50  0000 C CNN
F 1 "1_BIN" H 832 2484 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 800 2350 50  0001 C CNN
F 3 "~" H 800 2350 50  0001 C CNN
	1    800  2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EC9F2D1
P 800 2550
F 0 "#PWR0110" H 800 2300 50  0001 C CNN
F 1 "GND" H 805 2377 50  0000 C CNN
F 2 "" H 800 2550 50  0001 C CNN
F 3 "" H 800 2550 50  0001 C CNN
	1    800  2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2550 800  2500
Wire Wire Line
	1000 1950 1100 1950
Wire Wire Line
	1100 1950 1100 2050
Wire Wire Line
	1100 2500 800  2500
Connection ~ 800  2500
Wire Wire Line
	800  2500 800  2450
Wire Wire Line
	1000 2050 1100 2050
Connection ~ 1100 2050
Wire Wire Line
	1100 2050 1100 2250
Wire Wire Line
	1000 2250 1100 2250
Connection ~ 1100 2250
Wire Wire Line
	1100 2250 1100 2500
Text GLabel 1350 2150 2    50   Input ~ 0
1_BIN
Wire Wire Line
	1350 2150 1000 2150
$Comp
L Connector:AudioJack2_Ground_Switch J3
U 1 1 5ECA298E
P 800 3250
F 0 "J3" H 832 3675 50  0000 C CNN
F 1 "1_GATE" H 832 3584 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 800 3450 50  0001 C CNN
F 3 "~" H 800 3450 50  0001 C CNN
	1    800  3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5ECA2998
P 800 3650
F 0 "#PWR0111" H 800 3400 50  0001 C CNN
F 1 "GND" H 805 3477 50  0000 C CNN
F 2 "" H 800 3650 50  0001 C CNN
F 3 "" H 800 3650 50  0001 C CNN
	1    800  3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3650 800  3600
Wire Wire Line
	1000 3050 1100 3050
Wire Wire Line
	1100 3050 1100 3150
Wire Wire Line
	1100 3600 800  3600
Connection ~ 800  3600
Wire Wire Line
	800  3600 800  3550
Wire Wire Line
	1000 3150 1100 3150
Connection ~ 1100 3150
Text GLabel 1350 3250 2    50   Input ~ 0
1_GATE
Wire Wire Line
	1350 3250 1000 3250
$Comp
L Connector:AudioJack2_Ground_Switch J7
U 1 1 5ECA5DD5
P 6200 1050
F 0 "J7" H 6020 1074 50  0000 R CNN
F 1 "1_~OUT" H 6020 976 50  0000 R CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 6200 1250 50  0001 C CNN
F 3 "~" H 6200 1250 50  0001 C CNN
	1    6200 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5ECA7FBB
P 6200 1500
F 0 "#PWR0112" H 6200 1250 50  0001 C CNN
F 1 "GND" H 6205 1327 50  0000 C CNN
F 2 "" H 6200 1500 50  0001 C CNN
F 3 "" H 6200 1500 50  0001 C CNN
	1    6200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1500 6200 1400
Wire Wire Line
	6000 850  5900 850 
Wire Wire Line
	5900 850  5900 950 
Wire Wire Line
	5900 1400 6200 1400
Connection ~ 6200 1400
Wire Wire Line
	6200 1400 6200 1350
Wire Wire Line
	6000 950  5900 950 
Connection ~ 5900 950 
Wire Wire Line
	5900 950  5900 1400
Text GLabel 5800 1050 0    50   Input ~ 0
1_~OUT
Wire Wire Line
	5800 1050 5950 1050
$Comp
L Connector:AudioJack2_Ground_Switch J9
U 1 1 5ECB6AB3
P 6250 2150
F 0 "J9" H 6070 2168 50  0000 R CNN
F 1 "1_OUT" H 6070 2077 50  0000 R CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 6250 2350 50  0001 C CNN
F 3 "~" H 6250 2350 50  0001 C CNN
	1    6250 2150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5ECB6ABD
P 6250 2600
F 0 "#PWR0113" H 6250 2350 50  0001 C CNN
F 1 "GND" H 6255 2427 50  0000 C CNN
F 2 "" H 6250 2600 50  0001 C CNN
F 3 "" H 6250 2600 50  0001 C CNN
	1    6250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2600 6250 2500
Wire Wire Line
	6050 1950 5950 1950
Wire Wire Line
	5950 1950 5950 2050
Wire Wire Line
	5950 2500 6250 2500
Connection ~ 6250 2500
Wire Wire Line
	6250 2500 6250 2450
Wire Wire Line
	6050 2050 5950 2050
Connection ~ 5950 2050
Wire Wire Line
	5950 2050 5950 2500
Text GLabel 5850 2150 0    50   Input ~ 0
1_OUT
Wire Wire Line
	5850 2150 6000 2150
Wire Wire Line
	1100 3150 1100 3600
$Comp
L power:+5V #PWR0114
U 1 1 5ECDDDF2
P 10050 800
F 0 "#PWR0114" H 10050 650 50  0001 C CNN
F 1 "+5V" H 10065 973 50  0000 C CNN
F 2 "" H 10050 800 50  0001 C CNN
F 3 "" H 10050 800 50  0001 C CNN
	1    10050 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5ECE0C8E
P 1250 3050
F 0 "#PWR0115" H 1250 2900 50  0001 C CNN
F 1 "+5V" H 1265 3223 50  0000 C CNN
F 2 "" H 1250 3050 50  0001 C CNN
F 3 "" H 1250 3050 50  0001 C CNN
	1    1250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3050 1250 3350
Wire Wire Line
	1250 3350 1000 3350
Text Notes 2950 2750 0    50   ~ 0
inverting sum
Text Notes 2900 1900 0    50   ~ 0
gain 0-2
Text Notes 2750 850  0    50   ~ 0
FET on shorts Rf for a gain of 0
Text Notes 4500 3200 0    50   ~ 0
re-invert
Wire Wire Line
	2450 1050 2450 900 
Wire Wire Line
	2450 900  2350 900 
Wire Wire Line
	2450 900  3200 900 
Wire Wire Line
	3200 900  3200 1150
Connection ~ 2450 900 
$Comp
L Device:R R4
U 1 1 5ECFBC2D
P 2500 5700
F 0 "R4" V 2293 5700 50  0000 C CNN
F 1 "100K" V 2384 5700 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2430 5700 50  0001 C CNN
F 3 "~" H 2500 5700 50  0001 C CNN
	1    2500 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5ECFBC37
P 2500 6000
F 0 "R6" V 2293 6000 50  0000 C CNN
F 1 "100K" V 2384 6000 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2430 6000 50  0001 C CNN
F 3 "~" H 2500 6000 50  0001 C CNN
	1    2500 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5ECFBC41
P 3350 5650
F 0 "RV2" V 3143 5650 50  0000 C CNN
F 1 "200K" V 3234 5650 50  0000 C CNN
F 2 "KiCad/Potentiometers.pretty:Potentiometer_Trimmer_Vishay_T73YP_Horizontal" H 3350 5650 50  0001 C CNN
F 3 "~" H 3350 5650 50  0001 C CNN
	1    3350 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5ECFBC4B
P 2800 6300
F 0 "#PWR0116" H 2800 6050 50  0001 C CNN
F 1 "GND" H 2805 6127 50  0000 C CNN
F 2 "" H 2800 6300 50  0001 C CNN
F 3 "" H 2800 6300 50  0001 C CNN
	1    2800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6300 2800 6200
Wire Wire Line
	2800 6200 2900 6200
Wire Wire Line
	2650 6000 2700 6000
Wire Wire Line
	2650 5700 2700 5700
Wire Wire Line
	2700 5700 2700 6000
Connection ~ 2700 6000
Wire Wire Line
	2700 6000 2850 6000
Wire Wire Line
	2850 6000 2850 5650
Connection ~ 2850 6000
Wire Wire Line
	2850 6000 2900 6000
Wire Wire Line
	3350 5800 3350 5850
Wire Wire Line
	3350 5850 3150 5850
Wire Wire Line
	3150 5850 3150 5650
Wire Wire Line
	3150 5650 3200 5650
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5ECFBC63
P 3200 5000
F 0 "Q2" V 3449 5000 50  0000 C CNN
F 1 "2N7000" V 3540 5000 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-92_Molded_Narrow" H 3400 4925 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 3200 5000 50  0001 L CNN
	1    3200 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5ECFBC6D
P 4050 6850
F 0 "#PWR0117" H 4050 6600 50  0001 C CNN
F 1 "GND" H 4055 6677 50  0000 C CNN
F 2 "" H 4050 6850 50  0001 C CNN
F 3 "" H 4050 6850 50  0001 C CNN
	1    4050 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6850 4050 6750
Wire Wire Line
	4050 6750 4150 6750
Wire Wire Line
	4900 6200 4900 6650
Wire Wire Line
	4900 6650 4750 6650
Wire Wire Line
	4000 6550 4100 6550
Wire Wire Line
	3500 6100 3600 6100
Wire Wire Line
	3150 5650 2850 5650
Connection ~ 3150 5650
Wire Wire Line
	3600 5650 3600 5950
Wire Wire Line
	3500 5650 3600 5650
Wire Wire Line
	4700 6200 4900 6200
Wire Wire Line
	4400 6200 4100 6200
Wire Wire Line
	4100 6200 4100 6550
Connection ~ 4100 6550
Wire Wire Line
	4100 6550 4150 6550
Connection ~ 3600 5650
$Comp
L Device:R R10
U 1 1 5ECFBC87
P 4550 6200
F 0 "R10" V 4757 6200 50  0000 C CNN
F 1 "100K" V 4666 6200 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 4480 6200 50  0001 C CNN
F 3 "~" H 4550 6200 50  0001 C CNN
	1    4550 6200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5ECFBC91
P 3850 6550
F 0 "R8" V 4057 6550 50  0000 C CNN
F 1 "100K" V 3966 6550 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 3780 6550 50  0001 C CNN
F 3 "~" H 3850 6550 50  0001 C CNN
	1    3850 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 6550 3600 6550
Wire Wire Line
	3600 6550 3600 6100
Connection ~ 3600 6100
Wire Wire Line
	3400 5100 3600 5100
Wire Wire Line
	3600 5100 3600 5650
Wire Wire Line
	3000 5100 2850 5100
Wire Wire Line
	2850 5100 2850 5650
Connection ~ 2850 5650
Text GLabel 2250 5700 0    50   Input ~ 0
2_AIN
Text GLabel 2250 6000 0    50   Input ~ 0
2_BIN
Text GLabel 2350 4550 0    50   Input ~ 0
2_GATE
$Comp
L Device:R R2
U 1 1 5ECFBCA6
P 2450 4850
F 0 "R2" H 2520 4896 50  0000 L CNN
F 1 "100K" H 2520 4805 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2380 4850 50  0001 C CNN
F 3 "~" H 2450 4850 50  0001 C CNN
	1    2450 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5ECFBCB0
P 2450 5100
F 0 "#PWR0118" H 2450 4850 50  0001 C CNN
F 1 "GND" H 2455 4927 50  0000 C CNN
F 2 "" H 2450 5100 50  0001 C CNN
F 3 "" H 2450 5100 50  0001 C CNN
	1    2450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5100 2450 5000
Text GLabel 3800 5950 2    50   Input ~ 0
2_~OUT
Wire Wire Line
	3800 5950 3600 5950
Connection ~ 3600 5950
Wire Wire Line
	3600 5950 3600 6100
Text GLabel 5100 6650 2    50   Input ~ 0
2_OUT
Wire Wire Line
	5100 6650 4900 6650
Connection ~ 4900 6650
Wire Wire Line
	2350 5700 2250 5700
Wire Wire Line
	2350 6000 2250 6000
$Comp
L Connector:AudioJack2_Ground_Switch J4
U 1 1 5ECFBCC4
P 800 4650
F 0 "J4" H 832 5075 50  0000 C CNN
F 1 "2_AIN" H 832 4984 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 800 4850 50  0001 C CNN
F 3 "~" H 800 4850 50  0001 C CNN
	1    800  4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5ECFBCCE
P 800 5050
F 0 "#PWR0119" H 800 4800 50  0001 C CNN
F 1 "GND" H 805 4877 50  0000 C CNN
F 2 "" H 800 5050 50  0001 C CNN
F 3 "" H 800 5050 50  0001 C CNN
	1    800  5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  5050 800  5000
Wire Wire Line
	1000 4450 1100 4450
Wire Wire Line
	1100 4450 1100 4550
Wire Wire Line
	1100 5000 800  5000
Connection ~ 800  5000
Wire Wire Line
	800  5000 800  4950
Wire Wire Line
	1000 4550 1100 4550
Connection ~ 1100 4550
Wire Wire Line
	1100 4550 1100 4750
Wire Wire Line
	1000 4750 1100 4750
Connection ~ 1100 4750
Wire Wire Line
	1100 4750 1100 5000
Text GLabel 1350 4650 2    50   Input ~ 0
2_AIN
Wire Wire Line
	1350 4650 1000 4650
$Comp
L Connector:AudioJack2_Ground_Switch J5
U 1 1 5ECFBCE6
P 800 5800
F 0 "J5" H 832 6225 50  0000 C CNN
F 1 "2_BIN" H 832 6134 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 800 6000 50  0001 C CNN
F 3 "~" H 800 6000 50  0001 C CNN
	1    800  5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5ECFBCF0
P 800 6200
F 0 "#PWR0120" H 800 5950 50  0001 C CNN
F 1 "GND" H 805 6027 50  0000 C CNN
F 2 "" H 800 6200 50  0001 C CNN
F 3 "" H 800 6200 50  0001 C CNN
	1    800  6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6200 800  6150
Wire Wire Line
	1000 5600 1100 5600
Wire Wire Line
	1100 5600 1100 5700
Wire Wire Line
	1100 6150 800  6150
Connection ~ 800  6150
Wire Wire Line
	800  6150 800  6100
Wire Wire Line
	1000 5700 1100 5700
Connection ~ 1100 5700
Wire Wire Line
	1100 5700 1100 5900
Wire Wire Line
	1000 5900 1100 5900
Connection ~ 1100 5900
Wire Wire Line
	1100 5900 1100 6150
Text GLabel 1350 5800 2    50   Input ~ 0
2_BIN
Wire Wire Line
	1350 5800 1000 5800
$Comp
L Connector:AudioJack2_Ground_Switch J6
U 1 1 5ECFBD08
P 800 6900
F 0 "J6" H 832 7325 50  0000 C CNN
F 1 "2_GATE" H 832 7234 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 800 7100 50  0001 C CNN
F 3 "~" H 800 7100 50  0001 C CNN
	1    800  6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5ECFBD12
P 800 7300
F 0 "#PWR0121" H 800 7050 50  0001 C CNN
F 1 "GND" H 805 7127 50  0000 C CNN
F 2 "" H 800 7300 50  0001 C CNN
F 3 "" H 800 7300 50  0001 C CNN
	1    800  7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7300 800  7250
Wire Wire Line
	1000 6700 1100 6700
Wire Wire Line
	1100 6700 1100 6800
Wire Wire Line
	1100 7250 800  7250
Connection ~ 800  7250
Wire Wire Line
	800  7250 800  7200
Wire Wire Line
	1000 6800 1100 6800
Connection ~ 1100 6800
Text GLabel 1350 6900 2    50   Input ~ 0
2_GATE
Wire Wire Line
	1350 6900 1000 6900
$Comp
L Connector:AudioJack2_Ground_Switch J8
U 1 1 5ECFBD26
P 6200 4700
F 0 "J8" H 6020 4724 50  0000 R CNN
F 1 "2_~OUT" H 6020 4626 50  0000 R CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 6200 4900 50  0001 C CNN
F 3 "~" H 6200 4900 50  0001 C CNN
	1    6200 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5ECFBD30
P 6200 5150
F 0 "#PWR0122" H 6200 4900 50  0001 C CNN
F 1 "GND" H 6205 4977 50  0000 C CNN
F 2 "" H 6200 5150 50  0001 C CNN
F 3 "" H 6200 5150 50  0001 C CNN
	1    6200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5150 6200 5050
Wire Wire Line
	6000 4500 5900 4500
Wire Wire Line
	5900 4500 5900 4600
Wire Wire Line
	5900 5050 6200 5050
Connection ~ 6200 5050
Wire Wire Line
	6200 5050 6200 5000
Wire Wire Line
	6000 4600 5900 4600
Connection ~ 5900 4600
Wire Wire Line
	5900 4600 5900 5050
Text GLabel 5800 4700 0    50   Input ~ 0
2_~OUT
Wire Wire Line
	5800 4700 5950 4700
$Comp
L Connector:AudioJack2_Ground_Switch J10
U 1 1 5ECFBD45
P 6250 5800
F 0 "J10" H 6070 5818 50  0000 R CNN
F 1 "2_OUT" H 6070 5727 50  0000 R CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 6250 6000 50  0001 C CNN
F 3 "~" H 6250 6000 50  0001 C CNN
	1    6250 5800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5ECFBD4F
P 6250 6250
F 0 "#PWR0123" H 6250 6000 50  0001 C CNN
F 1 "GND" H 6255 6077 50  0000 C CNN
F 2 "" H 6250 6250 50  0001 C CNN
F 3 "" H 6250 6250 50  0001 C CNN
	1    6250 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6250 6250 6150
Wire Wire Line
	6050 5600 5950 5600
Wire Wire Line
	5950 5600 5950 5700
Wire Wire Line
	5950 6150 6250 6150
Connection ~ 6250 6150
Wire Wire Line
	6250 6150 6250 6100
Wire Wire Line
	6050 5700 5950 5700
Connection ~ 5950 5700
Wire Wire Line
	5950 5700 5950 6150
Text GLabel 5850 5800 0    50   Input ~ 0
2_OUT
Wire Wire Line
	5850 5800 6000 5800
Wire Wire Line
	1100 6800 1100 7250
$Comp
L power:+5V #PWR0124
U 1 1 5ECFBD65
P 1250 6700
F 0 "#PWR0124" H 1250 6550 50  0001 C CNN
F 1 "+5V" H 1265 6873 50  0000 C CNN
F 2 "" H 1250 6700 50  0001 C CNN
F 3 "" H 1250 6700 50  0001 C CNN
	1    1250 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6700 1250 7000
Wire Wire Line
	1250 7000 1000 7000
Wire Wire Line
	2450 4700 2450 4550
Wire Wire Line
	2450 4550 2350 4550
Wire Wire Line
	2450 4550 3200 4550
Wire Wire Line
	3200 4550 3200 4800
Connection ~ 2450 4550
$Comp
L synth:EURORACK_CONN_16 J11
U 1 1 5EC9CC05
P 10450 1150
F 0 "J11" H 9850 1300 50  0000 L CNN
F 1 "EURORACK_CONN_16" H 9800 1100 50  0000 L CNN
F 2 "synth:EURORACK_16_IDC" V 10500 1200 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" V 10500 1200 50  0001 C CNN
	1    10450 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 1 1 5ED678A7
P 3200 2450
F 0 "U1" H 3300 2300 50  0000 C CNN
F 1 "TL074" H 3150 2450 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Package_DIP.pretty:DIP-14_W7.62mm" H 3150 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3250 2650 50  0001 C CNN
	1    3200 2450
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 2 1 5ED6D69B
P 4450 3000
F 0 "U1" H 4550 2850 50  0000 C CNN
F 1 "TL074" H 4400 3000 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Package_DIP.pretty:DIP-14_W7.62mm" H 4400 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4500 3200 50  0001 C CNN
	2    4450 3000
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 3 1 5ED79341
P 3200 6100
F 0 "U1" H 3350 5950 50  0000 C CNN
F 1 "TL074" H 3150 6100 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Package_DIP.pretty:DIP-14_W7.62mm" H 3150 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3250 6300 50  0001 C CNN
	3    3200 6100
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 4 1 5ED84A97
P 4450 6650
F 0 "U1" H 4550 6500 50  0000 C CNN
F 1 "TL074" H 4400 6650 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Package_DIP.pretty:DIP-14_W7.62mm" H 4400 6750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4500 6850 50  0001 C CNN
	4    4450 6650
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U1
U 5 1 5EDB43D9
P 11050 1200
F 0 "U1" H 11008 1246 50  0000 L CNN
F 1 "TL074" H 11008 1155 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Package_DIP.pretty:DIP-14_W7.62mm" H 11000 1300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 11100 1400 50  0001 C CNN
	5    11050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1150 5950 1150
Wire Wire Line
	5950 1150 5950 1050
Connection ~ 5950 1050
Wire Wire Line
	5950 1050 6000 1050
Wire Wire Line
	6050 2250 6000 2250
Wire Wire Line
	6000 2250 6000 2150
Connection ~ 6000 2150
Wire Wire Line
	6000 2150 6050 2150
Wire Wire Line
	6000 4800 5950 4800
Wire Wire Line
	5950 4800 5950 4700
Connection ~ 5950 4700
Wire Wire Line
	5950 4700 6000 4700
Wire Wire Line
	6050 5900 6000 5900
Wire Wire Line
	6000 5900 6000 5800
Connection ~ 6000 5800
Wire Wire Line
	6000 5800 6050 5800
Wire Wire Line
	10950 800  10950 900 
Wire Wire Line
	10950 1600 10950 1500
Wire Wire Line
	10400 800  10400 900 
Wire Wire Line
	10400 1600 10400 1500
Wire Wire Line
	10050 1600 10050 1500
Wire Wire Line
	10050 800  10050 900 
$EndSCHEMATC
