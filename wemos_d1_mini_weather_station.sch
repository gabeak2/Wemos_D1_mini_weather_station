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
L Connector_Generic:Conn_01x02 J1
U 1 1 6181BF80
P 1450 950
F 0 "J1" H 1530 942 50  0000 L CNN
F 1 "Conn_01x02" H 1530 851 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1450 950 50  0001 C CNN
F 3 "~" H 1450 950 50  0001 C CNN
	1    1450 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 6181D66C
P 1200 900
F 0 "#PWR01" H 1200 750 50  0001 C CNN
F 1 "+5V" H 1215 1073 50  0000 C CNN
F 2 "" H 1200 900 50  0001 C CNN
F 3 "" H 1200 900 50  0001 C CNN
	1    1200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 900  1200 950 
Wire Wire Line
	1200 950  1250 950 
$Comp
L power:GND #PWR02
U 1 1 6181DE2C
P 1200 1100
F 0 "#PWR02" H 1200 850 50  0001 C CNN
F 1 "GND" H 1205 927 50  0000 C CNN
F 2 "" H 1200 1100 50  0001 C CNN
F 3 "" H 1200 1100 50  0001 C CNN
	1    1200 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1100 1200 1050
Wire Wire Line
	1200 1050 1250 1050
$Comp
L power:+5V #PWR07
U 1 1 6181ECD1
P 2000 2200
F 0 "#PWR07" H 2000 2050 50  0001 C CNN
F 1 "+5V" H 2015 2373 50  0000 C CNN
F 2 "" H 2000 2200 50  0001 C CNN
F 3 "" H 2000 2200 50  0001 C CNN
	1    2000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2250 2000 2200
NoConn ~ 1700 2650
NoConn ~ 1700 2950
NoConn ~ 1700 3050
$Comp
L power:GND #PWR012
U 1 1 6181FB06
P 2100 3900
F 0 "#PWR012" H 2100 3650 50  0001 C CNN
F 1 "GND" H 2105 3727 50  0000 C CNN
F 2 "" H 2100 3900 50  0001 C CNN
F 3 "" H 2100 3900 50  0001 C CNN
	1    2100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3900 2100 3850
$Comp
L components:TM1640 U1
U 1 1 618205AC
P 4350 2850
F 0 "U1" H 4350 3615 50  0000 C CNN
F 1 "TM1640" H 4350 3524 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4350 2850 50  0001 C CNN
F 3 "" H 4350 2850 50  0001 C CNN
	1    4350 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61822185
P 3000 3200
F 0 "R2" H 3059 3246 50  0000 L CNN
F 1 "10k" H 3059 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3000 3200 50  0001 C CNN
F 3 "~" H 3000 3200 50  0001 C CNN
	1    3000 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 61822C81
P 3000 2800
F 0 "R1" H 3059 2846 50  0000 L CNN
F 1 "10k" H 3059 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3000 2800 50  0001 C CNN
F 3 "~" H 3000 2800 50  0001 C CNN
	1    3000 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 61824721
P 3000 2650
F 0 "#PWR08" H 3000 2500 50  0001 C CNN
F 1 "+5V" H 3015 2823 50  0000 C CNN
F 2 "" H 3000 2650 50  0001 C CNN
F 3 "" H 3000 2650 50  0001 C CNN
	1    3000 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2700 3000 2650
$Comp
L power:+5V #PWR010
U 1 1 61825049
P 3000 3350
F 0 "#PWR010" H 3000 3200 50  0001 C CNN
F 1 "+5V" H 3015 3523 50  0000 C CNN
F 2 "" H 3000 3350 50  0001 C CNN
F 3 "" H 3000 3350 50  0001 C CNN
	1    3000 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 3300 3000 3350
Wire Wire Line
	2500 3050 3000 3050
Wire Wire Line
	3000 3100 3000 3050
Wire Wire Line
	3000 2900 3000 2950
$Comp
L components:FJ3461AH_7_seg U3
U 1 1 6182645A
P 8450 3400
F 0 "U3" H 9378 3446 50  0000 L CNN
F 1 "FJ3461AH_7_seg" H 9378 3355 50  0000 L CNN
F 2 "components:FJ3461AH" H 8450 4000 50  0001 C CNN
F 3 "" H 8450 4000 50  0001 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
$Comp
L components:FJ3461AH_7_seg U4
U 1 1 6182701D
P 8450 4850
F 0 "U4" H 9378 4896 50  0000 L CNN
F 1 "FJ3461AH_7_seg" H 9378 4805 50  0000 L CNN
F 2 "components:FJ3461AH" H 8450 5450 50  0001 C CNN
F 3 "" H 8450 5450 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
Text GLabel 5000 3350 2    50   Input ~ 0
G1
Wire Wire Line
	5000 3350 4950 3350
