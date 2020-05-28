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
L power:GND #PWR09
U 1 1 5ECA13B1
P 8100 2000
F 0 "#PWR09" H 8100 1750 50  0001 C CNN
F 1 "GND" H 8105 1827 50  0000 C CNN
F 2 "" H 8100 2000 50  0001 C CNN
F 3 "" H 8100 2000 50  0001 C CNN
	1    8100 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5ECB39F0
P 2950 2100
F 0 "R1" V 2743 2100 50  0000 C CNN
F 1 "100K" V 2834 2100 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2880 2100 50  0001 C CNN
F 3 "~" H 2950 2100 50  0001 C CNN
	1    2950 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5ECB414F
P 2950 2400
F 0 "R2" V 2743 2400 50  0000 C CNN
F 1 "100K" V 2834 2400 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2880 2400 50  0001 C CNN
F 3 "~" H 2950 2400 50  0001 C CNN
	1    2950 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5ECB8733
P 3250 2700
F 0 "#PWR05" H 3250 2450 50  0001 C CNN
F 1 "GND" H 3255 2527 50  0000 C CNN
F 2 "" H 3250 2700 50  0001 C CNN
F 3 "" H 3250 2700 50  0001 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2700 3250 2600
Wire Wire Line
	3250 2600 3350 2600
Wire Wire Line
	3100 2400 3150 2400
Wire Wire Line
	3100 2100 3150 2100
Wire Wire Line
	3150 2100 3150 2400
Connection ~ 3150 2400
Wire Wire Line
	3150 2400 3300 2400
Connection ~ 3300 2400
Wire Wire Line
	3300 2400 3350 2400
$Comp
L power:GND #PWR07
U 1 1 5ECD1341
P 5500 3250
F 0 "#PWR07" H 5500 3000 50  0001 C CNN
F 1 "GND" H 5505 3077 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3250 5500 3150
Wire Wire Line
	5500 3150 5600 3150
Wire Wire Line
	6350 2600 6350 3050
Wire Wire Line
	6350 3050 6200 3050
Wire Wire Line
	5450 2950 5550 2950
Wire Wire Line
	6150 2600 6350 2600
Wire Wire Line
	5850 2600 5550 2600
Wire Wire Line
	5550 2600 5550 2950
Connection ~ 5550 2950
Wire Wire Line
	5550 2950 5600 2950
$Comp
L Device:R R5
U 1 1 5ECD4025
P 6000 2600
F 0 "R5" V 6207 2600 50  0000 C CNN
F 1 "100K" V 6116 2600 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 5930 2600 50  0001 C CNN
F 3 "~" H 6000 2600 50  0001 C CNN
	1    6000 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5ECC6761
P 5300 2950
F 0 "R4" V 5507 2950 50  0000 C CNN
F 1 "100K" V 5416 2950 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 5230 2950 50  0001 C CNN
F 3 "~" H 5300 2950 50  0001 C CNN
	1    5300 2950
	0    -1   -1   0   
$EndComp
Text GLabel 2700 2100 0    50   Input ~ 0
AIN
Text GLabel 2700 2400 0    50   Input ~ 0
BIN
Text GLabel 5150 2500 2    50   Input ~ 0
~OUT
Text GLabel 6550 3050 2    50   Input ~ 0
OUT
Wire Wire Line
	6550 3050 6350 3050
Connection ~ 6350 3050
Wire Wire Line
	2800 2100 2700 2100
Wire Wire Line
	2800 2400 2700 2400
$Comp
L synth:AudioJack2_Ground_Switch J1
U 1 1 5EC96195
P 900 1150
F 0 "J1" H 932 1575 50  0000 C CNN
F 1 "AIN" H 932 1484 50  0000 C CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 900 1350 50  0001 C CNN
F 3 "~" H 900 1350 50  0001 C CNN
	1    900  1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EC97FBA
P 900 1550
F 0 "#PWR01" H 900 1300 50  0001 C CNN
F 1 "GND" H 905 1377 50  0000 C CNN
F 2 "" H 900 1550 50  0001 C CNN
F 3 "" H 900 1550 50  0001 C CNN
	1    900  1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1550 900  1500
Wire Wire Line
	1100 950  1200 950 
Wire Wire Line
	1200 950  1200 1050
Wire Wire Line
	1200 1500 900  1500
