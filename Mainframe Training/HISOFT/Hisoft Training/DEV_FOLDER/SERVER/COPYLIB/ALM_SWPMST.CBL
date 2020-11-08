000010************************************************
000020* (ALM_SWPMST)
000030************************************************
000040 01  ()CTLNUM           PIC  X(4).
000050 01  ()CLTNAM           PIC  N(20).
000060 01  ()ISUDAY           PIC  X(8).
000070 01  ()INTBGN           PIC  X(8).
000080 01  ()DUEDAY           PIC  X(8).
000090 01  ()UPDCYC           PIC  X(2).
000100 01  ()MONCNT           PIC S9(3) COMP-3.
000110 01  ()CNTCAP           PIC S9(13) COMP-3.
000120 01  ()BALCAP           PIC S9(13) COMP-3.
000130 01  ()COLAMT           PIC S9(13) COMP-3.
000140 01  ()COLLST           PIC S9(13) COMP-3.
000150 01  ()COLCNT           PIC S9(2) COMP-3.
000160 01  ()RCVDAY           PIC  X(3).
000170 01  ()PAYDAY           PIC  X(3).
000180 01  ()RCVRAT           PIC S9(2)V9(5) COMP-3.
000190 01  ()PAYRAT           PIC S9(2)V9(5) COMP-3.
000200 01  ()MARGIN           PIC S9(2)V9(5) COMP-3.
000210 01  ()CCYCOD           PIC  X(3).
000220 01  ()CCYRAT           PIC S9(4)V9(2) COMP-3.
000230 01  ()AVEBAL           PIC S9(13) COMP-3.
000240 01  ()UPDFLG           PIC  X(1).
