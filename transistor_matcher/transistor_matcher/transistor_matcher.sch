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
L transistor_matcher:AD8223 U1
U 1 1 5E744865
P 5800 3250
F 0 "U1" H 6050 3600 50  0000 L CNN
F 1 "AD8223" H 5950 3500 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5950 2700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8223.pdf" H 5700 3350 50  0001 C CNN
	1    5800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E7470A9
P 5800 3800
F 0 "#PWR0101" H 5800 3550 50  0001 C CNN
F 1 "GND" H 5805 3627 50  0000 C CNN
F 2 "" H 5800 3800 50  0001 C CNN
F 3 "" H 5800 3800 50  0001 C CNN
	1    5800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5E74784D
P 5800 2600
F 0 "#PWR0102" H 5800 2450 50  0001 C CNN
F 1 "+5V" H 5815 2773 50  0000 C CNN
F 2 "" H 5800 2600 50  0001 C CNN
F 3 "" H 5800 2600 50  0001 C CNN
	1    5800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2600 5800 2900
Wire Wire Line
	5800 3600 5800 3800
Text Notes 4100 2600 0    50   ~ 0
Ideal VBE diff < 50uV\nTherefore Gain must be 500-1000\n80K / (G-5)\n100 => G=805 => 6mV resolution
$Comp
L Device:R R3
U 1 1 5E748770
P 5100 3250
F 0 "R3" V 5000 3250 50  0000 C CNN
F 1 "100" V 5100 3250 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 5030 3250 50  0001 C CNN
F 3 "~" H 5100 3250 50  0001 C CNN
	1    5100 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3250 5250 3150
Wire Wire Line
	5250 3150 5400 3150
Wire Wire Line
	5400 3350 4850 3350
Wire Wire Line
	4850 3350 4850 3250
Wire Wire Line
	4850 3250 4950 3250
$Comp
L power:+5V #PWR0103
U 1 1 5E7492AC
P 7900 1000
F 0 "#PWR0103" H 7900 850 50  0001 C CNN
F 1 "+5V" H 7915 1173 50  0000 C CNN
F 2 "" H 7900 1000 50  0001 C CNN
F 3 "" H 7900 1000 50  0001 C CNN
	1    7900 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E74974A
P 7900 1900
F 0 "#PWR0104" H 7900 1650 50  0001 C CNN
F 1 "GND" H 7905 1727 50  0000 C CNN
F 2 "" H 7900 1900 50  0001 C CNN
F 3 "" H 7900 1900 50  0001 C CNN
	1    7900 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E749CF5
P 7900 1200
F 0 "R4" H 7830 1154 50  0000 R CNN
F 1 "100K" H 7830 1245 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 7830 1200 50  0001 C CNN
F 3 "~" H 7900 1200 50  0001 C CNN
	1    7900 1200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5E74A642
P 7900 1650
F 0 "R5" H 7830 1604 50  0000 R CNN
F 1 "100K" H 7830 1695 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 7830 1650 50  0001 C CNN
F 3 "~" H 7900 1650 50  0001 C CNN
	1    7900 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 1050 7900 1000
Wire Wire Line
	7900 1900 7900 1800
Text Notes 7800 1300 2    50   ~ 0
TODO: it says in the datasheet not to do this,\nto use a low-impedence voltage source like\nan op-amp instead, that it’s bad for performance.\nTry without and see if it’s okay
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5E74BAA9
P 2850 5900
F 0 "Q2" H 3040 5946 50  0000 L CNN
F 1 "2N3904" H 3040 5855 50  0000 L CNN
F 2 "transistor_matcher:BJT_Slot" H 3050 5825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2850 5900 50  0001 L CNN
	1    2850 5900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E74DF82
P 2150 5900
F 0 "Q1" H 2341 5946 50  0000 L CNN
F 1 "2N3904" H 2341 5855 50  0000 L CNN
F 2 "transistor_matcher:BJT_Slot" H 2350 5825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2150 5900 50  0001 L CNN
	1    2150 5900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E754E85
