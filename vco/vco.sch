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
L Amplifier_Operational:LM13700 U?
U 1 1 5EC5CE80
P 1300 1550
F 0 "U?" H 1300 1917 50  0000 C CNN
F 1 "LM13700" H 1300 1826 50  0000 C CNN
F 2 "" H 1000 1575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 1000 1575 50  0001 C CNN
	1    1300 1550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM13700 U?
U 5 1 5EC5DDDC
P 10300 1100
F 0 "U?" H 10258 1146 50  0000 L CNN
F 1 "LM13700" H 10258 1055 50  0000 L CNN
F 2 "" H 10000 1125 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm13700.pdf" H 10000 1125 50  0001 C CNN
	5    10300 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EC5F370
P 1900 1750
F 0 "C?" H 2015 1796 50  0000 L CNN
F 1 "4.7n" H 2015 1705 50  0000 L CNN
F 2 "" H 1938 1600 50  0001 C CNN
F 3 "~" H 1900 1750 50  0001 C CNN
	1    1900 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC5FE26
P 1900 1950
F 0 "#PWR?" H 1900 1700 50  0001 C CNN
F 1 "GND" H 1905 1777 50  0000 C CNN
F 2 "" H 1900 1950 50  0001 C CNN
F 3 "" H 1900 1950 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1650 1000 1650
$Comp
L power:-12V #PWR?
U 1 1 5EC69D7B
P 10200 1500
F 0 "#PWR?" H 10200 1600 50  0001 C CNN
F 1 "-12V" H 10215 1673 50  0000 C CNN
F 2 "" H 10200 1500 50  0001 C CNN
F 3 "" H 10200 1500 50  0001 C CNN
	1    10200 1500
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5EC71D01
P 2650 1650
F 0 "U?" H 2650 2017 50  0000 C CNN
F 1 "TL072" H 2650 1926 50  0000 C CNN
F 2 "" H 2650 1650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5EC75ED9
P 10900 1100
F 0 "U?" H 10858 1146 50  0000 L CNN
F 1 "TL072" H 10858 1055 50  0000 L CNN
F 2 "" H 10900 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 10900 1100 50  0001 C CNN
	3    10900 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1500 10200 1450
Wire Wire Line
	10200 1450 10800 1450
Wire Wire Line
	10800 1450 10800 1400
Connection ~ 10200 1450
Wire Wire Line
	10200 1450 10200 1400
Wire Wire Line
	10200 800  10200 750 
Wire Wire Line
	10200 750  10800 750 
Wire Wire Line
	10800 750  10800 800 
Connection ~ 10200 750 
Wire Wire Line
	10200 750  10200 650 
$Comp
L power:GND #PWR?
U 1 1 5ECB4989
P 700 1550
F 0 "#PWR?" H 700 1300 50  0001 C CNN
F 1 "GND" H 705 1377 50  0000 C CNN
F 2 "" H 700 1550 50  0001 C CNN
F 3 "" H 700 1550 50  0001 C CNN
	1    700  1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1550 700  1450
Wire Wire Line
	700  1450 1000 1450
$Comp
L synth:DMMT5401 Q?
U 1 1 5ECB91CA
P 2700 4150
F 0 "Q?" H 2550 4300 50  0000 L CNN
F 1 "DMMT5401" V 2900 3950 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 2900 4075 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 2700 4150 50  0001 L CNN
	1    2700 4150
	1    0    0    -1  
$EndComp
$Comp
L synth:DMMT5401 Q?
U 2 1 5ECB9C8A
P 3350 4150
F 0 "Q?" H 3200 4300 50  0000 L CNN
F 1 "DMMT5401" V 3550 3950 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 3550 4075 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 3350 4150 50  0001 L CNN
	2    3350 4150
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5ECBF24F
P 2700 5000
F 0 "U?" H 2850 5150 50  0000 C CNN
F 1 "TL072" H 2700 5000 50  0000 C CNN
F 2 "" H 2700 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2700 5000 50  0001 C CNN
	1    2700 5000
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5ECC5F0B
P 3250 4700
F 0 "R?" H 3050 4750 50  0000 L CNN
F 1 "?" H 3100 4650 50  0000 L CNN
F 2 "" V 3180 4700 50  0001 C CNN
F 3 "~" H 3250 4700 50  0001 C CNN
	1    3250 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5ECC9350
P 2700 4600
F 0 "C?" H 2815 4646 50  0000 L CNN
F 1 "30p" H 2815 4555 50  0000 L CNN
F 2 "" H 2738 4450 50  0001 C CNN
F 3 "~" H 2700 4600 50  0001 C CNN
	1    2700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 4900 2350 4900
Wire Wire Line
	2350 4900 2350 4600
Wire Wire Line
	2350 4600 2550 4600
Wire Wire Line
	2850 4600 3100 4600
Wire Wire Line
	3100 4600 3100 5000
