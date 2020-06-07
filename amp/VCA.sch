EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Amplifier_Operational:TL074 U5
U 2 1 5EBBC27A
P 4750 4500
AR Path="/5EBA9693/5EBBC27A" Ref="U5"  Part="2" 
AR Path="/5EE5C6CB/5EBBC27A" Ref="U?"  Part="2" 
AR Path="/5EE915A8/5EBBC27A" Ref="U6"  Part="2" 
AR Path="/5EE915EC/5EBBC27A" Ref="U7"  Part="2" 
AR Path="/5EE9163B/5EBBC27A" Ref="U8"  Part="2" 
F 0 "U6" H 4700 4250 50  0000 C CNN
F 1 "TL074" H 4700 4500 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 4700 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4800 4700 50  0001 C CNN
	2    4750 4500
	1    0    0    1   
$EndComp
Text Notes 4200 3850 2    50   ~ 0
5V (G=1) to 0V (G=0)\nCan be overdriven slightly to G=1.2
Wire Wire Line
	5100 5850 5100 5750
Wire Wire Line
	5100 5300 5400 5300
Wire Wire Line
	5100 5450 5100 5300
$Comp
L power:-12VA #PWR040
U 1 1 5EBBC28C
P 5100 5850
AR Path="/5EBA9693/5EBBC28C" Ref="#PWR040"  Part="1" 
AR Path="/5EE5C6CB/5EBBC28C" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC28C" Ref="#PWR076"  Part="1" 
AR Path="/5EE915EC/5EBBC28C" Ref="#PWR052"  Part="1" 
AR Path="/5EE9163B/5EBBC28C" Ref="#PWR064"  Part="1" 
F 0 "#PWR076" H 5100 5700 50  0001 C CNN
F 1 "-12VA" H 5100 5990 50  0000 C CNN
F 2 "" H 5100 5850 50  0001 C CNN
F 3 "" H 5100 5850 50  0001 C CNN
	1    5100 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4500 6850 4500
Wire Wire Line
	7000 4650 7000 4500
Wire Wire Line
	6550 4150 5400 4150
Wire Wire Line
	6550 4300 6550 4150
Wire Wire Line
	6550 4800 6550 4900
Wire Wire Line
	6100 4800 6550 4800
Wire Wire Line
	6100 4700 6100 4800
$Comp
L synth:DMMT5401 Q?
U 2 1 5EBBC299
P 6650 4500
AR Path="/5EBBC299" Ref="Q?"  Part="2" 
AR Path="/5EBA9693/5EBBC299" Ref="Q1"  Part="2" 
AR Path="/5EE5C6CB/5EBBC299" Ref="Q?"  Part="2" 
AR Path="/5EE915A8/5EBBC299" Ref="Q4"  Part="2" 
AR Path="/5EE915EC/5EBBC299" Ref="Q2"  Part="2" 
AR Path="/5EE9163B/5EBBC299" Ref="Q3"  Part="2" 
F 0 "Q4" H 6500 4650 50  0000 L CNN
F 1 "DMMT5401" V 6850 4300 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6850 4425 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 6650 4500 50  0001 L CNN
	2    6650 4500
	-1   0    0    -1  
$EndComp
Connection ~ 6550 4800
Wire Wire Line
	6550 4700 6550 4800
$Comp
L synth:DMMT5401 Q?
U 1 1 5EBBC2A1
P 6000 4500
AR Path="/5EBBC2A1" Ref="Q?"  Part="1" 
AR Path="/5EBA9693/5EBBC2A1" Ref="Q1"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2A1" Ref="Q?"  Part="1" 
AR Path="/5EE915A8/5EBBC2A1" Ref="Q4"  Part="1" 
AR Path="/5EE915EC/5EBBC2A1" Ref="Q2"  Part="1" 
AR Path="/5EE9163B/5EBBC2A1" Ref="Q3"  Part="1" 
F 0 "Q4" H 5850 4650 50  0000 L CNN
F 1 "DMMT5401" V 6250 4300 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6200 4425 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 6000 4500 50  0001 L CNN
	1    6000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5EBBC2A7
