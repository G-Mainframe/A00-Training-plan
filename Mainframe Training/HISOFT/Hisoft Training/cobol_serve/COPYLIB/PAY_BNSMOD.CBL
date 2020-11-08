000010************************************************
000020* (PAY_BNSMOD)
000030************************************************
000040 01  ()JOBTYP           PIC  X(1).
000050 01  ()JOBTIM           PIC  X(6).
000060 01  ()CNTNUM           PIC  X(9).
000070 01  ()RELEAS           PIC  X(1).
000080 01  ()PLNDAY           PIC  X(8).
000090 01  ()CNTDAY           PIC  X(8).
000100 01  ()DIVCOD           PIC  X(4).
000110 01  ()CLTCOD           PIC  X(8).
000120 01  ()CLTNAM           PIC  N(30).
000130 01  ()PAYCLT           PIC  X(8).
000140 01  ()PAYNAM           PIC  N(30).
000150 01  ()RCVBGN           PIC  X(8).
000160 01  ()RCVCYC           PIC  X(2).
000170 01  ()RCVCNT           PIC S9(3) COMP-3.
000180 01  ()RCVDAY           PIC  X(2).
000190 01  ()PAYBGN           PIC  X(8).
000200 01  ()PAYCYC           PIC  X(2).
000210 01  ()PAYCNT           PIC S9(3) COMP-3.
000220 01  ()CLTCNT           PIC S9(2) COMP-3.
000230 01  ()CHCKYN           PIC  X(1).
000240 01  ()REMARK           PIC  N(23).
000250 01  ()TRNAMT           PIC S9(13) COMP-3.
000260 01  ()TRNTAX           PIC S9(13) COMP-3.
000270 01  ()CHGAMT           PIC S9(13) COMP-3.
000280 01  ()CHGTAX           PIC S9(13) COMP-3.
000290 01  ()DEMFLG           PIC  X(1).
000300 01  ()CNTDAY_O       PIC  X(8).
000310 01  ()DIVCOD_O       PIC  X(4).
000320 01  ()CLTCOD_O       PIC  X(8).
000330 01  ()CLTNAM_O       PIC  N(30).
000340 01  ()PAYCLT_O       PIC  X(8).
000350 01  ()PAYNAM_O       PIC  N(30).
000360 01  ()RCVBGN_O       PIC  X(8).
000370 01  ()RCVCYC_O       PIC  X(2).
000380 01  ()RCVCNT_O       PIC S9(3) COMP-3.
000390 01  ()RCVDAY_O       PIC  X(2).
000400 01  ()PAYBGN_O       PIC  X(8).
000410 01  ()PAYCYC_O       PIC  X(2).
000420 01  ()PAYCNT_O       PIC S9(3) COMP-3.
000430 01  ()CLTCNT_O       PIC S9(2) COMP-3.
000440 01  ()CHCKYN_O       PIC  X(1).
000450 01  ()REMARK_O       PIC  N(23).
000460 01  ()TRNAMT_O       PIC S9(13) COMP-3.
000470 01  ()TRNTAX_O       PIC S9(13) COMP-3.
000480 01  ()CHGAMT_O       PIC S9(13) COMP-3.
000490 01  ()CHGTAX_O       PIC S9(13) COMP-3.
000500 01  ()DEMFLG_O       PIC  X(1).
000510 01  ()CNTDAY_M       PIC  X(1).
000520 01  ()DIVCOD_M       PIC  X(1).
000530 01  ()CLTCOD_M       PIC  X(1).
000540 01  ()CLTNAM_M       PIC  X(1).
000550 01  ()PAYCLT_M       PIC  X(1).
000560 01  ()PAYNAM_M       PIC  X(1).
000570 01  ()RCVBGN_M       PIC  X(1).
000580 01  ()RCVCYC_M       PIC  X(1).
000590 01  ()RCVCNT_M       PIC  X(1).
000600 01  ()RCVDAY_M       PIC  X(1).
000610 01  ()PAYBGN_M       PIC  X(1).
000620 01  ()PAYCYC_M       PIC  X(1).
000630 01  ()PAYCNT_M       PIC  X(1).
000640 01  ()CLTCNT_M       PIC  X(1).
000650 01  ()CHCKYN_M       PIC  X(1).
000660 01  ()REMARK_M       PIC  X(1).
000670 01  ()TRNAMT_M       PIC  X(1).
000680 01  ()TRNTAX_M       PIC  X(1).
000690 01  ()CHGAMT_M       PIC  X(1).
000700 01  ()CHGTAX_M       PIC  X(1).
000710 01  ()DEMFLG_M       PIC  X(1).
000720 01  ()REGDAY           PIC  X(8).
000730 01  ()REGTIM           PIC  X(6).
000740 01  ()REGPSN           PIC  X(4).
000750 01  ()MODDAY           PIC  X(8).
000760 01  ()MODTIM           PIC  X(6).
000770 01  ()MODPSN           PIC  X(4).