Wire Wire Line
	3100 5000 3000 5000
Wire Wire Line
	3100 5000 3250 5000
Wire Wire Line
	3250 5000 3250 4850
Connection ~ 3100 5000
Wire Wire Line
	3250 4550 3250 4450
Wire Wire Line
	2800 4350 2800 4450
Wire Wire Line
	2800 4450 3250 4450
Connection ~ 3250 4450
Wire Wire Line
	3250 4450 3250 4350
$Comp
L power:GND #PWR?
U 1 1 5ECD1F6B
P 3650 4250
F 0 "#PWR?" H 3650 4000 50  0001 C CNN
F 1 "GND" H 3655 4077 50  0000 C CNN
F 2 "" H 3650 4250 50  0001 C CNN
F 3 "" H 3650 4250 50  0001 C CNN
	1    3650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4250 3650 4150
Wire Wire Line
	3650 4150 3550 4150
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 5ECDA6BE
P 9650 1050
F 0 "U?" H 9608 1096 50  0000 L CNN
F 1 "TL072" H 9608 1005 50  0000 L CNN
F 2 "" H 9650 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 9650 1050 50  0001 C CNN
	3    9650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4150 2050 4150
$Comp
L power:GND #PWR?
U 1 1 5ECE1050
P 2300 5200
F 0 "#PWR?" H 2300 4950 50  0001 C CNN
F 1 "GND" H 2305 5027 50  0000 C CNN
F 2 "" H 2300 5200 50  0001 C CNN
F 3 "" H 2300 5200 50  0001 C CNN
	1    2300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5200 2300 5100
Wire Wire Line
	2300 5100 2400 5100
$Comp
L power:GND #PWR?
U 1 1 5ECE3480
P 1250 4350
F 0 "#PWR?" H 1250 4100 50  0001 C CNN
F 1 "GND" H 1255 4177 50  0000 C CNN
F 2 "" H 1250 4350 50  0001 C CNN
F 3 "" H 1250 4350 50  0001 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4350 1250 4250
Wire Wire Line
	1250 4250 1350 4250
$Comp
L Device:R R?
U 1 1 5ECE5DFE
P 1650 3750
F 0 "R?" V 1750 3800 50  0000 L CNN
F 1 "1K8" V 1650 3700 50  0000 L CNN
F 2 "" V 1580 3750 50  0001 C CNN
F 3 "~" H 1650 3750 50  0001 C CNN
	1    1650 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3750 2050 3750
Wire Wire Line
	2050 3750 2050 4150
Connection ~ 2050 4150
Wire Wire Line
	2050 4150 1950 4150
Wire Wire Line
	1500 3750 1250 3750
Wire Wire Line
	1250 3750 1250 4050
Wire Wire Line
	1250 4050 1350 4050
$Comp
L Device:R R?
U 1 1 5ECEAD7D
P 950 4050
F 0 "R?" V 1050 4000 50  0000 L CNN
F 1 "100K" V 950 3950 50  0000 L CNN
F 2 "" V 880 4050 50  0001 C CNN
F 3 "~" H 950 4050 50  0001 C CNN
	1    950  4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 4050 1250 4050
Connection ~ 1250 4050
Wire Wire Line
	2800 3950 2800 3700
Wire Wire Line
	2800 3700 2350 3700
Wire Wire Line
	2350 3700 2350 4600
Connection ~ 2350 4600
$Comp
L Device:R R?
U 1 1 5ECF084A
P 2050 5100
F 0 "R?" H 1850 5150 50  0000 L CNN
F 1 "?" H 1900 5050 50  0000 L CNN
F 2 "" V 1980 5100 50  0001 C CNN
F 3 "~" H 2050 5100 50  0001 C CNN
	1    2050 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 4950 2050 4900
Wire Wire Line
	2050 4900 2350 4900
Connection ~ 2350 4900
Wire Wire Line
	2050 5350 2050 5250
Text Notes 2100 2350 0    50   ~ 0
Square/Triangle core
Text Notes 2700 5400 0    50   ~ 0
exponential converter
$Comp
L synth:DMMT5551 Q?
U 1 1 5ED0A71C
P 5750 6100
F 0 "Q?" H 5600 6250 50  0000 L CNN
F 1 "DMMT5551" V 5950 5900 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 5950 6025 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30436.pdf" H 5750 6100 50  0001 L CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
$Comp
L synth:DMMT5551 Q?
U 2 1 5ED0B584
P 6750 6100
F 0 "Q?" H 6600 6250 50  0000 L CNN
F 1 "DMMT5551" V 6950 5900 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6950 6025 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30436.pdf" H 6750 6100 50  0001 L CNN
	2    6750 6100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ED0F0FD