Text GLabel 5000 3250 2    50   Input ~ 0
G2
Wire Wire Line
	5000 3250 4950 3250
Text GLabel 5000 3150 2    50   Input ~ 0
G3
Wire Wire Line
	5000 3150 4950 3150
Text GLabel 5000 3050 2    50   Input ~ 0
G4
Wire Wire Line
	5000 3050 4950 3050
Text GLabel 5000 2950 2    50   Input ~ 0
G5
Wire Wire Line
	5000 2950 4950 2950
Text GLabel 5000 2850 2    50   Input ~ 0
G6
Wire Wire Line
	5000 2850 4950 2850
Text GLabel 5000 2750 2    50   Input ~ 0
G7
Wire Wire Line
	5000 2750 4950 2750
Text GLabel 5000 2650 2    50   Input ~ 0
G8
Wire Wire Line
	5000 2650 4950 2650
NoConn ~ 3750 2450
NoConn ~ 3750 2550
NoConn ~ 3750 2650
NoConn ~ 3750 2750
$Comp
L power:GND #PWR09
U 1 1 6182C2DF
P 3750 2850
F 0 "#PWR09" H 3750 2600 50  0001 C CNN
F 1 "GND" V 3755 2722 50  0000 R CNN
F 2 "" H 3750 2850 50  0001 C CNN
F 3 "" H 3750 2850 50  0001 C CNN
	1    3750 2850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 6182CEE8
P 4950 3450
F 0 "#PWR011" H 4950 3300 50  0001 C CNN
F 1 "+5V" V 4965 3578 50  0000 L CNN
F 2 "" H 4950 3450 50  0001 C CNN
F 3 "" H 4950 3450 50  0001 C CNN
	1    4950 3450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 6182EB16
P 5600 2200
F 0 "#PWR03" H 5600 2050 50  0001 C CNN
F 1 "+5V" H 5615 2373 50  0000 C CNN
F 2 "" H 5600 2200 50  0001 C CNN
F 3 "" H 5600 2200 50  0001 C CNN
	1    5600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2250 5600 2200
$Comp
L Device:C_Small C1
U 1 1 6182F547
P 5600 2350
F 0 "C1" H 5692 2396 50  0000 L CNN
F 1 "100n" H 5692 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5600 2350 50  0001 C CNN
F 3 "~" H 5600 2350 50  0001 C CNN
	1    5600 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6182FE83
P 5600 2450
F 0 "#PWR05" H 5600 2200 50  0001 C CNN
F 1 "GND" H 5605 2277 50  0000 C CNN
F 2 "" H 5600 2450 50  0001 C CNN
F 3 "" H 5600 2450 50  0001 C CNN
	1    5600 2450
	1    0    0    -1  
$EndComp
Text GLabel 7950 3000 1    50   Input ~ 0
G1
Text GLabel 8350 3000 1    50   Input ~ 0
G2
Text GLabel 8750 3000 1    50   Input ~ 0
G3
Text GLabel 9150 3000 1    50   Input ~ 0
G4
Text GLabel 7950 4450 1    50   Input ~ 0
G5
Text GLabel 8350 4450 1    50   Input ~ 0
G6
Text GLabel 8750 4450 1    50   Input ~ 0
G7
Text GLabel 9150 4450 1    50   Input ~ 0
G8
Text GLabel 3750 3650 0    50   Input ~ 0
Seg6
Text GLabel 3750 3550 0    50   Input ~ 0
Seg5
Text GLabel 3750 3450 0    50   Input ~ 0
Seg4
Text GLabel 3750 3350 0    50   Input ~ 0
Seg3
Text GLabel 3750 3250 0    50   Input ~ 0
Seg2
Text GLabel 3750 3150 0    50   Input ~ 0
Seg1
Text GLabel 4950 3650 2    50   Input ~ 0
Seg7
Text GLabel 4950 3550 2    50   Input ~ 0
Seg8
$Comp
L power:+5V #PWR04
U 1 1 61839160
P 6100 2200
F 0 "#PWR04" H 6100 2050 50  0001 C CNN
F 1 "+5V" H 6115 2373 50  0000 C CNN
F 2 "" H 6100 2200 50  0001 C CNN
F 3 "" H 6100 2200 50  0001 C CNN
	1    6100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2250 6100 2200
