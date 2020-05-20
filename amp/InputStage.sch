EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Input Stage"
Date "2020-04-04"
Rev ""
Comp "RabidAudio"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2000 5250 2    60   Input ~ 0
A_CV
$Comp
L Device:R_POT RV2
U 1 1 5EB3C13E
P 3600 1950
F 0 "RV2" H 3531 1996 50  0000 R CNN
F 1 "100K" H 3531 1905 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3600 1950 50  0001 C CNN
F 3 "~" H 3600 1950 50  0001 C CNN
	1    3600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5EB3C144
P 3600 3200
F 0 "RV4" H 3531 3246 50  0000 R CNN
F 1 "100K" H 3531 3155 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3600 3200 50  0001 C CNN
F 3 "~" H 3600 3200 50  0001 C CNN
	1    3600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV3
U 1 1 5EB3C14A
P 3600 2700
F 0 "RV3" H 3531 2746 50  0000 R CNN
F 1 "100K" H 3531 2655 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3600 2700 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5EB3C150
P 3600 2100
F 0 "#PWR0101" H 3600 1850 50  0001 C CNN
F 1 "GND" H 3600 1950 50  0000 C CNN
F 2 "" H 3600 2100 50  0001 C CNN
F 3 "" H 3600 2100 50  0001 C CNN
	1    3600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EB3C156
P 3600 2850
F 0 "#PWR0102" H 3600 2600 50  0001 C CNN
F 1 "GND" H 3600 2700 50  0000 C CNN
F 2 "" H 3600 2850 50  0001 C CNN
F 3 "" H 3600 2850 50  0001 C CNN
	1    3600 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EB3C15C
P 3600 3350
F 0 "#PWR0103" H 3600 3100 50  0001 C CNN
F 1 "GND" H 3600 3200 50  0000 C CNN
F 2 "" H 3600 3350 50  0001 C CNN
F 3 "" H 3600 3350 50  0001 C CNN
	1    3600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5EB3C162
P 3600 1450
F 0 "RV1" H 3531 1496 50  0000 R CNN
F 1 "100K" H 3531 1405 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3600 1450 50  0001 C CNN
F 3 "~" H 3600 1450 50  0001 C CNN
	1    3600 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EB3C168
P 3600 1600
F 0 "#PWR0104" H 3600 1350 50  0001 C CNN
F 1 "GND" H 3600 1450 50  0000 C CNN
F 2 "" H 3600 1600 50  0001 C CNN
F 3 "" H 3600 1600 50  0001 C CNN
	1    3600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3200 3950 3200
Wire Wire Line
	3750 2700 3950 2700
Wire Wire Line
	3750 1950 3950 1950
Wire Wire Line
	3750 1450 3950 1450
Text GLabel 3250 1300 0    50   Input ~ 0
AIN1
Text GLabel 3250 1800 0    50   Input ~ 0
AIN2
Text GLabel 3250 2550 0    50   Input ~ 0
BIN1
Text GLabel 3250 3050 0    50   Input ~ 0
BIN2
$Comp
L Connector:AudioJack2_Ground_Switch J5
U 1 1 5EB3C179
P 1400 5250
F 0 "J5" H 1550 5050 50  0000 C CNN
F 1 "ACV_Jack" V 1150 5200 50  0000 C CNN
F 2 "" H 1400 5450 50  0001 C CNN
F 3 "~" H 1400 5450 50  0001 C CNN
	1    1400 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EB3C187
P 1650 5650
F 0 "#PWR0105" H 1650 5400 50  0001 C CNN
F 1 "GND" H 1650 5500 50  0000 C CNN
F 2 "" H 1650 5650 50  0001 C CNN
F 3 "" H 1650 5650 50  0001 C CNN
	1    1650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5150 1600 5150
Wire Wire Line
	1600 5050 1650 5050
Wire Wire Line
	1650 5050 1650 5150