P 6250 7050
F 0 "R?" H 6350 7100 50  0000 L CNN
F 1 "12k" H 6350 7000 50  0000 L CNN
F 2 "" V 6180 7050 50  0001 C CNN
F 3 "~" H 6250 7050 50  0001 C CNN
	1    6250 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED14F24
P 7050 6200
F 0 "#PWR?" H 7050 5950 50  0001 C CNN
F 1 "GND" H 7055 6027 50  0000 C CNN
F 2 "" H 7050 6200 50  0001 C CNN
F 3 "" H 7050 6200 50  0001 C CNN
	1    7050 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 6200 7050 6100
Wire Wire Line
	7050 6100 6950 6100
Text GLabel 3200 1100 2    50   Input ~ 0
TRIANGLE
Text GLabel 3850 6000 0    50   Input ~ 0
TRIANGLE
Text GLabel 2800 6900 2    50   Input ~ 0
SQUARE
$Comp
L Device:R R?
U 1 1 5ED26FEA
P 5850 4750
F 0 "R?" H 5650 4800 50  0000 L CNN
F 1 "?" H 5700 4700 50  0000 L CNN
F 2 "" V 5780 4750 50  0001 C CNN
F 3 "~" H 5850 4750 50  0001 C CNN
	1    5850 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ED27954
P 6650 4750
F 0 "R?" H 6450 4800 50  0000 L CNN
F 1 "?" H 6500 4700 50  0000 L CNN
F 2 "" V 6580 4750 50  0001 C CNN
F 3 "~" H 6650 4750 50  0001 C CNN
	1    6650 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5EC69673
P 10200 650
F 0 "#PWR?" H 10200 500 50  0001 C CNN
F 1 "+12V" H 10215 823 50  0000 C CNN
F 2 "" H 10200 650 50  0001 C CNN
F 3 "" H 10200 650 50  0001 C CNN
	1    10200 650 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ED4E809
P 4200 6800
F 0 "R?" H 4000 6850 50  0000 L CNN
F 1 "?" H 4050 6750 50  0000 L CNN
F 2 "" V 4130 6800 50  0001 C CNN
F 3 "~" H 4200 6800 50  0001 C CNN
	1    4200 6800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ED58116
P 4200 7200
F 0 "R?" H 4000 7250 50  0000 L CNN
F 1 "?" H 4050 7150 50  0000 L CNN
F 2 "" V 4130 7200 50  0001 C CNN
F 3 "~" H 4200 7200 50  0001 C CNN
	1    4200 7200
	-1   0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5ECF6305
P 2050 5350
F 0 "#PWR?" H 2050 5450 50  0001 C CNN
F 1 "-12V" H 2065 5523 50  0000 C CNN
F 2 "" H 2050 5350 50  0001 C CNN
F 3 "" H 2050 5350 50  0001 C CNN
	1    2050 5350
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 5ED5C312
P 6250 7300
F 0 "#PWR?" H 6250 7400 50  0001 C CNN
F 1 "-12V" H 6265 7473 50  0000 C CNN
F 2 "" H 6250 7300 50  0001 C CNN
F 3 "" H 6250 7300 50  0001 C CNN
	1    6250 7300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5ED7F3FD
P 6250 4400
F 0 "#PWR?" H 6250 4250 50  0001 C CNN
F 1 "+12V" H 6265 4573 50  0000 C CNN
F 2 "" H 6250 4400 50  0001 C CNN
F 3 "" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5EDA2507
P 4200 6550
F 0 "#PWR?" H 4200 6400 50  0001 C CNN
F 1 "+12V" H 4215 6723 50  0000 C CNN
F 2 "" H 4200 6550 50  0001 C CNN
F 3 "" H 4200 6550 50  0001 C CNN
	1    4200 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EDB1330
P 4100 6000
F 0 "R?" H 3900 6050 50  0000 L CNN
F 1 "?" H 3950 5950 50  0000 L CNN
F 2 "" V 4030 6000 50  0001 C CNN
F 3 "~" H 4100 6000 50  0001 C CNN
	1    4100 6000
	0    1    -1   0   
$EndComp
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5ECD7F4D
P 1650 4150
F 0 "U?" H 1750 4300 50  0000 C CNN
F 1 "TL072" H 1650 4150 50  0000 C CNN
F 2 "" H 1650 4150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1650 4150 50  0001 C CNN
	2    1650 4150
	1    0    0    1   
$EndComp
Wire Wire Line
	4200 6550 4200 6650
Wire Wire Line
	4200 7450 4200 7350
Wire Wire Line
	4200 6950 4200 7000
$Comp
L Device:R R?
U 1 1 5EEC949A
P 5850 6550
F 0 "R?" H 5650 6600 50  0000 L CNN
F 1 "68" H 5650 6500 50  0000 L CNN
F 2 "" V 5780 6550 50  0001 C CNN
F 3 "~" H 5850 6550 50  0001 C CNN
	1    5850 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EEC9A14
