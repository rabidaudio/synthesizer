EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Amplifier_Operational:LM13700 U1
U 1 1 5F58503C
P 5600 3850
AR Path="/5F5446F0/5F58503C" Ref="U1"  Part="1" 
AR Path="/5F5D80AF/5F58503C" Ref="U1"  Part="3" 
F 0 "U1" H 5600 3483 50  0000 C CNN
F 1 "LM13700" H 5600 3574 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 5300 3875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 5300 3875 50  0001 C CNN
	1    5600 3850
	1    0    0    1   
$EndComp
Wire Wire Line
	6300 3850 6050 3850
Wire Wire Line
	5300 3950 5200 3950
Wire Wire Line
	5200 3950 5200 4200
Wire Wire Line
	5200 4200 6050 4200
Wire Wire Line
	6050 4200 6050 3850
Connection ~ 6050 3850
Wire Wire Line
	6050 3850 5900 3850
$Comp
L Device:R R?
U 1 1 5F585057
P 6000 3400
AR Path="/5F585057" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F585057" Ref="R1"  Part="1" 
AR Path="/5F5D80AF/5F585057" Ref="R7"  Part="1" 
F 0 "R1" H 6070 3446 50  0000 L CNN
F 1 "6.8k" H 6070 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5930 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3550 6000 3750
Wire Wire Line
	6000 3750 5900 3750
$Comp
L synth:DG403 U3
U 1 1 5F58505F
P 4400 3650
AR Path="/5F5446F0/5F58505F" Ref="U3"  Part="1" 
AR Path="/5F5D80AF/5F58505F" Ref="U5"  Part="1" 
F 0 "U3" H 4400 3875 50  0000 C CNN
F 1 "DG403" H 4400 3784 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4400 2950 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 4400 3650 50  0001 C CNN
	1    4400 3650
	-1   0    0    -1  
$EndComp
$Comp
L synth:DG403 U3
U 2 1 5F585065
P 3700 4050
AR Path="/5F5446F0/5F585065" Ref="U3"  Part="2" 
AR Path="/5F5D80AF/5F585065" Ref="U5"  Part="2" 
F 0 "U3" H 3700 4275 50  0000 C CNN
F 1 "DG403" H 3700 4184 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3700 3350 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 3700 4050 50  0001 C CNN
	2    3700 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 3750 4750 3750
Wire Wire Line
	4700 3850 4750 3850
Wire Wire Line
	4750 3850 4750 3750
Connection ~ 4750 3750
Wire Wire Line
	4750 3750 4700 3750
$Comp
L power:GND #PWR017
U 1 1 5F585070
P 3900 3700
AR Path="/5F5446F0/5F585070" Ref="#PWR017"  Part="1" 
AR Path="/5F5D80AF/5F585070" Ref="#PWR036"  Part="1" 
F 0 "#PWR017" H 3900 3450 50  0001 C CNN
F 1 "GND" H 3905 3527 50  0000 C CNN
F 2 "" H 3900 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3700 3900 3650
Wire Wire Line
	3900 3650 4100 3650
Wire Wire Line
	4000 4250 4050 4250
Wire Wire Line
	4050 4250 4050 4150
Wire Wire Line
	4050 3850 4100 3850
Wire Wire Line
	4000 4150 4050 4150
Connection ~ 4050 4150
Wire Wire Line
	4050 4150 4050 3850
$Comp
L Amplifier_Operational:TL074 U2
U 4 1 5F585086
P 5500 6050
AR Path="/5F5446F0/5F585086" Ref="U2"  Part="4" 
AR Path="/5F5D80AF/5F585086" Ref="U7"  Part="2" 
F 0 "U2" H 5550 5900 50  0000 C CNN
F 1 "TL074" H 5450 6050 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5550 6250 50  0001 C CNN
	4    5500 6050
	1    0    0    1   
$EndComp
Wire Wire Line
	6950 3850 6300 3850
Connection ~ 6300 3850
Wire Wire Line
	6950 3200 6850 3200
Wire Wire Line
	6850 3200 6850 2900
Wire Wire Line
	7750 2900 7750 3300
Wire Wire Line
	7550 3300 7750 3300
$Comp
L Device:R R?
U 1 1 5F585096
P 6700 4500
AR Path="/5F585096" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F585096" Ref="R2"  Part="1" 
AR Path="/5F5D80AF/5F585096" Ref="R8"  Part="1" 
F 0 "R2" H 6770 4546 50  0000 L CNN
F 1 "1K" H 6770 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6630 4500 50  0001 C CNN
F 3 "~" H 6700 4500 50  0001 C CNN
	1    6700 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F58509C
P 6700 4950
AR Path="/5F58509C" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F58509C" Ref="R3"  Part="1" 
AR Path="/5F5D80AF/5F58509C" Ref="R9"  Part="1" 
F 0 "R3" H 6770 4996 50  0000 L CNN
F 1 "100K" H 6770 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6630 4950 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4800 6700 4750
Wire Wire Line
	6700 4750 6900 4750
Wire Wire Line
	6900 4750 6900 4050
Wire Wire Line
	6900 4050 6950 4050
Connection ~ 6700 4750
Wire Wire Line
	6700 4750 6700 4650
$Comp
L power:GND #PWR021
U 1 1 5F5850A8
P 6700 5200
AR Path="/5F5446F0/5F5850A8" Ref="#PWR021"  Part="1" 
AR Path="/5F5D80AF/5F5850A8" Ref="#PWR040"  Part="1" 
F 0 "#PWR021" H 6700 4950 50  0001 C CNN
F 1 "GND" H 6705 5027 50  0000 C CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5200 6700 5100
Wire Wire Line
	6700 4300 6700 4350
Text Notes 6950 4300 0    50   ~ 0
99% REF comparator
Text Notes 6250 4400 2    50   ~ 0
non-inverting amp sets the output voltage to\nthe reference but rate-limited by IABC
Wire Wire Line
	6950 3400 6300 3400
Wire Wire Line
	6300 3400 6300 3850