P 5100 5600
AR Path="/5EBA9693/5EBBC2A7" Ref="R26"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2A7" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC2A7" Ref="R56"  Part="1" 
AR Path="/5EE915EC/5EBBC2A7" Ref="R36"  Part="1" 
AR Path="/5EE9163B/5EBBC2A7" Ref="R46"  Part="1" 
F 0 "R56" V 5180 5600 50  0000 C CNN
F 1 "12K" V 5100 5600 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5030 5600 50  0001 C CNN
F 3 "" H 5100 5600 50  0001 C CNN
	1    5100 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 4500 5100 4500
Wire Wire Line
	6250 5300 6250 5400
Wire Wire Line
	6550 5300 6250 5300
Wire Wire Line
	6550 5200 6550 5300
Connection ~ 6250 5300
Wire Wire Line
	6250 5000 6250 5300
Wire Wire Line
	6000 5000 6250 5000
Wire Wire Line
	5400 4150 5400 5000
Wire Wire Line
	5400 5000 5400 5300
Connection ~ 5400 5000
Wire Wire Line
	5700 5000 5400 5000
Text Notes 5350 5300 2    50   ~ 0
Linear control here if needed
$Comp
L Device:R R29
U 1 1 5EBBC2B9
P 6550 5050
AR Path="/5EBA9693/5EBBC2B9" Ref="R29"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2B9" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC2B9" Ref="R59"  Part="1" 
AR Path="/5EE915EC/5EBBC2B9" Ref="R39"  Part="1" 
AR Path="/5EE9163B/5EBBC2B9" Ref="R49"  Part="1" 
F 0 "R59" V 6630 5050 50  0000 C CNN
F 1 "5K" V 6550 5050 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6480 5050 50  0001 C CNN
F 3 "" H 6550 5050 50  0001 C CNN
	1    6550 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5EBBC2BF
P 5850 5000
AR Path="/5EBA9693/5EBBC2BF" Ref="C5"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2BF" Ref="C?"  Part="1" 
AR Path="/5EE915A8/5EBBC2BF" Ref="C8"  Part="1" 
AR Path="/5EE915EC/5EBBC2BF" Ref="C6"  Part="1" 
AR Path="/5EE9163B/5EBBC2BF" Ref="C7"  Part="1" 
F 0 "C8" H 5875 5100 50  0000 L CNN
F 1 "30p" H 5875 4900 50  0000 L CNN
F 2 "KiCad/Capacitors_ThroughHole.pretty:CP_Radial_D4.0mm_P2.00mm" H 5888 4850 50  0001 C CNN
F 3 "" H 5850 5000 50  0001 C CNN
	1    5850 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5EBBC2C5
P 5400 5650
AR Path="/5EBA9693/5EBBC2C5" Ref="#PWR042"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2C5" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC2C5" Ref="#PWR078"  Part="1" 
AR Path="/5EE915EC/5EBBC2C5" Ref="#PWR054"  Part="1" 
AR Path="/5EE9163B/5EBBC2C5" Ref="#PWR066"  Part="1" 
F 0 "#PWR078" H 5400 5400 50  0001 C CNN
F 1 "GND" H 5400 5500 50  0000 C CNN
F 2 "" H 5400 5650 50  0001 C CNN
F 3 "" H 5400 5650 50  0001 C CNN
	1    5400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5EBBC2CB
P 4750 3950
AR Path="/5EBA9693/5EBBC2CB" Ref="R24"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2CB" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC2CB" Ref="R54"  Part="1" 
AR Path="/5EE915EC/5EBBC2CB" Ref="R34"  Part="1" 
AR Path="/5EE9163B/5EBBC2CB" Ref="R44"  Part="1" 
F 0 "R54" V 4830 3950 50  0000 C CNN
F 1 "1K8" V 4750 3950 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4680 3950 50  0001 C CNN
F 3 "" H 4750 3950 50  0001 C CNN
	1    4750 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5EBBC2D1