Connection ~ 900  1500
Wire Wire Line
	900  1500 900  1450
Wire Wire Line
	1100 1050 1200 1050
Connection ~ 1200 1050
Wire Wire Line
	1200 1050 1200 1250
Wire Wire Line
	1100 1250 1200 1250
Connection ~ 1200 1250
Wire Wire Line
	1200 1250 1200 1500
Text GLabel 1450 1150 2    50   Input ~ 0
AIN
Wire Wire Line
	1450 1150 1100 1150
$Comp
L synth:AudioJack2_Ground_Switch J2
U 1 1 5EC9F2C7
P 900 2300
F 0 "J2" H 932 2725 50  0000 C CNN
F 1 "BIN" H 932 2634 50  0000 C CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 900 2500 50  0001 C CNN
F 3 "~" H 900 2500 50  0001 C CNN
	1    900  2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5EC9F2D1
P 900 2700
F 0 "#PWR02" H 900 2450 50  0001 C CNN
F 1 "GND" H 905 2527 50  0000 C CNN
F 2 "" H 900 2700 50  0001 C CNN
F 3 "" H 900 2700 50  0001 C CNN
	1    900  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2700 900  2650
Wire Wire Line
	1100 2100 1200 2100
Wire Wire Line
	1200 2100 1200 2200
Wire Wire Line
	1200 2650 900  2650
Connection ~ 900  2650
Wire Wire Line
	900  2650 900  2600
Wire Wire Line
	1100 2200 1200 2200
Connection ~ 1200 2200
Wire Wire Line
	1200 2200 1200 2400
Wire Wire Line
	1100 2400 1200 2400
Connection ~ 1200 2400
Wire Wire Line
	1200 2400 1200 2650
Text GLabel 1450 2300 2    50   Input ~ 0
BIN
Wire Wire Line
	1450 2300 1100 2300
$Comp
L synth:AudioJack2_Ground_Switch J3
U 1 1 5ECA298E
P 900 3400
F 0 "J3" H 932 3825 50  0000 C CNN
F 1 "GATE" H 932 3734 50  0000 C CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 900 3600 50  0001 C CNN
F 3 "~" H 900 3600 50  0001 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5ECA2998
P 900 3800
F 0 "#PWR03" H 900 3550 50  0001 C CNN
F 1 "GND" H 905 3627 50  0000 C CNN
F 2 "" H 900 3800 50  0001 C CNN
F 3 "" H 900 3800 50  0001 C CNN
	1    900  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3800 900  3750
Wire Wire Line
	1100 3200 1200 3200
Wire Wire Line
	1200 3750 900  3750
Connection ~ 900  3750
Wire Wire Line
	900  3750 900  3700
Text GLabel 1450 3400 2    50   Input ~ 0
GATE
Wire Wire Line
	1450 3400 1100 3400
$Comp
L synth:AudioJack2_Ground_Switch J5
U 1 1 5ECA5DD5
P 1250 5000
F 0 "J5" H 1070 5024 50  0000 R CNN
F 1 "~OUT" H 1070 4926 50  0000 R CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1250 5200 50  0001 C CNN
F 3 "~" H 1250 5200 50  0001 C CNN
	1    1250 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5ECA7FBB
P 1250 5450
F 0 "#PWR017" H 1250 5200 50  0001 C CNN
F 1 "GND" H 1255 5277 50  0000 C CNN
F 2 "" H 1250 5450 50  0001 C CNN
F 3 "" H 1250 5450 50  0001 C CNN
	1    1250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5450 1250 5350
Wire Wire Line
	1050 4800 950  4800
Wire Wire Line
	950  4800 950  4900
Wire Wire Line
	950  5350 1250 5350
Connection ~ 1250 5350
Wire Wire Line
	1250 5350 1250 5300
Wire Wire Line
	1050 4900 950  4900
Connection ~ 950  4900
Wire Wire Line
	950  4900 950  5350
Text GLabel 850  5000 0    50   Input ~ 0
~OUT
Wire Wire Line
	850  5000 1000 5000
$Comp
L synth:AudioJack2_Ground_Switch J6
U 1 1 5ECB6AB3
P 1300 6100
F 0 "J6" H 1120 6118 50  0000 R CNN
F 1 "OUT" H 1120 6027 50  0000 R CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 1300 6300 50  0001 C CNN
F 3 "~" H 1300 6300 50  0001 C CNN
	1    1300 6100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5ECB6ABD
