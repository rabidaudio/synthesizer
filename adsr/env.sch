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
$Comp
L Device:C C?
U 1 1 5F585042
P 6300 4150
AR Path="/5F585042" Ref="C?"  Part="1" 
AR Path="/5F5446F0/5F585042" Ref="C1"  Part="1" 
AR Path="/5F5D80AF/5F585042" Ref="C3"  Part="1" 
F 0 "C1" H 6415 4196 50  0000 L CNN
F 1 "22u" H 6415 4105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 6338 4000 50  0001 C CNN
F 3 "~" H 6300 4150 50  0001 C CNN
	1    6300 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F585048
P 6300 4450
AR Path="/5F585048" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F585048" Ref="#PWR020"  Part="1" 
AR Path="/5F5D80AF/5F585048" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 6300 4200 50  0001 C CNN
F 1 "GND" H 6305 4277 50  0000 C CNN
F 2 "" H 6300 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4450 6300 4300
Wire Wire Line
	6300 4000 6300 3850
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
F 1 "12K" H 6070 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 5930 3400 50  0001 C CNN
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
F 0 "#PWR036" H 3900 3450 50  0001 C CNN
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
U 1 1 5F585080
P 7250 3950
AR Path="/5F5446F0/5F585080" Ref="U2"  Part="1" 
AR Path="/5F5D80AF/5F585080" Ref="U2"  Part="3" 
F 0 "U2" H 7350 3800 50  0000 C CNN
F 1 "TL074" H 7200 3950 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7200 4050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7300 4150 50  0001 C CNN
	1    7250 3950
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 2 1 5F585086
P 7250 3300
AR Path="/5F5446F0/5F585086" Ref="U2"  Part="2" 
AR Path="/5F5D80AF/5F585086" Ref="U2"  Part="4" 
F 0 "U2" H 7300 3150 50  0000 C CNN
F 1 "TL074" H 7200 3300 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7200 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7300 3500 50  0001 C CNN
	2    7250 3300
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
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6630 4500 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6630 4950 50  0001 C CNN
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
F 0 "#PWR040" H 6700 4950 50  0001 C CNN
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
P 5600 2500
AR Path="/5F5446F0/5F5850B6" Ref="U4"  Part="1" 
AR Path="/5F5D80AF/5F5850B6" Ref="U6"  Part="1" 
F 0 "U4" H 5600 2725 50  0000 C CNN
F 1 "DG403" H 5600 2634 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5600 1800 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 5600 2500 50  0001 C CNN
	1    5600 2500
	-1   0    0    -1  
$EndComp
$Comp
L synth:DG403 U4
U 2 1 5F5850BC
P 4800 2600
AR Path="/5F5446F0/5F5850BC" Ref="U4"  Part="2" 
AR Path="/5F5D80AF/5F5850BC" Ref="U6"  Part="2" 
F 0 "U4" H 4800 2825 50  0000 C CNN
F 1 "DG403" H 4800 2734 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4800 1900 50  0001 C CNN
F 3 "https://www.renesas.com/us/en/www/doc/datasheet/dg401-03.pdf" H 4800 2600 50  0001 C CNN
	2    4800 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 3250 6000 2700
Wire Wire Line
	6000 2600 5900 2600
Wire Wire Line
	5900 2700 6000 2700
Connection ~ 6000 2700
Wire Wire Line
	6000 2700 6000 2600
Wire Wire Line
	5100 2700 5200 2700
Wire Wire Line
	5100 2800 5200 2800
Wire Wire Line
	5200 2800 5200 2700
Connection ~ 5200 2700
Wire Wire Line
	5200 2700 5300 2700
$Comp
L Device:R_POT RV?
U 1 1 5F5850CC
P 5200 2050
AR Path="/5F5850CC" Ref="RV?"  Part="1" 
AR Path="/5F5446F0/5F5850CC" Ref="RV4"  Part="1" 
AR Path="/5F5D80AF/5F5850CC" Ref="RV8"  Part="1" 
F 0 "RV4" H 5131 2096 50  0000 R CNN
F 1 "R_RELEASE" H 5131 2005 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 2050 50  0001 C CNN
F 3 "~" H 5200 2050 50  0001 C CNN
	1    5200 2050
	1    0    0    -1  
$EndComp
Text Notes 5900 3600 1    50   ~ 0
Limit IABC to 2mA
$Comp
L power:+12V #PWR019
U 1 1 5F5850D3
P 5200 1700
AR Path="/5F5446F0/5F5850D3" Ref="#PWR019"  Part="1" 
AR Path="/5F5D80AF/5F5850D3" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 5200 1550 50  0001 C CNN
F 1 "+12V" H 5215 1873 50  0000 C CNN
F 2 "" H 5200 1700 50  0001 C CNN
F 3 "" H 5200 1700 50  0001 C CNN
	1    5200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2050 5450 2050