P 4400 4700
AR Path="/5EBA9693/5EBBC2D1" Ref="#PWR038"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2D1" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC2D1" Ref="#PWR074"  Part="1" 
AR Path="/5EE915EC/5EBBC2D1" Ref="#PWR050"  Part="1" 
AR Path="/5EE9163B/5EBBC2D1" Ref="#PWR062"  Part="1" 
F 0 "#PWR074" H 4400 4450 50  0001 C CNN
F 1 "GND" H 4400 4550 50  0000 C CNN
F 2 "" H 4400 4700 50  0001 C CNN
F 3 "" H 4400 4700 50  0001 C CNN
	1    4400 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5EBBC2D7
P 4000 3950
AR Path="/5EBA9693/5EBBC2D7" Ref="R21"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2D7" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC2D7" Ref="R51"  Part="1" 
AR Path="/5EE915EC/5EBBC2D7" Ref="R31"  Part="1" 
AR Path="/5EE9163B/5EBBC2D7" Ref="R41"  Part="1" 
F 0 "R51" V 4080 3950 50  0000 C CNN
F 1 "100K" V 4000 3950 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3930 3950 50  0001 C CNN
F 3 "" H 4000 3950 50  0001 C CNN
	1    4000 3950
	0    1    1    0   
$EndComp
$Comp
L power:-12VA #PWR036
U 1 1 5EBBC2DD
P 3600 4650
AR Path="/5EBA9693/5EBBC2DD" Ref="#PWR036"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2DD" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC2DD" Ref="#PWR072"  Part="1" 
AR Path="/5EE915EC/5EBBC2DD" Ref="#PWR048"  Part="1" 
AR Path="/5EE9163B/5EBBC2DD" Ref="#PWR060"  Part="1" 
F 0 "#PWR072" H 3600 4500 50  0001 C CNN
F 1 "-12VA" H 3600 4790 50  0000 C CNN
F 2 "" H 3600 4650 50  0001 C CNN
F 3 "" H 3600 4650 50  0001 C CNN
	1    3600 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 5EBBC2E3
P 4000 4400
AR Path="/5EBA9693/5EBBC2E3" Ref="R22"  Part="1" 
AR Path="/5EE5C6CB/5EBBC2E3" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC2E3" Ref="R52"  Part="1" 
AR Path="/5EE915EC/5EBBC2E3" Ref="R32"  Part="1" 
AR Path="/5EE9163B/5EBBC2E3" Ref="R42"  Part="1" 
F 0 "R52" V 4080 4400 50  0000 C CNN
F 1 "220K" V 4000 4400 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3930 4400 50  0001 C CNN
F 3 "" H 4000 4400 50  0001 C CNN
	1    4000 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3950 5100 4500
Wire Wire Line
	4900 3950 5100 3950
Connection ~ 5100 4500
Wire Wire Line
	5050 4500 5100 4500
Wire Wire Line
	4400 3950 4600 3950
Wire Wire Line
	4400 4700 4400 4600
Wire Wire Line
	4400 4600 4450 4600
Wire Wire Line
	6250 5400 6100 5400
Wire Wire Line
	5400 5650 5400 5500
Wire Wire Line
	5400 5500 5500 5500
Wire Wire Line
	4400 4400 4450 4400
Connection ~ 5400 5300
Wire Wire Line
	5400 5300 5500 5300
Wire Wire Line
	3550 3950 3850 3950
Connection ~ 4400 4400
Wire Wire Line
	4150 4400 4400 4400