P 1300 6550
F 0 "#PWR018" H 1300 6300 50  0001 C CNN
F 1 "GND" H 1305 6377 50  0000 C CNN
F 2 "" H 1300 6550 50  0001 C CNN
F 3 "" H 1300 6550 50  0001 C CNN
	1    1300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6550 1300 6450
Wire Wire Line
	1100 5900 1000 5900
Wire Wire Line
	1000 5900 1000 6000
Wire Wire Line
	1000 6450 1300 6450
Connection ~ 1300 6450
Wire Wire Line
	1300 6450 1300 6400
Wire Wire Line
	1100 6000 1000 6000
Connection ~ 1000 6000
Wire Wire Line
	1000 6000 1000 6450
Text GLabel 900  6100 0    50   Input ~ 0
OUT
Wire Wire Line
	900  6100 1050 6100
Wire Wire Line
	1350 3500 1100 3500
Text Notes 3400 2800 0    50   ~ 0
inverting sum
Text Notes 5950 3250 0    50   ~ 0
re-invert
Wire Wire Line
	1050 5100 1000 5100
Wire Wire Line
	1000 5100 1000 5000
Connection ~ 1000 5000
Wire Wire Line
	1000 5000 1050 5000
Wire Wire Line
	1100 6200 1050 6200
Wire Wire Line
	1050 6200 1050 6100
Connection ~ 1050 6100
Wire Wire Line
	1050 6100 1100 6100
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5ECD72AD
P 3650 2500
F 0 "U1" H 3800 2350 50  0000 C CNN
F 1 "TL072" H 3600 2500 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-8_W7.62mm" H 3650 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3650 2500 50  0001 C CNN
	1    3650 2500
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5ECD970A
P 5900 3050
F 0 "U1" H 5950 2900 50  0000 C CNN
F 1 "TL072" H 5850 3050 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-8_W7.62mm" H 5900 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5900 3050 50  0001 C CNN
	2    5900 3050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5ECDB893
P 10700 1850
F 0 "U1" H 10658 1896 50  0000 L CNN
F 1 "TL072" H 10658 1805 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-8_W7.62mm" H 10700 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10700 1850 50  0001 C CNN
	3    10700 1850
	1    0    0    -1  
$EndComp
Text Notes 3950 1650 2    50   ~ 0
gain 0-2\nideally 1 detent pot so it sits at g=1
Text Notes 3250 7600 0    50   ~ 0
This is a trick to only use the LED to show gate state\nif the GATE jack is used. When jack is unplugged,\nGATE_CONN is grounded, turning off the transistor.\nWhen jack is plugged, GATE_CONN floats, allowing\nthe gate to control the transistor. R10 gives an input\nimpedance of 100K, since LED is driven by power\nsupply. LED on current depends on GATE but maxes\nabout 4mA
$Comp
L 4xxx:4066 U2
U 1 1 5EE18756
P 4700 2500
F 0 "U2" H 4700 2327 50  0000 C CNN
F 1 "4066" H 4700 2236 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 4700 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2500 5050 2500
Wire Wire Line
	5050 2500 5050 2950
Wire Wire Line
	5050 2950 5150 2950
Text GLabel 4600 2050 0    50   Input ~ 0
GATE
Wire Wire Line
	5150 2500 5050 2500
Connection ~ 5050 2500
$Comp
L 4xxx:4066 U2
U 5 1 5EE7A259
P 10100 1900
F 0 "U2" H 10330 1946 50  0000 L CNN
F 1 "4066" H 10330 1855 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 10100 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 10100 1900 50  0001 C CNN
	5    10100 1900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317L_TO92 U3
U 1 1 5EE7E18F
P 9100 1050
F 0 "U3" H 9100 1292 50  0000 C CNN
F 1 "LM317L_TO92" H 9100 1201 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-220-3_Vertical" H 9100 1275 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs775k/snvs775k.pdf" H 9100 1050 50  0001 C CNN
	1    9100 1050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337L_TO92 U4
