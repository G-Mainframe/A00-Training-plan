000010************************************************
000020* (SWP_INTSWP)
000030************************************************
000040 01  ()CTLNUM           PIC  X(4).
000050 01  ()BNKCOD           PIC  X(4).
000060 01  ()BRCCOD           PIC  X(3).
000070 01  ()BNKNAM           PIC  N(25).
000080 01  ()CONDAY           PIC  X(8).
000090 01  ()CCYCOD           PIC  X(3).
000100 01  ()CNTCAP           PIC S9(13) COMP-3.
000110 01  ()BALCAP           PIC S9(13) COMP-3.
000120 01  ()COLAMT           PIC S9(13) COMP-3.
000130 01  ()COLLST           PIC S9(13) COMP-3.
000140 01  ()COLCNT           PIC S9(3) COMP-3.
000150 01  ()RCVFIX           PIC  X(1).
000160 01  ()RCVDAY           PIC  X(3).
000170 01  ()RCVRAT           PIC S9(2)V9(6) COMP-3.
000180 01  ()PAYFIX           PIC  X(1).
000190 01  ()PAYDAY           PIC  X(3).
000200 01  ()PAYRAT           PIC S9(2)V9(6) COMP-3.
000210 01  ()MARGIN           PIC S9(2)V9(6) COMP-3.
000220 01  ()HOLSFT           PIC  X(1).
000230 01  ()ENDFIX           PIC  X(1).
000240 01  ()FRACTN           PIC  X(1).
000250 01  ()CCYRAT           PIC S9(4)V9(2) COMP-3.
000260 01  ()INTBGN           PIC  X(8).
000270 01  ()DUEDAY           PIC  X(8).
000280 01  ()MONCNT           PIC S9(3) COMP-3.
000290 01  ()UPDCYC           PIC  X(2).
000300 01  ()FRZTRM           PIC  X(2).
000310 01  ()YLDTYP           PIC  X(1).
000320 01  ()REMARK           PIC  N(25).
000330 01  ()UPDFLG           PIC  X(1).