Text Notes 3500 4700 2    50   ~ 0
Subtract 0-5V from CV, providing offset control.\nThis isn’t perfectly linear but it’s close enough
Text Notes 4700 4350 0    50   ~ 0
-18mV/V
Text Notes 4950 5900 1    50   ~ 0
IREF=1mA
$Comp
L power:GND #PWR044
U 1 1 5EBBC303
P 7000 4650
AR Path="/5EBA9693/5EBBC303" Ref="#PWR044"  Part="1" 
AR Path="/5EE5C6CB/5EBBC303" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC303" Ref="#PWR080"  Part="1" 
AR Path="/5EE915EC/5EBBC303" Ref="#PWR056"  Part="1" 
AR Path="/5EE9163B/5EBBC303" Ref="#PWR068"  Part="1" 
F 0 "#PWR080" H 7000 4400 50  0001 C CNN
F 1 "GND" H 7000 4500 50  0000 C CNN
F 2 "" H 7000 4650 50  0001 C CNN
F 3 "" H 7000 4650 50  0001 C CNN
	1    7000 4650
	1    0    0    -1  
$EndComp
Text Notes 6650 5400 0    50   ~ 0
Limit IABC\nIABC max for LM13700 is 2mA.\nThis sets IABC max above that,\nbut if we use a higher resistance\nthe exponmential shape falls off\nbefore 1mA
$Comp
L Device:R R27
U 1 1 5EBBC36B
P 5200 2950
AR Path="/5EBA9693/5EBBC36B" Ref="R27"  Part="1" 
AR Path="/5EE5C6CB/5EBBC36B" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC36B" Ref="R57"  Part="1" 
AR Path="/5EE915EC/5EBBC36B" Ref="R37"  Part="1" 
AR Path="/5EE9163B/5EBBC36B" Ref="R47"  Part="1" 
F 0 "R57" V 5280 2950 50  0000 C CNN
F 1 "3K3" V 5200 2950 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5130 2950 50  0001 C CNN
F 3 "" H 5200 2950 50  0001 C CNN
	1    5200 2950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5EBBC365
P 5200 3200
AR Path="/5EBA9693/5EBBC365" Ref="#PWR041"  Part="1" 
AR Path="/5EE5C6CB/5EBBC365" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC365" Ref="#PWR077"  Part="1" 
AR Path="/5EE915EC/5EBBC365" Ref="#PWR053"  Part="1" 
AR Path="/5EE9163B/5EBBC365" Ref="#PWR065"  Part="1" 
F 0 "#PWR077" H 5200 2950 50  0001 C CNN
F 1 "GND" H 5200 3050 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5EBBC35F
P 5100 2500
AR Path="/5EBA9693/5EBBC35F" Ref="#PWR039"  Part="1" 
AR Path="/5EE5C6CB/5EBBC35F" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC35F" Ref="#PWR075"  Part="1" 
AR Path="/5EE915EC/5EBBC35F" Ref="#PWR051"  Part="1" 
AR Path="/5EE9163B/5EBBC35F" Ref="#PWR063"  Part="1" 
F 0 "#PWR075" H 5100 2250 50  0001 C CNN
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
Wire Wire Line
	5350 2700 5200 2700
Wire Wire Line
	5350 2500 5100 2500
$Comp
L power:GND #PWR037
U 1 1 5EBBC334
P 3750 2900
AR Path="/5EBA9693/5EBBC334" Ref="#PWR037"  Part="1" 
AR Path="/5EE5C6CB/5EBBC334" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5EBBC334" Ref="#PWR073"  Part="1" 
AR Path="/5EE915EC/5EBBC334" Ref="#PWR049"  Part="1" 
AR Path="/5EE9163B/5EBBC334" Ref="#PWR061"  Part="1" 
F 0 "#PWR073" H 3750 2650 50  0001 C CNN
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
L Device:R R25
U 1 1 5EBBC32C
P 4900 2700
AR Path="/5EBA9693/5EBBC32C" Ref="R25"  Part="1" 
AR Path="/5EE5C6CB/5EBBC32C" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC32C" Ref="R55"  Part="1" 
AR Path="/5EE915EC/5EBBC32C" Ref="R35"  Part="1" 
AR Path="/5EE9163B/5EBBC32C" Ref="R45"  Part="1" 
F 0 "R55" V 4980 2700 50  0000 C CNN
F 1 "820K" V 4900 2700 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4830 2700 50  0001 C CNN
F 3 "" H 4900 2700 50  0001 C CNN
	1    4900 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5EBBC326