U 1 1 5EE7ED7D
P 9100 2750
F 0 "U4" H 9100 2601 50  0000 C CNN
F 1 "LM337L_TO92" H 9100 2510 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-220-3_Vertical" H 9100 2550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337l.pdf" H 9100 2750 50  0001 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EE7FBA2
P 9550 1300
F 0 "R6" H 9620 1346 50  0000 L CNN
F 1 "220" H 9620 1255 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9480 1300 50  0001 C CNN
F 3 "~" H 9550 1300 50  0001 C CNN
	1    9550 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EE7FF26
P 9550 1700
F 0 "R7" H 9620 1746 50  0000 L CNN
F 1 "1K5" H 9620 1655 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9480 1700 50  0001 C CNN
F 3 "~" H 9550 1700 50  0001 C CNN
	1    9550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5EE80442
P 9550 2100
F 0 "R8" H 9620 2146 50  0000 L CNN
F 1 "1K5" H 9620 2055 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9480 2100 50  0001 C CNN
F 3 "~" H 9550 2100 50  0001 C CNN
	1    9550 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5EE808CB
P 9550 2500
F 0 "R9" H 9620 2546 50  0000 L CNN
F 1 "220" H 9620 2455 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9480 2500 50  0001 C CNN
F 3 "~" H 9550 2500 50  0001 C CNN
	1    9550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2750 9550 2750
Wire Wire Line
	9550 2750 9550 2650
Wire Wire Line
	9550 2350 9550 2300
Wire Wire Line
	9550 1950 9550 1900
Wire Wire Line
	9550 1550 9550 1500
Wire Wire Line
	9550 1150 9550 1050
Wire Wire Line
	9550 1050 9400 1050
Wire Wire Line
	9100 1350 9100 1500
Wire Wire Line
	9100 1500 9550 1500
Connection ~ 9550 1500
Wire Wire Line
	9550 1500 9550 1450
Wire Wire Line
	9100 2450 9100 2300
Wire Wire Line
	9100 2300 9550 2300
Connection ~ 9550 2300
Wire Wire Line
	9550 2300 9550 2250
$Comp
L power:GND #PWR016
U 1 1 5EE97843
P 9350 2000
F 0 "#PWR016" H 9350 1750 50  0001 C CNN
F 1 "GND" H 9355 1827 50  0000 C CNN
F 2 "" H 9350 2000 50  0001 C CNN
F 3 "" H 9350 2000 50  0001 C CNN
	1    9350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2000 9350 1900
Wire Wire Line
	9350 1900 9550 1900
Connection ~ 9550 1900
Wire Wire Line
	9550 1900 9550 1850
Wire Wire Line
	10100 1400 10100 1050
Connection ~ 9550 1050
Wire Wire Line
	10100 2400 10100 2750
Wire Wire Line
	10100 2750 9550 2750
Connection ~ 9550 2750
Text Notes 8150 3600 0    50   ~ 0
The CD4066 has a max power supply voltage of 20V,\nso we step the 24V down to about 19.5 via regulators.\nIn theory we could hacky do this with 6 diodes instead.\n\nBy limiting TL072 to the same supply, we don’t risk over-volting\nthe 4066, because even at rail  outputs the 4066 is safe.
$Comp
L Device:R_POT RV1
U 1 1 5ECB664B
P 3750 1950
F 0 "RV1" V 3543 1950 50  0000 C CNN
F 1 "200K" V 3634 1950 50  0000 C CNN
F 2 "imciner2/KiCad-Libraries/modules/Connectors.pretty:CONN_2.54mm_1x03" H 3750 1950 50  0001 C CNN
F 3 "~" H 3750 1950 50  0001 C CNN
	1    3750 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1950 3300 2400
Wire Wire Line
	3300 1950 3500 1950
Wire Wire Line
	3750 2100 3750 2150
Wire Wire Line
	3750 2150 3500 2150
Wire Wire Line
	3500 2150 3500 1950
Connection ~ 3500 1950
Wire Wire Line
	3500 1950 3600 1950
Wire Wire Line
	3950 2500 4050 2500
Wire Wire Line
	3900 1950 4050 1950
Wire Wire Line
	4050 1950 4050 2500
Connection ~ 4050 2500
Wire Wire Line
	4050 2500 4400 2500
