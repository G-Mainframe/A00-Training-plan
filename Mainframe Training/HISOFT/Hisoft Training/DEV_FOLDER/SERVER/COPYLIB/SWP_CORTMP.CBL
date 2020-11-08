000010************************************************
000020* (SWP_CORTMP)
000030************************************************
000040 01  ()JOBTYP           PIC  X(1).
000050 01  ()REGDAY           PIC  X(8).
000060 01  ()REGTIM           PIC  X(6).
000070 01  ()CTLNUM           PIC  X(4).
000080 01  ()BNKCOD           PIC  X(4).
000090 01  ()BRCCOD           PIC  X(3).
000100 01  ()BNKNAM           PIC  N(25).
000110 01  ()CONDAY           PIC  X(8).
000120 01  ()CCYCOD           PIC  X(3).
000130 01  ()CNTCAP           PIC S9(13) COMP-3.
000140 01  ()BALCAP           PIC S9(13) COMP-3.
000150 01  ()COLAMT           PIC S9(13) COMP-3.
000160 01  ()COLLST           PIC S9(13) COMP-3.
000170 01  ()COLCNT           PIC S9(3) COMP-3.
000180 01  ()RCVRAT           PIC S9(2)V9(6) COMP-3.
000190 01  ()PAYRAT           PIC S9(2)V9(6) COMP-3.
000200 01  ()MARGIN           PIC S9(2)V9(6) COMP-3.
000210 01  ()INTBGN           PIC  X(8).
000220 01  ()DUEDAY           PIC  X(8).
000230 01  ()BNKCOD_O       PIC  X(4).
000240 01  ()BRCCOD_O       PIC  X(3).
000250 01  ()CONDAY_O       PIC  X(8).
000260 01  ()CCYCOD_O       PIC  X(3).
000270 01  ()CNTCAP_O       PIC S9(13) COMP-3.
000280 01  ()COLAMT_O       PIC S9(13) COMP-3.
000290 01  ()COLLST_O       PIC S9(13) COMP-3.
000300 01  ()RCVRAT_O       PIC S9(2)V9(6) COMP-3.
000310 01  ()PAYRAT_O       PIC S9(2)V9(6) COMP-3.
000320 01  ()MARGIN_O       PIC S9(2)V9(6) COMP-3.
000330 01  ()INTBGN_O       PIC  X(8).
000340 01  ()DUEDAY_O       PIC  X(8).
000350 01  ()BNKCOD_M       PIC  X(1).
000360 01  ()BRCCOD_M       PIC  X(1).
000370 01  ()CONDAY_M       PIC  X(1).
000380 01  ()CCYCOD_M       PIC  X(1).
000390 01  ()CNTCAP_M       PIC  X(1).
000400 01  ()COLAMT_M       PIC  X(1).
000410 01  ()COLLST_M       PIC  X(1).
000420 01  ()RCVRAT_M       PIC  X(1).
000430 01  ()PAYRAT_M       PIC  X(1).
000440 01  ()MARGIN_M       PIC  X(1).
000450 01  ()INTBGN_M       PIC  X(1).
000460 01  ()DUEDAY_M       PIC  X(1).