Wire Wire Line
	1600 5250 2000 5250
$Comp
L power:GND #PWR0106
U 1 1 5EB3C19E
P 1700 3850
F 0 "#PWR0106" H 1700 3600 50  0001 C CNN
F 1 "GND" H 1700 3700 50  0000 C CNN
F 2 "" H 1700 3850 50  0001 C CNN
F 3 "" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1300 3600 1300
Wire Wire Line
	3250 1800 3600 1800
Wire Wire Line
	3600 2550 3250 2550
Wire Wire Line
	3250 3050 3600 3050
Wire Wire Line
	1400 3800 1700 3800
Wire Wire Line
	1700 3800 1700 3850
Connection ~ 1700 3800
Wire Wire Line
	1600 3400 1700 3400
Wire Wire Line
	1600 3300 1700 3300
Wire Wire Line
	1700 3300 1700 3400
Connection ~ 1700 3400
Wire Wire Line
	2000 3500 1600 3500
$Comp
L power:GND #PWR0107
U 1 1 5EB3C1BA
P 1700 3000
F 0 "#PWR0107" H 1700 2750 50  0001 C CNN
F 1 "GND" H 1700 2850 50  0000 C CNN
F 2 "" H 1700 3000 50  0001 C CNN
F 3 "" H 1700 3000 50  0001 C CNN
	1    1700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2950 1700 2950
Wire Wire Line
	1700 2950 1700 3000
Connection ~ 1700 2950
Wire Wire Line
	1600 2550 1700 2550
Wire Wire Line
	1600 2450 1700 2450
Wire Wire Line
	1700 2450 1700 2550
Connection ~ 1700 2550
Wire Wire Line
	2000 2650 1600 2650
$Comp
L Connector:AudioJack2_Ground_Switch J2
U 1 1 5EB3C1CC
P 1400 1850
F 0 "J2" H 1550 1650 50  0000 C CNN
F 1 "AIN4_Jack" V 1150 1800 50  0000 C CNN
F 2 "" H 1400 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EB3C1D2
P 1700 2200
F 0 "#PWR0108" H 1700 1950 50  0001 C CNN
F 1 "GND" H 1700 2050 50  0000 C CNN
F 2 "" H 1700 2200 50  0001 C CNN
F 3 "" H 1700 2200 50  0001 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2150 1700 2150
Wire Wire Line
	1700 2150 1700 2200
Connection ~ 1700 2150
Wire Wire Line
	1600 1750 1700 1750
Wire Wire Line
	1600 1650 1700 1650
Wire Wire Line
	1700 1650 1700 1750
Connection ~ 1700 1750
Wire Wire Line
	2000 1850 1600 1850
$Comp
L Connector:AudioJack2_Ground_Switch J1
U 1 1 5EB3C1E4
P 1400 1000
F 0 "J1" H 1550 800 50  0000 C CNN
F 1 "AIN4_Jack" V 1150 950 50  0000 C CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EB3C1EA
P 1700 1350
F 0 "#PWR0109" H 1700 1100 50  0001 C CNN
F 1 "GND" H 1700 1200 50  0000 C CNN
F 2 "" H 1700 1350 50  0001 C CNN
F 3 "" H 1700 1350 50  0001 C CNN
	1    1700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1300 1700 1300
Wire Wire Line
	1700 1300 1700 1350
Connection ~ 1700 1300
Wire Wire Line
	1600 900  1700 900 
Wire Wire Line
	1600 800  1700 800 
Wire Wire Line
	1700 800  1700 900 
Connection ~ 1700 900 
Wire Wire Line
	2000 1000 1600 1000
Text GLabel 2000 6350 2    60   Input ~ 0
B_CV
$Comp
L Connector:AudioJack2_Ground_Switch J6
U 1 1 5EB3C1FD
P 1400 6350
F 0 "J6" H 1550 6150 50  0000 C CNN
F 1 "BCV_Jack" V 1150 6300 50  0000 C CNN
F 2 "" H 1400 6550 50  0001 C CNN
F 3 "~" H 1400 6550 50  0001 C CNN
	1    1400 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EB3C20A