P 4200 2200
AR Path="/5EBA9693/5EBBC326" Ref="R23"  Part="1" 
AR Path="/5EE5C6CB/5EBBC326" Ref="R?"  Part="1" 
AR Path="/5EE915A8/5EBBC326" Ref="R53"  Part="1" 
AR Path="/5EE915EC/5EBBC326" Ref="R33"  Part="1" 
AR Path="/5EE9163B/5EBBC326" Ref="R43"  Part="1" 
F 0 "R53" V 4280 2200 50  0000 C CNN
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
Wire Wire Line
	3700 2600 3800 2600
$Comp
L Amplifier_Operational:TL074 U5
U 3 1 5EBBC274
P 5800 5400
AR Path="/5EBA9693/5EBBC274" Ref="U5"  Part="3" 
AR Path="/5EE5C6CB/5EBBC274" Ref="U?"  Part="3" 
AR Path="/5EE915A8/5EBBC274" Ref="U6"  Part="3" 
AR Path="/5EE915EC/5EBBC274" Ref="U7"  Part="3" 
AR Path="/5EE9163B/5EBBC274" Ref="U8"  Part="3" 
F 0 "U6" H 5900 5550 50  0000 C CNN
F 1 "TL074" H 5750 5400 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 5750 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5850 5600 50  0001 C CNN
	3    5800 5400
	1    0    0    1   
$EndComp
Wire Wire Line
	5950 2700 6100 2700
Text Notes 5250 2100 0    50   ~ 0
0.5*VIN/VT*IABC=IOUT\nVIN=5V,IABC=1mA -> IOUT= .385mA\n13K converts back to 5V output
$Comp
L Device:R_POT RV2
U 1 1 5F14692E
P 3600 4400
AR Path="/5EBA9693/5F14692E" Ref="RV2"  Part="1" 
AR Path="/5EE5C6CB/5F14692E" Ref="RV?"  Part="1" 
AR Path="/5EE915A8/5F14692E" Ref="RV5"  Part="1" 
AR Path="/5EE915EC/5F14692E" Ref="RV3"  Part="1" 
AR Path="/5EE9163B/5F14692E" Ref="RV4"  Part="1" 
F 0 "RV5" H 3531 4446 50  0000 R CNN
F 1 "10K" V 3600 4500 50  0000 R CNN
F 2 "synth:slide_potentiometer_35mm" H 3600 4400 50  0001 C CNN
F 3 "~" H 3600 4400 50  0001 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3950 4400 3950
Connection ~ 4400 3950
Wire Wire Line
	4400 3950 4400 4400
$Comp
L power:GND #PWR035
U 1 1 5F1540D1
P 3300 4300
AR Path="/5EBA9693/5F1540D1" Ref="#PWR035"  Part="1" 
AR Path="/5EE5C6CB/5F1540D1" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5F1540D1" Ref="#PWR071"  Part="1" 
AR Path="/5EE915EC/5F1540D1" Ref="#PWR047"  Part="1" 
AR Path="/5EE9163B/5F1540D1" Ref="#PWR059"  Part="1" 
F 0 "#PWR071" H 3300 4050 50  0001 C CNN
F 1 "GND" H 3300 4150 50  0000 C CNN
F 2 "" H 3300 4300 50  0001 C CNN
F 3 "" H 3300 4300 50  0001 C CNN
	1    3300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4300 3300 4150
Wire Wire Line
	3300 4150 3600 4150
Wire Wire Line
	3600 4150 3600 4250
Wire Wire Line
	3850 4400 3750 4400
Wire Wire Line
	3600 4650 3600 4550
