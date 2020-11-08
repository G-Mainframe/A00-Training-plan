000010************************************************
000020* (SWP_INTPAY)
000030************************************************
000040 01  ()CTLNUM           PIC  X(4).
000050 01  ()RECNUM           PIC  X(4).
000060 01  ()INTBGN           PIC  X(8).
000070 01  ()PAYDAY           PIC  X(8).
000080 01  ()HOLFLG           PIC  X(1).
000090 01  ()DAYCNT           PIC S9(4) COMP-3.
000100 01  ()BALCAP           PIC S9(13) COMP-3.
000110 01  ()COLAMT           PIC S9(13) COMP-3.
000120 01  ()RCVRAT           PIC S9(2)V9(6) COMP-3.
000130 01  ()RCVINT           PIC S9(13)V9(2) COMP-3.
000140 01  ()RCVYEN           PIC S9(13) COMP-3.
000150 01  ()PAYRAT           PIC S9(2)V9(6) COMP-3.
000160 01  ()PAYINT           PIC S9(13)V9(2) COMP-3.
000170 01  ()PAYYEN           PIC S9(13) COMP-3.
000180 01  ()DIFINT           PIC S9(13)V9(2) COMP-3.
000190 01  ()DIFYEN           PIC S9(13) COMP-3.
