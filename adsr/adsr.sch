EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L power:+12V #PWR09
U 1 1 5F25A086
P 9700 800
F 0 "#PWR09" H 9700 650 50  0001 C CNN
F 1 "+12V" H 9715 973 50  0000 C CNN
F 2 "" H 9700 800 50  0001 C CNN
F 3 "" H 9700 800 50  0001 C CNN
	1    9700 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR010
U 1 1 5F25A895
P 9700 1700
F 0 "#PWR010" H 9700 1800 50  0001 C CNN
F 1 "-12V" H 9715 1873 50  0000 C CNN
F 2 "" H 9700 1700 50  0001 C CNN
F 3 "" H 9700 1700 50  0001 C CNN
	1    9700 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5F25B20B
P 9400 1700
F 0 "#PWR07" H 9400 1450 50  0001 C CNN
F 1 "GND" H 9405 1527 50  0000 C CNN
F 2 "" H 9400 1700 50  0001 C CNN
F 3 "" H 9400 1700 50  0001 C CNN
	1    9400 1700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U1
U 5 1 5F25BADE
P 10500 1300
F 0 "U1" H 10458 1346 50  0000 L CNN
F 1 "LM13700" H 10458 1255 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10200 1325 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 10200 1325 50  0001 C CNN
	5    10500 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 5F25EE9C
P 10400 850
F 0 "#PWR011" H 10400 700 50  0001 C CNN
F 1 "+12V" H 10415 1023 50  0000 C CNN
F 2 "" H 10400 850 50  0001 C CNN
F 3 "" H 10400 850 50  0001 C CNN
	1    10400 850 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR012
U 1 1 5F25F3F7
P 10400 1750
F 0 "#PWR012" H 10400 1850 50  0001 C CNN
F 1 "-12V" H 10415 1923 50  0000 C CNN
F 2 "" H 10400 1750 50  0001 C CNN
F 3 "" H 10400 1750 50  0001 C CNN
	1    10400 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	10400 1750 10400 1600
Wire Wire Line
	10400 1000 10400 850 
Text GLabel 1600 1100 2    50   Input ~ 0
A_IN
Wire Wire Line
	1600 1100 1200 1100
$Comp
L power:GND #PWR04
U 1 1 5F337BC4
P 1300 1450
F 0 "#PWR04" H 1300 1200 50  0001 C CNN
F 1 "GND" H 1305 1277 50  0000 C CNN
F 2 "" H 1300 1450 50  0001 C CNN
F 3 "" H 1300 1450 50  0001 C CNN
	1    1300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1000 1300 1000
Wire Wire Line
	1300 1000 1300 1450
Text GLabel 1600 1200 2    50   Input ~ 0
A_IN_DEFAULT
Wire Wire Line
	1600 1200 1200 1200
Wire Wire Line
	1550 2500 1150 2500
$Comp
L power:GND #PWR02
U 1 1 5F3462D1
P 1250 2850
F 0 "#PWR02" H 1250 2600 50  0001 C CNN
F 1 "GND" H 1255 2677 50  0000 C CNN
F 2 "" H 1250 2850 50  0001 C CNN
F 3 "" H 1250 2850 50  0001 C CNN
	1    1250 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2400 1250 2400
Wire Wire Line
	1250 2400 1250 2600
Wire Wire Line
	1150 2600 1250 2600
Connection ~ 1250 2600
Wire Wire Line
	1250 2600 1250 2850
Text GLabel 1550 2500 2    50   Input ~ 0
A_GATE
Wire Wire Line
	6000 1950 6400 1950
$Comp
L power:GND #PWR06
U 1 1 5F354B7A
P 6300 2300
F 0 "#PWR06" H 6300 2050 50  0001 C CNN
F 1 "GND" H 6305 2127 50  0000 C CNN
F 2 "" H 6300 2300 50  0001 C CNN
F 3 "" H 6300 2300 50  0001 C CNN
	1    6300 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 1850 6300 1850
Wire Wire Line
	6300 1850 6300 2300
Text GLabel 6000 1950 0    50   Input ~ 0
A_OUT
Text GLabel 6000 2050 0    50   Input ~ 0
A_OUT_DEFAULT
Wire Wire Line
	6000 2050 6400 2050
$Comp
L synth:EURORACK_CONN_16 J7
U 1 1 5F388E7E
P 9750 1200
F 0 "J7" H 9850 1250 50  0000 L CNN
F 1 "EURORACK_CONN_16" H 9250 1150 50  0000 L CNN
F 2 "synth:EURORACK_16_IDC" H 10200 500 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" V 9800 1250 50  0001 C CNN
	1    9750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1550 9700 1700
Wire Wire Line
	9700 800  9700 950 
Wire Wire Line
	9450 800  9450 950 
Wire Wire Line
	9400 1550 9400 1700