$Comp
L Amplifier_Operational:TL074 U5
U 1 1 5EE5E7F2
P 4200 2700
AR Path="/5EBA9693/5EE5E7F2" Ref="U5"  Part="1" 
AR Path="/5EE915A8/5EE5E7F2" Ref="U6"  Part="1" 
AR Path="/5EE915EC/5EE5E7F2" Ref="U7"  Part="1" 
AR Path="/5EE9163B/5EE5E7F2" Ref="U8"  Part="1" 
F 0 "U6" H 4250 2500 50  0000 C CNN
F 1 "TL074" H 4150 2700 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 4150 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4250 2900 50  0001 C CNN
	1    4200 2700
	1    0    0    1   
$EndComp
Text Notes 4600 3800 0    50   ~ 0
Could use a tempco res here, but\nI don’t think it’s important for vcas
Wire Wire Line
	6100 2700 6100 4300
Text HLabel 3700 2600 0    50   Input ~ 0
IN
Text HLabel 3550 3950 0    50   Input ~ 0
CV
Text HLabel 7600 2700 2    50   Input ~ 0
OUT
NoConn ~ 5350 2600
$Comp
L Device:R R28
U 1 1 5F07C242
P 6550 2600
AR Path="/5EBA9693/5F07C242" Ref="R28"  Part="1" 
AR Path="/5EE915EC/5F07C242" Ref="R38"  Part="1" 
AR Path="/5EE9163B/5F07C242" Ref="R48"  Part="1" 
AR Path="/5EE915A8/5F07C242" Ref="R58"  Part="1" 
F 0 "R58" V 6343 2600 50  0000 C CNN
F 1 "13K" V 6434 2600 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6480 2600 50  0001 C CNN
F 3 "~" H 6550 2600 50  0001 C CNN
	1    6550 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5F07C866
P 6750 2900
AR Path="/5EBA9693/5F07C866" Ref="#PWR043"  Part="1" 
AR Path="/5EE5C6CB/5F07C866" Ref="#PWR?"  Part="1" 
AR Path="/5EE915A8/5F07C866" Ref="#PWR079"  Part="1" 
AR Path="/5EE915EC/5F07C866" Ref="#PWR055"  Part="1" 
AR Path="/5EE9163B/5F07C866" Ref="#PWR067"  Part="1" 
F 0 "#PWR079" H 6750 2650 50  0001 C CNN
F 1 "GND" H 6750 2750 50  0000 C CNN
F 2 "" H 6750 2900 50  0001 C CNN
F 3 "" H 6750 2900 50  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U5
U 4 1 5F081C3D
P 7150 2700
AR Path="/5EBA9693/5F081C3D" Ref="U5"  Part="4" 
AR Path="/5EE915A8/5F081C3D" Ref="U6"  Part="4" 
AR Path="/5EE915EC/5F081C3D" Ref="U7"  Part="4" 
AR Path="/5EE9163B/5F081C3D" Ref="U8"  Part="4" 
F 0 "U6" H 7200 2550 50  0000 C CNN
F 1 "TL074" H 7100 2700 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 7100 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7200 2900 50  0001 C CNN
	4    7150 2700
	1    0    0    1   
$EndComp
Wire Wire Line
	7600 2700 7500 2700
Wire Wire Line
	6750 2900 6750 2800
Wire Wire Line
	6750 2800 6850 2800
Wire Wire Line
	6850 2600 6800 2600
Wire Wire Line
	5950 2600 6400 2600
Wire Wire Line
	6800 2600 6800 2400
Wire Wire Line
	6800 2400 7050 2400
Connection ~ 6800 2600
Wire Wire Line
	6800 2600 6700 2600
Wire Wire Line
	7350 2400 7500 2400
Wire Wire Line
	7500 2400 7500 2700
Connection ~ 7500 2700
Wire Wire Line
	7500 2700 7450 2700
