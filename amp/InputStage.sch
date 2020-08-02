EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L Connector:AudioJack2_Ground_Switch J7
U 1 1 5EB3C179
P 3650 1000
F 0 "J7" H 3800 800 50  0000 C CNN
F 1 "ACV_Jack" V 3400 950 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 3650 1200 50  0001 C CNN
F 3 "~" H 3650 1200 50  0001 C CNN
	1    3650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5EB3C187
P 3900 1400
F 0 "#PWR09" H 3900 1150 50  0001 C CNN
F 1 "GND" H 3900 1250 50  0000 C CNN
F 2 "" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 800  3900 800 
$Comp
L power:GND #PWR04
U 1 1 5EB3C19E
P 1700 4050
F 0 "#PWR04" H 1700 3800 50  0001 C CNN
F 1 "GND" H 1700 3900 50  0000 C CNN
F 2 "" H 1700 4050 50  0001 C CNN
F 3 "" H 1700 4050 50  0001 C CNN
	1    1700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4000 1700 4000
Wire Wire Line
	1700 4000 1700 4050
Connection ~ 1700 4000
Wire Wire Line
	1600 3600 1700 3600
Wire Wire Line
	1600 3500 1700 3500
Wire Wire Line
	1700 3500 1700 3600
Connection ~ 1700 3600
Wire Wire Line
	2000 3700 1600 3700
$Comp
L power:GND #PWR03
U 1 1 5EB3C1BA
P 1700 3150
F 0 "#PWR03" H 1700 2900 50  0001 C CNN
F 1 "GND" H 1700 3000 50  0000 C CNN
F 2 "" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3100 1700 3100
Wire Wire Line
	1700 3100 1700 3150
Connection ~ 1700 3100
Wire Wire Line
	1600 2700 1700 2700
Wire Wire Line
	1600 2600 1700 2600
Wire Wire Line
	1700 2600 1700 2700
Connection ~ 1700 2700
Wire Wire Line
	2000 2800 1600 2800
$Comp
L power:GND #PWR02
U 1 1 5EB3C1D2
P 1700 2250
F 0 "#PWR02" H 1700 2000 50  0001 C CNN
F 1 "GND" H 1700 2100 50  0000 C CNN
F 2 "" H 1700 2250 50  0001 C CNN
F 3 "" H 1700 2250 50  0001 C CNN
	1    1700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2200 1700 2200
Wire Wire Line
	1700 2200 1700 2250
Connection ~ 1700 2200
Wire Wire Line
	1600 1800 1700 1800
Wire Wire Line
	1600 1700 1700 1700
Wire Wire Line
	1700 1700 1700 1800
Connection ~ 1700 1800
Wire Wire Line
	2000 1900 1600 1900
$Comp
L Connector:AudioJack2_Ground_Switch J1
U 1 1 5EB3C1E4
P 1400 1000
F 0 "J1" H 1550 800 50  0000 C CNN
F 1 "AIN_Jack" V 1150 950 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 1400 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EB3C1EA
P 1700 1350
F 0 "#PWR01" H 1700 1100 50  0001 C CNN
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
L Connector:AudioJack2_Ground_Switch J8
U 1 1 5EB3C1FD
P 3650 1900
F 0 "J8" H 3800 1700 50  0000 C CNN
F 1 "BCV_Jack" V 3400 1850 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 3650 2100 50  0001 C CNN
F 3 "~" H 3650 2100 50  0001 C CNN
	1    3650 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5EB3C20A
P 3900 2300
F 0 "#PWR010" H 3900 2050 50  0001 C CNN
F 1 "GND" H 3900 2150 50  0000 C CNN
F 2 "" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1700 3900 1700
Text Notes 1850 650  2    50   ~ 0
10Vpp Signal
Wire Wire Line
	3850 2000 4250 2000
Wire Wire Line
	3900 2300 3900 2250
Wire Wire Line
	3650 2200 3650 2250
Wire Wire Line
	3650 2250 3900 2250
