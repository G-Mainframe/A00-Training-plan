000010************************************************
000020* (PAY_GAFUPL)
000030************************************************
000040 01  PAY_GAFUPL-OFCCOD PIC  X(004).
000050 01  PAY_GAFUPL-CNTNUM PIC  X(009).
000060 01  PAY_GAFUPL-RELEAS PIC  X(001).
000070 01  PAY_GAFUPL-RECNUM PIC  X(004).
000080 01  PAY_GAFUPL-PAYCLT PIC  X(008).
000090 01  PAY_GAFUPL-PAYNAM PIC  X(060).
000100 01  PAY_GAFUPL-PAYDAY PIC  X(008).
000110 01  PAY_GAFUPL-DIVCOD PIC  X(004).
000120 01  PAY_GAFUPL-EXPCOD PIC  X(003).
000130 01  PAY_GAFUPL-TRNAMT PIC S9(013) COMP-3.
000140 01  PAY_GAFUPL-TRNTAX PIC S9(013) COMP-3.
000150 01  PAY_GAFUPL-PAYAMT PIC S9(013) COMP-3.
000160 01  PAY_GAFUPL-CHGAMT PIC S9(013) COMP-3.
000170 01  PAY_GAFUPL-CHGTAX PIC S9(013) COMP-3.
000180 01  PAY_GAFUPL-TAXRAT PIC S9(002)V9(1) COMP-3.
000190 01  PAY_GAFUPL-REMARK PIC  X(046).
000200 01  PAY_GAFUPL-TRNNUM PIC  X(010).
000210 01  PAY_GAFUPL-ERRFLG PIC  X(001).