$Comp
L synth:DG403 U4
U 1 1 5F5850B6
P 4450 2500
AR Path="/5F5446F0/5F5850B6" Ref="U4"  Part="1" 
AR Path="/5F5D80AF/5F5850B6" Ref="U6"  Part="1" 
F 0 "U4" H 4450 2725 50  0000 C CNN
F 1 "DG403" H 4450 2634 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4450 1800 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 4450 2500 50  0001 C CNN
	1    4450 2500
	-1   0    0    -1  
$EndComp
$Comp
L synth:DG403 U4
U 2 1 5F5850BC
P 3650 2600
AR Path="/5F5446F0/5F5850BC" Ref="U4"  Part="2" 
AR Path="/5F5D80AF/5F5850BC" Ref="U6"  Part="2" 
F 0 "U4" H 3650 2825 50  0000 C CNN
F 1 "DG403" H 3650 2734 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 3650 1900 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 3650 2600 50  0001 C CNN
	2    3650 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 2600 4750 2600
Wire Wire Line
	4750 2700 4850 2700
Wire Wire Line
	4850 2700 4850 2600
Wire Wire Line
	3950 2700 4050 2700
Wire Wire Line
	3950 2800 4050 2800
Wire Wire Line
	4050 2800 4050 2700
Connection ~ 4050 2700
Wire Wire Line
	4050 2700 4150 2700
Text Notes 5900 3500 1    50   ~ 0
Cap IABC at 2mA
Wire Wire Line
	1800 3050 1900 3050
$Comp
L Amplifier_Operational:LM13700 U?
U 2 1 5F585109
P 8050 3950
AR Path="/5F585109" Ref="U?"  Part="2" 
AR Path="/5F5446F0/5F585109" Ref="U1"  Part="2" 
AR Path="/5F5D80AF/5F585109" Ref="U1"  Part="4" 
F 0 "U1" H 7950 4298 50  0000 C CNN
F 1 "LM13700" H 7950 4207 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7750 3975 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 7750 3975 50  0001 C CNN
	2    8050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3950 7550 3950
$Comp
L Device:C C?
U 1 1 5F585110
P 8250 4300
AR Path="/5F585110" Ref="C?"  Part="1" 
AR Path="/5F5446F0/5F585110" Ref="C2"  Part="1" 
AR Path="/5F5D80AF/5F585110" Ref="C4"  Part="1" 
F 0 "C2" H 8365 4346 50  0000 L CNN
F 1 "100n" H 8365 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8288 4150 50  0001 C CNN
F 3 "~" H 8250 4300 50  0001 C CNN
	1    8250 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F585116
P 8250 4550
AR Path="/5F585116" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F585116" Ref="#PWR024"  Part="1" 
AR Path="/5F5D80AF/5F585116" Ref="#PWR043"  Part="1" 
F 0 "#PWR024" H 8250 4300 50  0001 C CNN
F 1 "GND" H 8255 4377 50  0000 C CNN
F 2 "" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 4550 8250 4450
Wire Wire Line
	8250 4150 8250 4050
Wire Wire Line
	8250 4050 8150 4050
$Comp
L Device:D D?
U 1 1 5F58511F
P 8700 4550
AR Path="/5F58511F" Ref="D?"  Part="1" 
AR Path="/5F5446F0/5F58511F" Ref="D1"  Part="1" 
AR Path="/5F5D80AF/5F58511F" Ref="D2"  Part="1" 
F 0 "D1" V 8746 4470 50  0000 R CNN
F 1 "D" V 8655 4470 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_AnodeUp" H 8700 4550 50  0001 C CNN
F 3 "~" H 8700 4550 50  0001 C CNN
	1    8700 4550
	0    -1   -1   0   
$EndComp
Connection ~ 8250 4050
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5F585126
P 8600 5150
AR Path="/5F585126" Ref="Q?"  Part="1" 
AR Path="/5F5446F0/5F585126" Ref="Q2"  Part="1" 
AR Path="/5F5D80AF/5F585126" Ref="Q4"  Part="1" 
F 0 "Q2" H 8790 5196 50  0000 L CNN
F 1 "2N3904" H 8790 5105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8800 5075 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8600 5150 50  0001 L CNN
	1    8600 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F58512C
P 8150 5150
AR Path="/5F58512C" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F58512C" Ref="R6"  Part="1" 
AR Path="/5F5D80AF/5F58512C" Ref="R12"  Part="1" 
F 0 "R6" H 8220 5196 50  0000 L CNN
F 1 "1K" H 8220 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8080 5150 50  0001 C CNN
F 3 "~" H 8150 5150 50  0001 C CNN
	1    8150 5150
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5F585132
P 7800 5450
AR Path="/5F585132" Ref="Q?"  Part="1" 
AR Path="/5F5446F0/5F585132" Ref="Q1"  Part="1" 
AR Path="/5F5D80AF/5F585132" Ref="Q3"  Part="1" 
F 0 "Q1" H 7990 5496 50  0000 L CNN
F 1 "2N3904" H 7990 5405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8000 5375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7800 5450 50  0001 L CNN
	1    7800 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F585138
P 7900 4900
AR Path="/5F585138" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F585138" Ref="R5"  Part="1" 
AR Path="/5F5D80AF/5F585138" Ref="R11"  Part="1" 
F 0 "R5" H 7970 4946 50  0000 L CNN
F 1 "100K" H 7970 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7830 4900 50  0001 C CNN
F 3 "~" H 7900 4900 50  0001 C CNN
	1    7900 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F58513E
P 7900 5750
AR Path="/5F58513E" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F58513E" Ref="#PWR023"  Part="1" 
AR Path="/5F5D80AF/5F58513E" Ref="#PWR042"  Part="1" 
F 0 "#PWR023" H 7900 5500 50  0001 C CNN
F 1 "GND" H 7905 5577 50  0000 C CNN
F 2 "" H 7900 5750 50  0001 C CNN
F 3 "" H 7900 5750 50  0001 C CNN
	1    7900 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F585144
P 8700 5450
AR Path="/5F585144" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F585144" Ref="#PWR025"  Part="1" 
AR Path="/5F5D80AF/5F585144" Ref="#PWR044"  Part="1" 
F 0 "#PWR025" H 8700 5200 50  0001 C CNN
F 1 "GND" H 8705 5277 50  0000 C CNN
F 2 "" H 8700 5450 50  0001 C CNN
F 3 "" H 8700 5450 50  0001 C CNN
	1    8700 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F58514A