$Comp
L synth:EURORACK_CONN_10 J4
U 1 1 5ED02358
P 8450 1900
F 0 "J4" H 8150 2050 50  0000 L CNN
F 1 "EURORACK_CONN_10" V 8650 1550 50  0000 L CNN
F 2 "synth:EURORACK_10_IDC" H 7650 1650 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" V 8500 1950 50  0001 C CNN
	1    8450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2000 8100 1900
Wire Wire Line
	8100 1900 8150 1900
Wire Wire Line
	9550 1050 10100 1050
Connection ~ 10100 1050
Wire Wire Line
	1350 3150 1350 3500
$Comp
L power:+10V #PWR08
U 1 1 5ED7D7E1
P 9550 950
F 0 "#PWR08" H 9550 800 50  0001 C CNN
F 1 "+10V" H 9565 1123 50  0000 C CNN
F 2 "" H 9550 950 50  0001 C CNN
F 3 "" H 9550 950 50  0001 C CNN
	1    9550 950 
	1    0    0    -1  
$EndComp
$Comp
L power:-10V #PWR010
U 1 1 5ED7EA7C
P 9550 2850
F 0 "#PWR010" H 9550 2950 50  0001 C CNN
F 1 "-10V" H 9565 3023 50  0000 C CNN
F 2 "" H 9550 2850 50  0001 C CNN
F 3 "" H 9550 2850 50  0001 C CNN
	1    9550 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 2850 9550 2750
Wire Wire Line
	9550 950  9550 1050
Wire Wire Line
	8800 2750 8450 2750
Wire Wire Line
	8450 2250 8450 2750
Wire Wire Line
	8800 1050 8450 1050
Wire Wire Line
	8450 1050 8450 1550
Wire Wire Line
	10600 1550 10600 1050
Wire Wire Line
	10100 1050 10600 1050
Wire Wire Line
	10600 2150 10600 2750
Wire Wire Line
	10600 2750 10100 2750
Connection ~ 10100 2750
$Comp
L power:+10V #PWR04
U 1 1 5EDE8D2E
P 1350 3150
F 0 "#PWR04" H 1350 3000 50  0001 C CNN
F 1 "+10V" H 1365 3323 50  0000 C CNN
F 2 "" H 1350 3150 50  0001 C CNN
F 3 "" H 1350 3150 50  0001 C CNN
	1    1350 3150
	1    0    0    -1  
$EndComp
Text Notes 4600 2950 0    50   ~ 0
gate
$Comp
L Device:LED D1
U 1 1 5ECB63E0
P 2950 6250
F 0 "D1" V 2989 6133 50  0000 R CNN
F 1 "LED" V 2898 6133 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:LED-3MM-SQUARE-ANODE" H 2950 6250 50  0001 C CNN
F 3 "~" H 2950 6250 50  0001 C CNN
	1    2950 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 5ECB7499
P 2950 7150
F 0 "R11" H 3020 7196 50  0000 L CNN
F 1 "1K" H 3020 7105 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2880 7150 50  0001 C CNN
F 3 "~" H 2950 7150 50  0001 C CNN
	1    2950 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3200 1200 3750
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5ECC1DA3
P 2850 6700
F 0 "Q1" H 3040 6746 50  0000 L CNN
F 1 "2N3904" H 3040 6655 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Package_TO.pretty:TO-92_OffsetPin2" H 3050 6625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2850 6700 50  0001 L CNN
	1    2850 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5ECC2E81
P 2950 7400
F 0 "#PWR012" H 2950 7150 50  0001 C CNN
F 1 "GND" H 2955 7227 50  0000 C CNN
F 2 "" H 2950 7400 50  0001 C CNN
F 3 "" H 2950 7400 50  0001 C CNN
	1    2950 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7400 2950 7300
Text GLabel 1450 3300 2    50   Input ~ 0
GATE_CONN
Wire Wire Line
	1450 3300 1100 3300
Text GLabel 2450 6850 0    50   Input ~ 0
GATE_CONN
Wire Wire Line
	2950 7000 2950 6900
Text GLabel 2400 6150 0    50   Input ~ 0
GATE
$Comp
L power:+10V #PWR011
U 1 1 5ECF0203
P 2950 6000
F 0 "#PWR011" H 2950 5850 50  0001 C CNN
F 1 "+10V" H 2965 6173 50  0000 C CNN
F 2 "" H 2950 6000 50  0001 C CNN
F 3 "" H 2950 6000 50  0001 C CNN
	1    2950 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5ECF0A91
