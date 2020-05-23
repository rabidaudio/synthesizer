EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "A-VCA"
Date "2020-04-04"
Rev ""
Comp "RabidAudio"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:TL074 U?
U 2 1 5EBBC27A
P 4750 4100
F 0 "U?" H 4700 3850 50  0000 C CNN
F 1 "TL074" H 4700 4100 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 4700 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4800 4300 50  0001 C CNN
	2    4750 4100
	1    0    0    1   
$EndComp
Text Notes 4200 3450 2    50   ~ 0
5V (G=1) to 0V (G=0)\nCan be overdriven slightly to G=1.2
Wire Wire Line
	6100 3900 6100 2700
Wire Wire Line
	5100 5450 5100 5350
Wire Wire Line
	5100 4900 5400 4900
Wire Wire Line
	5100 5050 5100 4900
$Comp
L power:-12VA #PWR?
U 1 1 5EBBC28C
P 5100 5450
F 0 "#PWR?" H 5100 5300 50  0001 C CNN
F 1 "-12VA" H 5100 5590 50  0000 C CNN
F 2 "" H 5100 5450 50  0001 C CNN
F 3 "" H 5100 5450 50  0001 C CNN
	1    5100 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4100 6850 4100
Wire Wire Line
	7000 4250 7000 4100
Wire Wire Line
	6550 3750 5400 3750
Wire Wire Line
	6550 3900 6550 3750
Wire Wire Line
	6550 4400 6550 4500
Wire Wire Line
	6100 4400 6550 4400
Wire Wire Line
	6100 4300 6100 4400
$Comp
L synth:DMMT5401 Q?
U 2 1 5EBBC299
P 6650 4100
AR Path="/5EBBC299" Ref="Q?"  Part="2" 
AR Path="/5EBA9693/5EBBC299" Ref="Q?"  Part="2" 
F 0 "Q?" H 6500 4250 50  0000 L CNN
F 1 "DMMT5401" V 6850 3900 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6850 4025 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 6650 4100 50  0001 L CNN
	2    6650 4100
	-1   0    0    -1  
$EndComp
Connection ~ 6550 4400
Wire Wire Line
	6550 4300 6550 4400
$Comp
L synth:DMMT5401 Q?
U 1 1 5EBBC2A1
P 6000 4100
AR Path="/5EBBC2A1" Ref="Q?"  Part="1" 
AR Path="/5EBA9693/5EBBC2A1" Ref="Q?"  Part="1" 
F 0 "Q?" H 5850 4250 50  0000 L CNN
F 1 "DMMT5401" V 6250 3900 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6200 4025 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 6000 4100 50  0001 L CNN
	1    6000 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBBC2A7
P 5100 5200
F 0 "R?" V 5180 5200 50  0000 C CNN
F 1 "12K" V 5100 5200 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5030 5200 50  0001 C CNN
F 3 "" H 5100 5200 50  0001 C CNN
	1    5100 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 4100 5100 4100
Wire Wire Line
	6250 4900 6250 5000
Wire Wire Line
	6550 4900 6250 4900
Wire Wire Line
	6550 4800 6550 4900
Connection ~ 6250 4900
Wire Wire Line
	6250 4600 6250 4900
Wire Wire Line
	6000 4600 6250 4600
Wire Wire Line
	5400 3750 5400 4600
Wire Wire Line
	5400 4600 5400 4900
Connection ~ 5400 4600
Wire Wire Line
	5700 4600 5400 4600
Text Notes 5350 4900 2    50   ~ 0
Linear control here if needed
$Comp
L Device:R R?
U 1 1 5EBBC2B9
P 6550 4650
F 0 "R?" V 6630 4650 50  0000 C CNN
F 1 "5K" V 6550 4650 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6480 4650 50  0001 C CNN
F 3 "" H 6550 4650 50  0001 C CNN
	1    6550 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5EBBC2BF
P 5850 4600
F 0 "C?" H 5875 4700 50  0000 L CNN
F 1 "30p" H 5875 4500 50  0000 L CNN
F 2 "KiCad/Capacitors_ThroughHole.pretty:CP_Radial_D4.0mm_P2.00mm" H 5888 4450 50  0001 C CNN
F 3 "" H 5850 4600 50  0001 C CNN
	1    5850 4600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBBC2C5