P 1650 6750
F 0 "#PWR0110" H 1650 6500 50  0001 C CNN
F 1 "GND" H 1650 6600 50  0000 C CNN
F 2 "" H 1650 6750 50  0001 C CNN
F 3 "" H 1650 6750 50  0001 C CNN
	1    1650 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6250 1600 6250
Wire Wire Line
	1600 6150 1650 6150
Wire Wire Line
	1650 6150 1650 6250
Wire Wire Line
	1600 6350 2000 6350
Text GLabel 4000 4700 0    60   Input ~ 0
A_CV
Wire Wire Line
	3950 2700 3950 3050
Text Notes 2850 2350 1    50   ~ 0
0-5V Signal
Wire Wire Line
	3950 1450 3950 1750
Text GLabel 4000 1750 2    50   Input ~ 0
AIN_SUM
Wire Wire Line
	4000 1750 3950 1750
Connection ~ 3950 1750
Wire Wire Line
	3950 1750 3950 1950
$Comp
L power:+12VA #PWR0111
U 1 1 5EB3C220
P 2100 4450
F 0 "#PWR0111" H 2100 4300 50  0001 C CNN
F 1 "+12VA" H 2100 4590 50  0000 C CNN
F 2 "" H 2100 4450 50  0001 C CNN
F 3 "" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EB3C226
P 2250 4600
F 0 "R1" V 2330 4600 50  0000 C CNN
F 1 "150K" V 2250 4600 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 2180 4600 50  0001 C CNN
F 3 "" H 2250 4600 50  0001 C CNN
	1    2250 4600
	0    -1   -1   0   
$EndComp
Text Notes 2150 4850 0    50   ~ 0
If ACV isn’t supplied,\nDefault CV = 4.8V
Wire Wire Line
	1600 6450 2000 6450
Wire Wire Line
	1650 6750 1650 6700
Connection ~ 1650 6250
Wire Wire Line
	1400 6650 1400 6700
Wire Wire Line
	1400 6700 1650 6700
Connection ~ 1650 6700
Wire Wire Line
	1650 6700 1650 6250
Wire Wire Line
	1650 5650 1650 5600
Connection ~ 1650 5150
Wire Wire Line
	1400 5550 1400 5600
Wire Wire Line
	1400 5600 1650 5600
Connection ~ 1650 5600
Wire Wire Line
	1650 5600 1650 5150
Wire Wire Line
	2100 4450 2100 4600
Text GLabel 2000 1850 2    50   Input ~ 0
AIN2
Text GLabel 2000 1000 2    50   Input ~ 0
AIN1
Text GLabel 2000 3500 2    50   Input ~ 0
BIN2
Text GLabel 2000 2650 2    50   Input ~ 0
BIN1
$Comp
L Connector:AudioJack2_Ground_Switch J4
U 1 1 5EB3C198
P 1400 3500
F 0 "J4" H 1550 3300 50  0000 C CNN
F 1 "BIN2_Jack" V 1150 3450 50  0000 C CNN
F 2 "" H 1400 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J3
U 1 1 5EB3C1B4
P 1400 2650
F 0 "J3" H 1550 2450 50  0000 C CNN
F 1 "BIN1_Jack" V 1150 2600 50  0000 C CNN
F 2 "" H 1400 2850 50  0001 C CNN
F 3 "~" H 1400 2850 50  0001 C CNN
	1    1400 2650
	1    0    0    -1  
$EndComp
Text Notes 1800 6850 0    50   ~ 0
If BCV isn’t supplied, use ACV\nThis means you can either use ACV as master,\nor control individually
Text GLabel 4000 3050 2    50   Input ~ 0
BIN_SUM
Wire Wire Line
	4000 3050 3950 3050