Wire Wire Line
	5450 2050 5450 1800
Wire Wire Line
	5450 1800 5200 1800
Wire Wire Line
	5200 1800 5200 1900
Wire Wire Line
	5200 1800 5200 1700
Connection ~ 5200 1800
Wire Wire Line
	5300 2500 5200 2500
Wire Wire Line
	5200 2500 5200 2200
$Comp
L Device:R_POT RV?
U 1 1 5F5850E1
P 4350 2050
AR Path="/5F5850E1" Ref="RV?"  Part="1" 
AR Path="/5F5446F0/5F5850E1" Ref="RV3"  Part="1" 
AR Path="/5F5D80AF/5F5850E1" Ref="RV7"  Part="1" 
F 0 "RV3" H 4281 2096 50  0000 R CNN
F 1 "R_ATTACK" H 4281 2005 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4350 2050 50  0001 C CNN
F 3 "~" H 4350 2050 50  0001 C CNN
	1    4350 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR018
U 1 1 5F5850E7
P 4350 1700
AR Path="/5F5446F0/5F5850E7" Ref="#PWR018"  Part="1" 
AR Path="/5F5D80AF/5F5850E7" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 4350 1550 50  0001 C CNN
F 1 "+12V" H 4365 1873 50  0000 C CNN
F 2 "" H 4350 1700 50  0001 C CNN
F 3 "" H 4350 1700 50  0001 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2050 4600 2050
Wire Wire Line
	4600 2050 4600 1800
Wire Wire Line
	4600 1800 4350 1800
Wire Wire Line
	4350 1800 4350 1900
Wire Wire Line
	4350 1800 4350 1700
Connection ~ 4350 1800
$Comp
L Device:R_POT RV?
U 1 1 5F5850F3
P 3750 2050
AR Path="/5F5850F3" Ref="RV?"  Part="1" 
AR Path="/5F5446F0/5F5850F3" Ref="RV2"  Part="1" 
AR Path="/5F5D80AF/5F5850F3" Ref="RV6"  Part="1" 
F 0 "RV2" H 3681 2096 50  0000 R CNN
F 1 "R_DECAY" H 3681 2005 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3750 2050 50  0001 C CNN
F 3 "~" H 3750 2050 50  0001 C CNN
	1    3750 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 5F5850F9
P 3750 1700
AR Path="/5F5446F0/5F5850F9" Ref="#PWR016"  Part="1" 
AR Path="/5F5D80AF/5F5850F9" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 3750 1550 50  0001 C CNN
F 1 "+12V" H 3765 1873 50  0000 C CNN
F 2 "" H 3750 1700 50  0001 C CNN
F 3 "" H 3750 1700 50  0001 C CNN
	1    3750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2050 4000 2050
Wire Wire Line
	4000 2050 4000 1800
Wire Wire Line
	4000 1800 3750 1800
Wire Wire Line
	3750 1800 3750 1900
Wire Wire Line
	3750 1800 3750 1700
Connection ~ 3750 1800
Wire Wire Line
	4500 2600 4350 2600
Wire Wire Line
	4350 2600 4350 2200
Wire Wire Line
	4500 2800 3750 2800
Wire Wire Line
	3750 2800 3750 2200
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
F 2 "Capacitor_THT:C_Rect_L10.0mm_W2.5mm_P7.50mm_MKS4" H 8288 4150 50  0001 C CNN
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
F 0 "#PWR043" H 8250 4300 50  0001 C CNN
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
F 2 "Diode_THT:D_A-405_P7.62mm_Horizontal" H 8700 4550 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 8080 5150 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7830 4900 50  0001 C CNN
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
F 0 "#PWR042" H 7900 5500 50  0001 C CNN
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
F 0 "#PWR044" H 8700 5200 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7430 5200 50  0001 C CNN
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
F 0 "#PWR041" H 7900 4500 50  0001 C CNN
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
	4300 4400 4400 4400
Wire Wire Line
	4400 4400 4400 4150
Wire Wire Line
	3600 4700 3700 4700
Wire Wire Line
	3700 4700 3700 4550
Wire Wire Line
	4800 3200 4800 3100
Wire Wire Line
	5400 3200 5600 3200
Wire Wire Line
	5600 3200 5600 3000
$Comp
L Device:R_POT RV?
U 1 1 5F585176
P 2650 4250
AR Path="/5F585176" Ref="RV?"  Part="1" 
AR Path="/5F5446F0/5F585176" Ref="RV1"  Part="1" 
AR Path="/5F5D80AF/5F585176" Ref="RV5"  Part="1" 
F 0 "RV1" H 2581 4296 50  0000 R CNN
F 1 "R_SUSTAIN" H 2581 4205 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 4250 50  0001 C CNN
F 3 "~" H 2650 4250 50  0001 C CNN
	1    2650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3950 2650 4000