$Comp
L power:GND #PWR06
U 1 1 6183916D
P 6100 2450
F 0 "#PWR06" H 6100 2200 50  0001 C CNN
F 1 "GND" H 6105 2277 50  0000 C CNN
F 2 "" H 6100 2450 50  0001 C CNN
F 3 "" H 6100 2450 50  0001 C CNN
	1    6100 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C2
U 1 1 61839CFE
P 6100 2350
F 0 "C2" H 6188 2396 50  0000 L CNN
F 1 "100u" H 6188 2305 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-7343-31_Kemet-D" H 6100 2350 50  0001 C CNN
F 3 "~" H 6100 2350 50  0001 C CNN
	1    6100 2350
	1    0    0    -1  
$EndComp
Text GLabel 9250 3800 3    50   Input ~ 0
Seg1
Text GLabel 9050 3800 3    50   Input ~ 0
Seg2
Text GLabel 8850 3800 3    50   Input ~ 0
Seg3
Text GLabel 8650 3800 3    50   Input ~ 0
Seg4
Text GLabel 8450 3800 3    50   Input ~ 0
Seg5
Text GLabel 8250 3800 3    50   Input ~ 0
Seg6
Text GLabel 8050 3800 3    50   Input ~ 0
Seg7
Text GLabel 7850 3800 3    50   Input ~ 0
Seg8
Text GLabel 9250 5250 3    50   Input ~ 0
Seg1
Text GLabel 9050 5250 3    50   Input ~ 0
Seg2
Text GLabel 8850 5250 3    50   Input ~ 0
Seg3
Text GLabel 8650 5250 3    50   Input ~ 0
Seg4
Text GLabel 8450 5250 3    50   Input ~ 0
Seg5
Text GLabel 8250 5250 3    50   Input ~ 0
Seg6
Text GLabel 8050 5250 3    50   Input ~ 0
Seg7
Text GLabel 7850 5250 3    50   Input ~ 0
Seg8
$Comp
L Amplifier_Operational:MCP6002-xSN U5
U 1 1 6183E123
P 2600 5850
F 0 "U5" H 2600 6217 50  0000 C CNN
F 1 "MCP6002-xSN" H 2600 6126 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 5850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 2600 5850 50  0001 C CNN
	1    2600 5850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U5
U 2 1 6183FDFB
P 4450 5850
F 0 "U5" H 4450 6217 50  0000 C CNN
F 1 "MCP6002-xSN" H 4450 6126 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 5850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 4450 5850 50  0001 C CNN
	2    4450 5850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U5
U 3 1 618413E1
P 5350 5700
F 0 "U5" H 5308 5746 50  0000 L CNN
F 1 "MCP6002-xSN" H 5308 5655 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5350 5700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 5350 5700 50  0001 C CNN
	3    5350 5700
	1    0    0    -1  
$EndComp
Text Notes 5550 1800 0    50   ~ 0
Local Decoupling\nFor TM1640
$Comp
L power:GND #PWR016
U 1 1 61859258
P 5250 6000
F 0 "#PWR016" H 5250 5750 50  0001 C CNN
F 1 "GND" H 5255 5827 50  0000 C CNN
F 2 "" H 5250 6000 50  0001 C CNN
F 3 "" H 5250 6000 50  0001 C CNN
	1    5250 6000
	1    0    0    -1  
$EndComp
Text Notes 4300 5300 0    50   ~ 0
Unused
$Comp
L power:GND #PWR015
U 1 1 61864602
P 1950 5950
F 0 "#PWR015" H 1950 5700 50  0001 C CNN
F 1 "GND" H 1955 5777 50  0000 C CNN
F 2 "" H 1950 5950 50  0001 C CNN
F 3 "" H 1950 5950 50  0001 C CNN
	1    1950 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 618656A0
P 1950 5850
F 0 "R3" H 2009 5896 50  0000 L CNN
F 1 "10k" H 2009 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1950 5850 50  0001 C CNN
F 3 "~" H 1950 5850 50  0001 C CNN
	1    1950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5750 2300 5750
Wire Wire Line
	2250 5950 2300 5950
Wire Wire Line
	2250 5950 2250 6250
Wire Wire Line
	2250 6250 2900 6250
Wire Wire Line
	2900 6250 2900 5850
