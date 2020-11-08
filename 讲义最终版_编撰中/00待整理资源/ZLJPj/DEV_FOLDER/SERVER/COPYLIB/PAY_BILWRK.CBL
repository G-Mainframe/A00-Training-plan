000010************************************************
000020* (PAY_BILWRK)
000030************************************************
000040 01  ()REGJPN           PIC  X(6).
000050 01  ()CTLNUM           PIC  X(9).
000060 01  ()DATNUM           PIC  X(4).
000070 01  ()UNICOD           PIC  X(3).
000080 01  ()BILNUM           PIC  X(9).
000090 01  ()BNKCOD           PIC  X(4).
000100 01  ()BRCCOD           PIC  X(3).
000110 01  ()DRWDAY           PIC  X(8).
000120 01  ()DRWJPN           PIC  X(6).
000130 01  ()ISUDAY           PIC  X(8).
000140 01  ()ISUJPN           PIC  X(6).
000150 01  ()DUEDAY           PIC  X(8).
000160 01  ()DUEJPN           PIC  X(6).
000170 01  ()CLTNAM           PIC  X(44).
000180 01  ()ISUTYP           PIC  X(1).
000190 01  ()ISUTRM           PIC  X(2).
000200 01  ()SEQNUM           PIC  X(5).
000210 01  ()SEPNUM           PIC  X(1).
000220 01  ()SNDTYP           PIC  X(1).
000230 01  ()CNTNUM           PIC  X(9).
000240 01  ()ZIPCOD           PIC  X(7).
000250 01  ()MALNAM           PIC  X(42).
000260 01  ()MALNM2           PIC  X(42).
000270 01  ()MALADR           PIC  X(42).
000280 01  ()MALAD2           PIC  X(42).
000290 01  ()MALAD3           PIC  X(42).
000300 01  ()ADRTYP           PIC  X(1).
000310 01  ()DAYBGN           PIC  X(8).
000320 01  ()DAYEND           PIC  X(8).
000330 01  ()PUTFLG           PIC  X(1).
000340 01  ()CNTCNT           PIC S9(3) COMP-3.
000350 01  ()SEPCNT           PIC S9(1) COMP-3.
000360 01  ()SEQCNT           PIC S9(1) COMP-3.
000370 01  ()BILAMT           PIC S9(13) COMP-3.
000380 01  ()TAXAMT           PIC S9(13) COMP-3.
000390 01  ()TOTAMT           PIC S9(13) COMP-3.
000400 01  ()REGDAY           PIC  X(8).
000410 01  ()REGTIM           PIC  X(6).
000420 01  ()REGPSN           PIC  X(4).
000430 01  ()MODDAY           PIC  X(8).
000440 01  ()MODTIM           PIC  X(6).
000450 01  ()MODPSN           PIC  X(4).