P 6650 6550
F 0 "R?" H 6750 6600 50  0000 L CNN
F 1 "68" H 6750 6500 50  0000 L CNN
F 2 "" V 6580 6550 50  0001 C CNN
F 3 "~" H 6650 6550 50  0001 C CNN
	1    6650 6550
	1    0    0    -1  
$EndComp
Connection ~ 4200 7000
Wire Wire Line
	4200 7000 4200 7050
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5EF3BB3D
P 7750 5900
F 0 "U?" H 7850 6050 50  0000 C CNN
F 1 "TL072" H 7750 5900 50  0000 C CNN
F 2 "" H 7750 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7750 5900 50  0001 C CNN
	2    7750 5900
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EF63C48
P 7800 5500
F 0 "R?" H 7600 5550 50  0000 L CNN
F 1 "?" H 7650 5450 50  0000 L CNN
F 2 "" V 7730 5500 50  0001 C CNN
F 3 "~" H 7800 5500 50  0001 C CNN
	1    7800 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 6100 7350 6000
Wire Wire Line
	7350 6000 7450 6000
Wire Wire Line
	7350 5800 7350 5500
Wire Wire Line
	7350 5500 7650 5500
Connection ~ 7350 5800
Wire Wire Line
	7350 5800 7450 5800
Wire Wire Line
	7950 5500 8150 5500
Wire Wire Line
	8150 5500 8150 5900
Wire Wire Line
	8150 5900 8050 5900
$Comp
L power:GND #PWR?
U 1 1 5EF7B608
P 7350 6100
F 0 "#PWR?" H 7350 5850 50  0001 C CNN
F 1 "GND" H 7355 5927 50  0000 C CNN
F 2 "" H 7350 6100 50  0001 C CNN
F 3 "" H 7350 6100 50  0001 C CNN
	1    7350 6100
	1    0    0    -1  
$EndComp
Text Notes 4850 6650 0    50   ~ 0
sine waveshapper
Text GLabel 8250 5900 2    50   Input ~ 0
SINE
Wire Wire Line
	8250 5900 8150 5900
Connection ~ 8150 5900
$Comp
L Device:R R?
U 1 1 5ED74B78
P 3150 1850
F 0 "R?" H 3250 1950 50  0000 L CNN
F 1 "15k" H 3250 1800 50  0000 L CNN
F 2 "" V 3080 1850 50  0001 C CNN
F 3 "~" H 3150 1850 50  0001 C CNN
	1    3150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5ED74FEC
P 3150 2300
F 0 "R?" H 3250 2350 50  0000 L CNN
F 1 "10k" H 3250 2250 50  0000 L CNN
F 2 "" V 3080 2300 50  0001 C CNN
F 3 "~" H 3150 2300 50  0001 C CNN
	1    3150 2300
	1    0    0    -1  
$EndComp
Text Notes 3850 1300 3    50   ~ 0
These set the level of the signal to about +/- 5V\nwhich is the absolute max from the LM13700 datasheet\nand also the standard level for signals\n\nTODO: unbalanced voltage outputs causes error in the frequency.\nNeed to find a way to compensate for this
$Comp
L power:GND #PWR?
U 1 1 5ED7642B
P 9750 2900
F 0 "#PWR?" H 9750 2650 50  0001 C CNN
F 1 "GND" H 9755 2727 50  0000 C CNN
F 2 "" H 9750 2900 50  0001 C CNN
F 3 "" H 9750 2900 50  0001 C CNN
	1    9750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2550 3150 2450
Wire Wire Line
	3150 2150 3150 2100
Wire Wire Line
	3150 1700 3150 1650
Wire Wire Line
	3150 1650 2950 1650
Wire Wire Line
	3150 2100 2250 2100
Wire Wire Line
	2250 1750 2350 1750
Connection ~ 3150 2100
Wire Wire Line
	3150 2100 3150 2000
Wire Wire Line
	2250 2100 2250 1750
Wire Wire Line
	1600 1550 1900 1550
Wire Wire Line
	1900 1950 1900 1900
Wire Wire Line
	1900 1600 1900 1550
Wire Wire Line
	850  1650 850  2100
Wire Wire Line
	2350 1550 2200 1550
Connection ~ 1900 1550
Wire Wire Line
	2250 2100 850  2100
Connection ~ 2250 2100
Text Notes 1500 1700 3    50   ~ 0
IABC calculated to 1.191mA for A9 with 4.7nF
Wire Wire Line
	2400 1200 2200 1200
Wire Wire Line
	2200 1200 2200 1550
Connection ~ 2200 1550
Wire Wire Line
	2200 1550 1900 1550
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5EDCCCBC
P 2700 1100
F 0 "U?" H 2800 1250 50  0000 C CNN
F 1 "TL072" H 2650 1100 50  0000 C CNN
F 2 "" H 2700 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2700 1100 50  0001 C CNN
	2    2700 1100
	1    0    0    1   