Connection ~ 3950 3050
Wire Wire Line
	3950 3050 3950 3200
$Comp
L power:+12VA #PWR?
U 1 1 5EBFE06E
P 9600 900
AR Path="/5EBFE06E" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EBFE06E" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 9600 750 50  0001 C CNN
F 1 "+12VA" H 9600 1040 50  0000 C CNN
F 2 "" H 9600 900 50  0001 C CNN
F 3 "" H 9600 900 50  0001 C CNN
	1    9600 900 
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5EBFE074
P 9600 1850
AR Path="/5EBFE074" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EBFE074" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 9600 1700 50  0001 C CNN
F 1 "-12VA" H 9600 1990 50  0000 C CNN
F 2 "" H 9600 1850 50  0001 C CNN
F 3 "" H 9600 1850 50  0001 C CNN
	1    9600 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 900  9600 950 
Wire Wire Line
	9600 1850 9600 1750
$Comp
L Amplifier_Operational:LM13700 U?
U 5 1 5EBFE07C
P 9700 1400
AR Path="/5EBFE07C" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5EBFE07C" Ref="U3"  Part="5" 
F 0 "U3" H 9658 1446 50  0000 L CNN
F 1 "LM13700" H 9658 1355 50  0000 L CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-16_W7.62mm" H 9400 1425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 9400 1425 50  0001 C CNN
	5    9700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1050 10100 950 
Connection ~ 9600 950 
Wire Wire Line
	9600 950  9600 1100
Wire Wire Line
	10500 1050 10500 950 
Wire Wire Line
	9600 950  10100 950 
Connection ~ 10100 950 
Wire Wire Line
	10100 950  10500 950 
Wire Wire Line
	10100 1650 10100 1750
Wire Wire Line
	10100 1750 9600 1750
Connection ~ 9600 1750
Wire Wire Line
	9600 1750 9600 1700
Wire Wire Line
	10500 1650 10500 1750
Wire Wire Line
	10500 1750 10100 1750
Connection ~ 10100 1750
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5EBFE090
P 10200 1350
AR Path="/5EBFE090" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5EBFE090" Ref="U1"  Part="5" 
F 0 "U1" H 10158 1396 50  0000 L CNN
F 1 "TL074" H 10158 1305 50  0000 L CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 10150 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10250 1550 50  0001 C CNN
	5    10200 1350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5EBFE096
P 10600 1350
AR Path="/5EBFE096" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5EBFE096" Ref="U2"  Part="5" 
F 0 "U2" H 10558 1396 50  0000 L CNN
F 1 "TL074" H 10558 1305 50  0000 L CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 10550 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10650 1550 50  0001 C CNN
	5    10600 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW?
U 1 1 5EC4491A
P 7400 1850
AR Path="/5EC4491A" Ref="SW?"  Part="1" 
AR Path="/5EC009ED/5EC4491A" Ref="SW?"  Part="1" 
AR Path="/5EB23D44/5EC4491A" Ref="SW1"  Part="1" 
F 0 "SW1" H 7400 2135 50  0000 C CNN
F 1 "SW_DPDT_x2" H 7400 2044 50  0000 C CNN
F 2 "" H 7400 1850 50  0001 C CNN
F 3 "~" H 7400 1850 50  0001 C CNN
	1    7400 1850
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC44920
P 6200 2800
AR Path="/5EC44920" Ref="#PWR?"  Part="1" 
AR Path="/5EC009ED/5EC44920" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EC44920" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 6200 2550 50  0001 C CNN
F 1 "GND" H 6200 2650 50  0000 C CNN
F 2 "" H 6200 2800 50  0001 C CNN
F 3 "" H 6200 2800 50  0001 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2800 6200 2700
Wire Wire Line
	6200 2700 6300 2700
