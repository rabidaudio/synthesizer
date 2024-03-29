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
P 6200 3300
F 0 "U1" H 6450 3650 50  0000 L CNN
F 1 "AD8223" H 6350 3550 50  0000 L CNN
F 2 "4ms/4ms-kicad-lib/4ms-footprints.pretty:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6350 2750 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8223.pdf" H 6100 3400 50  0001 C CNN
	1    6200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E7470A9
P 6200 3850
F 0 "#PWR0101" H 6200 3600 50  0001 C CNN
F 1 "GND" H 6205 3677 50  0000 C CNN
F 2 "" H 6200 3850 50  0001 C CNN
F 3 "" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2650 6200 2950
Wire Wire Line
	6200 3650 6200 3850
Text Notes 4500 2650 0    50   ~ 0
Literature suggests very good matching is <50uV\nfor 2N390X, I’ve seen 3-9mV variance\nRg = 80K / (G-5)\n100 => G=805 => 6uV resolution\n1K => G=85 => 57uV resolution\nG = 5 => 1mV resolution
$Comp
L Device:R R3
U 1 1 5E748770
P 5500 3300
F 0 "R3" V 5400 3300 50  0000 C CNN
F 1 "1K" V 5500 3300 50  0000 C CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 5430 3300 50  0001 C CNN
F 3 "~" H 5500 3300 50  0001 C CNN
	1    5500 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3300 5650 3200
Wire Wire Line
	5650 3200 5800 3200
Wire Wire Line
	5800 3400 5250 3400
Wire Wire Line
	5250 3400 5250 3300
Wire Wire Line
	5250 3300 5350 3300
$Comp
L power:GND #PWR0104
U 1 1 5E74974A
P 1650 2100
F 0 "#PWR0104" H 1650 1850 50  0001 C CNN
F 1 "GND" H 1655 1927 50  0000 C CNN
F 2 "" H 1650 2100 50  0001 C CNN
F 3 "" H 1650 2100 50  0001 C CNN
	1    1650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E749CF5
P 1650 1400
F 0 "R4" H 1580 1354 50  0000 R CNN
F 1 "220" H 1580 1445 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 1580 1400 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
	1    1650 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5E74A642
P 1650 1850
F 0 "R5" H 1580 1804 50  0000 R CNN
F 1 "70" H 1580 1895 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 1580 1850 50  0001 C CNN
F 3 "~" H 1650 1850 50  0001 C CNN
	1    1650 1850
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5E74BAA9
P 2000 4200
F 0 "Q2" H 2190 4246 50  0000 L CNN
F 1 "2N3904" H 2190 4155 50  0000 L CNN
F 2 "transistor_matcher:BJT_Slot" H 2200 4125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2000 4200 50  0001 L CNN
	1    2000 4200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5E74DF82
P 1300 4200
F 0 "Q1" H 1491 4246 50  0000 L CNN
F 1 "2N3904" H 1491 4155 50  0000 L CNN
F 2 "transistor_matcher:BJT_Slot" H 1500 4125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1300 4200 50  0001 L CNN
	1    1300 4200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E754E85
P 1650 3300
F 0 "R1" H 1580 3254 50  0000 R CNN
F 1 "10K" H 1580 3345 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 1580 3300 50  0001 C CNN
F 3 "~" H 1650 3300 50  0001 C CNN
	1    1650 3300
	-1   0    0    1   
$EndComp
Text Notes 2600 4850 0    50   ~ 0
By setting the base voltage to 1.65V,\nwe ensure the measurement point is\neither 2.25V or 1.05V, depending on\nPNP or NPN. This is to keep the CMRR\nIn the tolerences specified in the datasheet:\n\n-VS + .01V  <  0.6V + VCM +/- abs(VDIFF)*G / 10  <  +VS - .1V\n.01V  <  0.6 + 1.65 + 3.3 / 10 = 2.58V  <  3.3V
Text GLabel 1900 1100 2    50   Input ~ 0
VREF
Text GLabel 6600 3600 2    50   Input ~ 0
VREF
Wire Wire Line
	6600 3600 6400 3600
Wire Wire Line
	6400 3600 6400 3500
