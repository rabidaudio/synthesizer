EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Input Stage"
Date "2020-04-04"
Rev ""
Comp "RabidAudio"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4250 1000 2    60   Input ~ 0
A_CV
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EB3C179
P 3650 1000
F 0 "J?" H 3800 800 50  0000 C CNN
F 1 "ACV_Jack" V 3400 950 50  0000 C CNN
F 2 "" H 3650 1200 50  0001 C CNN
F 3 "~" H 3650 1200 50  0001 C CNN
	1    3650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB3C187
P 3900 1400
F 0 "#PWR?" H 3900 1150 50  0001 C CNN
F 1 "GND" H 3900 1250 50  0000 C CNN
F 2 "" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 900  3850 900 
Wire Wire Line
	3850 800  3900 800 
Wire Wire Line
	3900 800  3900 900 
Wire Wire Line
	3850 1000 4250 1000
$Comp
L power:GND #PWR?
U 1 1 5EB3C19E
P 1700 3850
F 0 "#PWR?" H 1700 3600 50  0001 C CNN
F 1 "GND" H 1700 3700 50  0000 C CNN
F 2 "" H 1700 3850 50  0001 C CNN
F 3 "" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
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
L power:GND #PWR?
U 1 1 5EB3C1BA
P 1700 3000
F 0 "#PWR?" H 1700 2750 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5EB3C1D2
P 1700 2200
F 0 "#PWR?" H 1700 1950 50  0001 C CNN
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
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EB3C1E4
P 1400 1000
F 0 "J?" H 1550 800 50  0000 C CNN
F 1 "AIN_Jack" V 1150 950 50  0000 C CNN
F 2 "" H 1400 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB3C1EA
P 1700 1350
F 0 "#PWR?" H 1700 1100 50  0001 C CNN
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
Text GLabel 4250 1900 2    60   Input ~ 0
B_CV
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EB3C1FD
P 3650 1900
F 0 "J?" H 3800 1700 50  0000 C CNN
F 1 "BCV_Jack" V 3400 1850 50  0000 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "~" H 3650 2100 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB3C20A
P 3900 2300
F 0 "#PWR?" H 3900 2050 50  0001 C CNN
F 1 "GND" H 3900 2150 50  0000 C CNN
F 2 "" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1800 3850 1800
Wire Wire Line
	3850 1700 3900 1700
Wire Wire Line
	3900 1700 3900 1800
Wire Wire Line
	3850 1900 4250 1900
Text Notes 1850 650  2    50   ~ 0
0-10Vpp Signal
Text Notes 6050 800  0    50   ~ 0
If ACV isn’t supplied,\nDefault CV = 5V
Wire Wire Line
	3850 2000 4250 2000
Wire Wire Line
	3900 2300 3900 2250
Connection ~ 3900 1800
Wire Wire Line
	3650 2200 3650 2250
Wire Wire Line
	3650 2250 3900 2250
Connection ~ 3900 2250
Wire Wire Line
	3900 2250 3900 1800
Wire Wire Line
	3900 1400 3900 1350
Connection ~ 3900 900 
Wire Wire Line
	3650 1300 3650 1350
Wire Wire Line
	3650 1350 3900 1350
Connection ~ 3900 1350
Wire Wire Line
	3900 1350 3900 900 
Text GLabel 2000 1850 2    50   Input ~ 0
BIN
Text GLabel 2000 1000 2    50   Input ~ 0
AIN
Text GLabel 2000 3500 2    50   Input ~ 0
DIN
Text GLabel 2000 2650 2    50   Input ~ 0
CIN
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EB3C198
P 1400 3500
F 0 "J?" H 1550 3300 50  0000 C CNN
F 1 "DIN_Jack" V 1150 3450 50  0000 C CNN
F 2 "" H 1400 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EB3C1B4
P 1400 2650
F 0 "J?" H 1550 2450 50  0000 C CNN
F 1 "CIN_Jack" V 1150 2600 50  0000 C CNN
F 2 "" H 1400 2850 50  0001 C CNN
F 3 "~" H 1400 2850 50  0001 C CNN
	1    1400 2650
	1    0    0    -1  
