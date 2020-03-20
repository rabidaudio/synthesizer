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
L transistor_matcher:AD8223 U?
U 1 1 5E744865
P 4400 3250
F 0 "U?" H 4650 3600 50  0000 L CNN
F 1 "AD8223" H 4550 3500 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4550 2700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8223.pdf" H 4300 3350 50  0001 C CNN
	1    4400 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7470A9
P 4400 3800
F 0 "#PWR?" H 4400 3550 50  0001 C CNN
F 1 "GND" H 4405 3627 50  0000 C CNN
F 2 "" H 4400 3800 50  0001 C CNN
F 3 "" H 4400 3800 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E74784D
P 4400 2600
F 0 "#PWR?" H 4400 2450 50  0001 C CNN
F 1 "+5V" H 4415 2773 50  0000 C CNN
F 2 "" H 4400 2600 50  0001 C CNN
F 3 "" H 4400 2600 50  0001 C CNN
	1    4400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2600 4400 2900
Wire Wire Line
	4400 3600 4400 3800
Text Notes 2900 2700 0    50   ~ 0
Gain TBD, but suspect about 50\n80K / (G-5)
$Comp
L Device:R R?
U 1 1 5E748770
P 3700 3250
F 0 "R?" V 3493 3250 50  0000 C CNN
F 1 "2K2" V 3584 3250 50  0000 C CNN
F 2 "" V 3630 3250 50  0001 C CNN
F 3 "~" H 3700 3250 50  0001 C CNN
	1    3700 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 3250 3850 3150
Wire Wire Line
	3850 3150 4000 3150
Wire Wire Line
	4000 3350 3450 3350
Wire Wire Line
	3450 3350 3450 3250
Wire Wire Line
	3450 3250 3550 3250
$Comp
L power:+5V #PWR?
U 1 1 5E7492AC
P 6350 1000
F 0 "#PWR?" H 6350 850 50  0001 C CNN
F 1 "+5V" H 6365 1173 50  0000 C CNN
F 2 "" H 6350 1000 50  0001 C CNN
F 3 "" H 6350 1000 50  0001 C CNN
	1    6350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E74974A
P 6350 1900
F 0 "#PWR?" H 6350 1650 50  0001 C CNN
F 1 "GND" H 6355 1727 50  0000 C CNN
F 2 "" H 6350 1900 50  0001 C CNN
F 3 "" H 6350 1900 50  0001 C CNN
	1    6350 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E749CF5
P 6350 1200
F 0 "R?" H 6280 1154 50  0000 R CNN
F 1 "1K" H 6280 1245 50  0000 R CNN
F 2 "" V 6280 1200 50  0001 C CNN
F 3 "~" H 6350 1200 50  0001 C CNN
	1    6350 1200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E74A642
P 6350 1650
F 0 "R?" H 6280 1604 50  0000 R CNN
F 1 "1K" H 6280 1695 50  0000 R CNN
F 2 "" V 6280 1650 50  0001 C CNN
F 3 "~" H 6350 1650 50  0001 C CNN
	1    6350 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 1050 6350 1000
Wire Wire Line
	6350 1900 6350 1800
Text Notes 6250 1300 2    50   ~ 0
TODO: it says in the datasheet not to do this,\nto use a low-impedence voltage source like\nan op-amp instead, that it’s bad for performance.\nTry without and see if it’s okay
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5E74BAA9
P 2050 4500
F 0 "Q?" H 2240 4546 50  0000 L CNN
F 1 "2N3904" H 2240 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2250 4425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2050 4500 50  0001 L CNN
	1    2050 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5E74DF82
P 1350 4500
F 0 "Q?" H 1541 4546 50  0000 L CNN
F 1 "2N3904" H 1541 4455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1550 4425 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1350 4500 50  0001 L CNN
	1    1350 4500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E754E85
P 1700 5050
F 0 "R?" H 1630 5004 50  0000 R CNN
F 1 "1K" H 1630 5095 50  0000 R CNN
F 2 "" V 1630 5050 50  0001 C CNN
F 3 "~" H 1700 5050 50  0001 C CNN
	1    1700 5050
	-1   0    0    1   
$EndComp
Text Notes 2050 5700 0    50   ~ 0
By setting the base voltage to 2.5V,\nwe ensure the measurement point is\neither 3.1V or 1.9V, depending on\nPNP or NPN. This is to keep the CMRR\nIn the tolerences specified in the datasheet.\nThe resistor values set the current so that\nthe voltage at the emitter is about 600mV\nthe other way, so that the circuit is symetrical\nand can be used for both PNP and NPN with\nthe same currents
Wire Wire Line
	6350 1350 6350 1450