Text GLabel 1550 3950 0    50   Input ~ 0
VREF
$Comp
L Device:R_POT_TRIM RV1
U 1 1 5E75B4A7
P 1600 4850
F 0 "RV1" V 1485 4850 50  0000 C CNN
F 1 "50K TRIM" V 1394 4850 50  0000 C CNN
F 2 "KiCad/Potentiometers.pretty:Potentiometer_Trimmer_Bourns_PV36W" H 1600 4850 50  0001 C CNN
F 3 "~" H 1600 4850 50  0001 C CNN
	1    1600 4850
	0    1    1    0   
$EndComp
Text GLabel 4600 2950 0    50   Input ~ 0
VA
Text GLabel 1950 4500 0    50   Input ~ 0
VB
$Comp
L power:GND #PWR0106
U 1 1 5E7616F7
P 2300 5550
F 0 "#PWR0106" H 2300 5300 50  0001 C CNN
F 1 "GND" H 2305 5377 50  0000 C CNN
F 2 "" H 2300 5550 50  0001 C CNN
F 3 "" H 2300 5550 50  0001 C CNN
	1    2300 5550
	1    0    0    -1  
$EndComp
Text GLabel 1050 4500 0    50   Input ~ 0
VA
Text GLabel 4600 3150 0    50   Input ~ 0
VB
$Comp
L power:GND #PWR0107
U 1 1 5E77EF3F
P 8750 4700
F 0 "#PWR0107" H 8750 4450 50  0001 C CNN
F 1 "GND" H 8755 4527 50  0000 C CNN
F 2 "" H 8750 4700 50  0001 C CNN
F 3 "" H 8750 4700 50  0001 C CNN
	1    8750 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5E77FBD5
P 10650 4450
F 0 "#PWR0108" H 10650 4300 50  0001 C CNN
F 1 "+5V" H 10665 4623 50  0000 C CNN
F 2 "" H 10650 4450 50  0001 C CNN
F 3 "" H 10650 4450 50  0001 C CNN
	1    10650 4450
	1    0    0    -1  
$EndComp
Text GLabel 7000 3300 2    50   Input ~ 0
AOUT
Wire Wire Line
	7000 3300 6750 3300
Text GLabel 8700 5000 0    50   Input ~ 0
SCL
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5E7FBEF9
P 10850 2250
F 0 "J3" H 10950 1900 50  0000 R CNN
F 1 "14x4 Segment Display (I2C)" V 10800 2500 50  0000 R CNN
F 2 "sparkfun/SparkFun-KiCad-Libraries/Footprints/Connectors.pretty:JST-4-PTH-VERT" H 10850 2250 50  0001 C CNN
F 3 "~" H 10850 2250 50  0001 C CNN
	1    10850 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5E800D18
P 10550 2450
F 0 "#PWR0115" H 10550 2200 50  0001 C CNN
F 1 "GND" H 10555 2277 50  0000 C CNN
F 2 "" H 10550 2450 50  0001 C CNN
F 3 "" H 10550 2450 50  0001 C CNN
	1    10550 2450
	1    0    0    -1  
$EndComp
Text GLabel 10400 2050 0    50   Input ~ 0
SCL
Text GLabel 10400 2150 0    50   Input ~ 0
SDA
Wire Wire Line
	10400 2050 10650 2050
Wire Wire Line
	10550 1950 10550 2250
Wire Wire Line
	10550 2250 10650 2250
Wire Wire Line
	10550 2450 10550 2350
Wire Wire Line
	10550 2350 10650 2350
Wire Wire Line
	2100 3500 2100 4000
Wire Wire Line
	1200 3500 1200 4000
Wire Wire Line
	1450 4850 1200 4850
Wire Wire Line
	1200 4400 1200 4500
Wire Wire Line
	1750 4850 2100 4850
Wire Wire Line
	2100 4400 2100 4500
Wire Wire Line
	1950 4500 2100 4500
Connection ~ 2100 4500
Wire Wire Line
	2100 4500 2100 4850
Wire Wire Line
	1050 4500 1200 4500