Wire Wire Line
	2800 4250 3400 4250
$Comp
L power:GND #PWR?
U 1 1 5F585180
P 2650 4550
AR Path="/5F585180" Ref="#PWR?"  Part="1" 
AR Path="/5F5446F0/5F585180" Ref="#PWR015"  Part="1" 
AR Path="/5F5D80AF/5F585180" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 2650 4300 50  0001 C CNN
F 1 "GND" H 2655 4377 50  0000 C CNN
F 2 "" H 2650 4550 50  0001 C CNN
F 3 "" H 2650 4550 50  0001 C CNN
	1    2650 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2650 4550 2650 4400
Text Notes 3350 5300 0    50   ~ 0
State machine controlled by STATE and GATE:\nAttack - Vgate=5, Vref=Vin, Iabc controlled by Rattack\nDecay - Vgate=5, Vref=Vsustain, Iabc controlled by Rdecay\nRelease - Vgate=0, Vref=0, Iabc controlled by Rrelease\n
Text Notes 6700 2650 0    50   ~ 0
output buffer, gain=2 to make up\nfor the divide down on the input
Text Notes 3800 1350 0    50   ~ 0
Choice of C1 and R_POT control the slew rate\nLarge values for both mean a longer charge time,\nbut a large C1 effects the fastest charge time too,\nsince IABC has a max of 2mA\n\nC1=22u, R_POT=500K gives a 0-5V charge time\nrange of 70ms to 2.7s
Text HLabel 2500 3550 0    50   Input ~ 0
IN
Text HLabel 5400 3200 0    50   Input ~ 0
GATE
Text HLabel 4300 4400 0    50   Input ~ 0
GATE
Text HLabel 7400 4950 0    50   Input ~ 0
GATE
Text HLabel 7900 3300 2    50   Input ~ 0
OUT
Wire Wire Line
	7900 3300 7750 3300
Connection ~ 7750 3300
Wire Wire Line
	4700 3200 4800 3200
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
F 0 "#PWR045" H 10050 650 50  0001 C CNN
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
F 0 "#PWR048" H 10250 2100 50  0001 C CNN
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
F 0 "#PWR047" H 10250 650 50  0001 C CNN
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
F 0 "#PWR046" H 10050 1750 50  0001 C CNN
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
F 0 "#PWR049" H 10650 650 50  0001 C CNN
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
F 0 "#PWR052" H 10850 2100 50  0001 C CNN
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
F 0 "#PWR051" H 10850 650 50  0001 C CNN
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
F 0 "#PWR050" H 10650 1750 50  0001 C CNN
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
Text Label 4700 3200 2    50   ~ 0
STATE
Text Label 8900 4050 0    50   ~ 0
STATE
$Comp
L Device:R R?
U 1 1 5F267E8A
P 2650 3800
AR Path="/5F267E8A" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F267E8A" Ref="R13"  Part="1" 
AR Path="/5F5D80AF/5F267E8A" Ref="R14"  Part="1" 
F 0 "R13" H 2720 3846 50  0000 L CNN
F 1 "500K" H 2720 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 2580 3800 50  0001 C CNN
F 3 "~" H 2650 3800 50  0001 C CNN
	1    2650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3550 2650 3550
Wire Wire Line
	2650 3550 2650 3650
Text Label 2950 4000 0    50   ~ 0
REF
Text Label 6700 4300 0    50   ~ 0
REF
Text Notes 2500 3950 2    50   ~ 0
Scale VIN down by a factor of 2\nThis keeps the CV in the recommened\nmax operating conditions of the LM13700\nto a 5V differential
Wire Wire Line
	2800 4000 2650 4000
Connection ~ 2650 4000
Wire Wire Line
	2650 4000 2650 4100
Wire Wire Line
	2800 4050 2800 4000
Wire Wire Line
	2800 4050 3400 4050
Wire Wire Line
	2950 4000 2800 4000
Connection ~ 2800 4000
$Comp
L Device:R R?
U 1 1 5F27B506
P 6550 2900
AR Path="/5F27B506" Ref="R?"  Part="1" 
AR Path="/5F5446F0/5F27B506" Ref="R15"  Part="1" 
AR Path="/5F5D80AF/5F27B506" Ref="R17"  Part="1" 
F 0 "R15" H 6620 2946 50  0000 L CNN
F 1 "10K" H 6620 2855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 6480 2900 50  0001 C CNN
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
F 0 "#PWR054" H 6300 2750 50  0001 C CNN
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
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" V 7230 2900 50  0001 C CNN
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
$EndSCHEMATC