P 7500 5200
AR Path="/5F58514A" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F58514A" Ref="R4"  Part="1" 
AR Path="/5F5D80AF/5F58514A" Ref="R10"  Part="1" 
F 0 "R4" H 7570 5246 50  0000 L CNN
F 1 "100K" H 7570 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7430 5200 50  0001 C CNN
F 3 "~" H 7500 5200 50  0001 C CNN
	1    7500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5450 7500 5450
Wire Wire Line
	7500 5450 7500 5350
Wire Wire Line
	7900 5750 7900 5650
Wire Wire Line
	7900 5250 7900 5150
Wire Wire Line
	8000 5150 7900 5150
Connection ~ 7900 5150
Wire Wire Line
	7900 5150 7900 5050
Wire Wire Line
	8300 5150 8400 5150
Wire Wire Line
	8700 5450 8700 5350
Wire Wire Line
	7400 4950 7500 4950
Wire Wire Line
	7500 4950 7500 5050
$Comp
L power:+12V #PWR?
U 1 1 5F58515C
P 7900 4650
AR Path="/5F58515C" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F58515C" Ref="#PWR022"  Part="1" 
AR Path="/5F5D80AF/5F58515C" Ref="#PWR041"  Part="1" 
F 0 "#PWR022" H 7900 4500 50  0001 C CNN
F 1 "+12V" H 7915 4823 50  0000 C CNN
F 2 "" H 7900 4650 50  0001 C CNN
F 3 "" H 7900 4650 50  0001 C CNN
	1    7900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4650 7900 4750
Text Notes 8100 5900 0    50   ~ 0
cheap analog latch\nCapacitor is charged for D and S states,\ndischarged for A and R states
Wire Wire Line
	8700 4700 8700 4950
Wire Wire Line
	8700 4400 8700 4050
Wire Wire Line
	8250 4050 8700 4050
Wire Wire Line
	4400 4400 4400 4150
Wire Wire Line
	3600 4700 3700 4700
Wire Wire Line
	3700 4700 3700 4550
Wire Wire Line
	3650 3200 3650 3100
Wire Wire Line
	4250 3200 4450 3200
Wire Wire Line
	4450 3200 4450 3000
$Comp
L power:GND #PWR?
U 1 1 5F585180
P 4700 7500
AR Path="/5F585180" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F585180" Ref="#PWR015"  Part="1" 
AR Path="/5F5D80AF/5F585180" Ref="#PWR034"  Part="1" 
F 0 "#PWR015" H 4700 7250 50  0001 C CNN
F 1 "GND" H 4705 7327 50  0000 C CNN
F 2 "" H 4700 7500 50  0001 C CNN
F 3 "" H 4700 7500 50  0001 C CNN
	1    4700 7500
	-1   0    0    -1  
$EndComp
Text Notes 3350 5100 0    50   ~ 0
State machine controlled by STATE and REF:\nAttack - Vref > 0, Vcomp=Vref, Iabc controlled by R_attack\nDecay - Vref > 0, Vcomp=Vsustain, Iabc controlled by R_decay\nRelease - Vref=0, Vcomp=0, Iabc controlled by R_release\n
Text Notes 6700 2650 0    50   ~ 0
output buffer, gain=2 to make up\nfor the divide down on the input
Text Notes 1550 2400 0    50   ~ 0
Choice of C1 and R_POT control the slew rate\nLarge values for both mean a longer charge time,\nbut a large C1 effects the fastest charge time too,\nsince IABC has a max of 2mA\n\nAudio taper gives finer control at lower rates
Text HLabel 4100 6150 0    50   Input ~ 0
IN
Text HLabel 7900 3300 2    50   Input ~ 0
OUT
Wire Wire Line
	7900 3300 7750 3300
Connection ~ 7750 3300
Wire Wire Line
	3550 3200 3650 3200
$Comp
L synth:DG403 U?
U 3 1 5F5CA167
P 10150 1350
AR Path="/5F5CA167" Ref="U?"  Part="3" 
AR Path="/5F5446F0/5F5CA167" Ref="U3"  Part="3" 
AR Path="/5F5D80AF/5F5CA167" Ref="U5"  Part="3" 
F 0 "U3" H 10100 1350 50  0000 L CNN
F 1 "DG403" H 10050 1200 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10150 650 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 10150 1350 50  0001 C CNN
	3    10150 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F5CA16D
P 10050 800
AR Path="/5F5CA16D" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA16D" Ref="#PWR026"  Part="1" 
AR Path="/5F5D80AF/5F5CA16D" Ref="#PWR045"  Part="1" 
F 0 "#PWR026" H 10050 650 50  0001 C CNN
F 1 "+5V" H 10065 973 50  0000 C CNN
F 2 "" H 10050 800 50  0001 C CNN
F 3 "" H 10050 800 50  0001 C CNN
	1    10050 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5F5CA173
P 10250 2000
AR Path="/5F5CA173" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA173" Ref="#PWR029"  Part="1" 
AR Path="/5F5D80AF/5F5CA173" Ref="#PWR048"  Part="1" 
F 0 "#PWR029" H 10250 2100 50  0001 C CNN
F 1 "-12V" H 10265 2173 50  0000 C CNN
F 2 "" H 10250 2000 50  0001 C CNN
F 3 "" H 10250 2000 50  0001 C CNN
	1    10250 2000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F5CA179
P 10250 800
AR Path="/5F5CA179" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA179" Ref="#PWR028"  Part="1" 
AR Path="/5F5D80AF/5F5CA179" Ref="#PWR047"  Part="1" 
F 0 "#PWR028" H 10250 650 50  0001 C CNN
F 1 "+12V" H 10265 973 50  0000 C CNN
F 2 "" H 10250 800 50  0001 C CNN
F 3 "" H 10250 800 50  0001 C CNN
	1    10250 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5CA17F