P 5400 5250
F 0 "#PWR?" H 5400 5000 50  0001 C CNN
F 1 "GND" H 5400 5100 50  0000 C CNN
F 2 "" H 5400 5250 50  0001 C CNN
F 3 "" H 5400 5250 50  0001 C CNN
	1    5400 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBBC2CB
P 4750 3550
F 0 "R?" V 4830 3550 50  0000 C CNN
F 1 "1K8" V 4750 3550 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4680 3550 50  0001 C CNN
F 3 "" H 4750 3550 50  0001 C CNN
	1    4750 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBBC2D1
P 4400 4300
F 0 "#PWR?" H 4400 4050 50  0001 C CNN
F 1 "GND" H 4400 4150 50  0000 C CNN
F 2 "" H 4400 4300 50  0001 C CNN
F 3 "" H 4400 4300 50  0001 C CNN
	1    4400 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EBBC2D7
P 4000 3550
F 0 "R?" V 4080 3550 50  0000 C CNN
F 1 "100K" V 4000 3550 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3930 3550 50  0001 C CNN
F 3 "" H 4000 3550 50  0001 C CNN
	1    4000 3550
	0    1    1    0   
$EndComp
$Comp
L power:-12VA #PWR?
U 1 1 5EBBC2DD
P 3600 4250
F 0 "#PWR?" H 3600 4100 50  0001 C CNN
F 1 "-12VA" H 3600 4390 50  0000 C CNN
F 2 "" H 3600 4250 50  0001 C CNN
F 3 "" H 3600 4250 50  0001 C CNN
	1    3600 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EBBC2E3
P 4000 4000
F 0 "R?" V 4080 4000 50  0000 C CNN
F 1 "220K" V 4000 4000 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3930 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3550 5100 4100
Wire Wire Line
	4900 3550 5100 3550
Connection ~ 5100 4100
Wire Wire Line
	5050 4100 5100 4100
Wire Wire Line
	4400 3550 4600 3550
Wire Wire Line
	4400 4300 4400 4200
Wire Wire Line
	4400 4200 4450 4200
Wire Wire Line
	6250 5000 6100 5000
Wire Wire Line
	5400 5250 5400 5100
Wire Wire Line
	5400 5100 5500 5100
Wire Wire Line
	4400 4000 4450 4000
Connection ~ 5400 4900
Wire Wire Line
	5400 4900 5500 4900
Text GLabel 3550 3550 0    60   Input ~ 0
A_CV
Wire Wire Line
	3550 3550 3850 3550
Connection ~ 4400 4000
Wire Wire Line
	4150 4000 4400 4000
Text Notes 3500 4300 2    50   ~ 0
Subtract 0-5V from CV, providing offset control.\nThis isn’t perfectly linear but it’s close enough
Text Notes 4700 3950 0    50   ~ 0
-18mV/V
Text Notes 4950 5500 1    50   ~ 0
IREF=1mA
$Comp
L power:GND #PWR?
U 1 1 5EBBC303
P 7000 4250
F 0 "#PWR?" H 7000 4000 50  0001 C CNN
F 1 "GND" H 7000 4100 50  0000 C CNN
F 2 "" H 7000 4250 50  0001 C CNN
F 3 "" H 7000 4250 50  0001 C CNN
	1    7000 4250
	1    0    0    -1  
$EndComp
Text Notes 6650 5000 0    50   ~ 0
Limit IABC\nIABC max for LM13700 is 2mA.\nThis set’s IABC max above that,\nbut if we use a higher resistance\nthe exponmential shape falls off\nbefore 1mA
$Comp
L Device:R R?
U 1 1 5EBBC36B
P 5200 2950
F 0 "R?" V 5280 2950 50  0000 C CNN
F 1 "3K3" V 5200 2950 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5130 2950 50  0001 C CNN
F 3 "" H 5200 2950 50  0001 C CNN
	1    5200 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBBC365
P 5200 3200
F 0 "#PWR?" H 5200 2950 50  0001 C CNN
F 1 "GND" H 5200 3050 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBBC35F
P 5100 2500
F 0 "#PWR?" H 5100 2250 50  0001 C CNN
F 1 "GND" H 5100 2350 50  0000 C CNN
F 2 "" H 5100 2500 50  0001 C CNN
F 3 "" H 5100 2500 50  0001 C CNN
	1    5100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2700 5200 2700