Connection ~ 3900 2250
Wire Wire Line
	3900 1400 3900 1350
Wire Wire Line
	3650 1300 3650 1350
Wire Wire Line
	3650 1350 3900 1350
Connection ~ 3900 1350
Text GLabel 2000 1900 2    50   Input ~ 0
B_IN
Text GLabel 2000 1000 2    50   Input ~ 0
A_IN
Text GLabel 2000 3700 2    50   Input ~ 0
D_IN
Text GLabel 2000 2800 2    50   Input ~ 0
C_IN
$Comp
L Connector:AudioJack2_Ground_Switch J4
U 1 1 5EB3C198
P 1400 3700
F 0 "J4" H 1550 3500 50  0000 C CNN
F 1 "DIN_Jack" V 1150 3650 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 1400 3900 50  0001 C CNN
F 3 "~" H 1400 3900 50  0001 C CNN
	1    1400 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground_Switch J3
U 1 1 5EB3C1B4
P 1400 2800
F 0 "J3" H 1550 2600 50  0000 C CNN
F 1 "CIN_Jack" V 1150 2750 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 1400 3000 50  0001 C CNN
F 3 "~" H 1400 3000 50  0001 C CNN
	1    1400 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR?
U 1 1 5EBFE06E
P 10250 650
AR Path="/5EBFE06E" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EBFE06E" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 10250 500 50  0001 C CNN
F 1 "+12VA" H 10250 790 50  0000 C CNN
F 2 "" H 10250 650 50  0001 C CNN
F 3 "" H 10250 650 50  0001 C CNN
	1    10250 650 
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5EBFE074
P 10250 1650
AR Path="/5EBFE074" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5EBFE074" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 10250 1500 50  0001 C CNN
F 1 "-12VA" H 10250 1790 50  0000 C CNN
F 2 "" H 10250 1650 50  0001 C CNN
F 3 "" H 10250 1650 50  0001 C CNN
	1    10250 1650
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:LM13700 U?
U 5 1 5EBFE07C
P 10350 1150
AR Path="/5EBFE07C" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5EBFE07C" Ref="U2"  Part="5" 
F 0 "U2" H 10308 1196 50  0000 L CNN
F 1 "LM13700" H 10308 1105 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10050 1175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 10050 1175 50  0001 C CNN
	5    10350 1150
	1    0    0    -1  
$EndComp
Text GLabel 4250 1100 2    60   Input ~ 0
A_CV_DEFAULT
Wire Wire Line
	4250 1100 3850 1100
Wire Wire Line
	1700 900  1700 1300
Text GLabel 2000 1100 2    50   Input ~ 0
A_IN_DEFAULT
Wire Wire Line
	2000 1100 1600 1100
Text GLabel 2000 2000 2    50   Input ~ 0
B_IN_DEFAULT
Text GLabel 2000 2900 2    50   Input ~ 0
C_IN_DEFAULT
Text GLabel 2000 3800 2    50   Input ~ 0
D_IN_DEFAULT
Wire Wire Line
	1700 3600 1700 4000
Wire Wire Line
	2000 3800 1600 3800
Wire Wire Line
	1700 2700 1700 3100
Wire Wire Line
	2000 2900 1600 2900
Wire Wire Line
	1700 1800 1700 2200
Wire Wire Line
	2000 2000 1600 2000
$Comp
L Connector:AudioJack2_Ground_Switch J9
U 1 1 5EFA08FA
P 3650 2800
F 0 "J9" H 3800 2600 50  0000 C CNN
F 1 "CCV_Jack" V 3400 2750 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 3650 3000 50  0001 C CNN
F 3 "~" H 3650 3000 50  0001 C CNN
	1    3650 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EFA0904
P 3900 3200
F 0 "#PWR011" H 3900 2950 50  0001 C CNN
F 1 "GND" H 3900 3050 50  0000 C CNN
F 2 "" H 3900 3200 50  0001 C CNN
F 3 "" H 3900 3200 50  0001 C CNN
	1    3900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2600 3900 2600