$Comp
L power:+5V #PWR08
U 1 1 5F4B1D9A
P 9450 800
F 0 "#PWR08" H 9450 650 50  0001 C CNN
F 1 "+5V" H 9465 973 50  0000 C CNN
F 2 "" H 9450 800 50  0001 C CNN
F 3 "" H 9450 800 50  0001 C CNN
	1    9450 800 
	1    0    0    -1  
$EndComp
$Sheet
S 2800 1600 1650 1000
U 5F5446F0
F0 "envelope" 50
F1 "env.sch" 50
F2 "IN" I L 2800 1800 50 
F3 "GATE" I L 2800 2000 50 
F4 "OUT" I R 4450 1850 50 
$EndSheet
Text GLabel 2600 2000 0    50   Input ~ 0
A_GATE
Text GLabel 2600 1800 0    50   Input ~ 0
A_IN
Wire Wire Line
	2600 1800 2800 1800
Wire Wire Line
	2800 2000 2600 2000
Text GLabel 4650 1850 2    50   Input ~ 0
A_OUT
Wire Wire Line
	4650 1850 4450 1850
$Sheet
S 2700 4400 1650 1000
U 5F5D80AF
F0 "sheet5F5D80AF" 50
F1 "env.sch" 50
F2 "IN" I L 2700 4600 50 
F3 "GATE" I L 2700 4800 50 
F4 "OUT" I R 4350 4650 50 
$EndSheet
Text GLabel 2500 4800 0    50   Input ~ 0
B_GATE
Text GLabel 2500 4600 0    50   Input ~ 0
B_IN
Wire Wire Line
	2500 4600 2700 4600
Wire Wire Line
	2700 4800 2500 4800
Text GLabel 4550 4650 2    50   Input ~ 0
B_OUT
Wire Wire Line
	4550 4650 4350 4650
Text GLabel 1550 4000 2    50   Input ~ 0
B_IN
Wire Wire Line
	1550 4000 1150 4000
$Comp
L power:GND #PWR03
U 1 1 5F5DAD34
P 1250 4350
F 0 "#PWR03" H 1250 4100 50  0001 C CNN
F 1 "GND" H 1255 4177 50  0000 C CNN
F 2 "" H 1250 4350 50  0001 C CNN
F 3 "" H 1250 4350 50  0001 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3900 1250 3900
Wire Wire Line
	1250 3900 1250 4350
Text GLabel 1550 4100 2    50   Input ~ 0
B_IN_DEFAULT
Wire Wire Line
	1550 4100 1150 4100
Wire Wire Line
	1500 5400 1100 5400
$Comp
L power:GND #PWR01
U 1 1 5F5DAD54
P 1200 5750
F 0 "#PWR01" H 1200 5500 50  0001 C CNN
F 1 "GND" H 1205 5577 50  0000 C CNN
F 2 "" H 1200 5750 50  0001 C CNN
F 3 "" H 1200 5750 50  0001 C CNN
	1    1200 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5300 1200 5300
Wire Wire Line
	1200 5300 1200 5500
Wire Wire Line
	1100 5500 1200 5500
Connection ~ 1200 5500
Wire Wire Line
	1200 5500 1200 5750
Text GLabel 1500 5400 2    50   Input ~ 0
B_GATE
Wire Wire Line
	5650 4950 6050 4950
$Comp
L power:GND #PWR05
U 1 1 5F5E00FD
P 5950 5300
F 0 "#PWR05" H 5950 5050 50  0001 C CNN
F 1 "GND" H 5955 5127 50  0000 C CNN
F 2 "" H 5950 5300 50  0001 C CNN
F 3 "" H 5950 5300 50  0001 C CNN
	1    5950 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 4850 5950 4850
Wire Wire Line
	5950 4850 5950 5300
Text GLabel 5650 4950 0    50   Input ~ 0
B_OUT
Text GLabel 5650 5050 0    50   Input ~ 0
B_OUT_DEFAULT
Wire Wire Line
	5650 5050 6050 5050
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5F5E365B
P 9950 3150
F 0 "J8" H 9922 3032 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9922 3123 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 9950 3150 50  0001 C CNN
F 3 "~" H 9950 3150 50  0001 C CNN
	1    9950 3150
	-1   0    0    1   
$EndComp
Text GLabel 9550 3250 0    50   Input ~ 0
A_IN_DEFAULT
Text GLabel 9550 3050 0    50   Input ~ 0
A_OUT_DEFAULT
Text GLabel 9550 3150 0    50   Input ~ 0
B_IN_DEFAULT
Text GLabel 9550 2950 0    50   Input ~ 0
B_OUT_DEFAULT
Wire Wire Line
	9550 3250 9750 3250
Wire Wire Line
	9750 3150 9550 3150
Wire Wire Line
	9550 3050 9750 3050
Wire Wire Line
	9750 2950 9550 2950
$Comp
L Connector:AudioJack2_SwitchT J4
U 1 1 6146D779
P 1000 1100
F 0 "J4" H 1032 1425 50  0000 C CNN
F 1 "A_IN" H 1032 1334 50  0000 C CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 1000 1100 50  0001 C CNN
F 3 "~" H 1000 1100 50  0001 C CNN
	1    1000 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 6146FC09
