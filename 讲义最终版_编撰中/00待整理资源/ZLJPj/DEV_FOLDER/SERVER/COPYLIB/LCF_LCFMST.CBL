000010************************************************
000020* (LCF_LCFMST)
000030************************************************
000040 01  ()CTLNUM           PIC  X(6).
000050 01  ()CLTCOD           PIC  X(7).
000060 01  ()CLTNAM           PIC  N(20).
000070 01  ()REFNUM           PIC  X(10).
000080 01  ()BRDNAM           PIC  X(40).
000090 01  ()RATTYP           PIC  X(20).
000100 01  ()CNTDAY           PIC  X(8).
000110 01  ()BORDAY           PIC  X(8).
000120 01  ()DUEDAY           PIC  X(8).
000130 01  ()PAYCYC           PIC  X(2).
000140 01  ()BORTYP           PIC  X(1).
000150 01  ()TRMTYP           PIC  X(1).
000160 01  ()FIXFLT           PIC  X(1).
000170 01  ()BEFAFT           PIC  X(1).
000180 01  ()YERDAY           PIC  X(1).
000190 01  ()DAYBAS           PIC  X(1).
000200 01  ()FRATYP           PIC  X(1).
000210 01  ()SALTYP           PIC  X(1).
000220 01  ()OBJTYP           PIC  X(1).
000230 01  ()HOLSFT           PIC  X(1).
000240 01  ()GAPTYP           PIC  X(1).
000250 01  ()CREDEP           PIC  X(1).
000260 01  ()CRENUM           PIC  X(7).
000270 01  ()DEBBNK           PIC  X(4).
000280 01  ()DEBBRC           PIC  X(3).
000290 01  ()DEBDEP           PIC  X(1).
000300 01  ()DEBNUM           PIC  X(7).
000310 01  ()DAYCNT           PIC S9(4) COMP-3.
000320 01  ()FSTCAP           PIC S9(13) COMP-3.
000330 01  ()SECCAP           PIC S9(13) COMP-3.
000340 01  ()CAPTOT           PIC S9(13) COMP-3.
000350 01  ()CREAMT           PIC S9(13) COMP-3.
000360 01  ()FSTRAT           PIC S9(2)V9(6) COMP-3.
000370 01  ()SECRAT           PIC S9(2)V9(6) COMP-3.
000380 01  ()SUPRAT           PIC S9(2)V9(6) COMP-3.
000390 01  ()FSTINT           PIC S9(13) COMP-3.
000400 01  ()SECINT           PIC S9(13) COMP-3.
000410 01  ()REWRAT           PIC S9(2)V9(6) COMP-3.
000420 01  ()REWAMT           PIC S9(13) COMP-3.
000430 01  ()REWTAX           PIC S9(13) COMP-3.
000440 01  ()CHGRAT           PIC S9(2)V9(6) COMP-3.
000450 01  ()CHGAMT           PIC S9(13) COMP-3.
000460 01  ()CHGTAX           PIC S9(13) COMP-3.
000470 01  ()BKIRAT           PIC S9(2)V9(6) COMP-3.
000480 01  ()BKIAMT           PIC S9(13) COMP-3.
000490 01  ()BKITAX           PIC S9(13) COMP-3.
000500 01  ()REGDAY           PIC  X(8).
000510 01  ()REGTIM           PIC  X(6).
000520 01  ()REGPSN           PIC  X(4).
000530 01  ()MODDAY           PIC  X(8).
000540 01  ()MODTIM           PIC  X(6).
000550 01  ()MODPSN           PIC  X(4).
