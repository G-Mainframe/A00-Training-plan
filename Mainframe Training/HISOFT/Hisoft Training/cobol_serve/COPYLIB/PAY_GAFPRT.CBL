000010************************************************
000020* (PAY_GAFPRT)
000030************************************************
000040 01  ()CNTNUM           PIC  X(9).
000050 01  ()RELEAS           PIC  X(1).
000060 01  ()CNTDAY           PIC  X(8).
000070 01  ()DIVCOD           PIC  X(4).
000080 01  ()PAYBGN           PIC  X(8).
000090 01  ()PAYCYC           PIC  X(2).
000100 01  ()PAYCNT           PIC S9(3) COMP-3.
000110 01  ()PAYEND           PIC  X(8).
000120 01  ()PLNDAY           PIC  X(8).
000130 01  ()PAYDAY           PIC  X(8).
000140 01  ()HOLSFT           PIC  X(1).
000150 01  ()EXPCOD           PIC  X(3).
000160 01  ()PAYCLT           PIC  X(8).
000170 01  ()PAYNAM           PIC  N(30).
000180 01  ()PAYTYP           PIC  X(1).
000190 01  ()BNKCOD           PIC  X(4).
000200 01  ()BRCCOD           PIC  X(3).
000210 01  ()DEPKND           PIC  X(1).
000220 01  ()DEPNUM           PIC  X(7).
000230 01  ()REMARK           PIC  N(23).
000240 01  ()TRNAMT           PIC S9(13) COMP-3.
000250 01  ()CHGAMT           PIC S9(13) COMP-3.
000260 01  ()TRNTAX           PIC S9(13) COMP-3.
000270 01  ()CHGTAX           PIC S9(13) COMP-3.
000280 01  ()LEAAMT           PIC S9(13) COMP-3.
000290 01  ()TAXRAT           PIC S9(2)V9(1) COMP-3.
000300 01  ()UNPBAL           PIC S9(13) COMP-3.
000310 01  ()TRNTOT           PIC S9(13) COMP-3.
000320 01  ()PAYTOT           PIC S9(13) COMP-3.
000330 01  ()PAYFIS           PIC S9(13) COMP-3.