P 1600 4450
F 0 "R1" H 1530 4404 50  0000 R CNN
F 1 "22K" H 1530 4495 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 1530 4450 50  0001 C CNN
F 3 "~" H 1600 4450 50  0001 C CNN
	1    1600 4450
	-1   0    0    1   
$EndComp
Text Notes 3450 6550 0    50   ~ 0
By setting the base voltage to 2.5V,\nwe ensure the measurement point is\neither 3.1V or 1.9V, depending on\nPNP or NPN. This is to keep the CMRR\nIn the tolerences specified in the datasheet.\nThe diode ensures the resistors are always on\nand sets VC to be about 600mV the other way
Wire Wire Line
	7900 1350 7900 1450
Text GLabel 7650 1450 0    50   Input ~ 0
VREF
Wire Wire Line
	7650 1450 7900 1450
Connection ~ 7900 1450
Wire Wire Line
	7900 1450 7900 1500
Text GLabel 6200 3550 2    50   Input ~ 0
VREF
Wire Wire Line
	6200 3550 6000 3550
Wire Wire Line
	6000 3550 6000 3450
Text GLabel 2400 5650 0    50   Input ~ 0
VREF
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5E75B4A7
P 2450 6550
F 0 "RV1" V 2335 6550 50  0000 C CNN
F 1 "10K TRIM" V 2244 6550 50  0000 C CNN
F 2 "KiCad/Potentiometers.pretty:Potentiometer_Trimmer_Bourns_PV36W" H 2450 6550 50  0001 C CNN
F 3 "~" H 2450 6550 50  0001 C CNN
	1    2450 6550
	0    1    1    0   
$EndComp
Text GLabel 4200 2900 0    50   Input ~ 0
VA
Text GLabel 2800 6200 0    50   Input ~ 0
VB
$Comp
L power:+5V #PWR0105
U 1 1 5E7609E6
P 1600 4200
F 0 "#PWR0105" H 1600 4050 50  0001 C CNN
F 1 "+5V" H 1615 4373 50  0000 C CNN
F 2 "" H 1600 4200 50  0001 C CNN
F 3 "" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E7616F7
P 3150 7250
F 0 "#PWR0106" H 3150 7000 50  0001 C CNN
F 1 "GND" H 3155 7077 50  0000 C CNN
F 2 "" H 3150 7250 50  0001 C CNN
F 3 "" H 3150 7250 50  0001 C CNN
	1    3150 7250
	1    0    0    -1  
$EndComp
Text GLabel 1900 6200 0    50   Input ~ 0
VA
Text GLabel 4200 3100 0    50   Input ~ 0
VB
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U2
U 1 1 5E77DE73
P 6700 5200
F 0 "U2" H 6171 5246 50  0000 R CNN
F 1 "ATtiny85-20PU" H 6171 5155 50  0000 R CNN
F 2 "KiCad/Housings_DIP.pretty:DIP-8_W7.62mm_Socket" H 6700 5200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 6700 5200 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Text Notes 6900 6200 0    50   ~ 0
the displays ordered are I2C, which the ATTINY85\ndoesn’t support natively. However, there seems to\nbe a solid bit-banged implementation online which\nwill hopefully work. Otherwise we’ll have to use a\nbigger chip, maybe a Teensy
$Comp
L power:GND #PWR0107
U 1 1 5E77EF3F
P 6700 5950
F 0 "#PWR0107" H 6700 5700 50  0001 C CNN
F 1 "GND" H 6705 5777 50  0000 C CNN
F 2 "" H 6700 5950 50  0001 C CNN
F 3 "" H 6700 5950 50  0001 C CNN
	1    6700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5950 6700 5800
