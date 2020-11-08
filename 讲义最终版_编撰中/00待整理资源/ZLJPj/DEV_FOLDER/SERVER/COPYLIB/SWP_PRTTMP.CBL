000010************************************************
000020* (SWP_PRTTMP)
000030************************************************
000040 01  ()CTLNUM           PIC  X(4).
000050 01  ()BASDAY           PIC  X(8).
000060 01  ()CCYCOD           PIC  X(3).
000070 01  ()BNKCOD           PIC  X(4).
000080 01  ()BRCCOD           PIC  X(3).
000090 01  ()BNKNAM           PIC  X(50).
000100 01  ()INTBGN           PIC  X(8).
000110 01  ()PAYDAY           PIC  X(8).
000120 01  ()DUEDAY           PIC  X(8).
000130 01  ()DAYCNT           PIC S9(4) COMP-3.
000140 01  ()UNPDAY           PIC S9(4) COMP-3.
000150 01  ()CNTCAP           PIC S9(13) COMP-3.
000160 01  ()BALCAP           PIC S9(13) COMP-3.
000170 01  ()AVEBAL           PIC S9(13) COMP-3.
000180 01  ()RCVRAT           PIC S9(2)V9(6) COMP-3.
000190 01  ()RCVAVE           PIC S9(2)V9(6) COMP-3.
000200 01  ()RCVYLD           PIC S9(2)V9(6) COMP-3.
000210 01  ()RCVINT           PIC S9(13)V9(2) COMP-3.
000220 01  ()RCVYEN           PIC S9(13) COMP-3.
000230 01  ()PAYRAT           PIC S9(2)V9(6) COMP-3.
000240 01  ()PAYAVE           PIC S9(2)V9(6) COMP-3.
000250 01  ()PAYYLD           PIC S9(2)V9(6) COMP-3.
000260 01  ()PAYINT           PIC S9(13)V9(2) COMP-3.
000270 01  ()PAYYEN           PIC S9(13) COMP-3.
000280 01  ()MARGIN           PIC S9(2)V9(6) COMP-3.
000290 01  ()UNPINT           PIC S9(13)V9(2) COMP-3.
000300 01  ()DIFINT           PIC S9(13)V9(2) COMP-3.
000310 01  ()CCYRAT           PIC S9(4)V9(2) COMP-3.
000320 01  ()DIFYEN           PIC S9(13) COMP-3.