Connection ~ 1200 4500
Wire Wire Line
	1200 4500 1200 4850
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 5E77A327
P 4900 3050
F 0 "SW2" H 4900 3335 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4900 3244 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 4900 3050 50  0001 C CNN
F 3 "~" H 4900 3050 50  0001 C CNN
	1    4900 3050
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 5E77B0DC
P 4900 3550
F 0 "SW2" H 4900 3835 50  0000 C CNN
F 1 "SW_DPDT_x2" H 4900 3744 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 4900 3550 50  0001 C CNN
F 3 "~" H 4900 3550 50  0001 C CNN
	2    4900 3550
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5E77E820
P 1150 3100
F 0 "SW1" H 1150 3385 50  0000 C CNN
F 1 "SW_DPDT_x2" H 1150 3294 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 1150 3100 50  0001 C CNN
F 3 "~" H 1150 3100 50  0001 C CNN
	1    1150 3100
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 5E77F555
P 1950 5350
F 0 "SW1" H 1950 5025 50  0000 C CNN
F 1 "SW_DPDT_x2" H 1950 5116 50  0000 C CNN
F 2 "KiCad/kicad-footprints/Button_Switch_THT.pretty:SW_E-Switch_EG1271_DPDT" H 1950 5350 50  0001 C CNN
F 3 "~" H 1950 5350 50  0001 C CNN
	2    1950 5350
	1    0    0    1   
$EndComp
Wire Wire Line
	2300 5550 2300 5450
Wire Wire Line
	2300 5450 2150 5450
Wire Wire Line
	2300 5200 2300 5250
Wire Wire Line
	2300 5250 2150 5250
Wire Wire Line
	1750 5350 1600 5350
Wire Wire Line
	1600 5350 1600 5000
$Comp
L power:GND #PWR0118
U 1 1 5E836837
P 850 3350
F 0 "#PWR0118" H 850 3100 50  0001 C CNN
F 1 "GND" H 855 3177 50  0000 C CNN
F 2 "" H 850 3350 50  0001 C CNN
F 3 "" H 850 3350 50  0001 C CNN
	1    850  3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3100 1650 3100
Text GLabel 4600 3650 0    50   Input ~ 0
VA
Text GLabel 4600 3450 0    50   Input ~ 0
VB
Wire Wire Line
	4600 3450 4700 3450
Wire Wire Line
	4600 3150 4700 3150
Wire Wire Line
	4600 2950 4700 2950
Wire Wire Line
	4600 3650 4700 3650
Wire Wire Line
	5100 3050 5750 3050
Wire Wire Line
	5100 3550 5750 3550
Wire Wire Line
	1500 4200 1650 4200
Wire Wire Line
	1650 4200 1650 3950
Wire Wire Line
	1650 3950 1550 3950
Connection ~ 1650 4200
Wire Wire Line
	1650 4200 1800 4200
$Comp
L teensy:Teensy2.0_(Arduino) U3
U 1 1 5E786984
P 9650 5350
F 0 "U3" H 9650 6387 60  0000 C CNN
F 1 "Teensy2.0_(Arduino)" H 9650 6281 60  0000 C CNN
F 2 "teensy:Teensy2.0" H 9750 4300 60  0001 C CNN
F 3 "" H 9750 4300 60  0000 C CNN
	1    9650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 4900 10350 4900
Wire Wire Line
	10650 4450 10650 4900
Text GLabel 10550 5000 2    50   Input ~ 0
AOUT
Wire Wire Line
	10550 5000 10350 5000
Text GLabel 8700 5100 0    50   Input ~ 0
SDA
Wire Wire Line
	8700 5000 8950 5000
Wire Wire Line
	8700 5100 8950 5100
Wire Wire Line
	8750 4700 8750 4600
Wire Wire Line
	8750 4600 8950 4600
Wire Wire Line
	1200 3500 1650 3500
Wire Wire Line
	950  3000 850  3000
Wire Wire Line
	850  2850 850  3000
Wire Wire Line
	950  3200 850  3200
Wire Wire Line
	850  3200 850  3350
Wire Wire Line
	1650 3150 1650 3100
Wire Wire Line
	1650 3450 1650 3500
Connection ~ 1650 3500
Wire Wire Line
	1650 3500 2100 3500
$Comp
L Regulator_Linear:LM317_3PinPackage U2
U 1 1 5E7CBCED
P 1150 1100
F 0 "U2" H 1150 1342 50  0000 C CNN
F 1 "LM317_3PinPackage" H 1150 1251 50  0000 C CNN
F 2 "KiCad/TO_SOT_Packages_THT.pretty:TO-220-3_Horizontal" H 1150 1350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 1150 1100 50  0001 C CNN
	1    1150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1100 1650 1100
Wire Wire Line
	1650 1250 1650 1100
Connection ~ 1650 1100
Wire Wire Line
	1650 1100 1450 1100
Wire Wire Line
	1650 1550 1650 1600
Wire Wire Line
	1650 2000 1650 2100
Wire Wire Line
	1650 1600 1150 1600
Wire Wire Line
	1150 1600 1150 1400
