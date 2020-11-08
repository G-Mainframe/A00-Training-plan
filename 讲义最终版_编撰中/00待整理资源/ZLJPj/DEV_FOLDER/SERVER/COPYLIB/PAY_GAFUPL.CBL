000010************************************************
000020* (PAY_GAFUPL)
000030************************************************
000040 01  ()OFCCOD           PIC  X(4).
000050 01  ()CNTNUM           PIC  X(9).
000060 01  ()RELEAS           PIC  X(1).
000070 01  ()RECNUM           PIC  X(4).
000080 01  ()PAYCLT           PIC  X(8).
000090 01  ()PAYNAM           PIC  N(30).
000100 01  ()PAYDAY           PIC  X(8).
000110 01  ()DIVCOD           PIC  X(4).
000120 01  ()EXPCOD           PIC  X(3).
000130 01  ()TRNAMT           PIC S9(13) COMP-3.
000140 01  ()TRNTAX           PIC S9(13) COMP-3.
000150 01  ()PAYAMT           PIC S9(13) COMP-3.
000160 01  ()CHGAMT           PIC S9(13) COMP-3.
000170 01  ()CHGTAX           PIC S9(13) COMP-3.
000180 01  ()TAXRAT           PIC S9(2)V9(1) COMP-3.
000190 01  ()REMARK           PIC  N(23).
000200 01  ()TRNNUM           PIC  X(10).
000210 01  ()ERRFLG           PIC  X(1).
