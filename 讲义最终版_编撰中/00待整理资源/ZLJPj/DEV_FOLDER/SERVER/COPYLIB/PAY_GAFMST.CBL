000010************************************************
000020* (PAY_GAFMST)
000030************************************************
000040 01  ()CNTNUM           PIC  X(9).
000050 01  ()RELEAS           PIC  X(1).
000060 01  ()CNTDAY           PIC  X(8).
000070 01  ()DIVCOD           PIC  X(4).
000080 01  ()PAYCLT           PIC  X(8).
000090 01  ()PAYNAM           PIC  N(30).
000100 01  ()PAYTYP           PIC  X(1).
000110 01  ()PAYBGN           PIC  X(8).
000120 01  ()PAYCYC           PIC  X(2).
000130 01  ()PAYCNT           PIC S9(3) COMP-3.
000140 01  ()PAYEND           PIC  X(8).
000150 01  ()HOLSFT           PIC  X(1).
000160 01  ()EXPCOD           PIC  X(3).
000170 01  ()REMARK           PIC  N(23).
000180 01  ()TRNAMT           PIC S9(13) COMP-3.
000190 01  ()TRNTAX           PIC S9(13) COMP-3.
000200 01  ()TRNTOT           PIC S9(13) COMP-3.
000210 01  ()CHGAMT           PIC S9(13) COMP-3.
000220 01  ()LEAAMT           PIC S9(13) COMP-3.
000230 01  ()TAXRAT           PIC S9(2)V9(1) COMP-3.
000240 01  ()CHCKYN           PIC  X(1).
000250 01  ()UPDFLG           PIC  X(1).
000260 01  ()REGDAY           PIC  X(8).
000270 01  ()REGTIM           PIC  X(6).
000280 01  ()REGPSN           PIC  X(4).
000290 01  ()MODDAY           PIC  X(8).
000300 01  ()MODTIM           PIC  X(6).
000310 01  ()MODPSN           PIC  X(4).