$EndComp
Text Notes 6000 1950 0    50   ~ 0
For each subsequent CV, if not supplied,\nuse previous CV
$Comp
L power:+12VA #PWR?
U 1 1 5EBFE06E
P 10000 2200
AR Path="/5EBFE06E" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EBFE06E" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 10000 2050 50  0001 C CNN
F 1 "+12VA" H 10000 2340 50  0000 C CNN
F 2 "" H 10000 2200 50  0001 C CNN
F 3 "" H 10000 2200 50  0001 C CNN
	1    10000 2200
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5EBFE074
P 10000 3200
AR Path="/5EBFE074" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EBFE074" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 10000 3050 50  0001 C CNN
F 1 "-12VA" H 10000 3340 50  0000 C CNN
F 2 "" H 10000 3200 50  0001 C CNN
F 3 "" H 10000 3200 50  0001 C CNN
	1    10000 3200
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM13700 U?
U 5 1 5EBFE07C
P 10100 2700
AR Path="/5EBFE07C" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5EBFE07C" Ref="U?"  Part="5" 
F 0 "U?" H 10058 2746 50  0000 L CNN
F 1 "LM13700" H 10058 2655 50  0000 L CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-16_W7.62mm" H 9800 2725 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 9800 2725 50  0001 C CNN
	5    10100 2700
	1    0    0    -1  
$EndComp
Text GLabel 4250 2000 2    60   Input ~ 0
B_CV_DEFAULT
Text GLabel 4250 1100 2    60   Input ~ 0
A_CV_DEFAULT
Wire Wire Line
	4250 1100 3850 1100
Text GLabel 6950 1300 2    60   Input ~ 0
A_CV_DEFAULT
Wire Wire Line
	1700 900  1700 1300
Text GLabel 2000 1100 2    50   Input ~ 0
AIN_DEFAULT
Wire Wire Line
	2000 1100 1600 1100
Text GLabel 2000 1950 2    50   Input ~ 0
BIN_DEFAULT
Text GLabel 2000 2750 2    50   Input ~ 0
CIN_DEFAULT
Text GLabel 2000 3600 2    50   Input ~ 0
DIN_DEFAULT
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
$Comp
L power:+5V #PWR?
U 1 1 5EF6DADF
P 6000 1250
F 0 "#PWR?" H 6000 1100 50  0001 C CNN
F 1 "+5V" H 6015 1423 50  0000 C CNN
F 2 "" H 6000 1250 50  0001 C CNN
F 3 "" H 6000 1250 50  0001 C CNN
	1    6000 1250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5EF7503E
P 6500 1300
F 0 "U?" H 6500 933 50  0000 C CNN
F 1 "TL074" H 6500 1024 50  0000 C CNN
F 2 "" H 6450 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6550 1500 50  0001 C CNN
	1    6500 1300
	1    0    0    1   
$EndComp
Text Notes 3500 650  0    50   ~ 0
0-5V CV
Wire Wire Line
	6950 1300 6900 1300
Text GLabel 4250 2800 2    60   Input ~ 0
C_CV
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EFA08FA
P 3650 2800
F 0 "J?" H 3800 2600 50  0000 C CNN
F 1 "CCV_Jack" V 3400 2750 50  0000 C CNN
F 2 "" H 3650 3000 50  0001 C CNN
F 3 "~" H 3650 3000 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFA0904
P 3900 3200
F 0 "#PWR?" H 3900 2950 50  0001 C CNN
F 1 "GND" H 3900 3050 50  0000 C CNN
F 2 "" H 3900 3200 50  0001 C CNN
F 3 "" H 3900 3200 50  0001 C CNN
	1    3900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2700 3850 2700
Wire Wire Line
	3850 2600 3900 2600
Wire Wire Line
	3900 2600 3900 2700
Wire Wire Line
	3850 2800 4250 2800