$Comp
L power:+5V #PWR0108
U 1 1 5E77FBD5
P 6700 4400
F 0 "#PWR0108" H 6700 4250 50  0001 C CNN
F 1 "+5V" H 6715 4573 50  0000 C CNN
F 2 "" H 6700 4400 50  0001 C CNN
F 3 "" H 6700 4400 50  0001 C CNN
	1    6700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4400 6700 4600
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J2
U 1 1 5E781952
P 10150 1250
F 0 "J2" H 10200 1567 50  0000 C CNN
F 1 "USBasp CONN" H 10200 1476 50  0000 C CNN
F 2 "4ms/4ms-kicad-lib/lib-footprints/4ms_Connector.pretty:Pins_2x03_2.54mm_TH_ISP" H 10150 1250 50  0001 C CNN
F 3 "~" H 10150 1250 50  0001 C CNN
	1    10150 1250
	1    0    0    -1  
$EndComp
Text GLabel 9800 1150 0    50   Input ~ 0
MISO
Text GLabel 9800 1250 0    50   Input ~ 0
SCK
Text GLabel 9800 1350 0    50   Input ~ 0
RST
Text GLabel 10600 1150 2    50   Input ~ 0
VCC
Text GLabel 10600 1250 2    50   Input ~ 0
MOSI
Text GLabel 10600 1350 2    50   Input ~ 0
GND
Wire Wire Line
	10600 1350 10500 1350
Wire Wire Line
	10450 1250 10600 1250
Wire Wire Line
	9950 1150 9800 1150
Wire Wire Line
	9800 1250 9950 1250
Wire Wire Line
	9950 1350 9800 1350
$Comp
L power:GND #PWR0109
U 1 1 5E78B4DD
P 8550 2000
F 0 "#PWR0109" H 8550 1750 50  0001 C CNN
F 1 "GND" H 8555 1827 50  0000 C CNN
F 2 "" H 8550 2000 50  0001 C CNN
F 3 "" H 8550 2000 50  0001 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2000 8550 1900
Wire Wire Line
	8450 1800 8450 1900
Wire Wire Line
	8450 1900 8550 1900
Connection ~ 8550 1900
Wire Wire Line
	8550 1900 8550 1800
$Comp
L power:+5V #PWR0110
U 1 1 5E78D860
P 9050 1050
F 0 "#PWR0110" H 9050 900 50  0001 C CNN
F 1 "+5V" H 9065 1223 50  0000 C CNN
F 2 "" H 9050 1050 50  0001 C CNN
F 3 "" H 9050 1050 50  0001 C CNN
	1    9050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1050 9050 1200
Wire Wire Line
	9050 1200 8850 1200
$Comp
L power:GND #PWR0111
U 1 1 5E78ED32
P 10500 1450
F 0 "#PWR0111" H 10500 1200 50  0001 C CNN
F 1 "GND" H 10505 1277 50  0000 C CNN
F 2 "" H 10500 1450 50  0001 C CNN
F 3 "" H 10500 1450 50  0001 C CNN
	1    10500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1450 10500 1350
Connection ~ 10500 1350
Wire Wire Line
	10500 1350 10450 1350
$Comp
L power:+5V #PWR0112
U 1 1 5E7903C6
P 10500 1000
F 0 "#PWR0112" H 10500 850 50  0001 C CNN
F 1 "+5V" H 10515 1173 50  0000 C CNN
F 2 "" H 10500 1000 50  0001 C CNN
F 3 "" H 10500 1000 50  0001 C CNN
	1    10500 1000
	1    0    0    -1  
$EndComp
Text GLabel 7650 4900 2    50   Input ~ 0
MOSI
Text GLabel 7650 5400 2    50   Input ~ 0
RST
Wire Wire Line
	7650 5400 7300 5400
Text GLabel 7650 5100 2    50   Input ~ 0
SCK
Text GLabel 7650 5000 2    50   Input ~ 0
MISO
Wire Wire Line
	7650 5000 7300 5000
Text GLabel 6600 3250 2    50   Input ~ 0
AOUT
Wire Wire Line
	6600 3250 6350 3250
