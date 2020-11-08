000010************************************************
000020* (PAY_GAFPAY)
000030************************************************
000040 01  ()CNTNUM           PIC  X(9).
000050 01  ()RELEAS           PIC  X(1).
000060 01  ()RECNUM           PIC  X(4).
000070 01  ()TRNTYP           PIC  X(1).
000080 01  ()DIVCOD           PIC  X(4).
000090 01  ()PAYCLT           PIC  X(8).
000100 01  ()PLNDAY           PIC  X(8).
000110 01  ()TRNDAY           PIC  X(8).
000120 01  ()TRNAMT           PIC S9(13) COMP-3.
000130 01  ()TRNTAX           PIC S9(13) COMP-3.
000140 01  ()PAYAMT           PIC S9(13) COMP-3.
000150 01  ()DEMFLG           PIC  X(1).
000160 01  ()PAYFLG           PIC  X(1).
000170 01  ()REGDAY           PIC  X(8).
000180 01  ()REGTIM           PIC  X(6).
000190 01  ()REGPSN           PIC  X(4).
000200 01  ()MODDAY           PIC  X(8).
000210 01  ()MODTIM           PIC  X(6).
000220 01  ()MODPSN           PIC  X(4).
