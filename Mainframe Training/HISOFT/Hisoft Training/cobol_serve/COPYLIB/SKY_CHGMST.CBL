000010************************************************
000020* (SKY_CHGMST)
000030************************************************
000040 01  ()CNTNUM           PIC  X(9).
000050 01  ()OURDIV           PIC  X(4).
000060 01  ()OURTEL           PIC  N(7.5).
000070 01  ()ISUTYP           PIC  X(1).
000080 01  ()ISUNAM           PIC  N(20).
000090 01  ()CLTCOD           PIC  X(8).
000100 01  ()CLTNAM           PIC  N(30).
000110 01  ()CLTDIV           PIC  N(25).
000120 01  ()ADRTYP           PIC  X(1).
000130 01  ()ZIPCOD           PIC  X(7).
000140 01  ()CLTADR           PIC  N(25).
000150 01  ()CLTAD2           PIC  N(25).
000160 01  ()TELNUM           PIC  N(7.5).
000170 01  ()PAYBGN           PIC  X(8).
000180 01  ()PAYEND           PIC  X(8).
000190 01  ()PAYDAY           PIC  X(8).
000200 01  ()FIXDAY           PIC  X(2).
000210 01  ()PAYCYC           PIC  X(2).
000220 01  ()PAYTYP           PIC  X(1).
000230 01  ()APPLIC           PIC  N(10).
000240 01  ()PRTTIM           PIC  X(1).
000250 01  ()PRTPTN           PIC  X(2).
000260 01  ()PRTMLT           PIC  X(1).
000270 01  ()DAYSHW           PIC  X(1).
000280 01  ()DEMTYP           PIC  X(1).
000290 01  ()ITMNAM           PIC  N(20).
000300 01  ()REMARK           PIC  N(40).
000310 01  ()REMAR2           PIC  N(40).
000320 01  ()PAYCNT           PIC S9(3) COMP-3.
000330 01  ()TOTCNT           PIC S9(3) COMP-3.
000340 01  ()DEMCNT           PIC S9(3) COMP-3.
000350 01  ()TAXRAT           PIC S9(2)V9(2) COMP-3.
000360 01  ()LEAAMT           PIC S9(13) COMP-3.
000370 01  ()LEAAM2           PIC S9(13) COMP-3.
000380 01  ()MNTCHG           PIC S9(13) COMP-3.
000390 01  ()LEATAX           PIC S9(13) COMP-3.
000400 01  ()LEATX2           PIC S9(13) COMP-3.
000410 01  ()MNTTAX           PIC S9(13) COMP-3.
