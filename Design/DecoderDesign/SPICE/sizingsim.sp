
simulator lang=spectre

include "transistorsPTM.scs"
include "../../ArchitectureDesign/SPICE/decoder.sp"
include "parameters2.sp"

xdecoder (IN_0 IN_1 IN_2 IN_3 IN_4 enable TEMP_0_0 TEMP_0_1 TEMP_0_2 TEMP_0_3 TEMP_0_4 TEMP_0_5 TEMP_0_6 TEMP_0_7 TEMP_0_8 TEMP_0_9 TEMP_0_10 TEMP_0_11 TEMP_0_12 TEMP_0_13 TEMP_0_14 TEMP_0_15 TEMP_0_16 TEMP_0_17 TEMP_0_18 TEMP_0_19 TEMP_0_20 TEMP_0_21 TEMP_0_22 TEMP_0_23 TEMP_0_24 TEMP_0_25 TEMP_0_26 TEMP_0_27 TEMP_0_28 TEMP_0_29 TEMP_0_30 TEMP_0_31 vdd vss NBulkLine PBulkLine) decoderfive // multstage_1 = dec1multstage_1 multstage_2 = dec1multstage_2 multstage_3 = dec1multstage_3 multstage_4 = dec1multstage_4
cLoad0 (OUT_0 0) capacitor c=2.88e-15
cLoad1 (OUT_1 0) capacitor c=2.88e-15
cLoad2 (OUT_2 0) capacitor c=2.88e-15
cLoad3 (OUT_3 0) capacitor c=2.88e-15
cLoad4 (OUT_4 0) capacitor c=2.88e-15
cLoad5 (OUT_5 0) capacitor c=2.88e-15
cLoad6 (OUT_6 0) capacitor c=2.88e-15
cLoad7 (OUT_7 0) capacitor c=2.88e-15
cLoad8 (OUT_8 0) capacitor c=2.88e-15
cLoad9 (OUT_9 0) capacitor c=2.88e-15
cLoad10 (OUT_10 0) capacitor c=2.88e-15
cLoad11 (OUT_11 0) capacitor c=2.88e-15
cLoad12 (OUT_12 0) capacitor c=2.88e-15
cLoad13 (OUT_13 0) capacitor c=2.88e-15
cLoad14 (OUT_14 0) capacitor c=2.88e-15
cLoad15 (OUT_15 0) capacitor c=2.88e-15
cLoad16 (OUT_16 0) capacitor c=2.88e-15
cLoad17 (OUT_17 0) capacitor c=2.88e-15
cLoad18 (OUT_18 0) capacitor c=2.88e-15
cLoad19 (OUT_19 0) capacitor c=2.88e-15
cLoad20 (OUT_20 0) capacitor c=2.88e-15
cLoad21 (OUT_21 0) capacitor c=2.88e-15
cLoad22 (OUT_22 0) capacitor c=2.88e-15
cLoad23 (OUT_23 0) capacitor c=2.88e-15
cLoad24 (OUT_24 0) capacitor c=2.88e-15
cLoad25 (OUT_25 0) capacitor c=2.88e-15
cLoad26 (OUT_26 0) capacitor c=2.88e-15
cLoad27 (OUT_27 0) capacitor c=2.88e-15
cLoad28 (OUT_28 0) capacitor c=2.88e-15
cLoad29 (OUT_29 0) capacitor c=2.88e-15
cLoad30 (OUT_30 0) capacitor c=2.88e-15
cLoad31 (OUT_31 0) capacitor c=2.88e-15