$Comp
L Device:R R30
U 1 1 5F083AFD
P 7200 2400
AR Path="/5EBA9693/5F083AFD" Ref="R30"  Part="1" 
AR Path="/5EE915EC/5F083AFD" Ref="R40"  Part="1" 
AR Path="/5EE9163B/5F083AFD" Ref="R50"  Part="1" 
AR Path="/5EE915A8/5F083AFD" Ref="R60"  Part="1" 
F 0 "R60" V 6993 2400 50  0000 C CNN
F 1 "13K" V 7084 2400 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 7130 2400 50  0001 C CNN
F 3 "~" H 7200 2400 50  0001 C CNN
	1    7200 2400
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U5
U 5 1 5F0C5406
P 10900 1150
AR Path="/5EBA9693/5F0C5406" Ref="U5"  Part="5" 
AR Path="/5EE915EC/5F0C5406" Ref="U7"  Part="5" 
AR Path="/5EE9163B/5F0C5406" Ref="U8"  Part="5" 
AR Path="/5EE915A8/5F0C5406" Ref="U6"  Part="5" 
F 0 "U6" H 10858 1196 50  0000 L CNN
F 1 "TL074" H 10858 1105 50  0000 L CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-14_W7.62mm" H 10850 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10950 1350 50  0001 C CNN
	5    10900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+12VA #PWR045
U 1 1 5F0C7161
P 10800 750
AR Path="/5EBA9693/5F0C7161" Ref="#PWR045"  Part="1" 
AR Path="/5EE915EC/5F0C7161" Ref="#PWR057"  Part="1" 
AR Path="/5EE9163B/5F0C7161" Ref="#PWR069"  Part="1" 
AR Path="/5EE915A8/5F0C7161" Ref="#PWR081"  Part="1" 
F 0 "#PWR081" H 10800 600 50  0001 C CNN
F 1 "+12VA" H 10815 923 50  0000 C CNN
F 2 "" H 10800 750 50  0001 C CNN
F 3 "" H 10800 750 50  0001 C CNN
	1    10800 750 
	1    0    0    -1  
$EndComp
$Comp
L power:-12VA #PWR046
U 1 1 5F0C7B87
P 10800 1550
AR Path="/5EBA9693/5F0C7B87" Ref="#PWR046"  Part="1" 
AR Path="/5EE915EC/5F0C7B87" Ref="#PWR058"  Part="1" 
AR Path="/5EE9163B/5F0C7B87" Ref="#PWR070"  Part="1" 
AR Path="/5EE915A8/5F0C7B87" Ref="#PWR082"  Part="1" 
F 0 "#PWR082" H 10800 1650 50  0001 C CNN
F 1 "-12VA" H 10815 1723 50  0000 C CNN
F 2 "" H 10800 1550 50  0001 C CNN
F 3 "" H 10800 1550 50  0001 C CNN
	1    10800 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	10800 1550 10800 1450
Wire Wire Line
	10800 850  10800 750 
Text Notes 6500 3400 0    50   ~ 0
TODO: I don’t think compensating for the error in these resistors\nis super necessary, but hand-matching resistors or buying 1% or 5%\nmight be a smart move.
$Comp
L Amplifier_Operational:LM13700 U2
U 3 1 5EBBC342
P 5650 2600
AR Path="/5EBA9693/5EBBC342" Ref="U2"  Part="1" 
AR Path="/5EE5C6CB/5EBBC342" Ref="U?"  Part="1" 
AR Path="/5EE915A8/5EBBC342" Ref="U2"  Part="3" 
AR Path="/5EE915EC/5EBBC342" Ref="U3"  Part="1" 
AR Path="/5EE9163B/5EBBC342" Ref="U3"  Part="3" 
F 0 "U2" H 5650 2967 50  0000 C CNN
F 1 "LM13700" H 5650 2876 50  0000 C CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-16_W7.62mm" H 5350 2625 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5350 2625 50  0001 C CNN
	3    5650 2600
	1    0    0    -1  
$EndComp
Text Notes 2400 5750 0    50   ~ 0
TODO: where do we need to tune the circuit?
$EndSCHEMATC