Text GLabel 7650 5300 2    50   Input ~ 0
AOUT
Wire Wire Line
	7650 5300 7300 5300
Text Notes 6900 6500 0    50   ~ 0
With WIRE lib, SDA=PORTB0 (5), SCL=PORTB2 (7)
Text GLabel 7900 4750 2    50   Input ~ 0
SDA
Text GLabel 7900 5200 2    50   Input ~ 0
SCL
$Comp
L Device:R R6
U 1 1 5E7A0721
P 9700 2950
F 0 "R6" H 9630 2904 50  0000 R CNN
F 1 "4K7" H 9630 2995 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9630 2950 50  0001 C CNN
F 3 "~" H 9700 2950 50  0001 C CNN
	1    9700 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 3100 9700 3200
Wire Wire Line
	10500 1150 10600 1150
Wire Wire Line
	10450 1150 10500 1150
Connection ~ 10500 1150
Wire Wire Line
	10500 1000 10500 1150
$Comp
L power:+5V #PWR0113
U 1 1 5E7A8C07
P 9700 2700
F 0 "#PWR0113" H 9700 2550 50  0001 C CNN
F 1 "+5V" H 9715 2873 50  0000 C CNN
F 2 "" H 9700 2700 50  0001 C CNN
F 3 "" H 9700 2700 50  0001 C CNN
	1    9700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2700 9700 2800
$Comp
L Device:Jumper JP1
U 1 1 5E7AAD47
P 9200 3200
F 0 "JP1" H 9200 3464 50  0000 C CNN
F 1 "Jumper" H 9200 3373 50  0000 C CNN
F 2 "keebio/Keebio-Parts.pretty:solder_jumper" H 9200 3200 50  0001 C CNN
F 3 "~" H 9200 3200 50  0001 C CNN
	1    9200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3200 9500 3200
Connection ~ 9700 3200
Wire Wire Line
	7300 5100 7500 5100
$Comp
L Device:R R7
U 1 1 5E7B97AD
P 9700 3800
F 0 "R7" H 9630 3754 50  0000 R CNN
F 1 "4K7" H 9630 3845 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 9630 3800 50  0001 C CNN
F 3 "~" H 9700 3800 50  0001 C CNN
	1    9700 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 3950 9700 4050
$Comp
L power:+5V #PWR0114
U 1 1 5E7B97B8
P 9700 3550
F 0 "#PWR0114" H 9700 3400 50  0001 C CNN
F 1 "+5V" H 9715 3723 50  0000 C CNN
F 2 "" H 9700 3550 50  0001 C CNN
F 3 "" H 9700 3550 50  0001 C CNN
	1    9700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3550 9700 3650
Wire Wire Line
	9700 4050 9500 4050
Connection ~ 9700 4050
$Comp
L Device:Jumper JP2
U 1 1 5E7BD7F2
P 9200 4050
F 0 "JP2" H 9200 4314 50  0000 C CNN
F 1 "Jumper" H 9200 4223 50  0000 C CNN
F 2 "keebio/Keebio-Parts.pretty:solder_jumper" H 9200 4050 50  0001 C CNN
F 3 "~" H 9200 4050 50  0001 C CNN
	1    9200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5200 7500 5200
Wire Wire Line
	7500 5200 7500 5100
Connection ~ 7500 5100
Wire Wire Line
	7500 5100 7650 5100
Text Notes 10250 4200 2    50   ~ 0
remove jumpers to disconnect the pullups when programming
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5E7FBEF9
P 10650 4150
F 0 "J3" H 10750 3800 50  0000 R CNN
F 1 "14x4 Segment Display (I2C)" V 10600 4400 50  0000 R CNN
F 2 "sparkfun/SparkFun-KiCad-Libraries/Footprints/Connectors.pretty:JST-4-PTH" H 10650 4150 50  0001 C CNN
F 3 "~" H 10650 4150 50  0001 C CNN
	1    10650 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E800D18
