000010*****************************************************************
000020*   ŽèŒ`(PAY_BilMst)
000030*****************************************************************
000040 01  PAY-REGJPN                   PIC  X(006).
000050 01  PAY-CTLNUM                   PIC  X(009).
000060 01  PAY-DATNUM                   PIC  X(004).
000070 01  PAY-UNICOD                   PIC  X(003).
000080 01  PAY-BILNUM                   PIC  X(009).
000090 01  PAY-BNKCOD                   PIC  X(004).
000100 01  PAY-BRCCOD                   PIC  X(003).
000110 01  PAY-DRWDAY                   PIC  X(008).
000120 01  PAY-DRWJPN                   PIC  X(006).
000130 01  PAY-ISUDAY                   PIC  X(008).
000140 01  PAY-ISUJPN                   PIC  X(006).
000150 01  PAY-DUEDAY                   PIC  X(008).
000160 01  PAY-DUEJPN                   PIC  X(006).
000170 01  PAY-CLTSWT                   PIC  X(001).
000180 01  PAY-CLTNAM                   PIC  X(0044).
000190 01  PAY-ISUTYP                   PIC  X(001).
000200 01  PAY-ISUTRM                   PIC  X(002).
000210 01  PAY-SEQNUM                   PIC  X(005).
000220 01  PAY-SEPNUM                   PIC  X(001).
000230 01  PAY-SEPPUT                   PIC  X(001).
000240 01  PAY-SNDTYP                   PIC  X(001).
000250 01  PAY-CNTNUM                   PIC  X(010).
000260 01  PAY-ZIPCOD                   PIC  X(007).
000270 01  PAY-MALNAM                   PIC  X(042).
000280 01  PAY-MALNM2                   PIC  X(042).
000290 01  PAY-MALADR                   PIC  X(042).
000300 01  PAY-MALAD2                   PIC  X(042).
000310 01  PAY-MALAD3                   PIC  X(042).
000320 01  PAY-ADRTYP                   PIC  X(001).
000330 01  PAY-DAYBGN                   PIC  X(008).
000340 01  PAY-DAYEND                   PIC  X(008).
000350 01  PAY-PUTFLG                   PIC  X(001).
000360 01  PAY-CNTCNT                   PIC S9(003) PACKED-DECIMAL.
000370 01  PAY-SEPCNT                   PIC S9(001) PACKED-DECIMAL.
000380 01  PAY-SEQCNT                   PIC S9(001) PACKED-DECIMAL.
000390 01  PAY-BILAMT                   PIC S9(013) PACKED-DECIMAL.
000400 01  PAY-TAXAMT                   PIC S9(013) PACKED-DECIMAL.
000410 01  PAY-TOTAMT                   PIC S9(013) PACKED-DECIMAL.
000420 01  PAY-REGYMD                   PIC  X(008).
000430 01  PAY-REGTIM                   PIC  X(006).
000440 01  PAY-REGPSN                   PIC  X(008).
000450 01  PAY-MODDAY                   PIC  X(008).
000460 01  PAY-MODTIM                   PIC  X(006).
000470 01  PAY-MODPSN                   PIC  X(008).
000480 01  PAY-REGKBN                   PIC  X(001).
000490 01  PAY-REGDAY                   PIC  X(008).
000500 01  PAY-DRWKBN                   PIC  X(001).
000510 01  PAY-ISUKBN                   PIC  X(001).
000520 01  PAY-DUEKBN                   PIC  X(001).
000530 01  PAY-INPPSN                   PIC  X(008).