P 10050 2000
AR Path="/5F5CA17F" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA17F" Ref="#PWR027"  Part="1" 
AR Path="/5F5D80AF/5F5CA17F" Ref="#PWR046"  Part="1" 
F 0 "#PWR027" H 10050 1750 50  0001 C CNN
F 1 "GND" H 10055 1827 50  0000 C CNN
F 2 "" H 10050 2000 50  0001 C CNN
F 3 "" H 10050 2000 50  0001 C CNN
	1    10050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 800  10050 900 
Wire Wire Line
	10250 800  10250 900 
Wire Wire Line
	10050 1900 10050 2000
Wire Wire Line
	10250 1900 10250 2000
$Comp
L synth:DG403 U?
U 3 1 5F5CA189
P 10750 1350
AR Path="/5F5CA189" Ref="U?"  Part="3" 
AR Path="/5F5446F0/5F5CA189" Ref="U4"  Part="3" 
AR Path="/5F5D80AF/5F5CA189" Ref="U6"  Part="3" 
F 0 "U4" H 10700 1350 50  0000 L CNN
F 1 "DG403" H 10650 1200 50  0000 L CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 10750 650 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 10750 1350 50  0001 C CNN
	3    10750 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F5CA18F
P 10650 800
AR Path="/5F5CA18F" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA18F" Ref="#PWR030"  Part="1" 
AR Path="/5F5D80AF/5F5CA18F" Ref="#PWR049"  Part="1" 
F 0 "#PWR030" H 10650 650 50  0001 C CNN
F 1 "+5V" H 10665 973 50  0000 C CNN
F 2 "" H 10650 800 50  0001 C CNN
F 3 "" H 10650 800 50  0001 C CNN
	1    10650 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5F5CA195
P 10850 2000
AR Path="/5F5CA195" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA195" Ref="#PWR033"  Part="1" 
AR Path="/5F5D80AF/5F5CA195" Ref="#PWR052"  Part="1" 
F 0 "#PWR033" H 10850 2100 50  0001 C CNN
F 1 "-12V" H 10865 2173 50  0000 C CNN
F 2 "" H 10850 2000 50  0001 C CNN
F 3 "" H 10850 2000 50  0001 C CNN
	1    10850 2000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F5CA19B
P 10850 800
AR Path="/5F5CA19B" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA19B" Ref="#PWR032"  Part="1" 
AR Path="/5F5D80AF/5F5CA19B" Ref="#PWR051"  Part="1" 
F 0 "#PWR032" H 10850 650 50  0001 C CNN
F 1 "+12V" H 10865 973 50  0000 C CNN
F 2 "" H 10850 800 50  0001 C CNN
F 3 "" H 10850 800 50  0001 C CNN
	1    10850 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5CA1A1
P 10650 2000
AR Path="/5F5CA1A1" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F5CA1A1" Ref="#PWR031"  Part="1" 
AR Path="/5F5D80AF/5F5CA1A1" Ref="#PWR050"  Part="1" 
F 0 "#PWR031" H 10650 1750 50  0001 C CNN
F 1 "GND" H 10655 1827 50  0000 C CNN
F 2 "" H 10650 2000 50  0001 C CNN
F 3 "" H 10650 2000 50  0001 C CNN
	1    10650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 800  10650 900 
Wire Wire Line
	10850 800  10850 900 
Wire Wire Line
	10650 1900 10650 2000
Wire Wire Line
	10850 1900 10850 2000
NoConn ~ 5300 3850
Text Label 3600 4700 2    50   ~ 0
STATE
Text Label 3550 3200 2    50   ~ 0
STATE
Text Label 8900 4050 0    50   ~ 0
STATE
$Comp
L Device:R R?
U 1 1 5F267E8A
P 4700 6450
AR Path="/5F267E8A" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F267E8A" Ref="R13"  Part="1" 
AR Path="/5F5D80AF/5F267E8A" Ref="R14"  Part="1" 
F 0 "R13" H 4770 6496 50  0000 L CNN
F 1 "1M" H 4770 6405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4630 6450 50  0001 C CNN
F 3 "~" H 4700 6450 50  0001 C CNN
	1    4700 6450
	1    0    0    -1  
$EndComp
Text Label 5950 6600 0    50   ~ 0
REF
Text Label 6700 4300 0    50   ~ 0
REF
Text Notes 4550 7000 2    50   ~ 0
Scale VIN down by a factor of 2\nThis keeps the CV in the recommened\nmax operating conditions of the LM13700\nto a 5V differential
$Comp
L Device:R R?
U 1 1 5F27B506
P 6550 2900
AR Path="/5F27B506" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F27B506" Ref="R15"  Part="1" 
AR Path="/5F5D80AF/5F27B506" Ref="R17"  Part="1" 
F 0 "R15" H 6620 2946 50  0000 L CNN
F 1 "10K" H 6620 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6480 2900 50  0001 C CNN
F 3 "~" H 6550 2900 50  0001 C CNN
	1    6550 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5F283AF6
P 6300 3000
AR Path="/5F5446F0/5F283AF6" Ref="#PWR053"  Part="1" 
AR Path="/5F5D80AF/5F283AF6" Ref="#PWR054"  Part="1" 
F 0 "#PWR053" H 6300 2750 50  0001 C CNN
F 1 "GND" H 6305 2827 50  0000 C CNN
F 2 "" H 6300 3000 50  0001 C CNN
F 3 "" H 6300 3000 50  0001 C CNN
	1    6300 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3000 6300 2900
Wire Wire Line
	6300 2900 6400 2900
$Comp
L Device:R R?
U 1 1 5F2918D2
P 7300 2900
AR Path="/5F2918D2" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F2918D2" Ref="R16"  Part="1" 
AR Path="/5F5D80AF/5F2918D2" Ref="R18"  Part="1" 
F 0 "R16" H 7370 2946 50  0000 L CNN
F 1 "10K" H 7370 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7230 2900 50  0001 C CNN
F 3 "~" H 7300 2900 50  0001 C CNN
	1    7300 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 2900 6850 2900
Connection ~ 6850 2900
Wire Wire Line
	6850 2900 7150 2900
Wire Wire Line
	7450 2900 7750 2900
Wire Wire Line
	8900 4050 8700 4050