Connection ~ 1650 1600
Wire Wire Line
	1650 1600 1650 1700
Wire Wire Line
	650  850  650  1100
Wire Wire Line
	650  1100 850  1100
Text GLabel 10800 4700 2    50   Input ~ 0
VREF
Wire Wire Line
	10800 4700 10350 4700
$Comp
L Relay:DIPxx-1Cxx-51x K?
U 1 1 5E7FFE7E
P 5150 6050
F 0 "K?" V 4583 6050 50  0000 C CNN
F 1 "DIPxx-1Cxx-51x" V 4674 6050 50  0000 C CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5600 6000 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 5150 6050 50  0001 C CNN
	1    5150 6050
	0    1    1    0   
$EndComp
Text GLabel 4650 6250 0    50   Input ~ 0
VA
Wire Wire Line
	4650 6250 4850 6250
Text GLabel 5850 6350 2    50   Input ~ 0
VB
Wire Wire Line
	5850 6350 5450 6350
$Comp
L power:GND #PWR?
U 1 1 5E80C2C5
P 5750 5950
F 0 "#PWR?" H 5750 5700 50  0001 C CNN
F 1 "GND" H 5755 5777 50  0000 C CNN
F 2 "" H 5750 5950 50  0001 C CNN
F 3 "" H 5750 5950 50  0001 C CNN
	1    5750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5950 5750 5850
Wire Wire Line
	5750 5850 5450 5850
$Comp
L Device:R R?
U 1 1 5E80EAE7
P 4250 6050
F 0 "R?" H 4180 6004 50  0000 R CNN
F 1 "10K" H 4180 6095 50  0000 R CNN
F 2 "KiCad/Resistors_ThroughHole.pretty:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4180 6050 50  0001 C CNN
F 3 "~" H 4250 6050 50  0001 C CNN
	1    4250 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 5900 4250 5850
Wire Wire Line
	4250 5850 4850 5850
Text GLabel 4050 5850 0    50   Input ~ 0
ZERO
Wire Wire Line
	4050 5850 4250 5850
Connection ~ 4250 5850
Text GLabel 8700 5300 0    50   Input ~ 0
ZERO
Wire Wire Line
	8700 5300 8950 5300
Text Notes 3900 6800 0    50   ~ 0
This relay temporarily shorts VA and VB together, so that the MCU\ncan measure VREF. This could probably be done with transistors, but\na relay ensures there’s no bias currents to worry about.
$Comp
L power:GND #PWR?
U 1 1 5E81680B
P 4250 6300
F 0 "#PWR?" H 4250 6050 50  0001 C CNN
F 1 "GND" H 4255 6127 50  0000 C CNN
F 2 "" H 4250 6300 50  0001 C CNN
F 3 "" H 4250 6300 50  0001 C CNN
	1    4250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6300 4250 6200
$Comp
L power:+3V3 #PWR?
U 1 1 5E81E7F2
P 650 850
F 0 "#PWR?" H 650 700 50  0001 C CNN
F 1 "+3V3" H 665 1023 50  0000 C CNN
F 2 "" H 650 850 50  0001 C CNN
F 3 "" H 650 850 50  0001 C CNN
	1    650  850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E821492
P 850 2850
F 0 "#PWR?" H 850 2700 50  0001 C CNN
F 1 "+3V3" H 865 3023 50  0000 C CNN
F 2 "" H 850 2850 50  0001 C CNN
F 3 "" H 850 2850 50  0001 C CNN
	1    850  2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E824339
P 6200 2650
F 0 "#PWR?" H 6200 2500 50  0001 C CNN
F 1 "+3V3" H 6215 2823 50  0000 C CNN
F 2 "" H 6200 2650 50  0001 C CNN
F 3 "" H 6200 2650 50  0001 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E827555
P 10550 1950
F 0 "#PWR?" H 10550 1800 50  0001 C CNN
F 1 "+3V3" H 10565 2123 50  0000 C CNN
F 2 "" H 10550 1950 50  0001 C CNN
F 3 "" H 10550 1950 50  0001 C CNN
	1    10550 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E82FB83
P 2300 5200
F 0 "#PWR?" H 2300 5050 50  0001 C CNN
F 1 "+3V3" H 2315 5373 50  0000 C CNN
F 2 "" H 2300 5200 50  0001 C CNN
F 3 "" H 2300 5200 50  0001 C CNN
	1    2300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2150 10650 2150
$EndSCHEMATC