Text GLabel 2550 2450 2    50   Input ~ 0
TEMP
Text GLabel 3000 5850 2    50   Input ~ 0
TEMP
Wire Wire Line
	3000 5850 2900 5850
Connection ~ 2900 5850
Text GLabel 2550 3450 2    50   Input ~ 0
NTC
Wire Wire Line
	2550 3450 2500 3450
Connection ~ 3000 2950
Wire Wire Line
	3000 2950 3750 2950
Wire Wire Line
	2500 2950 3000 2950
Connection ~ 3000 3050
Wire Wire Line
	3000 3050 3750 3050
Wire Wire Line
	2550 2450 2500 2550
NoConn ~ 4950 2550
NoConn ~ 4950 2450
NoConn ~ 4950 2350
NoConn ~ 3750 2350
Text GLabel 2550 2600 2    50   Input ~ 0
RAIN
Wire Wire Line
	2550 2600 2500 2650
Text GLabel 1950 5250 1    50   Input ~ 0
NTC
Text GLabel 10400 3850 1    50   Input ~ 0
RAIN
$Comp
L Device:R_Small R4
U 1 1 61886EA8
P 10400 4000
F 0 "R4" H 10459 4046 50  0000 L CNN
F 1 "1k" H 10459 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 10400 4000 50  0001 C CNN
F 3 "~" H 10400 4000 50  0001 C CNN
	1    10400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3900 10400 3850
$Comp
L Device:LED D1
U 1 1 618898BC
P 10400 4400
F 0 "D1" V 10439 4282 50  0000 R CNN
F 1 "LED" V 10348 4282 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 10400 4400 50  0001 C CNN
F 3 "~" H 10400 4400 50  0001 C CNN
	1    10400 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10400 4100 10400 4250
$Comp
L power:GND #PWR017
U 1 1 6188B66A
P 10400 4600
F 0 "#PWR017" H 10400 4350 50  0001 C CNN
F 1 "GND" H 10405 4427 50  0000 C CNN
F 2 "" H 10400 4600 50  0001 C CNN
F 3 "" H 10400 4600 50  0001 C CNN
	1    10400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 4600 10400 4550
$Comp
L Device:Thermistor_NTC TH1
U 1 1 6188CEBF
P 1950 5450
F 0 "TH1" H 2048 5496 50  0000 L CNN
F 1 "Thermistor_NTC" H 1250 5450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1950 5500 50  0001 C CNN
F 3 "~" H 1950 5500 50  0001 C CNN
	1    1950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5750 1950 5600
Connection ~ 1950 5750
Wire Wire Line
	1950 5300 1950 5250
$Comp
L Device:R_PHOTO R5
U 1 1 6189B6EB
P 3650 5550
F 0 "R5" H 3150 5600 50  0000 L CNN
F 1 "R_PHOTO" H 3150 5500 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" V 3700 5300 50  0001 L CNN
F 3 "~" H 3650 5500 50  0001 C CNN
	1    3650 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6189BEE5
P 3650 5900
F 0 "R6" H 3709 5946 50  0000 L CNN
F 1 "10k" H 3709 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3650 5900 50  0001 C CNN
F 3 "~" H 3650 5900 50  0001 C CNN
	1    3650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5350 3650 5400
$Comp
L MCU_Module:WeMos_D1_mini U2
U 1 1 6181CF97
P 2100 3050
F 0 "U2" H 2350 2200 50  0000 C CNN
F 1 "WeMos_D1_mini" H 2450 2300 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 2100 1900 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 250 1900 50  0001 C CNN
	1    2100 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR014
U 1 1 6189E95F
P 2200 2200
F 0 "#PWR014" H 2200 2050 50  0001 C CNN
F 1 "+3V3" H 2215 2373 50  0000 C CNN
F 2 "" H 2200 2200 50  0001 C CNN
F 3 "" H 2200 2200 50  0001 C CNN
	1    2200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2200 2200 2250
$Comp
L power:PWR_FLAG #FLG01
U 1 1 618A00C2
P 1200 950
F 0 "#FLG01" H 1200 1025 50  0001 C CNN
F 1 "PWR_FLAG" V 1200 1077 50  0000 L CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "~" H 1200 950 50  0001 C CNN
	1    1200 950 
	0    -1   -1   0   
$EndComp
Connection ~ 1200 950 
$Comp
L power:PWR_FLAG #FLG02
U 1 1 618A04AF
P 1200 1050
F 0 "#FLG02" H 1200 1125 50  0001 C CNN
F 1 "PWR_FLAG" V 1200 1177 50  0000 L CNN
F 2 "" H 1200 1050 50  0001 C CNN
F 3 "~" H 1200 1050 50  0001 C CNN
	1    1200 1050
	0    -1   -1   0   