Connection ~ 8700 4050
$Comp
L Amplifier_Operational:TL074 U2
U 1 1 5F2911D2
P 5500 6600
AR Path="/5F5446F0/5F2911D2" Ref="U2"  Part="1" 
AR Path="/5F5D80AF/5F2911D2" Ref="U7"  Part="3" 
F 0 "U2" H 5550 6450 50  0000 C CNN
F 1 "TL074" H 5450 6600 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5550 6800 50  0001 C CNN
	1    5500 6600
	1    0    0    1   
$EndComp
Text Label 3250 4050 2    50   ~ 0
REF
Wire Wire Line
	3250 4050 3400 4050
Wire Wire Line
	4700 6700 5200 6700
Wire Wire Line
	5200 6500 5150 6500
Wire Wire Line
	5150 6500 5150 6350
Wire Wire Line
	5150 6350 5850 6350
Wire Wire Line
	5850 6350 5850 6600
Wire Wire Line
	5850 6600 5800 6600
Wire Wire Line
	5850 6600 5950 6600
Connection ~ 5850 6600
Wire Wire Line
	4700 6600 4700 6700
Connection ~ 4700 6700
$Comp
L Amplifier_Operational:TL074 U2
U 2 1 5F2C52A2
P 5500 7100
AR Path="/5F5446F0/5F2C52A2" Ref="U2"  Part="2" 
AR Path="/5F5D80AF/5F2C52A2" Ref="U7"  Part="4" 
F 0 "U2" H 5550 6950 50  0000 C CNN
F 1 "TL074" H 5450 7100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5450 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5550 7300 50  0001 C CNN
	2    5500 7100
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 7000 5150 7000
Wire Wire Line
	5150 7000 5150 6850
Wire Wire Line
	5150 6850 5850 6850
Wire Wire Line
	5850 6850 5850 7100
Wire Wire Line
	5850 7100 5800 7100
Wire Wire Line
	5850 7100 5950 7100
Connection ~ 5850 7100
Wire Wire Line
	4700 7350 4700 7500
Wire Wire Line
	4850 7200 5200 7200
Wire Wire Line
	4700 6700 4700 7050
Text Label 5950 7100 0    50   ~ 0
SUS
Text Label 3250 4250 2    50   ~ 0
SUS
Wire Wire Line
	3250 4250 3400 4250
$Comp
L synth:DMMT5401 Q5
U 1 1 5F31D059
P 5400 2400
AR Path="/5F5446F0/5F31D059" Ref="Q5"  Part="1" 
AR Path="/5F5D80AF/5F31D059" Ref="Q6"  Part="1" 
F 0 "Q5" H 5591 2354 50  0000 L CNN
F 1 "DMMT5401" H 5591 2445 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 5600 2325 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 5400 2400 50  0001 L CNN
	1    5400 2400
	-1   0    0    1   
$EndComp
$Comp
L synth:DMMT5401 Q5
U 2 1 5F31EDCC
P 5900 2400
AR Path="/5F5446F0/5F31EDCC" Ref="Q5"  Part="2" 
AR Path="/5F5D80AF/5F31EDCC" Ref="Q6"  Part="2" 
F 0 "Q5" H 6091 2354 50  0000 L CNN
F 1 "DMMT5401" H 6091 2445 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6100 2325 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 5900 2400 50  0001 L CNN
	2    5900 2400
	1    0    0    1   
$EndComp
$Comp
L power:+12V #PWR018
U 1 1 5F3257C9
P 5650 2000
AR Path="/5F5446F0/5F3257C9" Ref="#PWR018"  Part="1" 
AR Path="/5F5D80AF/5F3257C9" Ref="#PWR056"  Part="1" 
F 0 "#PWR018" H 5650 1850 50  0001 C CNN
F 1 "+12V" H 5665 2173 50  0000 C CNN
F 2 "" H 5650 2000 50  0001 C CNN
F 3 "" H 5650 2000 50  0001 C CNN
	1    5650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2200 5300 2100
Wire Wire Line
	5300 2100 5650 2100
Wire Wire Line
	6000 2100 6000 2200
Wire Wire Line
	5650 2000 5650 2100
Connection ~ 5650 2100
Wire Wire Line
	5650 2100 6000 2100
Wire Wire Line
	5700 2400 5650 2400
Wire Wire Line
	5650 2400 5650 2700
Wire Wire Line
	5650 2700 5300 2700
Wire Wire Line
	5300 2700 5300 2600
Connection ~ 5650 2400
Wire Wire Line
	5650 2400 5600 2400
Wire Wire Line
	6000 3250 6000 2600
$Comp
L Device:R R?
U 1 1 5F352E9C
P 5100 2700
AR Path="/5F352E9C" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F352E9C" Ref="R19"  Part="1" 
AR Path="/5F5D80AF/5F352E9C" Ref="R20"  Part="1" 
F 0 "R19" H 5170 2746 50  0000 L CNN
F 1 "6.8k" H 5170 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 2700 50  0001 C CNN
F 3 "~" H 5100 2700 50  0001 C CNN
	1    5100 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F407285
P 3100 3350
AR Path="/5F407285" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F407285" Ref="#PWR016"  Part="1" 
AR Path="/5F5D80AF/5F407285" Ref="#PWR055"  Part="1" 
F 0 "#PWR016" H 3100 3100 50  0001 C CNN
F 1 "GND" H 3105 3177 50  0000 C CNN
F 2 "" H 3100 3350 50  0001 C CNN
F 3 "" H 3100 3350 50  0001 C CNN
	1    3100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3350 3100 3250
Wire Wire Line
	3250 3050 3300 3050
Wire Wire Line
	3300 3050 3300 3250
Wire Wire Line
	3300 3250 3100 3250
Connection ~ 3100 3250
Wire Wire Line
	3100 3250 3100 3200
$Comp
L power:GND #PWR?
U 1 1 5F43DF5D
P 2400 3350
AR Path="/5F43DF5D" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F43DF5D" Ref="#PWR014"  Part="1" 
AR Path="/5F5D80AF/5F43DF5D" Ref="#PWR038"  Part="1" 
F 0 "#PWR014" H 2400 3100 50  0001 C CNN
F 1 "GND" H 2405 3177 50  0000 C CNN
F 2 "" H 2400 3350 50  0001 C CNN
F 3 "" H 2400 3350 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3350 2400 3250
Wire Wire Line
	2550 3050 2650 3050