P 10350 4350
F 0 "#PWR0115" H 10350 4100 50  0001 C CNN
F 1 "GND" H 10355 4177 50  0000 C CNN
F 2 "" H 10350 4350 50  0001 C CNN
F 3 "" H 10350 4350 50  0001 C CNN
	1    10350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4900 7500 4900
Wire Wire Line
	7900 4750 7500 4750
Wire Wire Line
	7500 4750 7500 4900
Connection ~ 7500 4900
Wire Wire Line
	7500 4900 7650 4900
Text GLabel 8750 3200 0    50   Input ~ 0
SCL
Text GLabel 8750 4050 0    50   Input ~ 0
SDA
Wire Wire Line
	9700 4050 10450 4050
Wire Wire Line
	10200 3200 10200 3950
Wire Wire Line
	10200 3950 10450 3950
Wire Wire Line
	9700 3200 10200 3200
$Comp
L power:+5V #PWR0116
U 1 1 5E82BCFC
P 10350 3850
F 0 "#PWR0116" H 10350 3700 50  0001 C CNN
F 1 "+5V" H 10365 4023 50  0000 C CNN
F 2 "" H 10350 3850 50  0001 C CNN
F 3 "" H 10350 3850 50  0001 C CNN
	1    10350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3850 10350 4150
Wire Wire Line
	10350 4150 10450 4150
Wire Wire Line
	10350 4350 10350 4250
Wire Wire Line
	10350 4250 10450 4250
Wire Wire Line
	8750 4050 8900 4050
Wire Wire Line
	8750 3200 8900 3200
$Comp
L transistor_matcher:1N4448 D1
U 1 1 5E760345
P 1300 4700
F 0 "D1" H 1300 4916 50  0000 C CNN
F 1 "1N4448" H 1300 4825 50  0000 C CNN
F 2 "sparkfun/SparkFun-KiCad-Libraries/Footprints/Silicon-Custom.pretty:DIODE-1N4001" H 1300 4525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1300 4700 50  0001 C CNN
	1    1300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5200 2950 5700
Wire Wire Line
	2050 5200 2050 5700
Wire Wire Line
	2300 6550 2050 6550
Wire Wire Line
	2050 6100 2050 6200
Wire Wire Line
	2600 6550 2950 6550
Wire Wire Line
	2950 6100 2950 6200
Wire Wire Line
	2800 6200 2950 6200
Connection ~ 2950 6200
Wire Wire Line
	2950 6200 2950 6550
Wire Wire Line
	1900 6200 2050 6200
Connection ~ 2050 6200
Wire Wire Line
	2050 6200 2050 6550
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 5E77A327
P 4500 3000
F 0 "SW2" H 4500 3285 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4500 3194 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 4500 3000 50  0001 C CNN
F 3 "~" H 4500 3000 50  0001 C CNN
	1    4500 3000
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 5E77B0DC
P 4500 3500
F 0 "SW2" H 4500 3785 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4500 3694 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 4500 3500 50  0001 C CNN
F 3 "~" H 4500 3500 50  0001 C CNN
	2    4500 3500
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5E77E820
P 2000 4800
F 0 "SW1" H 2000 5085 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2000 4994 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 2000 4800 50  0001 C CNN
F 3 "~" H 2000 4800 50  0001 C CNN
	1    2000 4800
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 5E77F555
P 2800 7050
F 0 "SW1" H 2800 6725 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2800 6816 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 2800 7050 50  0001 C CNN
F 3 "~" H 2800 7050 50  0001 C CNN
	2    2800 7050
	1    0    0    1   
$EndComp
Wire Wire Line
	3150 7250 3150 7150
Wire Wire Line
	3150 7150 3000 7150
$Comp
L power:+5V #PWR0117
U 1 1 5E7BAA7F
P 3150 6900
F 0 "#PWR0117" H 3150 6750 50  0001 C CNN
F 1 "+5V" H 3165 7073 50  0000 C CNN
F 2 "" H 3150 6900 50  0001 C CNN
F 3 "" H 3150 6900 50  0001 C CNN
	1    3150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6900 3150 6950