$EndComp
Connection ~ 1200 1050
$Comp
L power:GND #PWR019
U 1 1 618A22D6
P 3650 6000
F 0 "#PWR019" H 3650 5750 50  0001 C CNN
F 1 "GND" H 3655 5827 50  0000 C CNN
F 2 "" H 3650 6000 50  0001 C CNN
F 3 "" H 3650 6000 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR018
U 1 1 618A2DED
P 3650 5350
F 0 "#PWR018" H 3650 5200 50  0001 C CNN
F 1 "+3V3" H 3665 5523 50  0000 C CNN
F 2 "" H 3650 5350 50  0001 C CNN
F 3 "" H 3650 5350 50  0001 C CNN
	1    3650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5700 3650 5750
Wire Wire Line
	3650 5750 4150 5750
Connection ~ 3650 5750
Wire Wire Line
	3650 5750 3650 5800
$Comp
L power:GND #PWR0101
U 1 1 618CC488
P 3950 6600
F 0 "#PWR0101" H 3950 6350 50  0001 C CNN
F 1 "GND" H 3955 6427 50  0000 C CNN
F 2 "" H 3950 6600 50  0001 C CNN
F 3 "" H 3950 6600 50  0001 C CNN
	1    3950 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 618CDAC6
P 3950 6400
F 0 "RV1" H 3881 6446 50  0000 R CNN
F 1 "R_POT" H 3881 6355 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" H 3950 6400 50  0001 C CNN
F 3 "~" H 3950 6400 50  0001 C CNN
	1    3950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0102
U 1 1 618CE5BB
P 3950 6200
F 0 "#PWR0102" H 3950 6050 50  0001 C CNN
F 1 "+3V3" H 3965 6373 50  0000 C CNN
F 2 "" H 3950 6200 50  0001 C CNN
F 3 "" H 3950 6200 50  0001 C CNN
	1    3950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6600 3950 6550
Wire Wire Line
	3950 6250 3950 6200
Wire Wire Line
	4100 6400 4100 5950
Wire Wire Line
	4100 5950 4150 5950
$Comp
L power:+3V3 #PWR0103
U 1 1 618F23CB
P 5250 5350
F 0 "#PWR0103" H 5250 5200 50  0001 C CNN
F 1 "+3V3" H 5265 5523 50  0000 C CNN
F 2 "" H 5250 5350 50  0001 C CNN
F 3 "" H 5250 5350 50  0001 C CNN
	1    5250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5350 5250 5400
$Comp
L Mechanical:MountingHole H3
U 1 1 618F48F8
P 9900 1450
F 0 "H3" H 10000 1496 50  0000 L CNN
F 1 "MountingHole" H 10000 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9900 1450 50  0001 C CNN
F 3 "~" H 9900 1450 50  0001 C CNN
	1    9900 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 618F4F3C
P 9900 1050
F 0 "H1" H 10000 1096 50  0000 L CNN
F 1 "MountingHole" H 10000 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9900 1050 50  0001 C CNN
F 3 "~" H 9900 1050 50  0001 C CNN
	1    9900 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 618F5ECA
P 9900 1650
F 0 "H4" H 10000 1696 50  0000 L CNN
F 1 "MountingHole" H 10000 1605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9900 1650 50  0001 C CNN
F 3 "~" H 9900 1650 50  0001 C CNN
	1    9900 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 618F5ED0
P 9900 1250
F 0 "H2" H 10000 1296 50  0000 L CNN
F 1 "MountingHole" H 10000 1205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9900 1250 50  0001 C CNN
F 3 "~" H 9900 1250 50  0001 C CNN
	1    9900 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6190E68C
P 2700 2750
F 0 "J2" H 2780 2742 50  0000 L CNN
F 1 "Conn_01x02" H 2500 2600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2700 2750 50  0001 C CNN
F 3 "~" H 2700 2750 50  0001 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
Text GLabel 2550 3350 2    50   Input ~ 0
LIGHT
Wire Wire Line
	2550 3350 2500 3350
Text GLabel 4800 5850 2    50   Input ~ 0
LIGHT
Wire Wire Line
	4800 5850 4750 5850
NoConn ~ 2500 3150
NoConn ~ 2500 3250
$EndSCHEMATC