$Comp
L Device:R R?
U 1 1 5EC44928
P 6600 1950
AR Path="/5EC44928" Ref="R?"  Part="1" 
AR Path="/5EC009ED/5EC44928" Ref="R?"  Part="1" 
AR Path="/5EB23D44/5EC44928" Ref="R4"  Part="1" 
F 0 "R4" V 6680 1950 50  0000 C CNN
F 1 "10K" V 6600 1950 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6530 1950 50  0001 C CNN
F 3 "" H 6600 1950 50  0001 C CNN
	1    6600 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EC4492E
P 5850 2200
AR Path="/5EC4492E" Ref="R?"  Part="1" 
AR Path="/5EC009ED/5EC4492E" Ref="R?"  Part="1" 
AR Path="/5EB23D44/5EC4492E" Ref="R2"  Part="1" 
F 0 "R2" V 5930 2200 50  0000 C CNN
F 1 "10K" V 5850 2200 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5780 2200 50  0001 C CNN
F 3 "" H 5850 2200 50  0001 C CNN
	1    5850 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EC44934
P 5850 2500
AR Path="/5EC44934" Ref="R?"  Part="1" 
AR Path="/5EC009ED/5EC44934" Ref="R?"  Part="1" 
AR Path="/5EB23D44/5EC44934" Ref="R3"  Part="1" 
F 0 "R3" V 5930 2500 50  0000 C CNN
F 1 "10K" V 5850 2500 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5780 2500 50  0001 C CNN
F 3 "" H 5850 2500 50  0001 C CNN
	1    5850 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 2600 7000 2600
Wire Wire Line
	7000 2600 7000 1950
Wire Wire Line
	7000 1950 6750 1950
Wire Wire Line
	6000 2500 6050 2500
Wire Wire Line
	6450 1950 6250 1950
Wire Wire Line
	6250 1950 6250 2500
Connection ~ 6250 2500
Wire Wire Line
	6250 2500 6300 2500
Wire Wire Line
	6000 2200 6050 2200
Wire Wire Line
	6050 2200 6050 2500
Connection ~ 6050 2500
Wire Wire Line
	6050 2500 6250 2500
Text Notes 6600 2850 0    50   ~ 0
MIXDOWN
$Comp
L Switch:SW_DPDT_x2 SW?
U 2 1 5EC44947
P 7400 2950
AR Path="/5EC44947" Ref="SW?"  Part="2" 
AR Path="/5EC009ED/5EC44947" Ref="SW?"  Part="2" 
AR Path="/5EB23D44/5EC44947" Ref="SW1"  Part="2" 
F 0 "SW1" H 7400 2625 50  0000 C CNN
F 1 "SW_DPDT_x2" H 7400 2716 50  0000 C CNN
F 2 "" H 7400 2950 50  0001 C CNN
F 3 "~" H 7400 2950 50  0001 C CNN
	2    7400 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 2600 7000 2600
Connection ~ 7000 2600
Wire Wire Line
	7200 1950 7200 2600
Connection ~ 7200 2600
Wire Wire Line
	5400 3050 5600 3050
Wire Wire Line
	7200 2600 7200 2850
Text Notes 4400 4400 0    50   ~ 0
TODO remaining opamp could be inverter from CVA to CVB\nparams require design since input is not zero-centered
Text GLabel 5400 3050 0    50   Input ~ 0
BIN_SUM
Text GLabel 7800 1850 2    50   Input ~ 0
AIN_MIX
Text GLabel 7800 2950 2    50   Input ~ 0
BIN_MIX
Wire Wire Line
	7800 2950 7600 2950
Wire Wire Line
	5700 2500 5600 2500
Wire Wire Line
	5600 2500 5600 3050
Connection ~ 5600 3050
Wire Wire Line
	5600 3050 7200 3050
Wire Wire Line
	5400 1750 5600 1750
Wire Wire Line
	5700 2200 5600 2200
Wire Wire Line
	5600 2200 5600 1750
