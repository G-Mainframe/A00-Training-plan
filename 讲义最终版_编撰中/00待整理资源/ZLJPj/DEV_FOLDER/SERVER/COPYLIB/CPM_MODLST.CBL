000010************************************************
000020* (CPM_MODLST)
000030************************************************
000040 01  ()JOBTYP           PIC  X(1).
000050 01  ()REGTIM           PIC  X(6).
000060 01  ()CTLNUM           PIC  X(6).
000070 01  ()CLTCOD           PIC  X(7).
000080 01  ()CLTNAM           PIC  N(20).
000090 01  ()REFNUM           PIC  X(10).
000100 01  ()BILNUM           PIC  X(7).
000110 01  ()CNTDAY           PIC  X(8).
000120 01  ()BORDAY           PIC  X(8).
000130 01  ()DUEDAY           PIC  X(8).
000140 01  ()HLDTYP           PIC  X(1).
000150 01  ()BORTYP           PIC  X(1).
000160 01  ()TRMTYP           PIC  X(1).
000170 01  ()FIXFLT           PIC  X(1).
000180 01  ()BEFAFT           PIC  X(1).
000190 01  ()YERDAY           PIC  X(1).
000200 01  ()DAYBAS           PIC  X(1).
000210 01  ()FRATYP           PIC  X(1).
000220 01  ()SALTYP           PIC  X(1).
000230 01  ()OBJTYP           PIC  X(1).
000240 01  ()ICGTYP           PIC  X(1).
000250 01  ()HOLSFT           PIC  X(1).
000260 01  ()DUECAL           PIC  X(1).
000270 01  ()MTGTYP           PIC  X(1).
000280 01  ()CPYDAY           PIC  X(2).
000290 01  ()ICGDAY           PIC  X(8).
000300 01  ()IPYDAY           PIC  X(8).
000310 01  ()FSTPAY           PIC  X(8).
000320 01  ()IPYCYC           PIC  X(2).
000330 01  ()CPYCYC           PIC  X(2).
000340 01  ()GAPTYP           PIC  X(1).
000350 01  ()REMARK           PIC  N(20).
000360 01  ()CREDEP           PIC  X(1).
000370 01  ()CRENUM           PIC  X(7).
000380 01  ()DEBBNK           PIC  X(4).
000390 01  ()DEBBRC           PIC  X(3).
000400 01  ()DEBDEP           PIC  X(1).
000410 01  ()DEBNUM           PIC  X(7).
000420 01  ()DAYCNT           PIC S9(4) COMP-3.
000430 01  ()BORCAP           PIC S9(13) COMP-3.
000440 01  ()INTRAT           PIC S9(2)V9(6) COMP-3.
000450 01  ()INTRST           PIC S9(13) COMP-3.
000460 01  ()CLTCOD_O       PIC  X(7).
000470 01  ()CLTNAM_O       PIC  N(20).
000480 01  ()REFNUM_O       PIC  X(10).
000490 01  ()BILNUM_O       PIC  X(7).
000500 01  ()CNTDAY_O       PIC  X(8).
000510 01  ()BORDAY_O       PIC  X(8).
000520 01  ()DUEDAY_O       PIC  X(8).
000530 01  ()HLDTYP_O       PIC  X(1).
000540 01  ()BORTYP_O       PIC  X(1).
000550 01  ()TRMTYP_O       PIC  X(1).
000560 01  ()FIXFLT_O       PIC  X(1).
000570 01  ()BEFAFT_O       PIC  X(1).
000580 01  ()YERDAY_O       PIC  X(1).
000590 01  ()DAYBAS_O       PIC  X(1).
000600 01  ()FRATYP_O       PIC  X(1).
000610 01  ()SALTYP_O       PIC  X(1).
000620 01  ()OBJTYP_O       PIC  X(1).
000630 01  ()ICGTYP_O       PIC  X(1).
000640 01  ()HOLSFT_O       PIC  X(1).
000650 01  ()DUECAL_O       PIC  X(1).
000660 01  ()MTGTYP_O       PIC  X(1).
000670 01  ()DAYCNT_O       PIC S9(4) COMP-3.
000680 01  ()BORCAP_O       PIC S9(13) COMP-3.
000690 01  ()INTRAT_O       PIC S9(2)V9(6) COMP-3.
000700 01  ()INTRST_O       PIC S9(13) COMP-3.
000710 01  ()CLTCOD_M       PIC  X(1).
000720 01  ()CLTNAM_M       PIC  X(1).
000730 01  ()REFNUM_M       PIC  X(1).
000740 01  ()BILNUM_M       PIC  X(1).
000750 01  ()CNTDAY_M       PIC  X(1).
000760 01  ()BORDAY_M       PIC  X(1).
000770 01  ()DUEDAY_M       PIC  X(1).
000780 01  ()HLDTYP_M       PIC  X(1).
000790 01  ()BORTYP_M       PIC  X(1).
000800 01  ()TRMTYP_M       PIC  X(1).
000810 01  ()FIXFLT_M       PIC  X(1).
000820 01  ()BEFAFT_M       PIC  X(1).
000830 01  ()YERDAY_M       PIC  X(1).
000840 01  ()DAYBAS_M       PIC  X(1).
000850 01  ()FRATYP_M       PIC  X(1).
000860 01  ()SALTYP_M       PIC  X(1).
000870 01  ()OBJTYP_M       PIC  X(1).
000880 01  ()ICGTYP_M       PIC  X(1).
000890 01  ()HOLSFT_M       PIC  X(1).
000900 01  ()DUECAL_M       PIC  X(1).
000910 01  ()MTGTYP_M       PIC  X(1).
000920 01  ()DAYCNT_M       PIC  X(1).
000930 01  ()BORCAP_M       PIC  X(1).
000940 01  ()INTRAT_M       PIC  X(1).
000950 01  ()INTRST_M       PIC  X(1).