$Comp
L Connector:AudioJack2_Ground_Switch J10
U 1 1 5EFA0913
P 3650 3750
F 0 "J10" H 3800 3500 50  0000 C CNN
F 1 "DCV_Jack" V 3400 3700 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 3650 3950 50  0001 C CNN
F 3 "~" H 3650 3950 50  0001 C CNN
	1    3650 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5EFA091D
P 3900 4150
F 0 "#PWR012" H 3900 3900 50  0001 C CNN
F 1 "GND" H 3900 4000 50  0000 C CNN
F 2 "" H 3900 4150 50  0001 C CNN
F 3 "" H 3900 4150 50  0001 C CNN
	1    3900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3550 3900 3550
Wire Wire Line
	3850 3850 4250 3850
Wire Wire Line
	3900 4150 3900 4100
Wire Wire Line
	3650 4050 3650 4100
Wire Wire Line
	3650 4100 3900 4100
Connection ~ 3900 4100
Wire Wire Line
	3900 3200 3900 3150
Wire Wire Line
	3650 3100 3650 3150
Wire Wire Line
	3650 3150 3900 3150
Connection ~ 3900 3150
Wire Wire Line
	4250 2900 3850 2900
$Comp
L Connector:AudioJack2_Ground_Switch J2
U 1 1 5EB3C1CC
P 1400 1900
F 0 "J2" H 1550 1700 50  0000 C CNN
F 1 "BIN_Jack" V 1150 1850 50  0000 C CNN
F 2 "synth:3.5MM_Jack_Breakout_Vertical" H 1400 2100 50  0001 C CNN
F 3 "~" H 1400 2100 50  0001 C CNN
	1    1400 1900
	1    0    0    -1  
$EndComp
Text GLabel 4250 2800 2    60   Input ~ 0
C_CV
Text GLabel 4250 2900 2    60   Input ~ 0
C_CV_DEFAULT
Text GLabel 4250 3750 2    60   Input ~ 0
D_CV
Text GLabel 4250 3850 2    60   Input ~ 0
D_CV_DEFAULT
Wire Wire Line
	10250 650  10250 700 
$Comp
L Amplifier_Operational:LM13700 U?
U 5 1 5F12D343
P 10900 1150
AR Path="/5F12D343" Ref="U?"  Part="5" 
AR Path="/5EB23D44/5F12D343" Ref="U3"  Part="5" 
F 0 "U3" H 10858 1196 50  0000 L CNN
F 1 "LM13700" H 10858 1105 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10600 1175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 10600 1175 50  0001 C CNN
	5    10900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 700  10800 700 
Wire Wire Line
	10800 700  10800 850 
Connection ~ 10250 700 
Wire Wire Line
	10250 700  10250 850 
Wire Wire Line
	10250 1650 10250 1550
Wire Wire Line
	10250 1550 10800 1550
Wire Wire Line
	10800 1550 10800 1450
Connection ~ 10250 1550
Wire Wire Line
	10250 1550 10250 1450
Text Notes 8800 2200 0    50   ~ 0
Q Current requirements:\n+12V supply: 4*(2) + 2*20 + (4*4+2+2)*2.5/2 = 73mA\n-12V supply: 4*(.05+.12+1) + (4*4+2+2)*2.5/2 = 30mA\n5V supply: 0
Text Notes 7550 2850 0    50   ~ 0
TODO: should we add amp outputs?\nIf so, we should also have output amplifier inputs for return signal
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J5
U 1 1 5F189CDE
P 1900 5700
F 0 "J5" H 1950 6017 50  0000 C CNN
F 1 "Conn_02x04_Counter_Clockwise" H 1950 5926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1900 5700 50  0001 C CNN
F 3 "~" H 1900 5700 50  0001 C CNN
	1    1900 5700
	1    0    0    -1  
