000010************************************************
000020* (PAY_GAFMOD)
000030************************************************
000040 01  ()JOBTYP           PIC  X(4).
000050 01  ()REGTIM           PIC  X(6).
000060 01  ()CNTNUM           PIC  X(9).
000070 01  ()RELEAS           PIC  X(1).
000080 01  ()CNTDAY           PIC  X(8).
000090 01  ()DIVCOD           PIC  X(4).
000100 01  ()PAYCLT           PIC  X(8).
000110 01  ()PAYNAM           PIC  N(30).
000120 01  ()PAYTYP           PIC  X(1).
000130 01  ()PAYBGN           PIC  X(8).
000140 01  ()PAYCYC           PIC  X(2).
000150 01  ()PAYCNT           PIC S9(3) COMP-3.
000160 01  ()PAYEND           PIC  X(8).
000170 01  ()HOLSFT           PIC  X(1).
000180 01  ()EXPCOD           PIC  X(3).
000190 01  ()REMARK           PIC  N(23).
000200 01  ()TRNAMT           PIC S9(13) COMP-3.
000210 01  ()TRNTAX           PIC S9(13) COMP-3.
000220 01  ()CHGAMT           PIC S9(13) COMP-3.
000230 01  ()LEAAMT           PIC S9(13) COMP-3.
000240 01  ()TAXRAT           PIC S9(2)V9(1) COMP-3.
000250 01  ()CHCKYN           PIC  X(1).
000260 01  ()CNTDAY_O       PIC  X(8).
000270 01  ()DIVCOD_O       PIC  X(4).
000280 01  ()PAYCLT_O       PIC  X(8).
000290 01  ()PAYNAM_O       PIC  N(30).
000300 01  ()PAYTYP_O       PIC  X(1).
000310 01  ()PAYBGN_O       PIC  X(8).
000320 01  ()PAYCYC_O       PIC  X(2).
000330 01  ()PAYCNT_O       PIC S9(3) COMP-3.
000340 01  ()PAYEND_O       PIC  X(8).
000350 01  ()EXPCOD_O       PIC  X(3).
000360 01  ()REMARK_O       PIC  N(23).
000370 01  ()TRNAMT_O       PIC S9(13) COMP-3.
000380 01  ()TRNTAX_O       PIC S9(13) COMP-3.
000390 01  ()CHGAMT_O       PIC S9(13) COMP-3.
000400 01  ()LEAAMT_O       PIC S9(13) COMP-3.
000410 01  ()CHCKYN_O       PIC  X(1).
000420 01  ()CNTDAY_M       PIC  X(1).
000430 01  ()DIVCOD_M       PIC  X(1).
000440 01  ()PAYCLT_M       PIC  X(1).
000450 01  ()PAYNAM_M       PIC  X(1).
000460 01  ()PAYTYP_M       PIC  X(1).
000470 01  ()PAYBGN_M       PIC  X(1).
000480 01  ()PAYCYC_M       PIC  X(1).
000490 01  ()PAYCNT_M       PIC  X(1).
000500 01  ()PAYEND_M       PIC  X(1).
000510 01  ()EXPCOD_M       PIC  X(1).
000520 01  ()REMARK_M       PIC  X(1).
000530 01  ()TRNAMT_M       PIC  X(1).
000540 01  ()TRNTAX_M       PIC  X(1).
000550 01  ()CHGAMT_M       PIC  X(1).
000560 01  ()LEAAMT_M       PIC  X(1).
000570 01  ()CHCKYN_M       PIC  X(1).