Text GLabel 6100 1450 0    50   Input ~ 0
VREF
Wire Wire Line
	6100 1450 6350 1450
Connection ~ 6350 1450
Wire Wire Line
	6350 1450 6350 1500
Text GLabel 4800 3550 2    50   Input ~ 0
VREF
Wire Wire Line
	4800 3550 4600 3550
Wire Wire Line
	4600 3550 4600 3450
Wire Wire Line
	1850 4500 1800 4500
Text GLabel 1600 4250 0    50   Input ~ 0
VREF
Wire Wire Line
	1600 4250 1800 4250
Wire Wire Line
	1800 4250 1800 4500
Connection ~ 1800 4500
Wire Wire Line
	1800 4500 1550 4500
Wire Wire Line
	2150 4700 2150 4800
Wire Wire Line
	2150 4800 1700 4800
Wire Wire Line
	1250 4800 1250 4700
Wire Wire Line
	1700 4900 1700 4800
Connection ~ 1700 4800
Wire Wire Line
	1700 4800 1250 4800
Text GLabel 1700 5400 3    50   Input ~ 0
VE
Wire Wire Line
	1700 5400 1700 5200
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5E75B4A7
P 1700 3550
F 0 "RV?" V 1585 3550 50  0000 C CNN
F 1 "2K TRIM" V 1494 3550 50  0000 C CNN
F 2 "" H 1700 3550 50  0001 C CNN
F 3 "~" H 1700 3550 50  0001 C CNN
	1    1700 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 3550 2150 3550
Wire Wire Line
	1550 3550 1250 3550
Wire Wire Line
	1250 3550 1250 4050
Text GLabel 3500 3000 0    50   Input ~ 0
VA
Wire Wire Line
	1150 4050 1250 4050
Connection ~ 1250 4050
Wire Wire Line
	1250 4050 1250 4300
Text GLabel 2050 4050 0    50   Input ~ 0
VB
Wire Wire Line
	2150 3550 2150 4050
Wire Wire Line
	2050 4050 2150 4050
Connection ~ 2150 4050
Wire Wire Line
	2150 4050 2150 4300
Text GLabel 1700 3200 1    50   Input ~ 0
VC
Wire Wire Line
	1700 3200 1700 3400
$Comp
L Switch:SW_Push_DPDT SW?
U 1 1 5E75E9AB
P 7300 1450
F 0 "SW?" H 7300 1935 50  0000 C CNN
F 1 "SW_MODE_DPDT" H 7300 1844 50  0000 C CNN
F 2 "" H 7300 1650 50  0001 C CNN
F 3 "~" H 7300 1650 50  0001 C CNN
	1    7300 1450
	1    0    0    -1  
$EndComp
Text GLabel 6950 1650 0    50   Input ~ 0
VE
Text GLabel 6950 1250 0    50   Input ~ 0
VC
Wire Wire Line
	6950 1250 7100 1250
Wire Wire Line
	6950 1650 7100 1650
$Comp
L power:+5V #PWR?
U 1 1 5E7609E6
P 7750 1050
F 0 "#PWR?" H 7750 900 50  0001 C CNN
F 1 "+5V" H 7765 1223 50  0000 C CNN
F 2 "" H 7750 1050 50  0001 C CNN
F 3 "" H 7750 1050 50  0001 C CNN
	1    7750 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E7616F7
P 7750 2000
F 0 "#PWR?" H 7750 1750 50  0001 C CNN
F 1 "GND" H 7755 1827 50  0000 C CNN
F 2 "" H 7750 2000 50  0001 C CNN
F 3 "" H 7750 2000 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2000 7750 1550
Wire Wire Line
	7750 1350 7500 1350
Wire Wire Line
	7750 1050 7750 1150
Wire Wire Line
	7750 1150 7600 1150
Wire Wire Line
	7500 1550 7750 1550
Connection ~ 7750 1550
Wire Wire Line
	7750 1550 7750 1350
Wire Wire Line
	7500 1750 7600 1750
Wire Wire Line
	7600 1750 7600 1150
Connection ~ 7600 1150
Wire Wire Line
	7600 1150 7500 1150
Wire Wire Line
	3500 3000 3950 3000
Text GLabel 1150 4050 0    50   Input ~ 0
VA
Text GLabel 3500 3500 0    50   Input ~ 0
VB
Wire Wire Line
	3500 3500 3950 3500
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U?
U 1 1 5E77DE73
P 6700 5200
F 0 "U?" H 6171 5246 50  0000 R CNN
F 1 "ATtiny85-20PU" H 6171 5155 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6700 5200 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 6700 5200 50  0001 C CNN
	1    6700 5200
	1    0    0    -1  