$EndComp
Wire Wire Line
	3000 1100 3050 1100
Wire Wire Line
	3050 1100 3050 800 
Wire Wire Line
	3050 800  2350 800 
Wire Wire Line
	2350 800  2350 1000
Wire Wire Line
	2350 1000 2400 1000
Connection ~ 3050 1100
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5EDF33EF
P 2250 6450
F 0 "U?" H 2250 6817 50  0000 C CNN
F 1 "TL072" H 2250 6726 50  0000 C CNN
F 2 "" H 2250 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2250 6450 50  0001 C CNN
	1    2250 6450
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE0590C
P 2700 6700
F 0 "R?" H 2800 6750 50  0000 L CNN
F 1 "15k" H 2800 6650 50  0000 L CNN
F 2 "" V 2630 6700 50  0001 C CNN
F 3 "~" H 2700 6700 50  0001 C CNN
	1    2700 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EE05F24
P 2700 7150
F 0 "R?" H 2800 7200 50  0000 L CNN
F 1 "10k" H 2800 7100 50  0000 L CNN
F 2 "" V 2630 7150 50  0001 C CNN
F 3 "~" H 2700 7150 50  0001 C CNN
	1    2700 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE06527
P 2700 7400
F 0 "#PWR?" H 2700 7150 50  0001 C CNN
F 1 "GND" H 2705 7227 50  0000 C CNN
F 2 "" H 2700 7400 50  0001 C CNN
F 3 "" H 2700 7400 50  0001 C CNN
	1    2700 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7300 2700 7400
Wire Wire Line
	2700 7000 2700 6900
Wire Wire Line
	2700 6550 2700 6450
Wire Wire Line
	2700 6450 2550 6450
$Comp
L Device:R R?
U 1 1 5EE19BD3
P 1300 6800
F 0 "R?" H 1100 6850 50  0000 L CNN
F 1 "100K" H 1050 6750 50  0000 L CNN
F 2 "" V 1230 6800 50  0001 C CNN
F 3 "~" H 1300 6800 50  0001 C CNN
	1    1300 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1100 3200 1100
$Comp
L Device:R R?
U 1 1 5EE2F627
P 1300 6350
F 0 "R?" H 1100 6400 50  0000 L CNN
F 1 "100K" H 1050 6300 50  0000 L CNN
F 2 "" V 1230 6350 50  0001 C CNN
F 3 "~" H 1300 6350 50  0001 C CNN
	1    1300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6650 1300 6550
Wire Wire Line
	1950 6550 1300 6550
Connection ~ 1300 6550
Wire Wire Line
	1300 6550 1300 6500
Wire Wire Line
	1300 7050 1300 6950
Text GLabel 1150 6000 0    50   Input ~ 0
PWM_CV
Wire Wire Line
	1150 6000 1300 6000
Wire Wire Line
	1300 6000 1300 6200
Text GLabel 1800 6350 0    50   Input ~ 0
TRIANGLE
Text GLabel 1700 2300 3    50   Input ~ 0
I_ABC
Wire Wire Line
	1700 2300 1700 1650
Wire Wire Line
	1700 1650 1600 1650
Text GLabel 3250 3700 1    50   Input ~ 0
I_ABC
Wire Wire Line
	3250 3700 3250 3950
Wire Wire Line
	2800 6900 2700 6900
Connection ~ 2700 6900
Wire Wire Line
	2700 6900 2700 6850
Wire Wire Line
	6250 4400 6250 4500
Connection ~ 6250 4500
Wire Wire Line
	6250 7300 6250 7200
$Comp
L power:-12V #PWR?
U 1 1 5EE46E0E
P 4200 7450
F 0 "#PWR?" H 4200 7550 50  0001 C CNN
F 1 "-12V" H 4215 7623 50  0000 C CNN
F 2 "" H 4200 7450 50  0001 C CNN
F 3 "" H 4200 7450 50  0001 C CNN
	1    4200 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5EE5FE30
P 4900 5550
F 0 "R?" H 4700 5600 50  0000 L CNN
F 1 "?" H 4750 5500 50  0000 L CNN
F 2 "" V 4830 5550 50  0001 C CNN
F 3 "~" H 4900 5550 50  0001 C CNN
	1    4900 5550
	0    -1   1    0   
$EndComp
$Comp
L synth:DMMT5401 Q?
U 1 1 5EE8FFF2
P 5950 5350
F 0 "Q?" H 6141 5304 50  0000 L CNN
F 1 "DMMT5401" H 6141 5395 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6150 5275 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 5950 5350 50  0001 L CNN
	1    5950 5350
	-1   0    0    1   