Connection ~ 5200 2700
Wire Wire Line
	5200 2800 5200 2700
Wire Wire Line
	5200 3200 5200 3100
Wire Wire Line
	4500 2700 4650 2700
Connection ~ 4650 2700
$Comp
L Amplifier_Operational:LM13700 U?
U 1 1 5EBBC342
P 5650 2600
F 0 "U?" H 5650 2967 50  0000 C CNN
F 1 "LM13700" H 5650 2876 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-16_W7.62mm" H 5350 2625 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5350 2625 50  0001 C CNN
	1    5650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2700 5200 2700
Wire Wire Line
	5350 2500 5100 2500
$Comp
L power:GND #PWR?
U 1 1 5EBBC334
P 3750 2900
F 0 "#PWR?" H 3750 2650 50  0001 C CNN
F 1 "GND" H 3750 2750 50  0000 C CNN
F 2 "" H 3750 2900 50  0001 C CNN
F 3 "" H 3750 2900 50  0001 C CNN
	1    3750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2900 3750 2800
Wire Wire Line
	3750 2800 3900 2800
$Comp
L Device:R R?
U 1 1 5EBBC32C
P 4900 2700
F 0 "R?" V 4980 2700 50  0000 C CNN
F 1 "820K" V 4900 2700 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4830 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EBBC326
P 4200 2200
F 0 "R?" V 4280 2200 50  0000 C CNN
F 1 "10K" V 4200 2200 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4130 2200 50  0001 C CNN
F 3 "" H 4200 2200 50  0001 C CNN
	1    4200 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2200 4650 2200
Wire Wire Line
	4650 2200 4650 2700
Wire Wire Line
	4650 2700 4750 2700
Wire Wire Line
	3900 2600 3800 2600
Connection ~ 3800 2600
Wire Wire Line
	3800 2600 3800 2200
Wire Wire Line
	3800 2200 4050 2200
Text Notes 3900 3050 0    50   ~ 0
100mV/V * 40mV/V = 4mV/V\n5V -> 20mV
Text GLabel 3700 2600 0    50   Input ~ 0
AIN
Wire Wire Line
	3700 2600 3800 2600
$Comp
L Amplifier_Operational:TL074 U?
U 1 1 5EBBC280
P 4200 2700
F 0 "U?" H 4200 2500 50  0000 C CNN
F 1 "TL074" H 4150 2700 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 4150 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4250 2900 50  0001 C CNN
	1    4200 2700
	1    0    0    1   
$EndComp
Text GLabel 6400 2600 2    60   Input ~ 0
A_OUT
$Comp
L Amplifier_Operational:TL074 U?
U 3 1 5EBBC274
P 5800 5000
F 0 "U?" H 5850 5150 50  0000 C CNN
F 1 "TL074" H 5750 5000 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 5750 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5850 5200 50  0001 C CNN
	3    5800 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	5950 2700 6100 2700
Text Notes 5250 2100 0    50   ~ 0
0.5*VIN/VT*IABC=IOUT\nVIN=5V,IABC=1mA -> IOUT= .385mA\n13K converts back to 5V output
Wire Wire Line
	6400 2600 5950 2600
$Comp
L Device:R_POT RV?
U 1 1 5F14692E
P 3600 4000
F 0 "RV?" H 3531 4046 50  0000 R CNN
F 1 "100K" V 3600 4100 50  0000 R CNN
F 2 "" H 3600 4000 50  0001 C CNN
F 3 "~" H 3600 4000 50  0001 C CNN
	1    3600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3550 4400 3550
Connection ~ 4400 3550
Wire Wire Line
	4400 3550 4400 4000
$Comp
L power:GND #PWR?
U 1 1 5F1540D1
P 3300 3900
F 0 "#PWR?" H 3300 3650 50  0001 C CNN
F 1 "GND" H 3300 3750 50  0000 C CNN
F 2 "" H 3300 3900 50  0001 C CNN
F 3 "" H 3300 3900 50  0001 C CNN
	1    3300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3900 3300 3750
Wire Wire Line
	3300 3750 3600 3750
Wire Wire Line
	3600 3750 3600 3850
Wire Wire Line
	3850 4000 3750 4000
Wire Wire Line
	3600 4250 3600 4150
$EndSCHEMATC
