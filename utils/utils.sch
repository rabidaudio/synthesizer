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
L power:+12V #PWR010
U 1 1 5ECA049A
P 8100 1300
F 0 "#PWR010" H 8100 1150 50  0001 C CNN
F 1 "+12V" H 8115 1473 50  0000 C CNN
F 2 "" H 8100 1300 50  0001 C CNN
F 3 "" H 8100 1300 50  0001 C CNN
	1    8100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR011
U 1 1 5ECA0BEB
P 8100 2100
F 0 "#PWR011" H 8100 2200 50  0001 C CNN
F 1 "-12V" H 8115 2273 50  0000 C CNN
F 2 "" H 8100 2100 50  0001 C CNN
F 3 "" H 8100 2100 50  0001 C CNN
	1    8100 2100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5ECA13B1
P 7750 2100
F 0 "#PWR09" H 7750 1850 50  0001 C CNN
F 1 "GND" H 7755 1927 50  0000 C CNN
F 2 "" H 7750 2100 50  0001 C CNN
F 3 "" H 7750 2100 50  0001 C CNN
	1    7750 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR012
U 1 1 5ECA2564
P 8650 1300
F 0 "#PWR012" H 8650 1150 50  0001 C CNN
F 1 "+12V" H 8665 1473 50  0000 C CNN
F 2 "" H 8650 1300 50  0001 C CNN
F 3 "" H 8650 1300 50  0001 C CNN
	1    8650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR013
U 1 1 5ECA620E
P 8650 2100
F 0 "#PWR013" H 8650 2200 50  0001 C CNN
F 1 "-12V" H 8665 2273 50  0000 C CNN
F 2 "" H 8650 2100 50  0001 C CNN
F 3 "" H 8650 2100 50  0001 C CNN
	1    8650 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5ECB39F0
P 3700 3850
F 0 "R1" V 3493 3850 50  0000 C CNN
F 1 "100K" V 3584 3850 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 3630 3850 50  0001 C CNN
F 3 "~" H 3700 3850 50  0001 C CNN
	1    3700 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5ECB414F
P 3700 4150
F 0 "R2" V 3493 4150 50  0000 C CNN
F 1 "100K" V 3584 4150 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 3630 4150 50  0001 C CNN
F 3 "~" H 3700 4150 50  0001 C CNN
	1    3700 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5ECB8733
P 4000 4450
F 0 "#PWR05" H 4000 4200 50  0001 C CNN
F 1 "GND" H 4005 4277 50  0000 C CNN
F 2 "" H 4000 4450 50  0001 C CNN
F 3 "" H 4000 4450 50  0001 C CNN
	1    4000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4450 4000 4350
Wire Wire Line
	4000 4350 4100 4350
Wire Wire Line
	3850 4150 3900 4150
Wire Wire Line
	3850 3850 3900 3850
Wire Wire Line
	3900 3850 3900 4150
Connection ~ 3900 4150
Wire Wire Line
	3900 4150 4050 4150
Connection ~ 4050 4150
Wire Wire Line
	4050 4150 4100 4150
$Comp
L power:GND #PWR07
U 1 1 5ECD1341
P 6250 5000
F 0 "#PWR07" H 6250 4750 50  0001 C CNN
F 1 "GND" H 6255 4827 50  0000 C CNN
F 2 "" H 6250 5000 50  0001 C CNN
F 3 "" H 6250 5000 50  0001 C CNN
	1    6250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5000 6250 4900
Wire Wire Line
	6250 4900 6350 4900
Wire Wire Line
	7100 4350 7100 4800
Wire Wire Line
	7100 4800 6950 4800
Wire Wire Line
	6200 4700 6300 4700
Wire Wire Line
	6900 4350 7100 4350
Wire Wire Line
	6600 4350 6300 4350
Wire Wire Line
	6300 4350 6300 4700
Connection ~ 6300 4700
Wire Wire Line
	6300 4700 6350 4700
$Comp
L Device:R R5
U 1 1 5ECD4025
P 6750 4350
F 0 "R5" V 6957 4350 50  0000 C CNN
F 1 "100K" V 6866 4350 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 6680 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5ECC6761
P 6050 4700
F 0 "R4" V 6257 4700 50  0000 C CNN
F 1 "100K" V 6166 4700 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 5980 4700 50  0001 C CNN
F 3 "~" H 6050 4700 50  0001 C CNN
	1    6050 4700
	0    -1   -1   0   
$EndComp
Text GLabel 3450 3850 0    50   Input ~ 0
AIN
Text GLabel 3450 4150 0    50   Input ~ 0
BIN
Text GLabel 5900 4250 2    50   Input ~ 0
~OUT
Text GLabel 7300 4800 2    50   Input ~ 0
OUT
Wire Wire Line
	7300 4800 7100 4800
