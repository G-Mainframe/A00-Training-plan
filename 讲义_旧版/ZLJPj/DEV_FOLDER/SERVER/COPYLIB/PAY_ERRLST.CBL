000010************************************************
000020* (PAY_ERRLST)
000030************************************************
000040 01  ()DATTYP           PIC  X(1).
000050 01  ()BNKCOD           PIC  X(4).
000060 01  ()BNKNAM           PIC  X(15).
000070 01  ()BRCCOD           PIC  X(3).
000080 01  ()BRCNAM           PIC  X(15).
000090 01  ()PAYDAY           PIC  X(4).
000100 01  ()DEPKND           PIC  X(1).
000110 01  ()DEPNUM           PIC  X(7).
000120 01  ()CSTNAM           PIC  X(30).
000130 01  ()TRNAMT           PIC S9(10) COMP-3.
000140 01  ()TRNTYP           PIC  X(1).
000150 01  ()TRNNUM           PIC  X(4).
000160 01  ()DUMMY1           PIC  X(6).
000170 01  ()OPEDAY           PIC  X(4).
000180 01  ()OFCCOD           PIC  X(4).
000190 01  ()DUMMY2           PIC  X(2).
000200 01  ()PAYTYP           PIC  X(1).
000210 01  ()USRDEP           PIC  X(8).
000220 01  ()CHGAMT           PIC S9(5) COMP-3.
000230 01  ()BNKSEQ           PIC  X(1).
000240 01  ()REGDAY           PIC  X(8).
000250 01  ()REGTIM           PIC  X(6).
000260 01  ()REGPSN           PIC  X(4).
000270 01  ()MODDAY           PIC  X(8).
000280 01  ()MODTIM           PIC  X(6).
000290 01  ()MODPSN           PIC  X(4).
000300 01  ()ERRFLG           PIC  X(5).