$EndComp
$Comp
L synth:DMMT5401 Q?
U 2 1 5EE91D95
P 6550 5350
F 0 "Q?" H 6741 5304 50  0000 L CNN
F 1 "DMMT5401" H 6741 5395 50  0000 L CNN
F 2 "KiCad/kicad-footprints/Package_TO_SOT_SMD.pretty:SOT-23-6" H 6750 5275 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ds30437.pdf" H 6550 5350 50  0001 L CNN
	2    6550 5350
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 5900 6650 5800
Wire Wire Line
	5850 4500 5850 4600
Wire Wire Line
	5850 4500 6250 4500
Wire Wire Line
	6650 4500 6650 4600
Wire Wire Line
	6250 4500 6650 4500
Wire Wire Line
	6650 4900 6650 5150
Wire Wire Line
	5850 5150 5850 4900
Wire Wire Line
	5850 5550 5850 5650
Wire Wire Line
	6150 5350 6250 5350
Wire Wire Line
	6250 5350 6250 5650
Wire Wire Line
	6250 5650 5850 5650
Connection ~ 6250 5350
Wire Wire Line
	6250 5350 6350 5350
Wire Wire Line
	6650 6400 6650 6300
Wire Wire Line
	5850 6400 5850 6300
Wire Wire Line
	5850 6700 5850 6800
Wire Wire Line
	5850 6800 6250 6800
Wire Wire Line
	6650 6800 6650 6700
Wire Wire Line
	6250 6900 6250 6800
Connection ~ 6250 6800
Wire Wire Line
	6250 6800 6650 6800
Wire Wire Line
	5850 5900 5850 5650
Connection ~ 5850 5650
Wire Wire Line
	6650 5800 7350 5800
Connection ~ 6650 5800
Wire Wire Line
	6650 5800 6650 5550
Wire Wire Line
	3850 6000 3950 6000
$Comp
L Amplifier_Operational:TL072 U?
U 1 1 5EFB5E2F
P 4850 6100
F 0 "U?" H 4850 5733 50  0000 C CNN
F 1 "TL072" H 4850 5824 50  0000 C CNN
F 2 "" H 4850 6100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4850 6100 50  0001 C CNN
	1    4850 6100
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 6200 4550 6200
Wire Wire Line
	4550 6000 4400 6000
Wire Wire Line
	4400 6000 4400 5550
Wire Wire Line
	4400 5550 4750 5550
Wire Wire Line
	5050 5550 5300 5550
Wire Wire Line
	5300 5550 5300 6100
Wire Wire Line
	5300 6100 5150 6100
Wire Wire Line
	4250 6000 4400 6000
Connection ~ 4400 6000
Wire Wire Line
	4450 6200 4450 7000
Wire Wire Line
	4200 7000 4450 7000
Wire Wire Line
	5550 6100 5300 6100
Connection ~ 5300 6100
Wire Wire Line
	1800 6350 1950 6350
$Comp
L MCU_Microchip_ATtiny:ATtiny85V-10PU U?
U 1 1 5F04221D
P 5900 2900
F 0 "U?" H 5370 2946 50  0000 R CNN
F 1 "ATtiny85V-10PU" H 5370 2855 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5900 2900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 5900 2900 50  0001 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 1 1 5F0527DF
P 10050 3250
F 0 "U?" H 10050 3077 50  0000 C CNN
F 1 "4066" H 10050 2986 50  0000 C CNN
F 2 "" H 10050 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 10050 3250 50  0001 C CNN
	1    10050 3250
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 2 1 5F0556A6
P 10050 4400
F 0 "U?" H 10050 4227 50  0000 C CNN
F 1 "4066" H 10050 4136 50  0000 C CNN
F 2 "" H 10050 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 10050 4400 50  0001 C CNN
	2    10050 4400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 3 1 5F057436
P 10050 5550
F 0 "U?" H 10050 5377 50  0000 C CNN
F 1 "4066" H 10050 5286 50  0000 C CNN
F 2 "" H 10050 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 10050 5550 50  0001 C CNN
	3    10050 5550
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4066 U?
U 5 1 5F05946B
P 11500 1100
F 0 "U?" H 11730 1146 50  0000 L CNN
F 1 "4066" H 11730 1055 50  0000 L CNN
F 2 "" H 11500 1100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4066b.pdf" H 11500 1100 50  0001 C CNN
	5    11500 1100
	1    0    0    -1  
$EndComp
Text GLabel 9650 4400 0    50   Input ~ 0
TRIANGLE
Text GLabel 9650 3250 0    50   Input ~ 0
SQUARE
Text GLabel 9650 5550 0    50   Input ~ 0
SINE
Wire Wire Line
	9750 5550 9650 5550
Wire Wire Line
	9750 4400 9650 4400
Wire Wire Line
	9750 3250 9650 3250
$Comp
L Device:R R?
U 1 1 5F08299D
P 9750 2650
F 0 "R?" H 9550 2700 50  0000 L CNN
F 1 "10K" H 9500 2600 50  0000 L CNN
F 2 "" V 9680 2650 50  0001 C CNN
F 3 "~" H 9750 2650 50  0001 C CNN
	1    9750 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 2900 9750 2800
