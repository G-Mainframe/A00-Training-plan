000010************************************************
000020* (PAY_EXPDWL)
000030************************************************
000040 01  ()DATTYP           PIC  X(1).
000050 01  ()CNTNUM           PIC  X(9).
000060 01  ()RELEAS           PIC  X(1).
000070 01  ()CNTDAY           PIC  X(8).
000080 01  ()OFCCOD           PIC  X(4).
000090 01  ()PLNDAY           PIC  X(8).
000100 01  ()TRNDAY           PIC  X(8).
000110 01  ()RCVBGN           PIC  X(8).
000120 01  ()RCVCYC           PIC  X(2).
000130 01  ()RCVDAY           PIC  X(2).
000140 01  ()RCVCNT           PIC S9(3) COMP-3.
000150 01  ()CLTCOD           PIC  X(8).
000160 01  ()TRNAMT           PIC S9(13) COMP-3.
000170 01  ()DEMCOD           PIC  X(3).
000180 01  ()REMARK           PIC  N(23).
000190 01  ()CLTNAM           PIC  N(30).
000200 01  ()ERRFLG           PIC  X(1).
000210 01  ()REGDAY           PIC  X(8).
000220 01  ()REGTIM           PIC  X(6).
000230 01  ()REGPSN           PIC  X(4).
000240 01  ()MODDAY           PIC  X(8).
000250 01  ()MODTIM           PIC  X(6).
000260 01  ()MODPSN           PIC  X(4).