Text GLabel 4250 3700 2    60   Input ~ 0
D_CV
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EFA0913
P 3650 3700
F 0 "J?" H 3800 3500 50  0000 C CNN
F 1 "DCV_Jack" V 3400 3650 50  0000 C CNN
F 2 "" H 3650 3900 50  0001 C CNN
F 3 "~" H 3650 3900 50  0001 C CNN
	1    3650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EFA091D
P 3900 4100
F 0 "#PWR?" H 3900 3850 50  0001 C CNN
F 1 "GND" H 3900 3950 50  0000 C CNN
F 2 "" H 3900 4100 50  0001 C CNN
F 3 "" H 3900 4100 50  0001 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3600 3850 3600
Wire Wire Line
	3850 3500 3900 3500
Wire Wire Line
	3900 3500 3900 3600
Wire Wire Line
	3850 3700 4250 3700
Wire Wire Line
	3850 3800 4250 3800
Wire Wire Line
	3900 4100 3900 4050
Connection ~ 3900 3600
Wire Wire Line
	3650 4000 3650 4050
Wire Wire Line
	3650 4050 3900 4050
Connection ~ 3900 4050
Wire Wire Line
	3900 4050 3900 3600
Wire Wire Line
	3900 3200 3900 3150
Connection ~ 3900 2700
Wire Wire Line
	3650 3100 3650 3150
Wire Wire Line
	3650 3150 3900 3150
Connection ~ 3900 3150
Wire Wire Line
	3900 3150 3900 2700
Text GLabel 4250 3800 2    60   Input ~ 0
D_CV_DEFAULT
Text GLabel 4250 2900 2    60   Input ~ 0
C_CV_DEFAULT
Wire Wire Line
	4250 2900 3850 2900
$Comp
L Connector:AudioJack2_Ground_Switch J?
U 1 1 5EB3C1CC
P 1400 1850
F 0 "J?" H 1550 1650 50  0000 C CNN
F 1 "BIN_Jack" V 1150 1800 50  0000 C CNN
F 2 "" H 1400 2050 50  0001 C CNN
F 3 "~" H 1400 2050 50  0001 C CNN
	1    1400 1850
	1    0    0    -1  
$EndComp
Text GLabel 6050 2500 0    60   Input ~ 0
A_CV
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5EFB9B95
P 10100 1150
F 0 "U?" H 10058 1196 50  0000 L CNN
F 1 "TL074" H 10058 1105 50  0000 L CNN
F 2 "" H 10050 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10150 1350 50  0001 C CNN
	5    10100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1200 6150 1200
Wire Wire Line
	6150 1200 6150 1000
Wire Wire Line
	6150 1000 6900 1000
Wire Wire Line
	6900 1000 6900 1300
Connection ~ 6900 1300
Wire Wire Line
	6900 1300 6800 1300
Wire Wire Line
	6000 1250 6000 1400
Wire Wire Line
	6000 1400 6200 1400
Wire Wire Line
	6050 2500 6250 2500
Wire Wire Line
	6250 2300 6100 2300
Wire Wire Line
	6100 2300 6100 2050
Wire Wire Line
	6100 2050 7000 2050
Wire Wire Line
	7000 2050 7000 2400
Wire Wire Line
	7000 2400 6850 2400
Text GLabel 7100 2400 2    60   Input ~ 0
B_CV_DEFAULT
Wire Wire Line
	7100 2400 7000 2400
Connection ~ 7000 2400
Text GLabel 6050 3150 0    60   Input ~ 0
B_CV
Wire Wire Line
	6050 3150 6250 3150
Wire Wire Line
	6250 2950 6100 2950
Wire Wire Line
	6100 2950 6100 2700
Wire Wire Line
	6100 2700 7000 2700
Wire Wire Line
	7000 2700 7000 3050
Wire Wire Line
	7000 3050 6850 3050
Text GLabel 7100 3050 2    60   Input ~ 0
C_CV_DEFAULT
Wire Wire Line
	7100 3050 7000 3050
Connection ~ 7000 3050
Text GLabel 6050 3800 0    60   Input ~ 0
C_CV
Wire Wire Line
	6050 3800 6250 3800
