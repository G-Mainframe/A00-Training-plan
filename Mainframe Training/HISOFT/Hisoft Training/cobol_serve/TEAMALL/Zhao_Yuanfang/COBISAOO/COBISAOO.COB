000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : “ü‹àÁžŠÇ—ˆÚs                       *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBISAOO                               *
000050*      3. ˆ—ŠT—v      : “ü‹àÁžŠÇ—(ÁžŠî–{î•ñ)‚ðÁž’Ê”Ô‚Ì *
000060*                         ’PˆÊ‚Å“Çž‚ÝA“ü‹àÁžŠÇ—A           *
000070*                         “ü‹àÁžŠÇ—_“ü‹à–¾×‚ðì¬‚·‚éB      *
000080*      4. ì¬ŽÒ        : æâ‰“•û                                 *
000090*      5. ì¬“ú        : 2005.04.02                             *
000100******************************************************************
000110*                                                                 
000120******************************************************************
000130*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          COBISAOO.                   
000180******************************************************************
000190*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000200******************************************************************
000210 ENVIRONMENT                          DIVISION.                   
000220******************************************************************
000230*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000240******************************************************************
000250 DATA                                 DIVISION.                   
000260******************************************************************
000270*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000280******************************************************************
000290  WORKING-STORAGE                     SECTION.                    
000300*----------------------------------------------------------------*
000310*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000320*----------------------------------------------------------------*
000330     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBISAOO.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(85) VALUE "select V“ü‹àŽd–ó’ZkƒR[ƒh   int
      -    "o :b1  from IKOTBL008 where ‹Œ“ü‹àŽd–ó’ZkƒR[ƒh=:b2".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D57NKK_TBL(Áž’Ê”Ô,
      -     "ƒŒƒR[ƒh‹æ•ª,Áž”NŒŽ“ú,ÁžŽž,Áž’S“–ŽÒ,Žd–ó’ZkƒR[ƒh,
      -    "“E—v,ÁžŽæÁ‹æ•ª,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,“o˜^’S“–ŽÒ,XV”NŒŽ“ú,
      -    "XVŽžŠÔ,".

           02  FILLER PIC X(99) VALUE "XVŽÒ,“ü—Í’S“–ŽÒƒR[ƒh) values (
      -    ":b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:b13,:b14
      -    ",:b15)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D57NKM_TBL(Áž’Ê”Ô,
      -     "“ü‹à’Ê”Ô,Áž‘ÎÛŠz,ÁžŽæÁ‹æ•ª,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,“o˜^’S
      -    "“–ŽÒ,XV”NŒŽ“ú,XVŽžŠÔ,XVŽÒ,“ü—Í’S“–ŽÒƒR[ƒh) values (:b
      -    "1,:b2,:b3".

           02  FILLER PIC X(35) VALUE ",:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b1
      -    "1)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +290069.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +24.
           02  SQL-ITERS    PIC S9(9) COMP-5.
           02  SQL-OFFSET   PIC S9(9) COMP-5.
           02  SQL-SELERR   PIC S9(4) COMP-5.
           02  SQL-SQLETY   PIC S9(4) COMP-5.
           02  SQL-OCCURS   PIC S9(9) COMP-5.
           02  SQL-CUD      PIC S9(9) COMP-5.
           02  SQL-SQLEST   PIC S9(9) COMP-5.
           02  SQL-STMT     PIC S9(9) COMP-5.
           02  SQL-SQLADTP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQLTDSP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQPHSV   PIC S9(9) COMP-5.
           02  SQL-SQPHSL   PIC S9(9) COMP-5.
           02  SQL-SQPHSS   PIC S9(9) COMP-5.
           02  SQL-SQPIND   PIC S9(9) COMP-5.
           02  SQL-SQPINS   PIC S9(9) COMP-5.
           02  SQL-SQPARM   PIC S9(9) COMP-5.
           02  SQL-SQPARC   PIC S9(9) COMP-5.
           02  SQL-SQPADTO  PIC S9(9) COMP-5.
           02  SQL-SQPTDSO  PIC S9(9) COMP-5.
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 24 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 24 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select LTRNKK.Áž’Ê”Ô  ,LTRNKK.
      -    "Áž“ú  ,LTRNKK.Žd–ó’ZkƒR[ƒh  ,LTRNKK.“E—v  ,LTRNKK.‹àŠz‚P
      -    "  ,LTRNKK.‹àŠz‚Q  ,LTRNKK.‹àŠz‚R  ,LTRNKK.‹àŠz‚S  ,LTRNKK.‹à
      -    "Šz‚T  ,L".

           02  FILLER PIC X(160) VALUE "TRNKK.‹àŠz‚U  ,LTRNKK.‹àŠz‚V  ,L
      -    "TRNKK.‹àŠz‚W  ,LTRNKK.‹àŠz‚X  ,LTRNKK.‹àŠz‚P‚O  ,LTRNKK.“ü‹à
      -    "’Ê”Ô‚P  ,LTRNKK.“ü‹à’Ê”Ô‚Q  ,LTRNKK.“ü‹à’Ê”Ô‚R  ,LTRNKK.“ü‹à
      -    "’Ê”Ô‚S  ".

           02  FILLER PIC X(146) VALUE ",LTRNKK.“ü‹à’Ê”Ô‚T  ,LTRNKK.“ü‹à
      -    "’Ê”Ô‚U  ,LTRNKK.“ü‹à’Ê”Ô‚V  ,LTRNKK.“ü‹à’Ê”Ô‚W  ,LTRNKK.“ü‹à
      -    "’Ê”Ô‚X  ,LTRNKK.“ü‹à’Ê”Ô‚P‚O   from LTRNKK            ".

       01  SQL-RUNTIME-VARS.
           02  SQL-IAPXIT-SUCCESS  PIC S9(9) COMP-5 VALUE    +0.
           02  SQL-IAPXIT-FAILURE  PIC S9(9) COMP-5 VALUE +1403.
           02  SQL-IAPXIT-FATALERR PIC S9(9) COMP-5 VALUE  +535.

       01  SQLCUD GLOBAL.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +4192.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +186.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +36.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +190.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +67.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +466.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +251.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +82.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +277.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +24.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +193.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +85.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +379.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +216.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +259.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +630.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +291.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +195.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +685.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +350.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +805.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +365.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +817.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +380.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +837.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000340 01  ‚v|‹àŠz                         PIC      9(02).             
000350 01  ‚v|•Ï”                         PIC      9(01).             
000360*                                                                 
000370*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000380     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000390*                                                                 
000400*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000410     
      *    EXEC  SQL  INCLUDE  SQLCA.COB             END-EXEC.
       01  SQLCA GLOBAL.
           05  SQLCAID               PIC X(8).
           05  SQLCABC               PIC S9(9) COMP-5.
           05  SQLCODE               PIC S9(9) COMP-5.
           05  SQLERRM.
               49 SQLERRML           PIC S9(4) COMP-5.
               49 SQLERRMC           PIC X(70).
           05  SQLERRP               PIC X(8).
           05  SQLERRD OCCURS 6 TIMES
                                     PIC S9(9) COMP-5.
           05  SQLWARN.
               10 SQLWARN0           PIC X(1).
               10 SQLWARN1           PIC X(1).
               10 SQLWARN2           PIC X(1).
               10 SQLWARN3           PIC X(1).
               10 SQLWARN4           PIC X(1).
               10 SQLWARN5           PIC X(1).
               10 SQLWARN6           PIC X(1).
               10 SQLWARN7           PIC X(1).
           05  SQLEXT                PIC X(8).
000420*                                                                 
000430*--< “ü‹àÁžŠÇ—(ÁžŠî–{î•ñ)>                                  
000440     
      *    EXEC  SQL  INCLUDE  LTRNKK.CBL            END-EXEC.
000450*                                                                 
000460*--< “ü‹àÁžŠÇ— >                                               
000010************************************************
000020* “ü‹àÁžŠÇ—‚c‚aiÁžŠî–{î•ñ)(LTRNKK)
000030************************************************
000040 01  ‚k‚s‚q‚m‚j‚j|Áž’Ê”Ô PIC S9(009) COMP-3.
000050 01  ‚k‚s‚q‚m‚j‚j|Áž“ú PIC  X(007).
000060 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P PIC S9(009) COMP-3.
000070 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚P PIC  X(048).
000080 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚P PIC S9(013) COMP-3.
000090 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚Q PIC S9(009) COMP-3.
000100 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚Q PIC  X(048).
000110 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚Q PIC S9(013) COMP-3.
000120 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚R PIC S9(009) COMP-3.
000130 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚R PIC  X(048).
000140 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚R PIC S9(013) COMP-3.
000150 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚S PIC S9(009) COMP-3.
000160 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚S PIC  X(048).
000170 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚S PIC S9(013) COMP-3.
000180 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚T PIC S9(009) COMP-3.
000190 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚T PIC  X(048).
000200 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚T PIC S9(013) COMP-3.
000210 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚U PIC S9(009) COMP-3.
000220 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚U PIC  X(048).
000230 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚U PIC S9(013) COMP-3.
000240 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚V PIC S9(009) COMP-3.
000250 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚V PIC  X(048).
000260 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚V PIC S9(013) COMP-3.
000270 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚W PIC S9(009) COMP-3.
000280 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚W PIC  X(048).
000290 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚W PIC S9(013) COMP-3.
000300 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚X PIC S9(009) COMP-3.
000310 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚X PIC  X(048).
000320 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚X PIC S9(013) COMP-3.
000330 01  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P‚O PIC S9(009) COMP-3.
000340 01  ‚k‚s‚q‚m‚j‚j|“ü‹àæ–¼Ì‚P‚O PIC  X(048).
000350 01  ‚k‚s‚q‚m‚j‚j|‹àŠz‚P‚O PIC S9(013) COMP-3.
000360 01  ‚k‚s‚q‚m‚j‚j|Žd–óƒR[ƒh PIC S9(004) COMP-3.
000370 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‹àŠz‚P PIC S9(013) COMP-3.
000380 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‰ÛÅ‚b‚c‚P PIC S9(003) COMP-3.
000390 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‚q‚d‚e‚m‚n‚P PIC  X(016).
000400 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‹àŠz‚Q PIC S9(013) COMP-3.
000410 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‰ÛÅ‚b‚c‚Q PIC S9(003) COMP-3.
000420 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‚q‚d‚e‚m‚n‚Q PIC  X(016).
000430 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‹àŠz‚R PIC S9(013) COMP-3.
000440 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‰ÛÅ‚b‚c‚R PIC S9(003) COMP-3.
000450 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‚q‚d‚e‚m‚n‚R PIC  X(016).
000460 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‹àŠz‚S PIC S9(013) COMP-3.
000470 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‰ÛÅ‚b‚c‚S PIC S9(003) COMP-3.
000480 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‚q‚d‚e‚m‚n‚S PIC  X(016).
000490 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‹àŠz‚T PIC S9(013) COMP-3.
000500 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‰ÛÅ‚b‚c‚T PIC S9(003) COMP-3.
000510 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‚q‚d‚e‚m‚n‚T PIC  X(016).
000520 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‹àŠz‚U PIC S9(013) COMP-3.
000530 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‰ÛÅ‚b‚c‚U PIC S9(003) COMP-3.
000540 01  ‚k‚s‚q‚m‚j‚j|‘Ý•û|‚q‚d‚e‚m‚n‚U PIC  X(016).
000550 01  ‚k‚s‚q‚m‚j‚j|“E—v PIC  X(034).
000560 01  ‚k‚s‚q‚m‚j‚j|Žd–ó’ZkƒR[ƒh PIC S9(002) COMP-3.
000570 01  ‚k‚s‚q‚m‚j‚j|ƒ_ƒ~[‚O‚O‚P PIC  X(057).
000580 01  ‚k‚s‚q‚m‚j‚j|‹¤’Êî•ñ PIC  X(035).
000470     
      *    EXEC  SQL  INCLUDE  D57NKK.CBL            END-EXEC.
000480*                                                                 
000490*--< “ü‹àÁžŠÇ—_“ü‹à–¾×>                                       
000010*****************************************************************
000020*   “ü‹àÁžŠÇ—(D57NKK_TBL)
000030*****************************************************************
000040 01  “ü‹àÁžŠÇ—.
000050     03  ‚c‚T‚V‚m‚j‚j|Áž’Ê”Ô      PIC  X(011).
000060     03  ‚c‚T‚V‚m‚j‚j|ƒŒƒR[ƒh‹æ•ª  PIC  X(001).
000070     03  ‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú    PIC  X(008).
000080     03  ‚c‚T‚V‚m‚j‚j|ÁžŽž      PIC  X(008).
000090     03  ‚c‚T‚V‚m‚j‚j|Áž’S“–ŽÒ    PIC  X(020).
000100     03  ‚c‚T‚V‚m‚j‚j|Žd–ó’ZkƒR[ƒh
000110                                     PIC  X(002).
000120     03  ‚c‚T‚V‚m‚j‚j|“E—v          PIC  X(080).
000130     03  ‚c‚T‚V‚m‚j‚j|ÁžŽæÁ‹æ•ª  PIC  X(001).
000140     03  ‚c‚T‚V‚m‚j‚j|“o˜^”NŒŽ“ú    PIC  X(008).
000150     03  ‚c‚T‚V‚m‚j‚j|“o˜^ŽžŠÔ      PIC  X(008).
000160     03  ‚c‚T‚V‚m‚j‚j|“o˜^’S“–ŽÒ    PIC  X(008).
000170     03  ‚c‚T‚V‚m‚j‚j|XV”NŒŽ“ú    PIC  X(008).
000180     03  ‚c‚T‚V‚m‚j‚j|XVŽžŠÔ      PIC  X(008).
000190     03  ‚c‚T‚V‚m‚j‚j|XVŽÒ        PIC  X(008).
000200     03  ‚c‚T‚V‚m‚j‚j|“ü—Í’S“–ŽÒƒR[ƒh
000210                                     PIC  X(008).
000500     
      *    EXEC  SQL  INCLUDE  D57NKM.CBL            END-EXEC.
000510*                                                                 
000520*--< “ü‹àŽd–ó’ZkƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹>                              
      *****************************************************************
      *   “ü‹àÁžŠÇ—|“ü‹à–¾×(D57NKM_TBL)
      *****************************************************************
       01  “ü‹àÁžŠÇ—|“ü‹à–¾×.
           03  ‚c‚T‚V‚m‚j‚l|Áž’Ê”Ô      PIC  X(011).
           03  ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô      PIC  X(011).
           03  ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚T‚V‚m‚j‚l|ÁžŽæÁ‹æ•ª  PIC  X(001).
           03  ‚c‚T‚V‚m‚j‚l|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚T‚V‚m‚j‚l|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚T‚V‚m‚j‚l|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚T‚V‚m‚j‚l|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚T‚V‚m‚j‚l|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚T‚V‚m‚j‚l|XVŽÒ        PIC  X(008).
           03  ‚c‚T‚V‚m‚j‚l|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
000530     
      *    EXEC  SQL  INCLUDE  IKOTBL008.CBL         END-EXEC.
000540*                                                                 
000010************************************************
000020* “ü‹àŽd–ó’ZkƒR[ƒh(IKOTBL008)
000030************************************************
000040 01  ‚h‚j‚n‚O‚O‚W|‹Œ“ü‹àŽd–ó’ZkƒR[ƒh PIC  X(002).
000050 01  ‚h‚j‚n‚O‚O‚W|V“ü‹àŽd–ó’ZkƒR[ƒh PIC  X(002).
000550     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000560*                                                                 
000570*----------------------------------------------------------------*
000580*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000590*----------------------------------------------------------------*
000600 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000610*--< ƒGƒ‰[”»’è—p >                                               
000620     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000630*                                                                 
000640*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000650     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000660         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
000670         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000680*                                                                 
000690*--< Œ”ƒGƒŠƒA >                                                 
000700     03  Œ”ƒGƒŠƒA.                                              
000710         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
000720         05  ‚v|o—Í|Œ”‚P         PIC  9(09).                 
000730         05  ‚v|o—Í|Œ”‚Q         PIC  9(09).                 
000740*                                                                 
000750*--< ‹¤’Êî•ñ >                                                   
000760 01  ‚v|‹¤’Êî•ñ.                                                
000770     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
000780         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
000790         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
000800     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
000810     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
000820*                                                                 
000830                                                                  
000840*----------------------------------------------------------------*
000850*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
000860*----------------------------------------------------------------*
000870 01  CALL-AREA.                                                   
000880*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
000890     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
000900     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
000910*                                                                 
000920*----------------------------------------------------------------*
000930*    ‚b‚n‚o‚x—Ìˆæ                                                *
000940*----------------------------------------------------------------*
000950*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
000960 01  IF-CHOCO001.                                                 
000970     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
000980*                                                                 
000990*----------------------------------------------------------------*
001000*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001010*----------------------------------------------------------------*
001020 01  PARA-AREA.                                                   
001030     COPY CPBCO001.                                               
001040******************************************************************
001050*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001060******************************************************************
001070 CONSTANT                             SECTION.                    
001080 01  ’è”—Ìˆæ.                                                    
001090     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBISAOO".
001100     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001110                                      VALUE  "“ü‹àÁžŠÇ—ˆÚs ". 
001120     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001130     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001140     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001150     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001160******************************************************************
001170*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001180******************************************************************
001190 PROCEDURE                            DIVISION.                   
001200*                                                                 
001210     PERFORM  ‰Šúˆ—.                                           
001220*                                                                 
001230     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001240*                                                                 
001250     PERFORM  I—¹ˆ—.                                           
001260*                                                                 
001270     STOP     RUN.                                                
001280*                                                                 
001290******************************************************************
001300*    ‰Šúˆ—                                                    *
001310******************************************************************
001320 ‰Šúˆ—                             SECTION.                    
001330 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001340*                                                                 
001350*----------------------------------------------------------------*
001360*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001370*----------------------------------------------------------------*
001380     INITIALIZE                       IF-CHOCO001.                
001390     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001400     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001410     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001420     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001430     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001440     CALL  CLOCO001                USING  IF-CHOCO001.            
001450*                                                                 
001460*----------------------------------------------------------------*
001470*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001480*----------------------------------------------------------------*
001490     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001500     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001510*                                                                 
001520*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001530     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001540*                                                                 
001550*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001560     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001570*                                                                 
001580*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
001590     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001600*                                                                 
001610*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
001620     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
001630*                                                                 
001640*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
001650     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
001660*                                                                 
001670 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001680     EXIT.                                                        
001690******************************************************************
001700*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001710******************************************************************
001720 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001730 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001740*                                                                 
001750*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
001760     CALL  COBCO001                USING  PARA-AREA.              
001770*                                                                 
001780     MOVE  PARA-DBSTRING              TO  DB-STRING.              
001790     MOVE  PARA-USERNAME              TO  USERNAME.               
001800     MOVE  PARA-PASSWORD              TO  PASSWD.                 
001810*                                                                 
001820*----------------------------------------------------------------*
001830*    ŠJŽnÚ‘±                                                    *
001840*----------------------------------------------------------------*
001850     IF    DB-STRING  =  SPACE                                    
001860        
      *       EXEC SQL                                                  
001870*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
001880*       END-EXEC 
              CALL "ORASQL8"
              MOVE 10 TO SQL-ITERS
              MOVE 5 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  USERNAME
                  SQL-SQHSTV(1)
              MOVE 10 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  PASSWD
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE
001890     ELSE                                                         
001900        
      *       EXEC SQL                                                  
001910*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
001920*            USING  :DB-STRING                                    
001930*       END-EXEC 
              CALL "ORASQL8"
              MOVE 10 TO SQL-ITERS
              MOVE 36 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  USERNAME
                  SQL-SQHSTV(1)
              MOVE 10 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  PASSWD
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  DB-STRING
                  SQL-SQHSTV(3)
              MOVE 20 TO SQL-SQHSTL(3)
              MOVE 0 TO SQL-SQHSTS(3)
              MOVE 0 TO SQL-SQINDV(3)
              MOVE 0 TO SQL-SQINDS(3)
              MOVE 0 TO SQL-SQHARM(3)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE
001940     END-IF.                                                      
001950*                                                                 
001960*----------------------------------------------------------------*
001970*    Ú‘±Šm”F                                                    *
001980*----------------------------------------------------------------*
001990     EVALUATE  SQLCODE                                            
002000        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002010           CONTINUE                                               
002020        WHEN   OTHER                                              
002030*--<       Ú‘±ƒGƒ‰[ >                                           
002040           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002050           PERFORM  ƒGƒ‰[”»’èˆ—                                
002060     END-EVALUATE.                                                
002070*                                                                 
002080 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002090     EXIT.                                                        
002100******************************************************************
002110*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002120******************************************************************
002130 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002140 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002150*                                                                 
002160*----------------------------------------------------------------*
002170*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002180*----------------------------------------------------------------*
002190     
      *    EXEC SQL                                                     
002200*       DECLARE CUR1  CURSOR FOR                                  
002210*          SELECT  LTRNKK.Áž’Ê”Ô                                
002220*                 ,LTRNKK.Áž“ú                                  
002230*                 ,LTRNKK.Žd–ó’ZkƒR[ƒh                          
002240*                 ,LTRNKK.“E—v                                    
002250*                 ,LTRNKK.‹àŠz‚P                                  
002260*                 ,LTRNKK.‹àŠz‚Q                                  
002270*                 ,LTRNKK.‹àŠz‚R                                  
002280*                 ,LTRNKK.‹àŠz‚S                                  
002290*                 ,LTRNKK.‹àŠz‚T                                  
002300*                 ,LTRNKK.‹àŠz‚U                                  
002310*                 ,LTRNKK.‹àŠz‚V                                  
002320*                 ,LTRNKK.‹àŠz‚W                                  
002330*                 ,LTRNKK.‹àŠz‚X                                  
002340*                 ,LTRNKK.‹àŠz‚P‚O                                
002350*                 ,LTRNKK.“ü‹à’Ê”Ô‚P                              
002360*                 ,LTRNKK.“ü‹à’Ê”Ô‚Q                              
002370*                 ,LTRNKK.“ü‹à’Ê”Ô‚R                              
002380*                 ,LTRNKK.“ü‹à’Ê”Ô‚S                              
002390*                 ,LTRNKK.“ü‹à’Ê”Ô‚T                              
002400*                 ,LTRNKK.“ü‹à’Ê”Ô‚U                              
002410*                 ,LTRNKK.“ü‹à’Ê”Ô‚V                              
002420*                 ,LTRNKK.“ü‹à’Ê”Ô‚W                              
002430*                 ,LTRNKK.“ü‹à’Ê”Ô‚X                              
002440*                 ,LTRNKK.“ü‹à’Ê”Ô‚P‚O                            
002450*            FROM  LTRNKK                                         
002460*    END-EXEC.
002470*                                                                 
002480*----------------------------------------------------------------*
002490*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002500*----------------------------------------------------------------*
002510     
      *    EXEC  SQL                                                    
002520*       OPEN  CUR1                                                
002530*    END-EXEC.
           CALL "SQLADR" USING SQ0001 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 67 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
002540*                                                                 
002550*----------------------------------------------------------------*
002560*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
002570*----------------------------------------------------------------*
002580     EVALUATE  SQLCODE                                            
002590        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002600*--<       ³í >                                                 
002610           CONTINUE                                               
002620        WHEN  OTHER                                               
002630*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
002640           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002650           PERFORM  ƒGƒ‰[”»’èˆ—                                
002660     END-EVALUATE.                                                
002670*                                                                 
002680 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
002690     EXIT.                                                        
002700******************************************************************
002710*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
002720******************************************************************
002730 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
002740 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
002750*                                                                 
002760*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
002770     
      *    EXEC SQL                                                     
002780*        FETCH  CUR1                                              
002790*         INTO  :‚k‚s‚q‚m‚j‚j|Áž’Ê”Ô                           
002800*              ,:‚k‚s‚q‚m‚j‚j|Áž“ú                             
002810*              ,:‚k‚s‚q‚m‚j‚j|Žd–ó’ZkƒR[ƒh                     
002820*              ,:‚k‚s‚q‚m‚j‚j|“E—v                               
002830*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚P                             
002840*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚Q                             
002850*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚R                             
002860*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚S                             
002870*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚T                             
002880*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚U                             
002890*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚V                             
002900*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚W                             
002910*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚X                             
002920*              ,:‚k‚s‚q‚m‚j‚j|‹àŠz‚P‚O                           
002930*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P                         
002940*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚Q                         
002950*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚R                         
002960*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚S                         
002970*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚T                         
002980*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚U                         
002990*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚V                         
003000*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚W                         
003010*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚X                         
003020*              ,:‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P‚O                       
003030*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 82 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|Áž’Ê”Ô
               SQL-SQHSTV(1)
           MOVE 5 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|Áž“ú
               SQL-SQHSTV(2)
           MOVE 7 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|Žd–ó’ZkƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“E—v
               SQL-SQHSTV(4)
           MOVE 34 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚P
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚Q
               SQL-SQHSTV(6)
           MOVE 7 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚R
               SQL-SQHSTV(7)
           MOVE 7 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚S
               SQL-SQHSTV(8)
           MOVE 7 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚T
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚U
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚V
               SQL-SQHSTV(11)
           MOVE 7 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚W
               SQL-SQHSTV(12)
           MOVE 7 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚X
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|‹àŠz‚P‚O
               SQL-SQHSTV(14)
           MOVE 7 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P
               SQL-SQHSTV(15)
           MOVE 5 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚Q
               SQL-SQHSTV(16)
           MOVE 5 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚R
               SQL-SQHSTV(17)
           MOVE 5 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚S
               SQL-SQHSTV(18)
           MOVE 5 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚T
               SQL-SQHSTV(19)
           MOVE 5 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚U
               SQL-SQHSTV(20)
           MOVE 5 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚V
               SQL-SQHSTV(21)
           MOVE 5 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚W
               SQL-SQHSTV(22)
           MOVE 5 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚X
               SQL-SQHSTV(23)
           MOVE 5 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P‚O
               SQL-SQHSTV(24)
           MOVE 5 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
003040*                                                                 
003050*----------------------------------------------------------------*
003060*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
003070*----------------------------------------------------------------*
003080     EVALUATE   SQLCODE                                           
003090        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003100*--<       ³í >                                                 
003110*                                                                 
003120           COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1       
003130        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
003140*--<       “ÇžI—¹ >                                             
003150           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
003160        WHEN   OTHER                                              
003170*--<       “ÇžƒGƒ‰[ >                                           
003180           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003190           PERFORM  ƒGƒ‰[”»’èˆ—                                
003200     END-EVALUATE.                                                
003210*                                                                 
003220 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003230     EXIT.                                                        
003240******************************************************************
003250*    Žåˆ—                                                      *
003260******************************************************************
003270 Žåˆ—                               SECTION.                    
003280 Žåˆ—|‚r‚s‚`‚q‚s.                                              
003290*--< “ü‹àÁžŠÇ—•ÒWo—Í >                                       
003300     PERFORM  “ü‹àÁžŠÇ—•ÒWo—Í.                               
003310*                                                                 
003320*--< “ü‹àÁžŠÇ—_“ü‹à–¾×•ÒWo—Í >                              
003330     PERFORM  “ü‹àÁžŠÇ—“ü‹à–¾×•ÒWo—Í.                       
003340*                                                                 
003350*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
003360     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
003370*                                                                 
003380 Žåˆ—|‚d‚w‚h‚s.                                                
003390     EXIT.                                                        
003400******************************************************************
003410*     “ü‹àÁžŠÇ—•ÒWo—Í                                       *
003420******************************************************************
003430 “ü‹àÁžŠÇ—•ÒWo—Í                 SECTION.                    
003440 “ü‹àÁžŠÇ—•ÒWo—Í|‚r‚s‚`‚q‚s.                                
003450*                                                                 
003460*----------------------------------------------------------------*
003470*       “ü‹àÁžŠÇ—€–Ú•ÒWˆ—                                 *
003480*----------------------------------------------------------------*
003490*--< No.01 >                                                      
003500     MOVE  ‚k‚s‚q‚m‚j‚j|Áž’Ê”Ô     TO  ‚c‚T‚V‚m‚j‚j|Áž’Ê”Ô. 
003510*                                                                 
003520*--< No.02 >                                                      
003530     MOVE  ZERO                       TO                          
003540                                      ‚c‚T‚V‚m‚j‚j|ƒŒƒR[ƒh‹æ•ª. 
003550*--< No.03 >                                                      
003590     EVALUATE  ‚k‚s‚q‚m‚j‚j|Áž“ú                               
003591       WHEN  ZERO                                                 
003592         MOVE  ZERO                   TO  ‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú
003593       WHEN  OTHER                                                
003594         EVALUATE  ‚k‚s‚q‚m‚j‚j|Áž“ú(1:1)                      
003600           WHEN    "0"                                            
003610             MOVE    "19"             TO                          
003620                                     ‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú(1:2)
003630           WHEN    "1"                                            
003640             MOVE    "20"             TO                          
003650                                     ‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú(1:2)
003662         END-EVALUATE                                             
003663         MOVE  ‚k‚s‚q‚m‚j‚j|Áž“ú(2:6)  TO                      
003664                                    ‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú(3:6) 
003665     END-EVALUATE.                                                
003710*--< No.04 >                                                      
003720     MOVE  ZERO                       TO  ‚c‚T‚V‚m‚j‚j|ÁžŽž. 
003730*                                                                 
003740*--< No.05 >                                                      
003750     MOVE  SPACE                      TO                          
003760                                         ‚c‚T‚V‚m‚j‚j|Áž’S“–ŽÒ.
003770*                                                                 
003780*--< No.06 >                                                      
003790     
      *    EXEC SQL                                                     
003800*       SELECT   V“ü‹àŽd–ó’ZkƒR[ƒh                             
003810*         INTO  :‚h‚j‚n‚O‚O‚W|V“ü‹àŽd–ó’ZkƒR[ƒh               
003820*         FROM   IKOTBL008                                        
003830*        WHERE   ‹Œ“ü‹àŽd–ó’ZkƒR[ƒh =                           
003840*                                  :‚k‚s‚q‚m‚j‚j|Žd–ó’ZkƒR[ƒh  
003850*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 193 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               ‚h‚j‚n‚O‚O‚W|V“ü‹àŽd–ó’ZkƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 2 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚m‚j‚j|Žd–ó’ZkƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
003860     EVALUATE   SQLCODE                                           
003870        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003880*--<       ³í >                                                 
003890         MOVE  ‚h‚j‚n‚O‚O‚W|V“ü‹àŽd–ó’ZkƒR[ƒh TO              
003900                                      ‚c‚T‚V‚m‚j‚j|Žd–ó’ZkƒR[ƒh
003910        WHEN   OTHER                                              
003920*--<       ‚c‚a‚È‚µ>                                              
003930         MOVE  ZERO                   TO                          
003940                                      ‚c‚T‚V‚m‚j‚j|Žd–ó’ZkƒR[ƒh
003950     DISPLAY "“ü‹àŽd–ó’ZkƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹‚È‚µ Žd–ó’ZkƒR[ƒh:" 
003960                       ‚k‚s‚q‚m‚j‚j|Žd–ó’ZkƒR[ƒh               
003970     END-EVALUATE.                                                
003980*                                                                 
003990*--< No.07 >                                                      
004000     MOVE  ‚k‚s‚q‚m‚j‚j|“E—v         TO  ‚c‚T‚V‚m‚j‚j|“E—v.     
004010*                                                                 
004020*--< No.08 >                                                      
004030     MOVE  ZERO                       TO                          
004040                                      ‚c‚T‚V‚m‚j‚j|ÁžŽæÁ‹æ•ª. 
004050*                                                                 
004060*--< No.09 >                                                      
004070     MOVE  ‚v|ƒVƒXƒeƒ€“ú•t           TO ‚c‚T‚V‚m‚j‚j|“o˜^”NŒŽ“ú.
004080*                                                                 
004090*--< No.10 >                                                      
004100     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO ‚c‚T‚V‚m‚j‚j|“o˜^ŽžŠÔ.  
004110*                                                                 
004120*--< No.11 >                                                      
004130     MOVE  ‚v|’S“–ŽÒ                 TO ‚c‚T‚V‚m‚j‚j|“o˜^’S“–ŽÒ.
004140*                                                                 
004150*--< No.12 >                                                      
004160     MOVE  ‚v|ƒVƒXƒeƒ€“ú•t           TO ‚c‚T‚V‚m‚j‚j|XV”NŒŽ“ú.
004170*                                                                 
004180*--< No.13 >                                                      
004190     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO ‚c‚T‚V‚m‚j‚j|XVŽžŠÔ.  
004200*                                                                 
004210*--< No.14 >                                                      
004220     MOVE  ‚v|’S“–ŽÒ                 TO ‚c‚T‚V‚m‚j‚j|XVŽÒ.    
004230*                                                                 
004240*--< No.15 >                                                      
004250     MOVE  ‚v|’S“–ŽÒ                 TO                          
004260                                   ‚c‚T‚V‚m‚j‚j|“ü—Í’S“–ŽÒƒR[ƒh.
004270*--< “ü‹àÁžŠÇ—o—Í >                                           
004280     PERFORM  “ü‹àÁžŠÇ—o—Í.                                   
004290*                                                                 
004300 “ü‹àÁžŠÇ—•ÒWo—Í|‚d‚w‚h‚s.                                  
004310     EXIT.                                                        
004320                                                                  
004330******************************************************************
004340*   “ü‹àÁžŠÇ—_“ü‹à–¾×•ÒWo—Í                                *
004350******************************************************************
004360 “ü‹àÁžŠÇ—“ü‹à–¾×•ÒWo—Í         SECTION.                    
004370 “ü‹àÁžŠÇ—“ü‹à–¾×•ÒWo—Í|‚r‚s‚`‚q‚s.                        
004380*--< “ü‹à’Ê”ÔÁž‘ÎÛŠz•ÒW >                                     
004390     PERFORM  “ü‹à’Ê”ÔÁž‘ÎÛŠz•ÒW                              
004400     VARYING  ‚v|‹àŠz  FROM 1 BY 1 UNTIL   ‚v|‹àŠz > 10 .       
004410 “ü‹àÁžŠÇ—“ü‹à–¾×•ÒWo—Í|‚d‚w‚h‚s.                          
004420     EXIT.                                                        
004430******************************************************************
004440*   “ü‹à’Ê”ÔÁž‘ÎÛŠz•ÒW                                       *
004450******************************************************************
004460 “ü‹à’Ê”ÔÁž‘ÎÛŠz•ÒW               SECTION.                    
004470 “ü‹à’Ê”ÔÁž‘ÎÛŠz•ÒW|‚r‚s‚`‚q‚s.                              
004480     MOVE      ZERO                   TO    ‚v|•Ï” .            
004490     EVALUATE   ‚v|‹àŠz                                          
004500*----------------------------------------------------------------*
004510*       ‹àŠz‚P                                                   *
004520*----------------------------------------------------------------*
004530      WHEN 1                                                      
004540       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚P         NOT  =  ZERO              
004550*--< No.02 >                                                      
004560         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P TO  ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô
004570*--< No.03 >                                                      
004580         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚P     TO                        
004590                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
004600         MOVE   1                       TO  ‚v|•Ï”              
004610       END-IF                                                     
004620*----------------------------------------------------------------*
004630*       ‹àŠz‚Q                                                   *
004640*----------------------------------------------------------------*
004650      WHEN 2                                                      
004660       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚Q         NOT  =  ZERO              
004670*--< No.02 >                                                      
004680         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚Q TO                        
004690                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
004700*--< No.03 >                                                      
004710         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚Q     TO                        
004720                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
004730         MOVE   1                       TO  ‚v|•Ï”              
004740       END-IF                                                     
004750*----------------------------------------------------------------*
004760*       ‹àŠz‚R                                                   *
004770*----------------------------------------------------------------*
004780      WHEN 3                                                      
004790       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚R         NOT  =  ZERO              
004800*--< No.02 >                                                      
004810         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚R TO                        
004820                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
004830*--< No.03 >                                                      
004840         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚R     TO                        
004850                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
004860         MOVE   1                       TO  ‚v|•Ï”              
004870       END-IF                                                     
004880*----------------------------------------------------------------*
004890*       ‹àŠz‚S                                                   *
004900*----------------------------------------------------------------*
004910      WHEN 4                                                      
004920       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚S         NOT  =  ZERO              
004930*--< No.02 >                                                      
004940         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚S TO                        
004950                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
004960*--< No.03 >                                                      
004970         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚S     TO                        
004980                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
004990         MOVE   1                       TO  ‚v|•Ï”              
005000       END-IF                                                     
005010*----------------------------------------------------------------*
005020*       ‹àŠz‚T                                                   *
005030*----------------------------------------------------------------*
005040      WHEN 5                                                      
005050       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚T         NOT  =  ZERO              
005060*--< No.02 >                                                      
005070         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚T TO                        
005080                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
005090*--< No.03 >                                                      
005100         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚T     TO                        
005110                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
005120         MOVE   1                       TO  ‚v|•Ï”              
005130       END-IF                                                     
005140*----------------------------------------------------------------*
005150*       ‹àŠz‚U                                                   *
005160*----------------------------------------------------------------*
005170      WHEN 6                                                      
005180       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚U         NOT  =  ZERO              
005190*--< No.02 >                                                      
005200         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚U TO                        
005210                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
005220*--< No.03 >                                                      
005230         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚U     TO                        
005240                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
005250         MOVE   1                       TO  ‚v|•Ï”              
005260       END-IF                                                     
005270*----------------------------------------------------------------*
005280*       ‹àŠz‚V                                                   *
005290*----------------------------------------------------------------*
005300      WHEN 7                                                      
005310       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚V         NOT  =  ZERO              
005320*--< No.02 >                                                      
005330         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚V TO                        
005340                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
005350*--< No.03 >                                                      
005360         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚V     TO                        
005370                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
005380         MOVE   1                       TO  ‚v|•Ï”              
005390       END-IF                                                     
005400*----------------------------------------------------------------*
005410*       ‹àŠz‚W                                                   *
005420*----------------------------------------------------------------*
005430      WHEN 8                                                      
005440       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚W         NOT  =  ZERO              
005450*--< No.02 >                                                      
005460         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚W TO                        
005470                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
005480*--< No.03 >                                                      
005490         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚W     TO                        
005500                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
005510         MOVE   1                       TO  ‚v|•Ï”              
005520       END-IF                                                     
005530*----------------------------------------------------------------*
005540*       ‹àŠz‚X                                                   *
005550*----------------------------------------------------------------*
005560      WHEN 9                                                      
005570       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚X         NOT  =  ZERO              
005580*--< No.02 >                                                      
005590         MOVE  ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚X TO                        
005600                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
005610*--< No.03 >                                                      
005620         MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚X     TO                        
005630                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
005640         MOVE   1                       TO  ‚v|•Ï”              
005650       END-IF                                                     
005660*----------------------------------------------------------------*
005670*       ‹àŠz‚P‚O                                                 *
005680*----------------------------------------------------------------*
005690      WHEN 10                                                     
005700       IF  ‚k‚s‚q‚m‚j‚j|‹àŠz‚P‚O       NOT  =  ZERO              
005710*--< No.02 >                                                      
005720        MOVE ‚k‚s‚q‚m‚j‚j|“ü‹à’Ê”Ô‚P‚O TO                        
005730                                          ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô  
005740*--< No.03 >                                                      
005750        MOVE  ‚k‚s‚q‚m‚j‚j|‹àŠz‚P‚O    TO                        
005760                                          ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz
005770        MOVE   1                        TO  ‚v|•Ï”              
005780       END-IF                                                     
005790     END-EVALUATE.                                                
005800*                                                                 
005810     IF   ‚v|•Ï” = 1                                            
005820*--< ‘´›€•ÒW >                                                   
005830     PERFORM  ‘´›€•ÒW                                            
005840*--< “ü‹àÁžŠÇ—_“ü‹à–¾×o—Í >                                  
005850     PERFORM  “ü‹àÁžŠÇ—“ü‹à–¾×o—Í                            
005860*                                                                 
005870     END-IF.                                                      
005880 “ü‹à’Ê”ÔÁž‘ÎÛŠz•ÒW|‚d‚w‚h‚s.                                
005890     EXIT.                                                        
005900******************************************************************
005910*   ‘´›€•ÒW                                                     *
005920******************************************************************
005930 ‘´›€•ÒW                             SECTION.                    
005940 ‘´›€•ÒW|‚r‚s‚`‚q‚s.                                            
005950*--< No.01 >                                                      
005960     MOVE  ‚k‚s‚q‚m‚j‚j|Áž’Ê”Ô     TO  ‚c‚T‚V‚m‚j‚l|Áž’Ê”Ô .
005970*                                                                 
005980*--< No.04 >                                                      
005990     MOVE  ZERO                       TO                          
006000                                       ‚c‚T‚V‚m‚j‚l|ÁžŽæÁ‹æ•ª.
006010*--< No.05 >                                                      
006020     MOVE  ‚v|ƒVƒXƒeƒ€“ú•t           TO ‚c‚T‚V‚m‚j‚l|“o˜^”NŒŽ“ú.
006030*                                                                 
006040*--< No.06 >                                                      
006050     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO ‚c‚T‚V‚m‚j‚l|“o˜^ŽžŠÔ . 
006060*                                                                 
006070*--< No.07 >                                                      
006080     MOVE  ‚v|’S“–ŽÒ                 TO ‚c‚T‚V‚m‚j‚l|“o˜^’S“–ŽÒ.
006090*                                                                 
006100*--< No.08 >                                                      
006110     MOVE  ‚v|ƒVƒXƒeƒ€“ú•t           TO ‚c‚T‚V‚m‚j‚l|XV”NŒŽ“ú.
006120*                                                                 
006130*--< No.09 >                                                      
006140     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO ‚c‚T‚V‚m‚j‚l|XVŽžŠÔ . 
006150*                                                                 
006160*--< No.10 >                                                      
006170     MOVE  ‚v|’S“–ŽÒ                 TO ‚c‚T‚V‚m‚j‚l|XVŽÒ .   
006180*                                                                 
006190*--< No.11 >                                                      
006200     MOVE  ‚v|’S“–ŽÒ                 TO                          
006210                                   ‚c‚T‚V‚m‚j‚l|“ü—Í’S“–ŽÒƒR[ƒh.
006220 ‘´›€•ÒW|‚d‚w‚h‚s.                                              
006230     EXIT.                                                        
006240******************************************************************
006250*   “ü‹àÁžŠÇ—o—Í                                             *
006260******************************************************************
006270 “ü‹àÁžŠÇ—o—Í                     SECTION.                    
006280 “ü‹àÁžŠÇ—o—Í|‚r‚s‚`‚q‚s.                                    
006290*                                                                 
006300       
      *      EXEC  SQL                                                  
006310*       INSERT  INTO  D57NKK_TBL                                  
006320*          ( Áž’Ê”Ô                                             
006330*           ,ƒŒƒR[ƒh‹æ•ª                                         
006340*           ,Áž”NŒŽ“ú                                           
006350*           ,ÁžŽž                                             
006360*           ,Áž’S“–ŽÒ                                           
006370*           ,Žd–ó’ZkƒR[ƒh                                       
006380*           ,“E—v                                                 
006390*           ,ÁžŽæÁ‹æ•ª                                         
006400*           ,“o˜^”NŒŽ“ú                                           
006410*           ,“o˜^ŽžŠÔ                                             
006420*           ,“o˜^’S“–ŽÒ                                           
006430*           ,XV”NŒŽ“ú                                           
006440*           ,XVŽžŠÔ                                             
006450*           ,XVŽÒ                                               
006460*           ,“ü—Í’S“–ŽÒƒR[ƒh)                                    
006470*       VALUES                                                    
006480*          ( :‚c‚T‚V‚m‚j‚j|Áž’Ê”Ô                              
006490*           ,:‚c‚T‚V‚m‚j‚j|ƒŒƒR[ƒh‹æ•ª                          
006500*           ,:‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú                            
006510*           ,:‚c‚T‚V‚m‚j‚j|ÁžŽž                              
006520*           ,:‚c‚T‚V‚m‚j‚j|Áž’S“–ŽÒ                            
006530*           ,:‚c‚T‚V‚m‚j‚j|Žd–ó’ZkƒR[ƒh                        
006540*           ,:‚c‚T‚V‚m‚j‚j|“E—v                                  
006550*           ,:‚c‚T‚V‚m‚j‚j|ÁžŽæÁ‹æ•ª                          
006560*           ,:‚c‚T‚V‚m‚j‚j|“o˜^”NŒŽ“ú                            
006570*           ,:‚c‚T‚V‚m‚j‚j|“o˜^ŽžŠÔ                              
006580*           ,:‚c‚T‚V‚m‚j‚j|“o˜^’S“–ŽÒ                            
006590*           ,:‚c‚T‚V‚m‚j‚j|XV”NŒŽ“ú                            
006600*           ,:‚c‚T‚V‚m‚j‚j|XVŽžŠÔ                              
006610*           ,:‚c‚T‚V‚m‚j‚j|XVŽÒ                                
006620*           ,:‚c‚T‚V‚m‚j‚j|“ü—Í’S“–ŽÒƒR[ƒh )                    
006630*    END-EXEC.
             CALL "SQLADR" USING SQ0003 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 216 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|Áž’Ê”Ô IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(1)
             MOVE 11 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|ƒŒƒR[ƒh‹æ•ª IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(2)
             MOVE 1 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|Áž”NŒŽ“ú IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(3)
             MOVE 8 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|ÁžŽž IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(4)
             MOVE 8 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|Áž’S“–ŽÒ IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(5)
             MOVE 20 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|Žd–ó’ZkƒR[ƒh IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(6)
             MOVE 2 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|“E—v IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(7)
             MOVE 80 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|ÁžŽæÁ‹æ•ª IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(8)
             MOVE 1 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|“o˜^”NŒŽ“ú IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(9)
             MOVE 8 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|“o˜^ŽžŠÔ IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(10)
             MOVE 8 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|“o˜^’S“–ŽÒ IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(11)
             MOVE 8 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|XV”NŒŽ“ú IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(12)
             MOVE 8 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|XVŽžŠÔ IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|XVŽÒ IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(14)
             MOVE 8 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚T‚V‚m‚j‚j|“ü—Í’S“–ŽÒƒR[ƒh IN
                 “ü‹àÁžŠÇ—
                 SQL-SQHSTV(15)
             MOVE 8 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 SQL-SQHSTV(1)
                 SQL-SQPHSV
             CALL "SQLADR" USING
                 SQL-SQHSTL(1)
                 SQL-SQPHSL
             CALL "SQLADR" USING
                 SQL-SQHSTS(1)
                 SQL-SQPHSS
             CALL "SQLADR" USING
                 SQL-SQINDV(1)
                 SQL-SQPIND
             CALL "SQLADR" USING
                 SQL-SQINDS(1)
                 SQL-SQPINS
             CALL "SQLADR" USING
                 SQL-SQHARM(1)
                 SQL-SQPARM
             CALL "SQLADR" USING
                 SQL-SQHARC(1)
                 SQL-SQPARC

             CALL "SQLBEX" USING
                 SQLCTX
                 SQLEXD
                 SQLFPN

             CALL "SQLGSS" USING
                SQLSTATE
                 .
006640*                                                                 
006650*----------------------------------------------------------------*
006660*    ’Ç‰Áˆ—‚ðŠm”F                                              *
006670*----------------------------------------------------------------*
006680     EVALUATE  SQLCODE                                            
006690        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
006700*--<       ’Ç‰Á¬Œ÷ >                                             
006710           COMPUTE  ‚v|o—Í|Œ”‚P  =  ‚v|o—Í|Œ”‚P +  1    
006720        WHEN   OTHER                                              
006730*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
006740           MOVE     -40               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006750           PERFORM  ƒGƒ‰[”»’èˆ—                                
006760     END-EVALUATE.                                                
006770*                                                                 
006780 “ü‹àÁžŠÇ—o—Í|‚d‚w‚h‚s.                                      
006790     EXIT.                                                        
006800******************************************************************
006810*   “ü‹àÁžŠÇ—_“ü‹à–¾×o—Í                                    *
006820******************************************************************
006830 “ü‹àÁžŠÇ—“ü‹à–¾×o—Í             SECTION.                    
006840 “ü‹àÁžŠÇ—“ü‹à–¾×o—Í|‚r‚s‚`‚q‚s.                            
006850     
      *    EXEC  SQL                                                    
006860*       INSERT  INTO  D57NKM_TBL                                  
006870*          ( Áž’Ê”Ô                                             
006880*           ,“ü‹à’Ê”Ô                                             
006890*           ,Áž‘ÎÛŠz                                           
006900*           ,ÁžŽæÁ‹æ•ª                                         
006910*           ,“o˜^”NŒŽ“ú                                           
006920*           ,“o˜^ŽžŠÔ                                             
006930*           ,“o˜^’S“–ŽÒ                                           
006940*           ,XV”NŒŽ“ú                                           
006950*           ,XVŽžŠÔ                                             
006960*           ,XVŽÒ                                               
006970*           ,“ü—Í’S“–ŽÒƒR[ƒh)                                    
006980*       VALUES                                                    
006990*          ( :‚c‚T‚V‚m‚j‚l|Áž’Ê”Ô                              
007000*           ,:‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô                              
007010*           ,:‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz                            
007020*           ,:‚c‚T‚V‚m‚j‚l|ÁžŽæÁ‹æ•ª                          
007030*           ,:‚c‚T‚V‚m‚j‚l|“o˜^”NŒŽ“ú                            
007040*           ,:‚c‚T‚V‚m‚j‚l|“o˜^ŽžŠÔ                              
007050*           ,:‚c‚T‚V‚m‚j‚l|“o˜^’S“–ŽÒ                            
007060*           ,:‚c‚T‚V‚m‚j‚l|XV”NŒŽ“ú                            
007070*           ,:‚c‚T‚V‚m‚j‚l|XVŽžŠÔ                              
007080*           ,:‚c‚T‚V‚m‚j‚l|XVŽÒ                                
007090*           ,:‚c‚T‚V‚m‚j‚l|“ü—Í’S“–ŽÒƒR[ƒh )                    
007100*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 291 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|Áž’Ê”Ô IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(1)
           MOVE 11 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|“ü‹à’Ê”Ô IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(2)
           MOVE 11 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|Áž‘ÎÛŠz IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|ÁžŽæÁ‹æ•ª IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|“o˜^”NŒŽ“ú IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(5)
           MOVE 8 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|“o˜^ŽžŠÔ IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(6)
           MOVE 8 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|“o˜^’S“–ŽÒ IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(7)
           MOVE 8 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|XV”NŒŽ“ú IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(8)
           MOVE 8 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|XVŽžŠÔ IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(9)
           MOVE 8 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|XVŽÒ IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(10)
           MOVE 8 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚c‚T‚V‚m‚j‚l|“ü—Í’S“–ŽÒƒR[ƒh IN
               “ü‹àÁžŠÇ—|“ü‹à–¾×
               SQL-SQHSTV(11)
           MOVE 8 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
007110*----------------------------------------------------------------*
007120*    ’Ç‰Áˆ—‚ðŠm”F                                              *
007130*----------------------------------------------------------------*
007140     EVALUATE  SQLCODE                                            
007150        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
007160*--<       ’Ç‰Á¬Œ÷ >                                             
007170           COMPUTE  ‚v|o—Í|Œ”‚Q =  ‚v|o—Í|Œ”‚Q  +  1    
007180        WHEN   OTHER                                              
007190*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
007200           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
007210           PERFORM  ƒGƒ‰[”»’èˆ—                                
007220     END-EVALUATE.                                                
007230*                                                                 
007240 “ü‹àÁžŠÇ—“ü‹à–¾×o—Í|‚d‚w‚h‚s.                              
007250     EXIT.                                                        
007260******************************************************************
007270*    I—¹ˆ—                                                    *
007280******************************************************************
007290 I—¹ˆ—                             SECTION.                    
007300 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
007310*                                                                 
007320     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
007330*                                                                 
007340     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
007350*                                                                 
007360     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
007370*                                                                 
007380*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
007390     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
007400*                                                                 
007410 I—¹ˆ—|‚d‚w‚h‚s.                                              
007420     EXIT.                                                        
007430******************************************************************
007440*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007450******************************************************************
007460 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
007470 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
007480*                                                                 
007490*----------------------------------------------------------------*
007500*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
007510*----------------------------------------------------------------*
007520     INITIALIZE                       IF-CHOCO001.                
007530     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007540     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007550     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007560     MOVE  "LTRNKK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007570     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007580     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007590     MOVE  "“ü‹àÁžŠÇ—iÁžŠî–{î•ñj“ÇžŒ”"                 
007600                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007610     CALL  CLOCO001                USING  IF-CHOCO001.            
007620*                                                                 
007630     INITIALIZE                       IF-CHOCO001.                
007640     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007650     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007660     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007670     MOVE  "D57NKK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007680     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007690     MOVE  ‚v|o—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007700     MOVE  "“ü‹àÁžŠÇ—o—ÍŒ”"     TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007710     CALL  CLOCO001                USING  IF-CHOCO001.            
007720*                                                                 
007730     INITIALIZE                       IF-CHOCO001.                
007740     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007750     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007760     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007770     MOVE  "D57NKM"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007780     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007790     MOVE  ‚v|o—Í|Œ”‚Q           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007800     MOVE  "“ü‹àÁžŠÇ—_“ü‹à–¾×o—ÍŒ”"                        
007810                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007820     CALL  CLOCO001                USING  IF-CHOCO001.            
007830                                                                  
007840*                                                                 
007850*----------------------------------------------------------------*
007860*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007870*----------------------------------------------------------------*
007880     INITIALIZE                       IF-CHOCO001.                
007890     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007900     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007910     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007920     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007930     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007940     CALL  CLOCO001                USING  IF-CHOCO001.            
007950*                                                                 
007960 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
007970     EXIT.                                                        
007980******************************************************************
007990*    ‚c‚aƒNƒ[ƒY                                                *
008000******************************************************************
008010 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
008020 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
008030*                                                                 
008040*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
008050     
      *    EXEC SQL                                                     
008060*       CLOSE  CUR1                                               
008070*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 350 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
008080*                                                                 
008090 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
008100     EXIT.                                                        
008110******************************************************************
008120*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
008130******************************************************************
008140 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
008150 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
008160*                                                                 
008170     
      *    EXEC  SQL                                                    
008180*       COMMIT  WORK  RELEASE                                     
008190*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 365 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
008200*                                                                 
008210     INITIALIZE                       IF-CHOCO001.                
008220     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008230     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008240     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008250     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008260     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008270     CALL  CLOCO001                USING  IF-CHOCO001.            
008280*                                                                 
008290 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
008300     EXIT.                                                        
008310******************************************************************
008320*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
008330******************************************************************
008340 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
008350 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
008360*                                                                 
008370     
      *    EXEC  SQL                                                    
008380*       ROLLBACK WORK  RELEASE                                    
008390*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 380 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
008400*                                                                 
008410     INITIALIZE                       IF-CHOCO001.                
008420     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008430     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008440     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008450     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008460     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008470     CALL  CLOCO001                USING  IF-CHOCO001.            
008480*                                                                 
008490 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
008500     EXIT.                                                        
008510******************************************************************
008520*    ƒGƒ‰[ˆ—                                                  *
008530******************************************************************
008540 ƒGƒ‰[”»’èˆ—                       SECTION.                    
008550 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
008560*                                                                 
008570     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
008580     INITIALIZE                           IF-CHOCO001.            
008590*                                                                 
008600     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
008610        WHEN  -10                                                 
008620*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
008630           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008640           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008650           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008660           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
008670           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008680           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008690           CALL  CLOCO001          USING  IF-CHOCO001             
008700*                                                                 
008710        WHEN  -20                                                 
008720*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
008730           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008740           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008750           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008760           MOVE  "LTRNKK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008770           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008780           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008790           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008800           CALL  CLOCO001          USING  IF-CHOCO001             
008810*                                                                 
008820        WHEN  -30                                                 
008830*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
008840           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008850           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008860           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008870           MOVE  "LTRNKK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008880           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008890           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008900           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008910           CALL  CLOCO001          USING  IF-CHOCO001             
008920*                                                                 
008930        WHEN  -40                                                 
008940*--<       “ü‹àÁžŠÇ—’Ç‰ÁŽ¸”s >                                 
008950           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008960           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008970           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008980           MOVE  "D57NKK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008990           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009000           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009010           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009020           CALL  CLOCO001          USING  IF-CHOCO001             
009030*                                                                 
009040        WHEN  -50                                                 
009050*--<       “ü‹àÁžŠÇ—|“ü‹à–¾×’Ç‰ÁŽ¸”s >                       
009060           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009070           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009080           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009090           MOVE  "D57NKM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009100           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009110           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009120           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009130           CALL  CLOCO001          USING  IF-CHOCO001             
009140                                                                  
009150*                                                                 
009160        WHEN  OTHER                                               
009170           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009180     END-EVALUATE.                                                
009190*                                                                 
009200     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
009210        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
009220*                                                                 
009230        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
009240*                                                                 
009250*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
009260        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
009270*                                                                 
009280        EXIT  PROGRAM                                             
009290     END-IF.                                                      
009300*                                                                 
009310 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
009320     EXIT.                                                        
009330******************************************************************
009340*                  END OF PROGRAM                                *
009350******************************************************************