Wire Wire Line
	2650 3050 2650 3250
Wire Wire Line
	2650 3250 2400 3250
Connection ~ 2400 3250
Wire Wire Line
	2400 3250 2400 3200
Wire Wire Line
	3100 2900 3100 2800
Wire Wire Line
	3100 2800 3350 2800
$Comp
L power:GND #PWR?
U 1 1 5F490BBE
P 1650 3350
AR Path="/5F490BBE" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F490BBE" Ref="#PWR013"  Part="1" 
AR Path="/5F5D80AF/5F490BBE" Ref="#PWR037"  Part="1" 
F 0 "#PWR013" H 1650 3100 50  0001 C CNN
F 1 "GND" H 1655 3177 50  0000 C CNN
F 2 "" H 1650 3350 50  0001 C CNN
F 3 "" H 1650 3350 50  0001 C CNN
	1    1650 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3200 1650 3250
Wire Wire Line
	1900 3050 1900 3250
Wire Wire Line
	1900 3250 1650 3250
Connection ~ 1650 3250
Wire Wire Line
	1650 3250 1650 3350
Wire Wire Line
	1650 2500 4150 2500
Wire Wire Line
	2400 2600 3350 2600
Wire Wire Line
	2400 2600 2400 2900
Wire Wire Line
	5250 2700 5300 2700
Connection ~ 5300 2700
Wire Wire Line
	4950 2700 4850 2700
Connection ~ 4850 2700
$Comp
L Amplifier_Operational:TL074 U2
U 5 1 5F5283A7
P 9650 1400
AR Path="/5F5446F0/5F5283A7" Ref="U2"  Part="5" 
AR Path="/5F5D80AF/5F5283A7" Ref="U7"  Part="5" 
F 0 "U2" H 9608 1446 50  0000 L CNN
F 1 "TL074" H 9608 1355 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9600 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9700 1600 50  0001 C CNN
	5    9650 1400
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5F52C460
P 9550 2000
AR Path="/5F52C460" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F52C460" Ref="#PWR035"  Part="1" 
AR Path="/5F5D80AF/5F52C460" Ref="#PWR058"  Part="1" 
F 0 "#PWR035" H 9550 2100 50  0001 C CNN
F 1 "-12V" H 9565 2173 50  0000 C CNN
F 2 "" H 9550 2000 50  0001 C CNN
F 3 "" H 9550 2000 50  0001 C CNN
	1    9550 2000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F52CCA2
P 9550 800
AR Path="/5F52CCA2" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F52CCA2" Ref="#PWR019"  Part="1" 
AR Path="/5F5D80AF/5F52CCA2" Ref="#PWR057"  Part="1" 
F 0 "#PWR019" H 9550 650 50  0001 C CNN
F 1 "+12V" H 9565 973 50  0000 C CNN
F 2 "" H 9550 800 50  0001 C CNN
F 3 "" H 9550 800 50  0001 C CNN
	1    9550 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 800  9550 1100
Wire Wire Line
	9550 2000 9550 1700
$Comp
L Device:D D?
U 1 1 5F557E39
P 4400 6150
AR Path="/5F557E39" Ref="D?"  Part="1" 
AR Path="/5F5446F0/5F557E39" Ref="D3"  Part="1" 
AR Path="/5F5D80AF/5F557E39" Ref="D4"  Part="1" 
F 0 "D3" V 4446 6070 50  0000 R CNN
F 1 "D" V 4355 6070 50  0000 R CNN
F 2 "Diode_THT:D_A-405_P2.54mm_Vertical_AnodeUp" H 4400 6150 50  0001 C CNN
F 3 "~" H 4400 6150 50  0001 C CNN
	1    4400 6150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV2
U 1 1 6143FE85
P 3100 3050
AR Path="/5F5446F0/6143FE85" Ref="RV2"  Part="1" 
AR Path="/5F5D80AF/6143FE85" Ref="RV2"  Part="2" 
F 0 "RV2" H 3031 3096 50  0000 R CNN
F 1 "R_DECAY" H 3031 3005 50  0000 R CNN
F 2 "synth:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 3100 3050 50  0001 C CNN
F 3 "~" H 3100 3050 50  0001 C CNN
	1    3100 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV1
U 1 1 61446194
P 2400 3050
AR Path="/5F5446F0/61446194" Ref="RV1"  Part="1" 
AR Path="/5F5D80AF/61446194" Ref="RV1"  Part="2" 
F 0 "RV1" H 2330 3096 50  0000 R CNN
F 1 "R_ATTACK" H 2330 3005 50  0000 R CNN
F 2 "synth:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 2400 3050 50  0001 C CNN
F 3 "~" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_Dual_Separate RV3
U 1 1 61459B43
P 4700 7200
AR Path="/5F5446F0/61459B43" Ref="RV3"  Part="1" 
AR Path="/5F5D80AF/61459B43" Ref="RV3"  Part="2" 
F 0 "RV3" H 4631 7246 50  0000 R CNN
F 1 "R_SUSTAIN" H 4631 7155 50  0000 R CNN
F 2 "synth:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 4700 7200 50  0001 C CNN
F 3 "~" H 4700 7200 50  0001 C CNN
	1    4700 7200
	1    0    0    1   
$EndComp
Wire Wire Line
	1650 2500 1650 2900
$Comp
L Device:R_POT_Dual_Separate RV4
U 1 1 6146A53B
P 1650 3050
AR Path="/5F5446F0/6146A53B" Ref="RV4"  Part="1" 
AR Path="/5F5D80AF/6146A53B" Ref="RV4"  Part="2" 
F 0 "RV4" H 1581 3096 50  0000 R CNN
F 1 "R_RELEASE" H 1581 3005 50  0000 R CNN
F 2 "synth:Potentiometer_Alpha_RD902F-40-00D_Dual_Vertical" H 1650 3050 50  0001 C CNN
F 3 "~" H 1650 3050 50  0001 C CNN
	1    1650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6166F424