Wire Wire Line
	6250 3600 6100 3600
Wire Wire Line
	6100 3600 6100 3350
Wire Wire Line
	6100 3350 7000 3350
Wire Wire Line
	7000 3350 7000 3700
Wire Wire Line
	7000 3700 6850 3700
Text GLabel 7100 3700 2    60   Input ~ 0
D_CV_DEFAULT
Wire Wire Line
	7100 3700 7000 3700
Connection ~ 7000 3700
$Comp
L power:+12VA #PWR?
U 1 1 5F070289
P 10000 700
AR Path="/5F070289" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5F070289" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10000 550 50  0001 C CNN
F 1 "+12VA" H 10000 840 50  0000 C CNN
F 2 "" H 10000 700 50  0001 C CNN
F 3 "" H 10000 700 50  0001 C CNN
	1    10000 700 
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5F070973
P 10000 1650
AR Path="/5F070973" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5F070973" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10000 1500 50  0001 C CNN
F 1 "-12VA" H 10000 1790 50  0000 C CNN
F 2 "" H 10000 1650 50  0001 C CNN
F 3 "" H 10000 1650 50  0001 C CNN
	1    10000 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 1650 10000 1550
Wire Wire Line
	10000 2200 10000 2250
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5F0F5B47
P 6550 2400
F 0 "U?" H 6550 2033 50  0000 C CNN
F 1 "TL074" H 6550 2124 50  0000 C CNN
F 2 "" H 6500 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6600 2600 50  0001 C CNN
	1    6550 2400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5F0F793C
P 6550 3050
F 0 "U?" H 6550 2683 50  0000 C CNN
F 1 "TL074" H 6550 2774 50  0000 C CNN
F 2 "" H 6500 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6600 3250 50  0001 C CNN
	1    6550 3050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5F0F8F3C
P 6550 3700
F 0 "U?" H 6550 3333 50  0000 C CNN
F 1 "TL074" H 6550 3424 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6600 3900 50  0001 C CNN
	1    6550 3700
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5F0FE5A5
P 10450 1150
F 0 "U?" H 10408 1196 50  0000 L CNN
F 1 "TL074" H 10408 1105 50  0000 L CNN
F 2 "" H 10400 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10500 1350 50  0001 C CNN
	5    10450 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5F0FF34F
P 10800 1150
F 0 "U?" H 10758 1196 50  0000 L CNN
F 1 "TL074" H 10758 1105 50  0000 L CNN
F 2 "" H 10750 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10850 1350 50  0001 C CNN
	5    10800 1150
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 5F0FFC0C
P 11100 1150
F 0 "U?" H 11058 1196 50  0000 L CNN
F 1 "TL074" H 11058 1105 50  0000 L CNN
F 2 "" H 11050 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 11150 1350 50  0001 C CNN
	5    11100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1550 10350 1550
Wire Wire Line
	10350 1550 10350 1450
Connection ~ 10000 1550
Wire Wire Line
	10000 1550 10000 1450
Wire Wire Line
	10350 1550 10700 1550
Wire Wire Line
	10700 1550 10700 1450
Connection ~ 10350 1550
Wire Wire Line
	10700 1550 11000 1550
Wire Wire Line
	11000 1550 11000 1450
Connection ~ 10700 1550
Wire Wire Line
	10000 850  10000 750 
Wire Wire Line
	10000 750  10350 750 
Wire Wire Line
	10350 750  10350 850 
Connection ~ 10000 750 
Wire Wire Line
	10000 750  10000 700 
Wire Wire Line
	10350 750  10700 750 
Wire Wire Line
	10700 750  10700 850 
Connection ~ 10350 750 
Wire Wire Line
	10700 750  11000 750 
Wire Wire Line
	11000 750  11000 850 
Connection ~ 10700 750 
$Comp
L Amplifier_Operational:LM13700 U?
U 5 1 5F12D343
P 10650 2700
AR Path="/5F12D343" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5F12D343" Ref="U?"  Part="5" 
F 0 "U?" H 10608 2746 50  0000 L CNN
F 1 "LM13700" H 10608 2655 50  0000 L CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-16_W7.62mm" H 10350 2725 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 10350 2725 50  0001 C CNN
	5    10650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2250 10550 2250