P 2500 6450
F 0 "R10" H 2570 6496 50  0000 L CNN
F 1 "100K" H 2570 6405 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 2430 6450 50  0001 C CNN
F 3 "~" H 2500 6450 50  0001 C CNN
	1    2500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 6850 2500 6850
Wire Wire Line
	2500 6850 2500 6700
Wire Wire Line
	2650 6700 2500 6700
Connection ~ 2500 6700
Wire Wire Line
	2500 6700 2500 6600
Wire Wire Line
	2950 6400 2950 6500
Wire Wire Line
	2950 6000 2950 6100
Wire Wire Line
	2400 6150 2500 6150
Wire Wire Line
	2500 6150 2500 6300
Wire Wire Line
	4600 2050 4700 2050
Wire Wire Line
	4700 2050 4700 2200
Text GLabel 4100 2700 2    50   Input ~ 0
STAGE1_OUT
Wire Wire Line
	4100 2700 4050 2700
Wire Wire Line
	4050 2700 4050 2500
Wire Wire Line
	7800 4650 7750 4650
Wire Wire Line
	8450 4650 8400 4650
Wire Wire Line
	8100 4300 8100 4350
Text GLabel 8100 4300 0    50   Input ~ 0
4066_12
Text GLabel 7750 4650 0    50   Input ~ 0
4066_11
Text GLabel 8450 4650 2    50   Input ~ 0
4066_10
$Comp
L 4xxx:4066 U2
U 4 1 5EE2A725
P 8100 4650
F 0 "U2" H 8100 4477 50  0000 C CNN
F 1 "4066" H 8100 4386 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 8100 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 8100 4650 50  0001 C CNN
	4    8100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4350 6550 4300
Wire Wire Line
	6900 4650 6850 4650
Text GLabel 6900 4650 2    50   Input ~ 0
4066_9
$Comp
L 4xxx:4066 U2
U 3 1 5EE292FA
P 6550 4650
F 0 "U2" H 6550 4477 50  0000 C CNN
F 1 "4066" H 6550 4386 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 6550 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 6550 4650 50  0001 C CNN
	3    6550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5650 10200 5650
Wire Wire Line
	10250 5750 10200 5750
Wire Wire Line
	10200 5850 10250 5850
Wire Wire Line
	10250 5950 10200 5950
Wire Wire Line
	10200 6050 10250 6050
Wire Wire Line
	9400 5950 9450 5950
Wire Wire Line
	9450 5850 9400 5850
Wire Wire Line
	9400 5750 9450 5750
Wire Wire Line
	9450 5650 9400 5650
Text Notes 8750 6300 0    50   ~ 0
Because we are sharing the 4066 across 4 duplicate PCBs,\nwe have to expose some connectors for the other switches
Text GLabel 9450 5650 2    50   Input ~ 0
4066_3
Text GLabel 9450 5750 2    50   Input ~ 0
4066_4
Text GLabel 9450 5850 2    50   Input ~ 0
4066_5
Text GLabel 9450 5950 2    50   Input ~ 0
4066_6
Text GLabel 10200 5650 0    50   Input ~ 0
4066_12
Text GLabel 10200 5750 0    50   Input ~ 0
4066_11
Text GLabel 10200 5850 0    50   Input ~ 0
4066_10
Text GLabel 10200 5950 0    50   Input ~ 0
4066_9
Text GLabel 10200 6050 0    50   Input ~ 0
4066_8
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 5EE2E54C
P 9200 5750
F 0 "J7" H 9118 6067 50  0000 C CNN
F 1 "Conn_01x04" H 9118 5976 50  0000 C CNN
F 2 "imciner2/KiCad-Libraries/modules/Connectors.pretty:CONN_2.54mm_1x05" H 9200 5750 50  0001 C CNN
F 3 "~" H 9200 5750 50  0001 C CNN
	1    9200 5750
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J8
U 1 1 5EE2F88B
P 10450 5850
F 0 "J8" H 10530 5892 50  0000 L CNN
F 1 "Conn_01x05" H 10530 5801 50  0000 L CNN
F 2 "imciner2/KiCad-Libraries/modules/Connectors.pretty:CONN_2.54mm_1x05" H 10450 5850 50  0001 C CNN
F 3 "~" H 10450 5850 50  0001 C CNN
	1    10450 5850
	1    0    0    -1  