P 950 2500
F 0 "J2" H 982 2825 50  0000 C CNN
F 1 "A_GATE" H 982 2734 50  0000 C CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 950 2500 50  0001 C CNN
F 3 "~" H 950 2500 50  0001 C CNN
	1    950  2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J3
U 1 1 61470257
P 950 4000
F 0 "J3" H 982 4325 50  0000 C CNN
F 1 "B_IN" H 982 4234 50  0000 C CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 950 4000 50  0001 C CNN
F 3 "~" H 950 4000 50  0001 C CNN
	1    950  4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 61470A7A
P 900 5400
F 0 "J1" H 932 5725 50  0000 C CNN
F 1 "B_GATE" H 932 5634 50  0000 C CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 900 5400 50  0001 C CNN
F 3 "~" H 900 5400 50  0001 C CNN
	1    900  5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 61470FB6
P 6600 1950
F 0 "J6" H 6420 1975 50  0000 R CNN
F 1 "A_OUT" H 6420 1884 50  0000 R CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 6600 1950 50  0001 C CNN
F 3 "~" H 6600 1950 50  0001 C CNN
	1    6600 1950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 61471EE3
P 6250 4950
F 0 "J5" H 6070 4975 50  0000 R CNN
F 1 "B_OUT" H 6070 4884 50  0000 R CNN
F 2 "synth:Jack_3.5mm_QingPu_WQP-PJ398SM_Vertical_CircularHoles" H 6250 4950 50  0001 C CNN
F 3 "~" H 6250 4950 50  0001 C CNN
	1    6250 4950
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 616A1881
P 8300 1250
AR Path="/5F5446F0/616A1881" Ref="C?"  Part="1" 
AR Path="/616A1881" Ref="C6"  Part="1" 
F 0 "C6" H 8415 1296 50  0000 L CNN
F 1 "0.1u" H 8415 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8338 1100 50  0001 C CNN
F 3 "~" H 8300 1250 50  0001 C CNN
	1    8300 1250
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0101
U 1 1 616A1887
P 8300 1500
AR Path="/616A1887" Ref="#PWR0101"  Part="1" 
AR Path="/5F5446F0/616A1887" Ref="#PWR?"  Part="1" 
AR Path="/5F5D80AF/616A1887" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 8300 1600 50  0001 C CNN
F 1 "-12V" H 8315 1673 50  0000 C CNN
F 2 "" H 8300 1500 50  0001 C CNN
F 3 "" H 8300 1500 50  0001 C CNN
	1    8300 1500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 616A188D
P 8300 950
AR Path="/616A188D" Ref="#PWR0102"  Part="1" 
AR Path="/5F5446F0/616A188D" Ref="#PWR?"  Part="1" 
AR Path="/5F5D80AF/616A188D" Ref="#PWR?"  Part="1" 
F 0 "#PWR0102" H 8300 700 50  0001 C CNN
F 1 "GND" H 8305 777 50  0000 C CNN
F 2 "" H 8300 950 50  0001 C CNN
F 3 "" H 8300 950 50  0001 C CNN
	1    8300 950 
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 616A1893
P 7900 950
AR Path="/616A1893" Ref="#PWR0103"  Part="1" 
AR Path="/5F5446F0/616A1893" Ref="#PWR?"  Part="1" 
AR Path="/5F5D80AF/616A1893" Ref="#PWR?"  Part="1" 
F 0 "#PWR0103" H 7900 800 50  0001 C CNN
F 1 "+12V" H 7915 1123 50  0000 C CNN
F 2 "" H 7900 950 50  0001 C CNN
F 3 "" H 7900 950 50  0001 C CNN
	1    7900 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 616A1899
P 7900 1250
AR Path="/5F5446F0/616A1899" Ref="C?"  Part="1" 
AR Path="/616A1899" Ref="C5"  Part="1" 
F 0 "C5" H 8015 1296 50  0000 L CNN
F 1 "0.1u" H 8015 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7938 1100 50  0001 C CNN
F 3 "~" H 7900 1250 50  0001 C CNN
	1    7900 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 616A189F
P 7900 1500
AR Path="/616A189F" Ref="#PWR0104"  Part="1" 
AR Path="/5F5446F0/616A189F" Ref="#PWR?"  Part="1" 
AR Path="/5F5D80AF/616A189F" Ref="#PWR?"  Part="1" 
F 0 "#PWR0104" H 7900 1250 50  0001 C CNN
F 1 "GND" H 7905 1327 50  0000 C CNN
F 2 "" H 7900 1500 50  0001 C CNN
F 3 "" H 7900 1500 50  0001 C CNN
	1    7900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1500 7900 1400
Wire Wire Line
	8300 1500 8300 1400
Wire Wire Line
	8300 1100 8300 950 
Wire Wire Line
	7900 1100 7900 950 
Text Notes 7600 1850 0    50   ~ 0
Bypass capacitors for LM13700
$EndSCHEMATC