Connection ~ 5600 1750
Wire Wire Line
	5600 1750 7200 1750
Wire Wire Line
	7800 1850 7600 1850
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 5EC44962
P 6600 2600
AR Path="/5EC44962" Ref="U?"  Part="4" 
AR Path="/5EC009ED/5EC44962" Ref="U?"  Part="4" 
AR Path="/5EB23D44/5EC44962" Ref="U2"  Part="4" 
F 0 "U2" H 6650 2400 50  0000 C CNN
F 1 "TL074" H 6550 2600 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 6550 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6650 2800 50  0001 C CNN
	4    6600 2600
	1    0    0    1   
$EndComp
Text GLabel 5400 1750 0    50   Input ~ 0
AIN_SUM
$Comp
L Connector:AudioJack3 J?
U 1 1 5EC639C3
P 8200 5200
AR Path="/5EC639C3" Ref="J?"  Part="1" 
AR Path="/5EC009ED/5EC639C3" Ref="J?"  Part="1" 
AR Path="/5EB23D44/5EC639C3" Ref="J8"  Part="1" 
F 0 "J8" H 7920 5133 50  0000 R CNN
F 1 "MAIN_OUT" H 7920 5224 50  0000 R CNN
F 2 "" H 8200 5200 50  0001 C CNN
F 3 "~" H 8200 5200 50  0001 C CNN
	1    8200 5200
	-1   0    0    1   
$EndComp
$Comp
L Connector:AudioJack3 J?
U 1 1 5EC639C9
P 8150 5800
AR Path="/5EC639C9" Ref="J?"  Part="1" 
AR Path="/5EC009ED/5EC639C9" Ref="J?"  Part="1" 
AR Path="/5EB23D44/5EC639C9" Ref="J7"  Part="1" 
F 0 "J7" H 7870 5733 50  0000 R CNN
F 1 "HP_OUT" H 7870 5824 50  0000 R CNN
F 2 "" H 8150 5800 50  0001 C CNN
F 3 "~" H 8150 5800 50  0001 C CNN
	1    8150 5800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC639CF
P 7850 6000
AR Path="/5EC639CF" Ref="#PWR?"  Part="1" 
AR Path="/5EC009ED/5EC639CF" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EC639CF" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 7850 5750 50  0001 C CNN
F 1 "GND" H 7850 5850 50  0000 C CNN
F 2 "" H 7850 6000 50  0001 C CNN
F 3 "" H 7850 6000 50  0001 C CNN
	1    7850 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 6000 7850 5900
Wire Wire Line
	7850 5900 7950 5900
$Comp
L power:GND #PWR?
U 1 1 5EC639D7
P 7900 5400
AR Path="/5EC639D7" Ref="#PWR?"  Part="1" 
AR Path="/5EC009ED/5EC639D7" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EC639D7" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 7900 5150 50  0001 C CNN
F 1 "GND" H 7900 5250 50  0000 C CNN
F 2 "" H 7900 5400 50  0001 C CNN
F 3 "" H 7900 5400 50  0001 C CNN
	1    7900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5400 7900 5300
Wire Wire Line
	7900 5300 8000 5300
Wire Wire Line
	7300 5100 7450 5100
Wire Wire Line
	7600 6200 7600 5800
Wire Wire Line
	7600 5200 8000 5200
Wire Wire Line
	7950 5800 7600 5800
Connection ~ 7600 5800
Wire Wire Line
	7600 5800 7600 5200
Text Notes 8000 6150 0    50   ~ 0
TODO should there even be a HP out? kinda redundant, might conflict if 2\nIn theory, parallel 8ohm loads looks like 4ohm load
Text GLabel 7300 5100 0    50   Input ~ 0
AOUT
Wire Wire Line
	7450 5100 7450 5700
Wire Wire Line
	7450 5700 7950 5700
Connection ~ 7450 5100
Wire Wire Line
	7450 5100 8000 5100