P 8750 1100
AR Path="/5F5446F0/6166F424" Ref="C8"  Part="1" 
AR Path="/5F5D80AF/6166F424" Ref="C10"  Part="1" 
F 0 "C8" H 8865 1146 50  0000 L CNN
F 1 "0.1u" H 8865 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8788 950 50  0001 C CNN
F 3 "~" H 8750 1100 50  0001 C CNN
	1    8750 1100
	1    0    0    -1  
$EndComp
Text Notes 8850 1800 2    50   ~ 0
ceramic bypass capacitors for TL074\nclose to power supply pins
$Comp
L power:-12V #PWR?
U 1 1 6167252F
P 8750 1350
AR Path="/6167252F" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/6167252F" Ref="#PWR0105"  Part="1" 
AR Path="/5F5D80AF/6167252F" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0105" H 8750 1450 50  0001 C CNN
F 1 "-12V" H 8765 1523 50  0000 C CNN
F 2 "" H 8750 1350 50  0001 C CNN
F 3 "" H 8750 1350 50  0001 C CNN
	1    8750 1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61672821
P 8750 800
AR Path="/61672821" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/61672821" Ref="#PWR0106"  Part="1" 
AR Path="/5F5D80AF/61672821" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0106" H 8750 550 50  0001 C CNN
F 1 "GND" H 8755 627 50  0000 C CNN
F 2 "" H 8750 800 50  0001 C CNN
F 3 "" H 8750 800 50  0001 C CNN
	1    8750 800 
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 61672F12
P 8350 800
AR Path="/61672F12" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/61672F12" Ref="#PWR0107"  Part="1" 
AR Path="/5F5D80AF/61672F12" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0107" H 8350 650 50  0001 C CNN
F 1 "+12V" H 8365 973 50  0000 C CNN
F 2 "" H 8350 800 50  0001 C CNN
F 3 "" H 8350 800 50  0001 C CNN
	1    8350 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6167378B
P 8350 1100
AR Path="/5F5446F0/6167378B" Ref="C7"  Part="1" 
AR Path="/5F5D80AF/6167378B" Ref="C9"  Part="1" 
F 0 "C7" H 8465 1146 50  0000 L CNN
F 1 "0.1u" H 8465 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8388 950 50  0001 C CNN
F 3 "~" H 8350 1100 50  0001 C CNN
	1    8350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61673EC1
P 8350 1350
AR Path="/61673EC1" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/61673EC1" Ref="#PWR0108"  Part="1" 
AR Path="/5F5D80AF/61673EC1" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0108" H 8350 1100 50  0001 C CNN
F 1 "GND" H 8355 1177 50  0000 C CNN
F 2 "" H 8350 1350 50  0001 C CNN
F 3 "" H 8350 1350 50  0001 C CNN
	1    8350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1350 8350 1250
Wire Wire Line
	8750 1350 8750 1250
Wire Wire Line
	8750 950  8750 800 
Wire Wire Line
	8350 950  8350 800 
Text Notes 1200 7400 0    50   ~ 0
board interconnect
Text Label 1650 2750 0    50   ~ 0
RELEASE
Text Label 2400 2750 0    50   ~ 0
ATTACK
Text Label 3100 2800 0    50   ~ 0
DECAY
Text Label 4800 6700 0    50   ~ 0
REF_RAW
Text Label 4900 7200 0    50   ~ 0
SUS_RAW
Text Label 1050 6950 2    50   ~ 0
SUS_RAW
Text Label 1050 6850 2    50   ~ 0
REF_RAW
Text Label 1050 6750 2    50   ~ 0
DECAY
Text Label 1050 7050 2    50   ~ 0
RELEASE
Text Label 1050 6650 2    50   ~ 0
ATTACK
Text Label 2100 6950 0    50   ~ 0
SUS_RAW
Text Label 2100 6850 0    50   ~ 0
REF_RAW
Text Label 2100 6750 0    50   ~ 0
DECAY
Text Label 2100 7050 0    50   ~ 0
RELEASE
Text Label 2100 6650 0    50   ~ 0
ATTACK
Wire Wire Line
	1900 6550 2100 6550
Wire Wire Line
	2100 6650 1900 6650
Wire Wire Line
	1900 6750 2100 6750
Wire Wire Line
	2100 6850 1900 6850
Wire Wire Line
	1900 6950 2100 6950
Wire Wire Line
	1200 6950 1050 6950
Wire Wire Line
	1050 6850 1200 6850
Wire Wire Line
	1200 6750 1050 6750
Wire Wire Line
	1050 6650 1200 6650
Wire Wire Line
	1200 6550 1050 6550
$Comp
L Connector:Conn_01x08_Female J9
U 1 1 619B448B
P 1400 6750
AR Path="/5F5446F0/619B448B" Ref="J9"  Part="1" 
AR Path="/5F5D80AF/619B448B" Ref="J11"  Part="1" 
F 0 "J9" H 1250 7200 50  0000 L CNN
F 1 "Conn_01x08_Female" V 1450 6300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1400 6750 50  0001 C CNN
F 3 "~" H 1400 6750 50  0001 C CNN
	1    1400 6750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J10
U 1 1 619B761C
P 1700 6750
AR Path="/5F5446F0/619B761C" Ref="J10"  Part="1" 
AR Path="/5F5D80AF/619B761C" Ref="J12"  Part="1" 
F 0 "J10" H 1808 7231 50  0000 C CNN
F 1 "Conn_01x08_Male" V 1650 6700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 1700 6750 50  0001 C CNN
F 3 "~" H 1700 6750 50  0001 C CNN
	1    1700 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619D1B27
P 1050 7250
AR Path="/619D1B27" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/619D1B27" Ref="#PWR0113"  Part="1" 
AR Path="/5F5D80AF/619D1B27" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0113" H 1050 7000 50  0001 C CNN
F 1 "GND" H 1055 7077 50  0000 C CNN
F 2 "" H 1050 7250 50  0001 C CNN
F 3 "" H 1050 7250 50  0001 C CNN
	1    1050 7250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1050 7250 1050 7150
Wire Wire Line
	1050 7150 1200 7150
