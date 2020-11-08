000010************************************************
000020* (PAY_BNSPRT)
000030************************************************
000040 01  ()CNTNUM           PIC  X(9).
000050 01  ()RELEAS           PIC  X(1).
000060 01  ()CNTDAY           PIC  X(8).
000070 01  ()DIVCOD           PIC  X(4).
000080 01  ()CLTCOD           PIC  X(8).
000090 01  ()CLTNAM           PIC  N(30).
000100 01  ()PAYCLT           PIC  X(8).
000110 01  ()PAYNAM           PIC  N(30).
000120 01  ()RCVBGN           PIC  X(8).
000130 01  ()RCVCYC           PIC  X(2).
000140 01  ()RCVCNT           PIC S9(3) COMP-3.
000150 01  ()RCVDAY           PIC  X(2).
000160 01  ()PAYBGN           PIC  X(8).
000170 01  ()PAYCYC           PIC  X(2).
000180 01  ()PAYCNT           PIC S9(3) COMP-3.
000190 01  ()HOLSFT           PIC  X(1).
000200 01  ()CLTCNT           PIC S9(2) COMP-3.
000210 01  ()CHCKYN           PIC  X(1).
000220 01  ()REMARK           PIC  N(23).
000230 01  ()CHGTYP           PIC  X(1).
000240 01  ()TRNTYP           PIC  X(1).
000250 01  ()PLNDAY           PIC  X(8).
000260 01  ()PAYDAY           PIC  X(8).
000270 01  ()BNKCOD           PIC  X(4).
000280 01  ()BRCCOD           PIC  X(3).
000290 01  ()DEPKND           PIC  X(1).
000300 01  ()DEPNUM           PIC  X(7).
000310 01  ()UPDFLG           PIC  X(1).
000320 01  ()TRNAMT           PIC S9(13) COMP-3.
000330 01  ()TRNTAX           PIC S9(13) COMP-3.
000340 01  ()CHGAMT           PIC S9(13) COMP-3.
000350 01  ()CHGTAX           PIC S9(13) COMP-3.
000360 01  ()TAXRAT           PIC S9(2)V9(1) COMP-3.
000370 01  ()CNTAMT           PIC S9(13) COMP-3.
000380 01  ()RCVBAL           PIC S9(13) COMP-3.
000390 01  ()UNPBAL           PIC S9(13) COMP-3.
000400 01  ()REGDAY           PIC  X(8).
000410 01  ()REGTIM           PIC  X(6).
000420 01  ()REGPSN           PIC  X(4).
000430 01  ()MODDAY           PIC  X(8).
000440 01  ()MODTIM           PIC  X(6).
000450 01  ()MODPSN           PIC  X(4).