Text GLabel 7300 6200 0    50   Input ~ 0
BOUT
Wire Wire Line
	7300 6200 7600 6200
$Comp
L Amplifier_Operational:TL074 U?
U 4 1 5EC8343A
P 4950 4800
AR Path="/5EC8343A" Ref="U?"  Part="4" 
AR Path="/5EC009ED/5EC8343A" Ref="U?"  Part="4" 
AR Path="/5EB23D44/5EC8343A" Ref="U1"  Part="4" 
F 0 "U1" H 5000 4600 50  0000 C CNN
F 1 "TL074" H 4900 4800 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 4900 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5000 5000 50  0001 C CNN
	4    4950 4800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC84CE1
P 4450 5000
AR Path="/5EC84CE1" Ref="#PWR?"  Part="1" 
AR Path="/5EC009ED/5EC84CE1" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EC84CE1" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 4450 4750 50  0001 C CNN
F 1 "GND" H 4450 4850 50  0000 C CNN
F 2 "" H 4450 5000 50  0001 C CNN
F 3 "" H 4450 5000 50  0001 C CNN
	1    4450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5000 4450 4900
Wire Wire Line
	4450 4900 4650 4900
Text Notes 4150 2400 0    50   ~ 0
TODO: conflicting input impedances
Text Notes 5050 1400 0    50   ~ 0
TODO: here we have  mixdown before VCA\nso thatdarlington pair can amp the OTA output\nand act as a low output impedance source.\nbut does mixing down first violate the conceptual\nmodel of VCAs A and B?\nWould it work to add the currents together after\nthe darlington buffer and send to both pins?
Text GLabel 2000 6450 2    60   Input ~ 0
B_CV_DEFAULT
Text GLabel 5600 4800 2    60   Input ~ 0
B_CV_DEFAULT
Text GLabel 2000 5350 2    60   Input ~ 0
A_CV_DEFAULT
Wire Wire Line
	2000 5350 1600 5350
Text GLabel 2500 4600 2    60   Input ~ 0
A_CV_DEFAULT
Wire Wire Line
	2500 4600 2400 4600
Text Notes 2550 5000 0    50   ~ 0
TODO do we need to buffer this?
Text Notes 7850 2500 0    50   ~ 0
TODO: should you get access to the mixed signals?\nWhat if you want to apply an effect, e.g. filter, on all inputs?
Text Notes 3000 1150 0    50   ~ 0
TODO: should level adjustment be\nat the signal or at the CV?
Wire Wire Line
	1700 900  1700 1300
Text GLabel 2000 1100 2    50   Input ~ 0
AIN1_DEFAULT
Wire Wire Line
	2000 1100 1600 1100
Text GLabel 2000 1950 2    50   Input ~ 0
AIN2_DEFAULT
Text GLabel 2000 2750 2    50   Input ~ 0
BIN1_DEFAULT
Text GLabel 2000 3600 2    50   Input ~ 0
BIN2_DEFAULT
Wire Wire Line
	1700 3400 1700 3800
Wire Wire Line
	2000 3600 1600 3600
Wire Wire Line
	1700 2550 1700 2950
Wire Wire Line
	2000 2750 1600 2750
Wire Wire Line
	1700 1750 1700 2150
Wire Wire Line
	2000 1950 1600 1950
Text Notes 8400 3800 0    50   ~ 0
4-osc polyphony requires 4 separate VCAs,\nsince each note needs it’s own envelope.\nTherefore we should switch to 4 single-input VCAs,\ndaisy chained CV, summed with slider for each input.\nNeed to figure out how to set up darlington buffer to\noffer mono-mixdown and stereo from 4 outputs.\nDedicated CV inverter no longer necessary, as this can\nbe handled easily externally (e.g. inverting LFO before applying).\nFilters are likely single-channel? do you apply filter before mix or\nafter, and how does that effect stereo?
$EndSCHEMATC
