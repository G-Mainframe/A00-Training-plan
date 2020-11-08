000010************************************************
000020* (PAY_BNSUPM)
000030************************************************
000040 01  ()JOBTYP           PIC  X(1).
000050 01  ()JOBTIM           PIC  X(6).
000060 01  ()OFCCOD           PIC  X(4).
000070 01  ()CNTNUM           PIC  X(9).
000080 01  ()RELEAS           PIC  X(1).
000090 01  ()RECNUM           PIC  X(4).
000100 01  ()PAYCLT           PIC  X(8).
000110 01  ()PAYNAM           PIC  N(30).
000120 01  ()PAYDAY           PIC  X(8).
000130 01  ()DIVCOD           PIC  X(4).
000140 01  ()EXPCOD           PIC  X(3).
000150 01  ()TRNAMT           PIC S9(13) COMP-3.
000160 01  ()TRNTAX           PIC S9(13) COMP-3.
000170 01  ()PAYAMT           PIC S9(13) COMP-3.
000180 01  ()CHGAMT           PIC S9(13) COMP-3.
000190 01  ()CHGTAX           PIC S9(13) COMP-3.
000200 01  ()TAXRAT           PIC S9(2)V9(1) COMP-3.
000210 01  ()REMARK           PIC  N(23).
000220 01  ()CHGTYP           PIC  X(1).
000230 01  ()TRNNUM           PIC  X(10).
000240 01  ()ERRFLG           PIC  X(1).
000250 01  ()TRNAMT_O       PIC S9(13) COMP-3.
000260 01  ()TRNTAX_O       PIC S9(13) COMP-3.
000270 01  ()PAYAMT_O       PIC S9(13) COMP-3.
000280 01  ()CHGAMT_O       PIC S9(13) COMP-3.
000290 01  ()CHGTAX_O       PIC S9(13) COMP-3.
000300 01  ()TAXRAT_O       PIC S9(2)V9(1) COMP-3.
000310 01  ()REMARK_O       PIC  N(23).
000320 01  ()CHGTYP_O       PIC  X(1).
000330 01  ()TRNNUM_O       PIC  X(10).
000340 01  ()TRNAMT_M       PIC  X(1).
000350 01  ()TRNTAX_M       PIC  X(1).
000360 01  ()PAYAMT_M       PIC  X(1).
000370 01  ()CHGAMT_M       PIC  X(1).
000380 01  ()CHGTAX_M       PIC  X(1).
000390 01  ()TAXRAT_M       PIC  X(1).
000400 01  ()REMARK_M       PIC  X(1).
000410 01  ()CHGTYP_M       PIC  X(1).
000420 01  ()TRNNUM_M       PIC  X(1).
000430 01  ()REGDAY           PIC  X(8).
000440 01  ()REGTIM           PIC  X(6).
000450 01  ()REGPSN           PIC  X(4).
000460 01  ()MODDAY           PIC  X(8).
000470 01  ()MODTIM           PIC  X(6).
000480 01  ()MODPSN           PIC  X(4).