$EndComp
Text Notes 6900 6200 0    50   ~ 0
the displays ordered are I2C, which the ATTINY85\ndoesn’t support natively. However, there seems to\nbe a solid bit-banged implementation online which\nwill hopefully work. Otherwise we’ll have to use a\nbigger chip, maybe a Teensy
$Comp
L power:GND #PWR?
U 1 1 5E77EF3F
P 6700 5950
F 0 "#PWR?" H 6700 5700 50  0001 C CNN
F 1 "GND" H 6705 5777 50  0000 C CNN
F 2 "" H 6700 5950 50  0001 C CNN
F 3 "" H 6700 5950 50  0001 C CNN
	1    6700 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5950 6700 5800
$Comp
L power:+5V #PWR?
U 1 1 5E77FBD5
P 6700 4400
F 0 "#PWR?" H 6700 4250 50  0001 C CNN
F 1 "+5V" H 6715 4573 50  0000 C CNN
F 2 "" H 6700 4400 50  0001 C CNN
F 3 "" H 6700 4400 50  0001 C CNN
	1    6700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4400 6700 4600
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J?
U 1 1 5E781952
P 10150 1250
F 0 "J?" H 10200 1567 50  0000 C CNN
F 1 "USBasp CONN" H 10200 1476 50  0000 C CNN
F 2 "" H 10150 1250 50  0001 C CNN
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
L Connector:USB_B_Mini J?
U 1 1 5E787EA7
P 8550 1400
F 0 "J?" H 8607 1867 50  0000 C CNN
F 1 "USB_B_Mini" H 8607 1776 50  0000 C CNN
F 2 "" H 8700 1350 50  0001 C CNN
F 3 "~" H 8700 1350 50  0001 C CNN
	1    8550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E78B4DD
P 8550 2000
F 0 "#PWR?" H 8550 1750 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5E78D860
P 9050 1050
F 0 "#PWR?" H 9050 900 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5E78ED32
P 10500 1450
F 0 "#PWR?" H 10500 1200 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5E7903C6
P 10500 1000
F 0 "#PWR?" H 10500 850 50  0001 C CNN
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
Text GLabel 5200 3250 2    50   Input ~ 0
AOUT
Wire Wire Line
	5200 3250 4950 3250
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
L Device:R R?
U 1 1 5E7A0721
P 9700 2950
F 0 "R?" H 9630 2904 50  0000 R CNN
F 1 "4K7" H 9630 2995 50  0000 R CNN
F 2 "" V 9630 2950 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5E7A8C07
P 9700 2700
F 0 "#PWR?" H 9700 2550 50  0001 C CNN
F 1 "+5V" H 9715 2873 50  0000 C CNN
F 2 "" H 9700 2700 50  0001 C CNN
F 3 "" H 9700 2700 50  0001 C CNN
	1    9700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2700 9700 2800
$Comp
L Device:Jumper JP?
U 1 1 5E7AAD47
P 9200 3200
F 0 "JP?" H 9200 3464 50  0000 C CNN
F 1 "Jumper" H 9200 3373 50  0000 C CNN
F 2 "" H 9200 3200 50  0001 C CNN
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
L Device:R R?
U 1 1 5E7B97AD
P 9700 3800
F 0 "R?" H 9630 3754 50  0000 R CNN
F 1 "4K7" H 9630 3845 50  0000 R CNN
F 2 "" V 9630 3800 50  0001 C CNN
F 3 "~" H 9700 3800 50  0001 C CNN
	1    9700 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 3950 9700 4050
$Comp
L power:+5V #PWR?
U 1 1 5E7B97B8
P 9700 3550
F 0 "#PWR?" H 9700 3400 50  0001 C CNN
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
L Device:Jumper JP?
U 1 1 5E7BD7F2
P 9200 4050
F 0 "JP?" H 9200 4314 50  0000 C CNN
F 1 "Jumper" H 9200 4223 50  0000 C CNN
F 2 "" H 9200 4050 50  0001 C CNN
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
L Connector:Conn_01x04_Male J?
U 1 1 5E7FBEF9
P 10650 4150
F 0 "J?" H 10750 3800 50  0000 R CNN
F 1 "14x4 Segment Display (I2C)" V 10600 4400 50  0000 R CNN
F 2 "" H 10650 4150 50  0001 C CNN
F 3 "~" H 10650 4150 50  0001 C CNN
	1    10650 4150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E800D18
P 10350 4350
F 0 "#PWR?" H 10350 4100 50  0001 C CNN
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
L power:+5V #PWR?
U 1 1 5E82BCFC
P 10350 3850
F 0 "#PWR?" H 10350 3700 50  0001 C CNN
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
$EndSCHEMATC
