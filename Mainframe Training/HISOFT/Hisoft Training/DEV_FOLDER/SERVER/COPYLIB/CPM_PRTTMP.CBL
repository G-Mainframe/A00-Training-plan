000010************************************************
000020* (CPM_PRTTMP)
000030************************************************
000040 01  ()CTLNUM           PIC  X(6).
000050 01  ()CLTCOD           PIC  X(7).
000060 01  ()CLTNAM           PIC  N(20).
000070 01  ()REFNUM           PIC  X(10).
000080 01  ()BILNUM           PIC  X(7).
000090 01  ()CNTDAY           PIC  X(8).
000100 01  ()BORDAY           PIC  X(8).
000110 01  ()DUEDAY           PIC  X(8).
000120 01  ()HLDTYP           PIC  X(1).
000130 01  ()BORTYP           PIC  X(1).
000140 01  ()TRMTYP           PIC  X(1).
000150 01  ()FIXFLT           PIC  X(1).
000160 01  ()BEFAFT           PIC  X(1).
000170 01  ()YERDAY           PIC  X(1).
000180 01  ()DAYBAS           PIC  X(1).
000190 01  ()FRATYP           PIC  X(1).
000200 01  ()SALTYP           PIC  X(1).
000210 01  ()OBJTYP           PIC  X(1).
000220 01  ()ICGTYP           PIC  X(1).
000230 01  ()HOLSFT           PIC  X(1).
000240 01  ()DUECAL           PIC  X(1).
000250 01  ()MTGTYP           PIC  X(1).
000260 01  ()CPYDAY           PIC  X(2).
000270 01  ()ICGDAY           PIC  X(8).
000280 01  ()IPYDAY           PIC  X(8).
000290 01  ()FSTPAY           PIC  X(8).
000300 01  ()IPYCYC           PIC  X(2).
000310 01  ()CPYCYC           PIC  X(2).
000320 01  ()GAPTYP           PIC  X(1).
000330 01  ()REMARK           PIC  N(20).
000340 01  ()CREDEP           PIC  X(1).
000350 01  ()CRENUM           PIC  X(7).
000360 01  ()DEBBNK           PIC  X(4).
000370 01  ()DEBBRC           PIC  X(3).
000380 01  ()DEBDEP           PIC  X(1).
000390 01  ()DEBNUM           PIC  X(7).
000400 01  ()DAYCNT           PIC S9(4) COMP-3.
000410 01  ()BORCAP           PIC S9(13) COMP-3.
000420 01  ()INTRAT           PIC S9(2)V9(6) COMP-3.
000430 01  ()INTRST           PIC S9(13) COMP-3.
000440 01  ()BALAMT           PIC S9(13) COMP-3.
000450 01  ()AVEAMT           PIC S9(13)V9(3) COMP-3.
000460 01  ()UNPINT           PIC S9(13) COMP-3.
000470 01  ()MONINT           PIC S9(13) COMP-3.
000480 01  ()ACMINT           PIC S9(13) COMP-3.
000490 01  ()MAXBAL           PIC S9(13) COMP-3.