$EndComp
Text GLabel 6550 4300 0    50   Input ~ 0
4066_6
Wire Wire Line
	6250 4650 6200 4650
Text GLabel 6200 4650 0    50   Input ~ 0
4066_8
$Comp
L Jumper:Jumper_2_Open JP1
U 1 1 5ECEE0F2
P 5050 5350
F 0 "JP1" H 5050 5585 50  0000 C CNN
F 1 "Jumper_2_Open" H 5050 5494 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 5050 5350 50  0001 C CNN
F 3 "~" H 5050 5350 50  0001 C CNN
	1    5050 5350
	1    0    0    -1  
$EndComp
Text GLabel 4750 5350 0    50   Input ~ 0
STAGE1_OUT
Wire Wire Line
	5050 4350 5050 4300
Wire Wire Line
	5400 4650 5350 4650
Text GLabel 5050 4300 0    50   Input ~ 0
4066_5
Text GLabel 5350 5350 2    50   Input ~ 0
4066_4
Text GLabel 5400 4650 2    50   Input ~ 0
4066_3
$Comp
L 4xxx:4066 U2
U 2 1 5EE28600
P 5050 4650
F 0 "U2" H 5050 4477 50  0000 C CNN
F 1 "4066" H 5050 4386 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 5050 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5050 4650 50  0001 C CNN
	2    5050 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR06
U 1 1 5ED02095
P 7300 950
F 0 "#PWR06" H 7300 800 50  0001 C CNN
F 1 "+10V" H 7315 1123 50  0000 C CNN
F 2 "" H 7300 950 50  0001 C CNN
F 3 "" H 7300 950 50  0001 C CNN
	1    7300 950 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5ED0123A
P 7000 1150
F 0 "J9" H 7108 1431 50  0000 C CNN
F 1 "Conn_01x03_Male" H 7108 1340 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Pin_Header_Straight_1x03" H 7000 1150 50  0001 C CNN
F 3 "~" H 7000 1150 50  0001 C CNN
	1    7000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5ED0287B
P 7400 1200
F 0 "#PWR014" H 7400 950 50  0001 C CNN
F 1 "GND" H 7405 1027 50  0000 C CNN
F 2 "" H 7400 1200 50  0001 C CNN
F 3 "" H 7400 1200 50  0001 C CNN
	1    7400 1200
	1    0    0    -1  
$EndComp
$Comp
L power:-10V #PWR013
U 1 1 5ED03255
P 7300 1350
F 0 "#PWR013" H 7300 1450 50  0001 C CNN
F 1 "-10V" H 7315 1523 50  0000 C CNN
F 2 "" H 7300 1350 50  0001 C CNN
F 3 "" H 7300 1350 50  0001 C CNN
	1    7300 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 1350 7300 1250
Wire Wire Line
	7300 1250 7200 1250
Wire Wire Line
	7400 1200 7400 1150
Wire Wire Line
	7400 1150 7200 1150
Wire Wire Line
	7300 950  7300 1050
Wire Wire Line
	7300 1050 7200 1050
Wire Wire Line
	4650 4650 4750 4650
Text GLabel 4750 5600 0    50   Input ~ 0
STAGE1_OUT
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 5EDBF2F5
P 5050 5600
F 0 "JP2" H 5050 5835 50  0000 C CNN
F 1 "Jumper_2_Open" H 5050 5744 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 5050 5600 50  0001 C CNN
F 3 "~" H 5050 5600 50  0001 C CNN
	1    5050 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP3
U 1 1 5EDBF7BA
P 5050 5800
F 0 "JP3" H 5050 6035 50  0000 C CNN
F 1 "Jumper_2_Open" H 5050 5944 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 5050 5800 50  0001 C CNN
F 3 "~" H 5050 5800 50  0001 C CNN
	1    5050 5800
	1    0    0    -1  
