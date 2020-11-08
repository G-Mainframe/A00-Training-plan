000010************************************************
000020* (EXP_SIMMOD)
000030************************************************
000040 01  ()JOBTYP           PIC  X(1).
000050 01  ()REGTIM           PIC  X(6).
000060 01  ()TRNNUM           PIC  X(4).
000070 01  ()EXTNUM           PIC  X(2).
000080 01  ()DIVCOD           PIC  X(4).
000090 01  ()CNTNUM           PIC  X(7).
000100 01  ()PAYDAY           PIC  X(8).
000110 01  ()PAYMON           PIC  X(6).
000120 01  ()PAYBGN           PIC  X(6).
000130 01  ()PAYEND           PIC  X(6).
000140 01  ()FIXDAY           PIC  X(2).
000150 01  ()FISYER           PIC  X(4).
000160 01  ()ACCCOD           PIC  X(5).
000170 01  ()ACCEXT           PIC  X(2).
000180 01  ()PAYTYP           PIC  X(1).
000190 01  ()APRNUM           PIC  X(10).
000200 01  ()PAYCYC           PIC  X(2).
000210 01  ()CLTCOD           PIC  X(8).
000220 01  ()FRMNAM           PIC  N(25).
000230 01  ()ITMNAM           PIC  N(25).
000240 01  ()REMAK1           PIC  N(25).
000250 01  ()REMAK2           PIC  N(25).
000260 01  ()DEMFLG           PIC  X(1).
000270 01  ()RCVFLG           PIC  X(1).
000280 01  ()AUTFLG           PIC  X(1).
000290 01  ()TAXTYP           PIC  X(1).
000300 01  ()ITMCNT           PIC S9(3) COMP-3.
000310 01  ()PAYCNT           PIC S9(3) COMP-3.
000320 01  ()PAYAMT           PIC S9(13) COMP-3.
000330 01  ()CONTAX           PIC S9(13) COMP-3.
000340 01  ()TOTAMT           PIC S9(13) COMP-3.
000350 01  ()UNTPRC           PIC S9(13) COMP-3.
000360 01  ()PAYFIS           PIC S9(13) COMP-3.
000370 01  ()DIVCOD_O       PIC  X(4).
000380 01  ()CNTNUM_O       PIC  X(7).
000390 01  ()PAYDAY_O       PIC  X(8).
000400 01  ()PAYBGN_O       PIC  X(6).
000410 01  ()PAYEND_O       PIC  X(6).
000420 01  ()FIXDAY_O       PIC  X(2).
000430 01  ()ACCCOD_O       PIC  X(5).
000440 01  ()ACCEXT_O       PIC  X(2).
000450 01  ()APRNUM_O       PIC  X(10).
000460 01  ()PAYCYC_O       PIC  X(2).
000470 01  ()CLTCOD_O       PIC  X(8).
000480 01  ()FRMNAM_O       PIC  N(25).
000490 01  ()ITMNAM_O       PIC  N(25).
000500 01  ()DEMFLG_O       PIC  X(1).
000510 01  ()RCVFLG_O       PIC  X(1).
000520 01  ()TAXTYP_O       PIC  X(1).
000530 01  ()ITMCNT_O       PIC S9(3) COMP-3.
000540 01  ()PAYCNT_O       PIC S9(3) COMP-3.
000550 01  ()PAYAMT_O       PIC S9(13) COMP-3.
000560 01  ()CONTAX_O       PIC S9(13) COMP-3.
000570 01  ()TOTAMT_O       PIC S9(13) COMP-3.
000580 01  ()UNTPRC_O       PIC S9(13) COMP-3.
000590 01  ()PAYFIS_O       PIC S9(13) COMP-3.
000600 01  ()DIVCOD_M       PIC  X(1).
000610 01  ()CNTNUM_M       PIC  X(1).
000620 01  ()PAYDAY_M       PIC  X(1).
000630 01  ()PAYBGN_M       PIC  X(1).
000640 01  ()PAYEND_M       PIC  X(1).
000650 01  ()FIXDAY_M       PIC  X(1).
000660 01  ()ACCCOD_M       PIC  X(1).
000670 01  ()ACCEXT_M       PIC  X(1).
000680 01  ()APRNUM_M       PIC  X(1).
000690 01  ()PAYCYC_M       PIC  X(1).
000700 01  ()CLTCOD_M       PIC  X(1).
000710 01  ()FRMNAM_M       PIC  X(1).
000720 01  ()ITMNAM_M       PIC  X(1).
000730 01  ()DEMFLG_M       PIC  X(1).
000740 01  ()RCVFLG_M       PIC  X(1).
000750 01  ()TAXTYP_M       PIC  X(1).
000760 01  ()ITMCNT_M       PIC  X(1).
000770 01  ()PAYCNT_M       PIC  X(1).
000780 01  ()PAYAMT_M       PIC  X(1).
000790 01  ()CONTAX_M       PIC  X(1).
000800 01  ()TOTAMT_M       PIC  X(1).
000810 01  ()UNTPRC_M       PIC  X(1).
000820 01  ()PAYFIS_M       PIC  X(1).
