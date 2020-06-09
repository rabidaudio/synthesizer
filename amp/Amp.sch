EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "VCA Module"
Date "2020-04-04"
Rev ""
Comp "RabidAudio"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1050 900  1100 700 
U 5EB23D44
F0 "InputStage" 50
F1 "InputStage.sch" 50
$EndSheet
$Sheet
S 1050 3100 1150 750 
U 5EC4DE09
F0 "OutputStage" 50
F1 "OutputStage.sch" 50
$EndSheet
$Sheet
S 1100 1950 1150 750 
U 5EBA9693
F0 "AVCA" 50
F1 "VCA.sch" 50
F2 "IN" I L 1100 2200 50 
F3 "CV" I L 1100 2550 50 
F4 "OUT" I R 2250 2350 50 
$EndSheet
$Sheet
S 4900 1950 1150 750 
U 5EE915EC
F0 "CVCA" 50
F1 "VCA.sch" 50
F2 "IN" I L 4900 2200 50 
F3 "CV" I L 4900 2550 50 
F4 "OUT" I R 6050 2350 50 
$EndSheet
$Sheet
S 6800 1950 1150 750 
U 5EE9163B
F0 "DVCA" 50
F1 "VCA.sch" 50
F2 "IN" I L 6800 2200 50 
F3 "CV" I L 6800 2550 50 
F4 "OUT" I R 7950 2350 50 
$EndSheet
Text GLabel 1000 2200 0    50   Input ~ 0
A_IN
Text GLabel 1000 2550 0    50   Input ~ 0
A_CV
Text GLabel 2350 2350 2    50   Input ~ 0
A_OUT
Text GLabel 2850 2200 0    50   Input ~ 0
B_IN
Text GLabel 4800 2200 0    50   Input ~ 0
C_IN
Text GLabel 6700 2200 0    50   Input ~ 0
D_IN
Text GLabel 4250 2350 2    50   Input ~ 0
B_OUT
Text GLabel 6150 2350 2    50   Input ~ 0
C_OUT
Text GLabel 8100 2350 2    50   Input ~ 0
D_OUT
Text GLabel 2850 2550 0    50   Input ~ 0
B_CV
Text GLabel 4800 2550 0    50   Input ~ 0
C_CV
Text GLabel 6700 2550 0    50   Input ~ 0
D_CV
Wire Wire Line
	2850 2550 2950 2550
Wire Wire Line
	2950 2200 2850 2200
Wire Wire Line
	4250 2350 4150 2350
Wire Wire Line
	4800 2200 4900 2200
Wire Wire Line
	4900 2550 4800 2550
Wire Wire Line
	6150 2350 6050 2350
Wire Wire Line
	8100 2350 7950 2350
Wire Wire Line
	6800 2200 6700 2200
Wire Wire Line
	6700 2550 6800 2550
$Sheet
S 2950 1950 1200 750 
U 5EE915A8
F0 "BVCA" 50
F1 "VCA.sch" 50
F2 "IN" I L 2950 2200 50 
F3 "CV" I L 2950 2550 50 
F4 "OUT" I R 4150 2350 50 
$EndSheet
Wire Wire Line
	1000 2550 1100 2550
Wire Wire Line
	1100 2200 1000 2200
Wire Wire Line
	2350 2350 2250 2350
$EndSCHEMATC