xNOT_0_0 (TEMP_0_0 TEMP_1_0 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_1 (TEMP_0_1 TEMP_1_1 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_2 (TEMP_0_2 TEMP_1_2 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_3 (TEMP_0_3 TEMP_1_3 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_4 (TEMP_0_4 TEMP_1_4 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_5 (TEMP_0_5 TEMP_1_5 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_6 (TEMP_0_6 TEMP_1_6 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_7 (TEMP_0_7 TEMP_1_7 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_8 (TEMP_0_8 TEMP_1_8 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_9 (TEMP_0_9 TEMP_1_9 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_10 (TEMP_0_10 TEMP_1_10 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_11 (TEMP_0_11 TEMP_1_11 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_12 (TEMP_0_12 TEMP_1_12 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_13 (TEMP_0_13 TEMP_1_13 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_14 (TEMP_0_14 TEMP_1_14 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_15 (TEMP_0_15 TEMP_1_15 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_16 (TEMP_0_16 TEMP_1_16 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_17 (TEMP_0_17 TEMP_1_17 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_18 (TEMP_0_18 TEMP_1_18 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_19 (TEMP_0_19 TEMP_1_19 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_20 (TEMP_0_20 TEMP_1_20 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_21 (TEMP_0_21 TEMP_1_21 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_22 (TEMP_0_22 TEMP_1_22 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_23 (TEMP_0_23 TEMP_1_23 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_24 (TEMP_0_24 TEMP_1_24 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_25 (TEMP_0_25 TEMP_1_25 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_26 (TEMP_0_26 TEMP_1_26 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_27 (TEMP_0_27 TEMP_1_27 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_28 (TEMP_0_28 TEMP_1_28 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_29 (TEMP_0_29 TEMP_1_29 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_30 (TEMP_0_30 TEMP_1_30 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_0_31 (TEMP_0_31 TEMP_1_31 vdd vss PBulkLine NBulkLine) inverter mult=1
xNOT_1_0 (TEMP_1_0 OUT_0 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_1 (TEMP_1_1 OUT_1 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_2 (TEMP_1_2 OUT_2 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_3 (TEMP_1_3 OUT_3 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_4 (TEMP_1_4 OUT_4 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_5 (TEMP_1_5 OUT_5 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_6 (TEMP_1_6 OUT_6 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_7 (TEMP_1_7 OUT_7 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_8 (TEMP_1_8 OUT_8 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_9 (TEMP_1_9 OUT_9 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_10 (TEMP_1_10 OUT_10 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_11 (TEMP_1_11 OUT_11 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_12 (TEMP_1_12 OUT_12 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_13 (TEMP_1_13 OUT_13 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_14 (TEMP_1_14 OUT_14 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_15 (TEMP_1_15 OUT_15 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_16 (TEMP_1_16 OUT_16 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_17 (TEMP_1_17 OUT_17 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_18 (TEMP_1_18 OUT_18 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_19 (TEMP_1_19 OUT_19 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_20 (TEMP_1_20 OUT_20 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_21 (TEMP_1_21 OUT_21 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_22 (TEMP_1_22 OUT_22 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_23 (TEMP_1_23 OUT_23 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_24 (TEMP_1_24 OUT_24 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_25 (TEMP_1_25 OUT_25 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_26 (TEMP_1_26 OUT_26 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_27 (TEMP_1_27 OUT_27 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_28 (TEMP_1_28 OUT_28 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_29 (TEMP_1_29 OUT_29 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_30 (TEMP_1_30 OUT_30 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541
xNOT_1_31 (TEMP_1_31 OUT_31 vdd vss PBulkLine NBulkLine) inverter mult=1.1858541

Vvdd     ( vdd     0 ) vsource dc=1
VvddBulk ( PBulkLine 0 ) vsource dc=1
Vvss     ( vss     0 ) vsource dc=0
VvssBulk ( NBulkLine 0 ) vsource dc=0

Ven (enable 0) vsource type=pwl wave=waveen

Vin0 (IN_0 0) vsource type=pwl wave=wavein_0
Vin1 (IN_1 0) vsource type=pwl wave=wavein_1
Vin2 (IN_2 0) vsource type=pwl wave=wavein_2
Vin3 (IN_3 0) vsource type=pwl wave=wavein_3
Vin4 (IN_4 0) vsource type=pwl wave=wavein_4


save IN_0 IN_1 IN_2 IN_3 IN_4 enable OUT_0 OUT_1 OUT_2 OUT_3 OUT_4 OUT_5 OUT_6 OUT_7 OUT_8 OUT_9 OUT_10 OUT_11 OUT_12 OUT_13 OUT_14 OUT_15 OUT_16 OUT_17 OUT_18 OUT_19 OUT_20 OUT_21 OUT_22 OUT_23 OUT_24 OUT_25 OUT_26 OUT_27 OUT_28 OUT_29 OUT_30 OUT_31 Vvdd:currents

mymc montecarlo
+ donominal=no variations=mismatch
+ seed=1234
+ numruns=numberofruns
+ firstrun=1
+ saveprocessparams=yes
+ savefamilyplots= yes {
mytran tran stop=simlength
}

option1 options rawfmt = psfascii