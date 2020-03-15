EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 11
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
L hp_breakout:AudioJack2_Ground_Switch J1
U 1 1 5E6F43E7
P 5000 3550
AR Path="/5E6F22FA/5E6F43E7" Ref="J1"  Part="1" 
AR Path="/5E6F4684/5E6F43E7" Ref="J3"  Part="1" 
AR Path="/5E6F46C9/5E6F43E7" Ref="J5"  Part="1" 
AR Path="/5E6F46CB/5E6F43E7" Ref="J7"  Part="1" 
AR Path="/5E6F47F3/5E6F43E7" Ref="J9"  Part="1" 
AR Path="/5E6F4A68/5E6F43E7" Ref="J11"  Part="1" 
AR Path="/5E6F4A6A/5E6F43E7" Ref="J13"  Part="1" 
AR Path="/5E6F4A6C/5E6F43E7" Ref="J15"  Part="1" 
AR Path="/5E6F4A6E/5E6F43E7" Ref="J17"  Part="1" 
AR Path="/5E6F4A70/5E6F43E7" Ref="J19"  Part="1" 
F 0 "J1" H 5032 3975 50  0000 C CNN
F 1 "AudioJack2_Ground_Switch" H 5032 3884 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Connector_Audio.pretty:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 5000 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
	1    5000 3550
	1    0    0    1   
$EndComp
$Comp
L hp_breakout-rescue:Conn_01x05_Male J2
U 1 1 5E6F43D5
P 7000 3450
AR Path="/5E6F22FA/5E6F43D5" Ref="J2"  Part="1" 
AR Path="/5E6F4684/5E6F43D5" Ref="J4"  Part="1" 
AR Path="/5E6F46C9/5E6F43D5" Ref="J6"  Part="1" 
AR Path="/5E6F46CB/5E6F43D5" Ref="J8"  Part="1" 
AR Path="/5E6F47F3/5E6F43D5" Ref="J10"  Part="1" 
AR Path="/5E6F4A68/5E6F43D5" Ref="J12"  Part="1" 
AR Path="/5E6F4A6A/5E6F43D5" Ref="J14"  Part="1" 
AR Path="/5E6F4A6C/5E6F43D5" Ref="J16"  Part="1" 
AR Path="/5E6F4A6E/5E6F43D5" Ref="J18"  Part="1" 
AR Path="/5E6F4A70/5E6F43D5" Ref="J20"  Part="1" 
F 0 "J2" H 7000 3750 50  0000 C CNN
F 1 "Conn_01x05_Male" H 7000 3150 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Connector_PinHeader_2.54mm.pretty:PinHeader_1x05_P2.54mm_Vertical" H 7000 3450 50  0001 C CNN
F 3 "" H 7000 3450 50  0001 C CNN
	1    7000 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 3250 6800 3250
Wire Wire Line
	5200 3750 5450 3750
Wire Wire Line
	5450 3750 5450 3350
Wire Wire Line
	5450 3350 6800 3350
Wire Wire Line
	5200 3650 5500 3650
Wire Wire Line
	5500 3650 5500 3450
Wire Wire Line
	5500 3450 6800 3450
Wire Wire Line
	5200 3550 6800 3550
Wire Wire Line
	5200 3450 5350 3450
Wire Wire Line
	5350 3450 5350 3700
Wire Wire Line
	5350 3700 5650 3700
Wire Wire Line
	5650 3700 5650 3650
Wire Wire Line
	5650 3650 6800 3650
Text Label 6750 3250 0    50   ~ 0
S
Text Label 6750 3350 0    50   ~ 0
R
Text Label 6750 3450 0    50   ~ 0
RN
Text Label 6750 3550 0    50   ~ 0
T
Text Label 6750 3650 0    50   ~ 0
TN
$EndSCHEMATC