$EndComp
Text GLabel 4750 5800 0    50   Input ~ 0
STAGE1_OUT
Text GLabel 4650 4650 0    50   Input ~ 0
4066_4
Text GLabel 5350 5600 2    50   Input ~ 0
4066_8
Text GLabel 5350 5800 2    50   Input ~ 0
4066_11
$Comp
L Jumper:Jumper_2_Open JP4
U 1 1 5EE1358E
P 6550 5350
F 0 "JP4" H 6550 5585 50  0000 C CNN
F 1 "Jumper_2_Open" H 6550 5494 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 6550 5350 50  0001 C CNN
F 3 "~" H 6550 5350 50  0001 C CNN
	1    6550 5350
	1    0    0    -1  
$EndComp
Text GLabel 6250 5350 0    50   Input ~ 0
GATE
Text GLabel 6850 5350 2    50   Input ~ 0
4066_5
Text GLabel 6250 5600 0    50   Input ~ 0
GATE
$Comp
L Jumper:Jumper_2_Open JP5
U 1 1 5EE1359B
P 6550 5600
F 0 "JP5" H 6550 5835 50  0000 C CNN
F 1 "Jumper_2_Open" H 6550 5744 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 6550 5600 50  0001 C CNN
F 3 "~" H 6550 5600 50  0001 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP6
U 1 1 5EE135A5
P 6550 5800
F 0 "JP6" H 6550 6035 50  0000 C CNN
F 1 "Jumper_2_Open" H 6550 5944 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 6550 5800 50  0001 C CNN
F 3 "~" H 6550 5800 50  0001 C CNN
	1    6550 5800
	1    0    0    -1  
$EndComp
Text GLabel 6250 5800 0    50   Input ~ 0
GATE
Text GLabel 6850 5600 2    50   Input ~ 0
4066_6
Text GLabel 6850 5800 2    50   Input ~ 0
4066_12
$Comp
L Jumper:Jumper_2_Open JP7
U 1 1 5EE23EF9
P 8100 5350
F 0 "JP7" H 8100 5585 50  0000 C CNN
F 1 "Jumper_2_Open" H 8100 5494 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 8100 5350 50  0001 C CNN
F 3 "~" H 8100 5350 50  0001 C CNN
	1    8100 5350
	1    0    0    -1  
$EndComp
Text GLabel 7800 5350 0    50   Input ~ 0
~OUT
Text GLabel 8400 5350 2    50   Input ~ 0
4066_3
Text GLabel 7800 5600 0    50   Input ~ 0
~OUT
$Comp
L Jumper:Jumper_2_Open JP8
U 1 1 5EE23F06
P 8100 5600
F 0 "JP8" H 8100 5835 50  0000 C CNN
F 1 "Jumper_2_Open" H 8100 5744 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 8100 5600 50  0001 C CNN
F 3 "~" H 8100 5600 50  0001 C CNN
	1    8100 5600
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP9
U 1 1 5EE23F10
P 8100 5800
F 0 "JP9" H 8100 6035 50  0000 C CNN
F 1 "Jumper_2_Open" H 8100 5944 50  0000 C CNN
F 2 "fruchti/fruchtilib/mod/rcl.pretty:SOLDER_JUMPER_0603_B" H 8100 5800 50  0001 C CNN
F 3 "~" H 8100 5800 50  0001 C CNN
	1    8100 5800
	1    0    0    -1  
$EndComp
Text GLabel 7800 5800 0    50   Input ~ 0
~OUT
Text GLabel 8400 5600 2    50   Input ~ 0
4066_9
Text GLabel 8400 5800 2    50   Input ~ 0
4066_10
Wire Wire Line
	4750 5350 4850 5350
Wire Wire Line
	4750 5600 4850 5600
Wire Wire Line
	4850 5800 4750 5800
Wire Wire Line
	5250 5800 5350 5800
Wire Wire Line
	5350 5600 5250 5600
Wire Wire Line
	5250 5350 5350 5350
Wire Wire Line
	6250 5350 6350 5350
Wire Wire Line
	6350 5600 6250 5600
Wire Wire Line
	6250 5800 6350 5800
Wire Wire Line
	6750 5350 6850 5350
Wire Wire Line
	6850 5600 6750 5600
Wire Wire Line
	6750 5800 6850 5800
Wire Wire Line
	7900 5350 7800 5350
Wire Wire Line
	7800 5600 7900 5600
Wire Wire Line
	7900 5800 7800 5800
Wire Wire Line
	8300 5800 8400 5800
Wire Wire Line
	8400 5600 8300 5600
Wire Wire Line
	8300 5350 8400 5350
$EndSCHEMATC