$Comp
L power:GND #PWR?
U 1 1 619DC6B9
P 2050 7250
AR Path="/619DC6B9" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/619DC6B9" Ref="#PWR0114"  Part="1" 
AR Path="/5F5D80AF/619DC6B9" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0114" H 2050 7000 50  0001 C CNN
F 1 "GND" H 2055 7077 50  0000 C CNN
F 2 "" H 2050 7250 50  0001 C CNN
F 3 "" H 2050 7250 50  0001 C CNN
	1    2050 7250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 7250 2050 7150
Wire Wire Line
	2050 7150 1900 7150
Text Label 7400 4950 2    50   ~ 0
VINS
Text Label 4300 4400 2    50   ~ 0
VINS
Wire Wire Line
	4300 4400 4400 4400
Wire Wire Line
	1050 6450 1200 6450
Wire Wire Line
	2100 6450 1900 6450
Text Label 4250 3200 2    50   ~ 0
VINS
$Comp
L Device:C C?
U 1 1 62028AF0
P 6300 4750
AR Path="/62028AF0" Ref="C?"  Part="1" 
AR Path="/5F5446F0/62028AF0" Ref="C11"  Part="1" 
AR Path="/5F5D80AF/62028AF0" Ref="C12"  Part="1" 
F 0 "C11" H 6100 4800 50  0000 L CNN
F 1 "4.7u" H 6100 4650 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6338 4600 50  0001 C CNN
F 3 "~" H 6300 4750 50  0001 C CNN
	1    6300 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62028AFA
P 6300 5050
AR Path="/62028AFA" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/62028AFA" Ref="#PWR061"  Part="1" 
AR Path="/5F5D80AF/62028AFA" Ref="#PWR064"  Part="1" 
F 0 "#PWR061" H 6300 4800 50  0001 C CNN
F 1 "GND" H 6305 4877 50  0000 C CNN
F 2 "" H 6300 5050 50  0001 C CNN
F 3 "" H 6300 5050 50  0001 C CNN
	1    6300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5050 6300 4900
$Comp
L Amplifier_Operational:TL072 U8
U 1 1 6200DFD2
P 7250 3950
AR Path="/5F5446F0/6200DFD2" Ref="U8"  Part="1" 
AR Path="/5F5D80AF/6200DFD2" Ref="U8"  Part="2" 
F 0 "U8" H 7350 4100 50  0000 C CNN
F 1 "TL072" H 7200 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7250 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7250 3950 50  0001 C CNN
	1    7250 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6150 4700 6150
Wire Wire Line
	4700 6150 4700 6300
Wire Wire Line
	4550 6150 4700 6150
Connection ~ 4700 6150
Wire Wire Line
	4250 6150 4100 6150
$Comp
L Device:R R21
U 1 1 620755A4
P 4850 5950
AR Path="/5F5446F0/620755A4" Ref="R21"  Part="1" 
AR Path="/5F5D80AF/620755A4" Ref="R23"  Part="1" 
F 0 "R21" V 4643 5950 50  0000 C CNN
F 1 "1K" V 4734 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4780 5950 50  0001 C CNN
F 3 "~" H 4850 5950 50  0001 C CNN
	1    4850 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 62077833
P 5100 5700
AR Path="/5F5446F0/62077833" Ref="R22"  Part="1" 
AR Path="/5F5D80AF/62077833" Ref="R24"  Part="1" 
F 0 "R22" H 5030 5654 50  0000 R CNN
F 1 "100K" H 5030 5745 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 5030 5700 50  0001 C CNN
F 3 "~" H 5100 5700 50  0001 C CNN
	1    5100 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 5850 5100 5950
Wire Wire Line
	5100 5950 5200 5950
Wire Wire Line
	5100 5950 5000 5950
Connection ~ 5100 5950
$Comp
L power:GND #PWR?
U 1 1 6208D46B
P 4650 6000
AR Path="/6208D46B" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/6208D46B" Ref="#PWR059"  Part="1" 
AR Path="/5F5D80AF/6208D46B" Ref="#PWR062"  Part="1" 
F 0 "#PWR059" H 4650 5750 50  0001 C CNN
F 1 "GND" H 4655 5827 50  0000 C CNN
F 2 "" H 4650 6000 50  0001 C CNN
F 3 "" H 4650 6000 50  0001 C CNN
	1    4650 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4650 6000 4650 5950
Wire Wire Line
	4650 5950 4700 5950
$Comp
L power:+12V #PWR?
U 1 1 62097DE4
P 5100 5500
AR Path="/62097DE4" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/62097DE4" Ref="#PWR060"  Part="1" 
AR Path="/5F5D80AF/62097DE4" Ref="#PWR063"  Part="1" 
F 0 "#PWR060" H 5100 5350 50  0001 C CNN
F 1 "+12V" H 5115 5673 50  0000 C CNN
F 2 "" H 5100 5500 50  0001 C CNN
F 3 "" H 5100 5500 50  0001 C CNN
	1    5100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5500 5100 5550
Text Label 5950 6050 0    50   ~ 0
VINS
Wire Wire Line
	5950 6050 5800 6050
Text Notes 3700 5650 0    50   ~ 0
This comparator for VIN > 119mV\nallows operating at very low VIN
Wire Wire Line
	6300 3850 6300 4600
Text Label 6400 3850 0    50   ~ 0
VC
Text HLabel 2100 6550 2    50   Input ~ 0
OUT
Text HLabel 1050 6550 0    50   Input ~ 0
OUT
Text Label 4850 6150 0    50   ~ 0
IN_RAW
Text Label 1050 6450 2    50   ~ 0
IN_RAW
Text Label 2100 6450 0    50   ~ 0
IN_RAW
Wire Wire Line
	2100 7050 1900 7050
Wire Wire Line
	1200 7050 1050 7050
$Comp
L Amplifier_Operational:TL074 U2
U 3 1 5F585080
P 7250 3300
AR Path="/5F5446F0/5F585080" Ref="U2"  Part="3" 
AR Path="/5F5D80AF/5F585080" Ref="U7"  Part="1" 
F 0 "U2" H 7350 3150 50  0000 C CNN
F 1 "TL074" H 7200 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7200 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7300 3500 50  0001 C CNN
	3    7250 3300
	1    0    0    1   
$EndComp
$EndSCHEMATC