Wire Wire Line
	3150 6950 3000 6950
Wire Wire Line
	2600 7050 2450 7050
Wire Wire Line
	2450 7050 2450 6700
Wire Wire Line
	2050 5200 2500 5200
Wire Wire Line
	1600 4300 1600 4200
Text GLabel 1000 4700 0    50   Input ~ 0
VREF
Wire Wire Line
	1600 4600 1600 4700
Wire Wire Line
	1000 4700 1150 4700
Wire Wire Line
	1450 4700 1600 4700
Wire Wire Line
	1800 4700 1600 4700
Connection ~ 1600 4700
$Comp
L Device:R R2
U 1 1 5E82D0A7
P 1600 5150
F 0 "R2" H 1530 5104 50  0000 R CNN
F 1 "22K" H 1530 5195 50  0000 R CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:Resistor_TH_300" V 1530 5150 50  0001 C CNN
F 3 "~" H 1600 5150 50  0001 C CNN
	1    1600 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 5000 1600 4900
Wire Wire Line
	1600 4900 1800 4900
$Comp
L transistor_matcher:1N4448 D2
U 1 1 5E830118
P 1300 4900
F 0 "D2" H 1300 5100 50  0000 C CNN
F 1 "1N4448" H 1300 5000 50  0000 C CNN
F 2 "sparkfun/SparkFun-KiCad-Libraries/Footprints/Silicon-Custom.pretty:DIODE-1N4001" H 1300 4725 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 1300 4900 50  0001 C CNN
	1    1300 4900
	-1   0    0    1   
$EndComp
Text GLabel 1000 4900 0    50   Input ~ 0
VREF
$Comp
L power:GND #PWR0118
U 1 1 5E836837
P 1600 5400
F 0 "#PWR0118" H 1600 5150 50  0001 C CNN
F 1 "GND" H 1605 5227 50  0000 C CNN
F 2 "" H 1600 5400 50  0001 C CNN
F 3 "" H 1600 5400 50  0001 C CNN
	1    1600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5400 1600 5300
Wire Wire Line
	1450 4900 1600 4900
Connection ~ 1600 4900
Wire Wire Line
	1150 4900 1000 4900
Wire Wire Line
	2200 4800 2500 4800
Wire Wire Line
	2500 4800 2500 5200
Connection ~ 2500 5200
Wire Wire Line
	2500 5200 2950 5200
Text GLabel 4200 3600 0    50   Input ~ 0
VA
Text GLabel 4200 3400 0    50   Input ~ 0
VB
Wire Wire Line
	4200 3400 4300 3400
Wire Wire Line
	4200 3100 4300 3100
Wire Wire Line
	4200 2900 4300 2900
Wire Wire Line
	4200 3600 4300 3600
Wire Wire Line
	4700 3000 5350 3000
Wire Wire Line
	4700 3500 5350 3500
Text Notes 4100 2150 0    50   ~ 0
-VS + .01V  <  0.6V + VCM +/- abs(VDIFF)*G / 10  <  +VS - .1V\n.01V  <  0.6 + 0.6 + 5 / 10 = 1.7V  <  4.9V
Wire Wire Line
	2350 5900 2500 5900
Wire Wire Line
	2500 5900 2500 5650
Wire Wire Line
	2500 5650 2400 5650
Connection ~ 2500 5900
Wire Wire Line
	2500 5900 2650 5900
$Comp
L transistor_matcher:USB_B_Micro J1
U 1 1 5E8DA27F
P 8550 1400
F 0 "J1" H 8607 1867 50  0000 C CNN
F 1 "USB_B_Micro" H 8607 1776 50  0000 C CNN
F 2 "digikey/digikey-kicad-library/digikey-footprints.pretty:USB_Micro_AB_Female_0475890001" H 8700 1350 50  0001 C CNN
F 3 "~" H 8700 1350 50  0001 C CNN
	1    8550 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