Connection ~ 7100 4800
Wire Wire Line
	3550 3850 3450 3850
Wire Wire Line
	3550 4150 3450 4150
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
	1200 3200 1200 3300
Wire Wire Line
	1200 3750 900  3750
Connection ~ 900  3750
Wire Wire Line
	900  3750 900  3700
Wire Wire Line
	1100 3300 1200 3300
Connection ~ 1200 3300
Text GLabel 1450 3400 2    50   Input ~ 0
GATE
Wire Wire Line
	1450 3400 1100 3400
$Comp
L synth:AudioJack2_Ground_Switch J5
U 1 1 5ECA5DD5
P 10600 4200
F 0 "J5" H 10420 4224 50  0000 R CNN
F 1 "~OUT" H 10420 4126 50  0000 R CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 10600 4400 50  0001 C CNN
F 3 "~" H 10600 4400 50  0001 C CNN
	1    10600 4200
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5ECA7FBB
P 10600 4650
F 0 "#PWR017" H 10600 4400 50  0001 C CNN
F 1 "GND" H 10605 4477 50  0000 C CNN
F 2 "" H 10600 4650 50  0001 C CNN
F 3 "" H 10600 4650 50  0001 C CNN
	1    10600 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 4650 10600 4550
Wire Wire Line
	10400 4000 10300 4000
Wire Wire Line
	10300 4000 10300 4100
Wire Wire Line
	10300 4550 10600 4550
Connection ~ 10600 4550
Wire Wire Line
	10600 4550 10600 4500
Wire Wire Line
	10400 4100 10300 4100
Connection ~ 10300 4100
Wire Wire Line
	10300 4100 10300 4550
Text GLabel 10200 4200 0    50   Input ~ 0
~OUT
Wire Wire Line
	10200 4200 10350 4200
$Comp
L synth:AudioJack2_Ground_Switch J6
U 1 1 5ECB6AB3
P 10650 5300
F 0 "J6" H 10470 5318 50  0000 R CNN
F 1 "OUT" H 10470 5227 50  0000 R CNN
F 2 "synth:Jack_3.5mm_Ledino_KB3SPRS_Horizontal" H 10650 5500 50  0001 C CNN
F 3 "~" H 10650 5500 50  0001 C CNN
	1    10650 5300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5ECB6ABD
P 10650 5750
F 0 "#PWR018" H 10650 5500 50  0001 C CNN
F 1 "GND" H 10655 5577 50  0000 C CNN
F 2 "" H 10650 5750 50  0001 C CNN
F 3 "" H 10650 5750 50  0001 C CNN
	1    10650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5750 10650 5650
Wire Wire Line
	10450 5100 10350 5100
Wire Wire Line
	10350 5100 10350 5200
Wire Wire Line
	10350 5650 10650 5650
Connection ~ 10650 5650
Wire Wire Line
	10650 5650 10650 5600
Wire Wire Line
	10450 5200 10350 5200
Connection ~ 10350 5200
Wire Wire Line
	10350 5200 10350 5650
Text GLabel 10250 5300 0    50   Input ~ 0
OUT
Wire Wire Line
	10250 5300 10400 5300
Wire Wire Line
	1200 3300 1200 3750
$Comp
L power:+5V #PWR08
U 1 1 5ECDDDF2
P 7750 1300
F 0 "#PWR08" H 7750 1150 50  0001 C CNN
F 1 "+5V" H 7765 1473 50  0000 C CNN
F 2 "" H 7750 1300 50  0001 C CNN
F 3 "" H 7750 1300 50  0001 C CNN
	1    7750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5ECE0C8E
P 1350 3200
F 0 "#PWR04" H 1350 3050 50  0001 C CNN
F 1 "+5V" H 1365 3373 50  0000 C CNN
F 2 "" H 1350 3200 50  0001 C CNN
F 3 "" H 1350 3200 50  0001 C CNN
	1    1350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3200 1350 3500
Wire Wire Line
	1350 3500 1100 3500
Text Notes 4150 4550 0    50   ~ 0
inverting sum
Text Notes 6700 5000 0    50   ~ 0
re-invert
$Comp
L synth:EURORACK_CONN_16 J4
U 1 1 5EC9CC05
P 8150 1650
F 0 "J4" H 7550 1800 50  0000 L CNN
F 1 "EURORACK_CONN_16" H 7500 1600 50  0000 L CNN
F 2 "synth:EURORACK_16_IDC" V 8200 1700 50  0001 C CNN
F 3 "https://division-6.com/learn/eurorack-power/" V 8200 1700 50  0001 C CNN
	1    8150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4300 10350 4300