$EndComp
Text GLabel 1550 5600 0    50   Input ~ 0
A_IN_DEFAULT
Text GLabel 1550 5700 0    50   Input ~ 0
B_IN_DEFAULT
Text GLabel 1550 5800 0    50   Input ~ 0
C_IN_DEFAULT
Text GLabel 1550 5900 0    50   Input ~ 0
D_IN_DEFAULT
$Comp
L power:+12VA #PWR?
U 1 1 5F1AC43F
P 9700 700
AR Path="/5F1AC43F" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5F1AC43F" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 9700 550 50  0001 C CNN
F 1 "+12VA" H 9700 840 50  0000 C CNN
F 2 "" H 9700 700 50  0001 C CNN
F 3 "" H 9700 700 50  0001 C CNN
	1    9700 700 
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5F1AD093
P 9700 1550
AR Path="/5F1AD093" Ref="#PWR?"  Part="1" 
AR Path="/5EB23D44/5F1AD093" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 9700 1400 50  0001 C CNN
F 1 "-12VA" H 9700 1690 50  0000 C CNN
F 2 "" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	1    9700 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F1AD919
P 9300 1250
F 0 "#PWR05" H 9300 1000 50  0001 C CNN
F 1 "GND" H 9300 1100 50  0000 C CNN
F 2 "" H 9300 1250 50  0001 C CNN
F 3 "" H 9300 1250 50  0001 C CNN
	1    9300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5900 1700 5900
Wire Wire Line
	1700 5800 1550 5800
Wire Wire Line
	1550 5700 1700 5700
Wire Wire Line
	1700 5600 1550 5600
Text GLabel 2400 5600 2    50   Input ~ 0
A_CV_DEFAULT
Text GLabel 2400 5700 2    50   Input ~ 0
B_CV_DEFAULT
Text GLabel 2400 5800 2    50   Input ~ 0
C_CV_DEFAULT
Text GLabel 2400 5900 2    50   Input ~ 0
D_CV_DEFAULT
Wire Wire Line
	2400 5900 2200 5900
Wire Wire Line
	2200 5800 2400 5800
Wire Wire Line
	2400 5700 2200 5700
Wire Wire Line
	2200 5600 2400 5600
Wire Wire Line
	3900 800  3900 900 
$Comp
L synth:EURORACK_CONN_10 J6
U 1 1 5F2B7EEB
P 9700 1150
F 0 "J6" H 9880 1196 50  0000 L CNN
F 1 "EURORACK_CONN_10" H 9350 1100 50  0000 L CNN
F 2 "synth:EURORACK_10_IDC" V 9900 600 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" H 9600 1450 50  0001 C CNN
	1    9700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1550 9700 1500
Wire Wire Line
	9300 1250 9300 1150
Wire Wire Line
	9300 1150 9400 1150
Wire Wire Line
	9700 700  9700 800 
Wire Wire Line
	3900 1700 3900 1800
Wire Wire Line
	3900 2600 3900 2700
Wire Wire Line
	3900 3550 3900 3650
Text GLabel 4250 2000 2    60   Input ~ 0
B_CV_DEFAULT
Wire Wire Line
	3850 3650 3900 3650
Connection ~ 3900 3650
Wire Wire Line
	3900 3650 3900 4100
Wire Wire Line
	3850 2700 3900 2700
Connection ~ 3900 2700
Wire Wire Line
	3900 2700 3900 3150
Wire Wire Line
	3850 1800 3900 1800
Connection ~ 3900 1800
Wire Wire Line
	3900 1800 3900 2250
Wire Wire Line
	3850 900  3900 900 
Connection ~ 3900 900 
Wire Wire Line
	3900 900  3900 1350
Wire Wire Line
	4250 3750 3850 3750
Wire Wire Line
	4250 2800 3850 2800
Wire Wire Line
	4250 1900 3850 1900
Wire Wire Line
	4250 1000 3850 1000
Text Notes 4150 650  2    50   ~ 0
0-10V Control Voltage
$EndSCHEMATC