Wire Wire Line
	10050 2450 9750 2450
Wire Wire Line
	9750 2450 9750 2500
Wire Wire Line
	10050 2450 10050 2950
Text GLabel 9650 2450 0    50   Input ~ 0
SQUARE_EN
Wire Wire Line
	9650 2450 9750 2450
Connection ~ 9750 2450
$Comp
L power:GND #PWR?
U 1 1 5F0AFD5D
P 9750 4100
F 0 "#PWR?" H 9750 3850 50  0001 C CNN
F 1 "GND" H 9755 3927 50  0000 C CNN
F 2 "" H 9750 4100 50  0001 C CNN
F 3 "" H 9750 4100 50  0001 C CNN
	1    9750 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F0AFD71
P 9750 3850
F 0 "R?" H 9550 3900 50  0000 L CNN
F 1 "10K" H 9500 3800 50  0000 L CNN
F 2 "" V 9680 3850 50  0001 C CNN
F 3 "~" H 9750 3850 50  0001 C CNN
	1    9750 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 4100 9750 4000
Wire Wire Line
	10050 3650 9750 3650
Wire Wire Line
	9750 3650 9750 3700
Text GLabel 9650 3650 0    50   Input ~ 0
TRIANGLE_EN
Wire Wire Line
	9650 3650 9750 3650
Connection ~ 9750 3650
$Comp
L power:GND #PWR?
U 1 1 5F0C9CCA
P 9750 5200
F 0 "#PWR?" H 9750 4950 50  0001 C CNN
F 1 "GND" H 9755 5027 50  0000 C CNN
F 2 "" H 9750 5200 50  0001 C CNN
F 3 "" H 9750 5200 50  0001 C CNN
	1    9750 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F0C9CD4
P 9750 4950
F 0 "R?" H 9550 5000 50  0000 L CNN
F 1 "10K" H 9500 4900 50  0000 L CNN
F 2 "" V 9680 4950 50  0001 C CNN
F 3 "~" H 9750 4950 50  0001 C CNN
	1    9750 4950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9750 5200 9750 5100
Wire Wire Line
	10050 4750 9750 4750
Wire Wire Line
	9750 4750 9750 4800
Text GLabel 9650 4750 0    50   Input ~ 0
SINE_EN
Wire Wire Line
	9650 4750 9750 4750
Connection ~ 9750 4750
Wire Wire Line
	10050 5250 10050 4750
Wire Wire Line
	10050 3650 10050 4100
Wire Wire Line
	10350 5550 10600 5550
Wire Wire Line
	10600 5550 10600 4400
Wire Wire Line
	10600 3250 10350 3250
Wire Wire Line
	10350 4400 10600 4400
Connection ~ 10600 4400
Wire Wire Line
	10600 4400 10600 3900
Text GLabel 10850 3900 2    50   Input ~ 0
OUTPUT
Wire Wire Line
	10850 3900 10600 3900
Connection ~ 10600 3900
Wire Wire Line
	10600 3900 10600 3250
$Comp
L power:GND #PWR?
U 1 1 5F1156A6
P 5900 3650
F 0 "#PWR?" H 5900 3400 50  0001 C CNN
F 1 "GND" H 5905 3477 50  0000 C CNN
F 2 "" H 5900 3650 50  0001 C CNN
F 3 "" H 5900 3650 50  0001 C CNN
	1    5900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3500 5900 3650
Text GLabel 6600 2600 2    50   Input ~ 0
SQUARE_EN
Text GLabel 6600 2700 2    50   Input ~ 0
TRIANGLE_EN
Text GLabel 6600 2800 2    50   Input ~ 0
SINE_EN
Text GLabel 5600 1250 0    50   Input ~ 0
SHAPE_CV
Wire Wire Line
	6600 2800 6500 2800
Wire Wire Line
	6600 2700 6500 2700
Wire Wire Line
	6500 2600 6600 2600
Text Notes 6100 3850 0    50   ~ 0
Rather than using a bunch of digital chips\nto convert an analog CV into a binned selector,\nprogramming a tiny uC requires only one IC and\nhas easy support for changing the bin size and\nadding hysteresis
$Comp
L power:GND #PWR?
U 1 1 5EE3F569
P 1300 7050
F 0 "#PWR?" H 1300 6800 50  0001 C CNN
F 1 "GND" H 1305 6877 50  0000 C CNN
F 2 "" H 1300 7050 50  0001 C CNN
F 3 "" H 1300 7050 50  0001 C CNN
	1    1300 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F15197A
P 3150 2550
F 0 "#PWR?" H 3150 2300 50  0001 C CNN
F 1 "GND" H 3155 2377 50  0000 C CNN
F 2 "" H 3150 2550 50  0001 C CNN
F 3 "" H 3150 2550 50  0001 C CNN
	1    3150 2550
	1    0    0    -1  