Wire Wire Line
	10350 4300 10350 4200
Connection ~ 10350 4200
Wire Wire Line
	10350 4200 10400 4200
Wire Wire Line
	10450 5400 10400 5400
Wire Wire Line
	10400 5400 10400 5300
Connection ~ 10400 5300
Wire Wire Line
	10400 5300 10450 5300
Wire Wire Line
	8650 1300 8650 1400
Wire Wire Line
	8650 2100 8650 2000
Wire Wire Line
	8100 1300 8100 1400
Wire Wire Line
	8100 2100 8100 2000
Wire Wire Line
	7750 2100 7750 2000
Wire Wire Line
	7750 1300 7750 1400
$Comp
L Amplifier_Operational:TL072 U1
U 1 1 5ECD72AD
P 4400 4250
F 0 "U1" H 4550 4100 50  0000 C CNN
F 1 "TL072" H 4350 4250 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-8_W7.62mm" H 4400 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4400 4250 50  0001 C CNN
	1    4400 4250
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 5ECD970A
P 6650 4800
F 0 "U1" H 6700 4650 50  0000 C CNN
F 1 "TL072" H 6600 4800 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-8_W7.62mm" H 6650 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6650 4800 50  0001 C CNN
	2    6650 4800
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 5ECDB893
P 8750 1700
F 0 "U1" H 8708 1746 50  0000 L CNN
F 1 "TL072" H 8708 1655 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-8_W7.62mm" H 8750 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8750 1700 50  0001 C CNN
	3    8750 1700
	1    0    0    -1  
$EndComp
Text Notes 4850 3350 2    50   ~ 0
gain 0-2\nideally 1 detent pot so it sits at g=1
Text Notes 7900 3450 2    50   ~ 0
Considered an LED here, but most require 20mA\nwhich is a serious bite out of the power supply
$Comp
L 4xxx:4066 U2
U 1 1 5EE18756
P 5450 4250
F 0 "U2" H 5450 4077 50  0000 C CNN
F 1 "4066" H 5450 3986 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 5450 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 5450 4250 50  0001 C CNN
	1    5450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4250 5800 4250
Wire Wire Line
	5800 4250 5800 4700
Wire Wire Line
	5800 4700 5900 4700
$Comp
L Device:R R3
U 1 1 5EE4AAAD
P 5850 3600
F 0 "R3" V 6057 3600 50  0000 C CNN
F 1 "100K" V 5966 3600 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 5780 3600 50  0001 C CNN
F 3 "~" H 5850 3600 50  0001 C CNN
	1    5850 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5EE4B885
P 5850 3850
F 0 "#PWR06" H 5850 3600 50  0001 C CNN
F 1 "GND" H 5855 3677 50  0000 C CNN
F 2 "" H 5850 3850 50  0001 C CNN
F 3 "" H 5850 3850 50  0001 C CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3850 5850 3750
Wire Wire Line
	5450 3950 5450 3350
Wire Wire Line
	5450 3350 5850 3350
Wire Wire Line
	5850 3350 5850 3450
Text GLabel 5700 3050 0    50   Input ~ 0
GATE
Wire Wire Line
	5700 3050 5850 3050
Wire Wire Line
	5850 3050 5850 3350
Connection ~ 5850 3350
Wire Wire Line
	5900 4250 5800 4250
Connection ~ 5800 4250
$Comp
L 4xxx:4066 U2
U 5 1 5EE7A259
P 10550 1750
F 0 "U2" H 10780 1796 50  0000 L CNN
F 1 "4066" H 10780 1705 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_DIP.pretty:DIP-14_W7.62mm" H 10550 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 10550 1750 50  0001 C CNN
	5    10550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR014
U 1 1 5EE7CCCD
P 9150 800
F 0 "#PWR014" H 9150 650 50  0001 C CNN
F 1 "+12V" H 9165 973 50  0000 C CNN
F 2 "" H 9150 800 50  0001 C CNN
F 3 "" H 9150 800 50  0001 C CNN
	1    9150 800 
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR015
U 1 1 5EE7D531
P 9150 2700
F 0 "#PWR015" H 9150 2800 50  0001 C CNN
F 1 "-12V" H 9165 2873 50  0000 C CNN
F 2 "" H 9150 2700 50  0001 C CNN
F 3 "" H 9150 2700 50  0001 C CNN
	1    9150 2700
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:LM317L_TO92 U3
U 1 1 5EE7E18F
P 9550 900
F 0 "U3" H 9550 1142 50  0000 C CNN
F 1 "LM317L_TO92" H 9550 1051 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-220-3_Vertical" H 9550 1125 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/snvs775k/snvs775k.pdf" H 9550 900 50  0001 C CNN
	1    9550 900 
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337L_TO92 U4
U 1 1 5EE7ED7D
P 9550 2600
F 0 "U4" H 9550 2451 50  0000 C CNN
F 1 "LM337L_TO92" H 9550 2360 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-220-3_Vertical" H 9550 2400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337l.pdf" H 9550 2600 50  0001 C CNN
	1    9550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5EE7FBA2