Wire Wire Line
	10550 2250 10550 2400
Connection ~ 10000 2250
Wire Wire Line
	10000 2250 10000 2400
Wire Wire Line
	10000 3200 10000 3100
Wire Wire Line
	10000 3100 10550 3100
Wire Wire Line
	10550 3100 10550 3000
Connection ~ 10000 3100
Wire Wire Line
	10000 3100 10000 3000
Text Notes 8900 3900 0    50   ~ 0
Q Current requirements:\n+12V supply: 4*(2) + 2*20 + (4*4+2+2)*2.5/2 = 73mA\n-12V supply: 4*(.05+.12+1) + (4*4+2+2)*2.5/2 = 30mA\n5V supply: 0
Text Notes 1400 4650 0    50   ~ 0
TODO: should we add amp outputs?\nIf so, we should also have output amplifier inputs for return signal
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J?
U 1 1 5F189CDE
P 1750 5350
F 0 "J?" H 1800 5667 50  0000 C CNN
F 1 "Conn_02x04_Counter_Clockwise" H 1800 5576 50  0000 C CNN
F 2 "" H 1750 5350 50  0001 C CNN
F 3 "~" H 1750 5350 50  0001 C CNN
	1    1750 5350
	1    0    0    -1  
$EndComp
Text GLabel 1400 5250 0    50   Input ~ 0
AIN_DEFAULT
Text GLabel 1400 5350 0    50   Input ~ 0
BIN_DEFAULT
Text GLabel 1400 5450 0    50   Input ~ 0
CIN_DEFAULT
Text GLabel 1400 5550 0    50   Input ~ 0
DIN_DEFAULT
$Comp
L synth:EURORACK_CONN_16 J?
U 1 1 5F1A22AA
P 1500 6650
F 0 "J?" H 1500 7267 50  0000 C CNN
F 1 "EURORACK_CONN_16" H 1500 7176 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Connector_IDC.pretty:IDC-Header_2x08_P2.54mm_Vertical" H 1550 6650 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" H 1550 6650 50  0001 C CNN
	1    1500 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR?
U 1 1 5F1AC43F
P 1650 6350
AR Path="/5F1AC43F" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5F1AC43F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 6200 50  0001 C CNN
F 1 "+12VA" H 1650 6490 50  0000 C CNN
F 2 "" H 1650 6350 50  0001 C CNN
F 3 "" H 1650 6350 50  0001 C CNN
	1    1650 6350
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5F1AD093
P 1650 7050
AR Path="/5F1AD093" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5F1AD093" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 6900 50  0001 C CNN
F 1 "-12VA" H 1650 7190 50  0000 C CNN
F 2 "" H 1650 7050 50  0001 C CNN
F 3 "" H 1650 7050 50  0001 C CNN
	1    1650 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1AD919
P 1400 7000
F 0 "#PWR?" H 1400 6750 50  0001 C CNN
F 1 "GND" H 1400 6850 50  0000 C CNN
F 2 "" H 1400 7000 50  0001 C CNN
F 3 "" H 1400 7000 50  0001 C CNN
	1    1400 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F1B98F3
P 1400 6350
F 0 "#PWR?" H 1400 6200 50  0001 C CNN
F 1 "+5V" H 1415 6523 50  0000 C CNN
F 2 "" H 1400 6350 50  0001 C CNN
F 3 "" H 1400 6350 50  0001 C CNN
	1    1400 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6350 1650 6400
Wire Wire Line
	1400 6400 1400 6350
Wire Wire Line
	1400 7000 1400 6900
Wire Wire Line
	1650 7050 1650 6900
Wire Wire Line
	1400 5550 1550 5550
Wire Wire Line
	1550 5450 1400 5450
Wire Wire Line
	1400 5350 1550 5350
Wire Wire Line
	1550 5250 1400 5250
$EndSCHEMATC