$EndComp
Text Notes 2450 7500 2    50   ~ 0
PWM control\nvia adjusting reference voltage of comparator
Text Notes 9350 6100 0    50   ~ 0
TODO: one more output available if we can find a shape
Text Notes 8950 2850 1    50   ~ 0
TODO: protect against over/under voltage of shape cv
$Comp
L Amplifier_Operational:TL072 U?
U 2 1 5F1C6C70
P 6000 1150
F 0 "U?" H 6100 1300 50  0000 C CNN
F 1 "TL072" H 6000 1150 50  0000 C CNN
F 2 "" H 6000 1150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6000 1150 50  0001 C CNN
	2    6000 1150
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1CFF2C
P 5050 1150
F 0 "#PWR?" H 5050 900 50  0001 C CNN
F 1 "GND" H 5055 977 50  0000 C CNN
F 2 "" H 5050 1150 50  0001 C CNN
F 3 "" H 5050 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1D03C7
P 6950 2100
F 0 "#PWR?" H 6950 1850 50  0001 C CNN
F 1 "GND" H 6955 1927 50  0000 C CNN
F 2 "" H 6950 2100 50  0001 C CNN
F 3 "" H 6950 2100 50  0001 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1D08FB
P 6950 1850
F 0 "R?" H 6750 1900 50  0000 L CNN
F 1 "13K" H 6700 1800 50  0000 L CNN
F 2 "" V 6880 1850 50  0001 C CNN
F 3 "~" H 6950 1850 50  0001 C CNN
	1    6950 1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1D0EBF
P 6950 1400
F 0 "R?" H 6750 1450 50  0000 L CNN
F 1 "18K" H 6700 1350 50  0000 L CNN
F 2 "" V 6880 1400 50  0001 C CNN
F 3 "~" H 6950 1400 50  0001 C CNN
	1    6950 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 1150 5050 1050
Wire Wire Line
	5050 1050 5200 1050
Wire Wire Line
	5500 1050 5600 1050
Wire Wire Line
	5600 1050 5600 750 
Wire Wire Line
	5600 750  5950 750 
Connection ~ 5600 1050
Wire Wire Line
	5600 1050 5700 1050
Wire Wire Line
	5600 1250 5700 1250
Wire Wire Line
	6950 2100 6950 2000
Wire Wire Line
	6950 1700 6950 1600
Wire Wire Line
	6500 1150 6300 1150
Wire Wire Line
	6250 750  6500 750 
Wire Wire Line
	6500 750  6500 1150
$Comp
L Diode:1N5407 D?
U 1 1 5F22202A
P 6500 1400
F 0 "D?" V 6454 1479 50  0000 L CNN
F 1 "1N5407" V 6545 1479 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 6500 1225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 6500 1400 50  0001 C CNN
	1    6500 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F22CC2B
P 6500 1650
F 0 "#PWR?" H 6500 1400 50  0001 C CNN
F 1 "GND" H 6505 1477 50  0000 C CNN
F 2 "" H 6500 1650 50  0001 C CNN
F 3 "" H 6500 1650 50  0001 C CNN
	1    6500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1650 6500 1550
$Comp
L Device:R R?
U 1 1 5F1CEAF3
P 6100 750
F 0 "R?" H 5900 800 50  0000 L CNN
F 1 "47K" H 5900 700 50  0000 L CNN
F 2 "" V 6030 750 50  0001 C CNN
F 3 "~" H 6100 750 50  0001 C CNN
	1    6100 750 
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F1CF634
P 5350 1050
F 0 "R?" H 5150 1100 50  0000 L CNN
F 1 "33K" H 5150 1000 50  0000 L CNN
F 2 "" V 5280 1050 50  0001 C CNN
F 3 "~" H 5350 1050 50  0001 C CNN
	1    5350 1050
	0    1    1    0   
$EndComp
Text GLabel 7250 1600 2    50   Input ~ 0
SHAPE_CV_LIM
Text GLabel 6600 3000 2    50   Input ~ 0
SHAPE_CV_LIM
Wire Wire Line
	6600 3000 6500 3000
Text Notes 5250 1500 0    50   ~ 0
Limit SHAPE_CV to 0-5V
Wire Wire Line
	6500 1250 6500 1150
Connection ~ 6500 1150
Wire Wire Line
	6950 1250 6950 1150
Wire Wire Line
	6950 1150 6500 1150
Wire Wire Line
	7250 1600 6950 1600
Connection ~ 6950 1600
Wire Wire Line
	6950 1600 6950 1550
Text Notes 1650 3900 0    50   ~ 0
tempco
Text GLabel 700  4050 0    50   Input ~ 0
PITCH_CV
Wire Wire Line
	700  4050 800  4050
$EndSCHEMATC