P 10000 1150
F 0 "R6" H 10070 1196 50  0000 L CNN
F 1 "220" H 10070 1105 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9930 1150 50  0001 C CNN
F 3 "~" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5EE7FF26
P 10000 1550
F 0 "R7" H 10070 1596 50  0000 L CNN
F 1 "1K5" H 10070 1505 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9930 1550 50  0001 C CNN
F 3 "~" H 10000 1550 50  0001 C CNN
	1    10000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5EE80442
P 10000 1950
F 0 "R8" H 10070 1996 50  0000 L CNN
F 1 "1K5" H 10070 1905 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9930 1950 50  0001 C CNN
F 3 "~" H 10000 1950 50  0001 C CNN
	1    10000 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5EE808CB
P 10000 2350
F 0 "R9" H 10070 2396 50  0000 L CNN
F 1 "220" H 10070 2305 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9930 2350 50  0001 C CNN
F 3 "~" H 10000 2350 50  0001 C CNN
	1    10000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2600 10000 2600
Wire Wire Line
	10000 2600 10000 2500
Wire Wire Line
	10000 2200 10000 2150
Wire Wire Line
	10000 1800 10000 1750
Wire Wire Line
	10000 1400 10000 1350
Wire Wire Line
	10000 1000 10000 900 
Wire Wire Line
	10000 900  9850 900 
Wire Wire Line
	9550 1200 9550 1350
Wire Wire Line
	9550 1350 10000 1350
Connection ~ 10000 1350
Wire Wire Line
	10000 1350 10000 1300
Wire Wire Line
	9550 2300 9550 2150
Wire Wire Line
	9550 2150 10000 2150
Connection ~ 10000 2150
Wire Wire Line
	10000 2150 10000 2100
$Comp
L power:GND #PWR016
U 1 1 5EE97843
P 9800 1850
F 0 "#PWR016" H 9800 1600 50  0001 C CNN
F 1 "GND" H 9805 1677 50  0000 C CNN
F 2 "" H 9800 1850 50  0001 C CNN
F 3 "" H 9800 1850 50  0001 C CNN
	1    9800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1850 9800 1750
Wire Wire Line
	9800 1750 10000 1750
Connection ~ 10000 1750
Wire Wire Line
	10000 1750 10000 1700
Wire Wire Line
	9150 800  9150 900 
Wire Wire Line
	9150 900  9250 900 
Wire Wire Line
	9150 2700 9150 2600
Wire Wire Line
	9150 2600 9250 2600
Wire Wire Line
	10550 1250 10550 900 
Wire Wire Line
	10550 900  10000 900 
Connection ~ 10000 900 
Wire Wire Line
	10550 2250 10550 2600
Wire Wire Line
	10550 2600 10000 2600
Connection ~ 10000 2600
Text Notes 9050 3200 0    50   ~ 0
The CD4066 has a max power supply voltage of 20V,\nso we step the 24V down to about 19.5 via regulators.\nIn theory we could hacky do this with 6 diodes instead
$Comp
L Device:R_POT RV1
U 1 1 5ECB664B
P 4500 3700
F 0 "RV1" V 4293 3700 50  0000 C CNN
F 1 "200K" V 4384 3700 50  0000 C CNN
F 2 "rdeterre/misc.pretty:Potentiometer_Bourns_PDB182-K_Dual" H 4500 3700 50  0001 C CNN
F 3 "~" H 4500 3700 50  0001 C CNN
	1    4500 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3700 4050 4150
Wire Wire Line
	4050 3700 4250 3700
Wire Wire Line
	4500 3850 4500 3900
Wire Wire Line
	4500 3900 4250 3900
Wire Wire Line
	4250 3900 4250 3700
Connection ~ 4250 3700
Wire Wire Line
	4250 3700 4350 3700
Wire Wire Line
	4700 4250 4800 4250
Wire Wire Line
	4650 3700 4800 3700
Wire Wire Line
	4800 3700 4800 4250
Connection ~ 4800 4250
Wire Wire Line
	4800 4250 5150 4250
$EndSCHEMATC
