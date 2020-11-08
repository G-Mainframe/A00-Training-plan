000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼    FŒ_–ñ”„Š|ÂŒ –¾×ˆÚs                 *
000040*      2. ƒvƒƒOƒ‰ƒ€ID    FCOBIS490                             *
000050*      3. ˆ—ŠT—v        F‚r‚t‚l‚l‚h‚sƒtƒ@ƒNƒ^ƒŠƒ“ƒO‚c‚a‚æ‚è A*
000060*                           Œ_–ñ”„Š|ÂŒ –¾×ƒe[ƒuƒ‹‚ðì¬‚·‚éB *
000070*      4. ì¬ŽÒ          F—›‘åˆÌ                               *
000080*      5. ì¬“ú          F2005.03.31                           *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m                *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS490.                   
000170******************************************************************
000180*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000230******************************************************************
000240 DATA                                 DIVISION.                   
000250******************************************************************
000260*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000270******************************************************************
000280 WORKING-STORAGE                      SECTION.                    
000290*----------------------------------------------------------------*
000300*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000310*----------------------------------------------------------------*
000320     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS490.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(110) VALUE "select VŽæˆøæƒR[ƒh   into :b1
      -    "  from IKOTBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTB
      -    "L001.–Ú“I‚b‚c='2')".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(100) VALUE "select Ž}”Ô   into :b1  from IKO
      -     "TBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTBL001.–Ú“I
      -    "‚b‚c='2')".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(100) VALUE "select Ž}”Ô   into :b1  from IKO
      -     "TBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTBL001.–Ú“I
      -    "‚b‚c='3')".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(159) VALUE "insert into D414USM_TBL(Œ_–ñ”Ô†
      -     ",–¾×”Ô†,ŽæˆøæƒR[ƒh,Œ_–ñæƒR[ƒh,Šz–Ê‹àŠz,Šú“ú,—˜‘§Šú“ú,
      -     "“ú”,Š„ˆø—¦,Š„ˆø—¿,Žæ—§Žè”—¿“™,Žæ—§Žè”—¿“™Á”ïÅŠz,”ƒŽæ‘ã
      -    "‹àŠz,ŽÐ“à".

           02  FILLER PIC X(160) VALUE "‹à—˜‹æ•ª,ŽÐ“à‹à—˜,ŽÀŽ¿”N—¦,‘e—˜,
      -     "¿‹æƒR[ƒh,ŽÐ“à‹à—˜_ˆê”Ê,‘e—˜_ˆê”Ê,ŠúŒÀ‘OŒˆÏ“ú,—¬“®‰»æ,
      -    "ÂŒ —¬“®‰»æ‹æ•ª,XV”NŒŽ“ú,XVŽžŠÔ,XVŽÒ,“ü—Í’S“–ŽÒƒR[ƒh
      -    ",“o˜^”NŒŽ".

           02  FILLER PIC X(160) VALUE "“ú,“o˜^ŽžŠÔ,“o˜^’S“–ŽÒ) values (
      -    ":b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:b13,:b14
      -    ",:b15,:b16,:b17,:b18,:b19,:b20,:b21,:b22,:b23,:b24,:b25,:b26
      -    ",:b27,:b".

           02  FILLER PIC X(13) VALUE "28,:b29,:b30)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +288037.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +30.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 30 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 30 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select LTRFCU.Œ_–ñ”Ô†  ,LTRFCK.
      -    "ƒ†[ƒU[ƒR[ƒh  ,LTRFCK.Šz–Ê‹àŠz  ,LTRFCK.Šú“ú  ,LTRFCU.—˜‘§
      -    "Šú“ú  ,LTRFCU.ŠúŠÔ“ú”  ,LTRFCU.Š„ˆø—¦  ,LTRFCU.Š„ˆø—¿  ,LTR
      -    "FCU.ŽóŽæ".

           02  FILLER PIC X(160) VALUE "Žè”—¿  ,LTRFCU.ŽóŽæŽè”—¿Á”ïÅ
      -    "“™Šz  ,LTRFCU.”ƒŽæ‹àŠz  ,LTRFCK.ŽÐ“à‹à—˜  ,LTRFCK.‘e—˜‰v  ,L
      -    "TRFCK.¿‹æƒR[ƒh  ,LTRFCK.ŽÐ“à‹à—˜  ,LTRFCK.‘e—˜‰v  ,LTRFC
      -    "U.ŠúŒÀ‘O".

           02  FILLER PIC X(77) VALUE "ŒˆÙ“ú   from LTRFCK ,LTRFCU wher
      -    "e LTRFCU.Œ_–ñ”Ô†=LTRFCK.Œ_–ñ”Ô†           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +194.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +397.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +249.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +273.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +17.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +165.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +110.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +334.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +188.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +100.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +366.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +211.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +100.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +397.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +234.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +492.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +516.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +369.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +691.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +384.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +703.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +399.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +723.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000330*                                                                 
000340 01  ‚v‚r|ŽÀŽ¿”N—¦                   PIC  9(10) VALUE ZERO.      
000350 01  ‚v‚r|ŽÐ“à‹à—˜‹æ•ª               PIC  X(01) VALUE ZERO.      
000360 01  ‚v‚r|—¬“®‰»æ                   PIC  X(10) VALUE ZERO.      
000370 01  ‚v‚r|ÂŒ —¬“®‰»æ‹æ•ª           PIC  X(01) VALUE ZERO.      
000380*                                                                 
000390*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000400     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL             END-EXEC.
000410*                                                                 
000420*--< ‚n‚q‚`‚b‚k‚d ‚r‚p‚kŽÀsî•ñ (SQLCA) >                        
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000430     
      *    EXEC  SQL  INCLUDE  SQLCA.COB              END-EXEC.
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
000440*                                                                 
000450*--< SUMMITÌ§¸ÀØÝ¸Þ”„Š|ÂŒ  >                                     
000460     
      *    EXEC  SQL  INCLUDE  LTRFCU.CBL             END-EXEC.
000470*                                                                 
000480*--< SUMMITÌ§¸ÀØÝ¸ÞŠî–{î•ñ >                                     
000010************************************************
000020* Ì§¸ÀØÝ¸Þi”„Š|ÂŒ j(LTRFCU)
000030************************************************
000040 01  ‚k‚s‚q‚e‚b‚t|Œ_–ñ”Ô† PIC  X(009).
000050 01  ‚k‚s‚q‚e‚b‚t|—˜‘§Šú“ú PIC  X(007).
000060 01  ‚k‚s‚q‚e‚b‚t|‰ñŽû•û–@ PIC S9(001) COMP-3.
000070 01  ‚k‚s‚q‚e‚b‚t|‘ã—‰ñŽû‹æ•ª PIC S9(001) COMP-3.
000080 01  ‚k‚s‚q‚e‚b‚t|ŠúŠÔ“ú” PIC S9(004) COMP-3.
000090 01  ‚k‚s‚q‚e‚b‚t|”ƒŽæ‹àŠz PIC S9(013) COMP-3.
000100 01  ‚k‚s‚q‚e‚b‚t|Š„ˆø—¿ PIC S9(013) COMP-3.
000110 01  ‚k‚s‚q‚e‚b‚t|Š„ˆø—¦ PIC S9(003)V9(8) COMP-3.
000120 01  ‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿ PIC S9(013) COMP-3.
000130 01  ‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿Á”ïÅ“™Šz PIC S9(013) COMP-3.
000140 01  ‚k‚s‚q‚e‚b‚t|”ƒ–ß—\’è“ú PIC  X(007).
000150 01  ‚k‚s‚q‚e‚b‚t|”ƒŽæ‘ã‹àŽx•¥“ú PIC  X(007).
000160 01  ‚k‚s‚q‚e‚b‚t|ÂŒ •\Ž¦ PIC  X(060).
000170 01  ‚k‚s‚q‚e‚b‚t|ŠúŒÀ‘OŒˆÙ“ú PIC  X(007).
000180 01  ‚k‚s‚q‚e‚b‚t|–ß‚µ—˜‘§Šz PIC S9(013) COMP-3.
000190 01  ‚k‚s‚q‚e‚b‚t|–ß‚µ—˜—¦ PIC S9(003)V9(8) COMP-3.
000200 01  ‚k‚s‚q‚e‚b‚t|–ß‚µ“ú” PIC S9(004) COMP-3.
000210 01  ‚k‚s‚q‚e‚b‚t|–ß‚µ—˜‘§‘ŠŽE‹æ•ª PIC S9(001) COMP-3.
000220 01  ‚k‚s‚q‚e‚b‚t|•ÔÏŽè”—¿ PIC S9(013) COMP-3.
000230 01  ‚k‚s‚q‚e‚b‚t|•ÔÏŽè”—¿Á”ïÅ“™Šz PIC S9(013) COMP-3.
000240 01  ‚k‚s‚q‚e‚b‚t|—\”õ PIC  X(040).
000490     
      *    EXEC  SQL  INCLUDE  LTRFCK.CBL             END-EXEC.
000500*                                                                 
000510*--< Œ_–ñ”„Š|ÂŒ –¾×‚c‚a >                                       
000010************************************************
000020* Ì§¸ÀØÝ¸ÞiŠî–{î•ñj(LTRFCK)
000030************************************************
000040 01  ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô† PIC  X(009).
000050 01  ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh PIC  X(008).
000060 01  ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh PIC  X(008).
000070 01  ‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh PIC S9(004) COMP-3.
000080 01  ‚k‚s‚q‚e‚b‚j|’S“–ŽÒƒR[ƒh PIC S9(004) COMP-3.
000090 01  ‚k‚s‚q‚e‚b‚j|Œ_–ñ“ú PIC  X(007).
000100 01  ‚k‚s‚q‚e‚b‚j|ŽÀs“ú PIC  X(007).
000110 01  ‚k‚s‚q‚e‚b‚j|Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000120 01  ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜ PIC S9(003)V9(8) COMP-3.
000130 01  ‚k‚s‚q‚e‚b‚j|ŒŽ—˜•¡—˜—¦ PIC S9(003)V9(8) COMP-3.
000140 01  ‚k‚s‚q‚e‚b‚j|‘e—˜‰v PIC S9(013) COMP-3.
000150 01  ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz PIC S9(013) COMP-3.
000160 01  ‚k‚s‚q‚e‚b‚j|‹Æ–±‹æ•ª PIC S9(001) COMP-3.
000170 01  ‚k‚s‚q‚e‚b‚j|Šú“ú PIC  X(007).
000180 01  ‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh PIC  X(007).
000190 01  ‚k‚s‚q‚e‚b‚j|ŒûÀ”Ô† PIC  X(007).
000200 01  ‚k‚s‚q‚e‚b‚j|—a‹àŽí—Þ PIC S9(001) COMP-3.
000210 01  ‚k‚s‚q‚e‚b‚j|ˆÄŒ”­¶‹æ•ª PIC  X(001).
000220 01  ‚k‚s‚q‚e‚b‚j|âg‹c‹æ•ª PIC S9(001) COMP-3.
000230 01  ‚k‚s‚q‚e‚b‚j|—˜—¦Šî”ƒR[ƒh PIC S9(001) COMP-3.
000240 01  ‚k‚s‚q‚e‚b‚j|—˜‘§’[”ˆ—ƒR[ƒh PIC S9(001) COMP-3.
000250 01  ‚k‚s‚q‚e‚b‚j|‘OŽæŒãŽæ‹æ•ª PIC S9(001) COMP-3.
000260 01  ‚k‚s‚q‚e‚b‚j|•Ð’[—¼’[‹æ•ª PIC S9(001) COMP-3.
000270 01  ‚k‚s‚q‚e‚b‚j|‹à—˜•Ï“®‹æ•ª PIC S9(001) COMP-3.
000280 01  ‚k‚s‚q‚e‚b‚j|˜A“®‹à—˜‹æ•ª PIC S9(002) COMP-3.
000290 01  ‚k‚s‚q‚e‚b‚j|ƒXƒvƒŒƒbƒh PIC S9(003)V9(8) COMP-3.
000300 01  ‚k‚s‚q‚e‚b‚j|‹x“ú‘Î‰ž‹æ•ª PIC S9(001) COMP-3.
000310 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh PIC  X(008).
000320 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒî•ñ‚P PIC  X(040).
000330 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒî•ñ‚Q PIC  X(040).
000340 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒî•ñ‚R PIC  X(040).
000350 01  ‚k‚s‚q‚e‚b‚j|³”F‚m‚n PIC  X(006).
000360 01  ‚k‚s‚q‚e‚b‚j|Žx•¥³”F“ú PIC  X(007).
000370 01  ‚k‚s‚q‚e‚b‚j|Žx•¥³”Fî•ñ|’S“–ŽÒƒR[ƒh PIC  X(004).
000380 01  ‚k‚s‚q‚e‚b‚j|Žx•¥•û–@ƒR[ƒh PIC S9(002) COMP-3.
000390 01  ‚k‚s‚q‚e‚b‚j|Šú“úŠÇ—ŽÀs“ú PIC  X(007).
000400 01  ‚k‚s‚q‚e‚b‚j|¿‹‚c‚a“o˜^“ú PIC  X(007).
000410 01  ‚k‚s‚q‚e‚b‚j|—\”õ PIC  X(090).
000420 01  ‚k‚s‚q‚e‚b‚j|‹¤’Êî•ñ PIC  X(035).
000520     
      *    EXEC  SQL  INCLUDE  D414USM.CBL            END-EXEC.
000530*                                                                 
000540*--< •ÏŠ·ƒe[ƒuƒ‹ >                                               
      *****************************************************************
      *   Œ_–ñ”„Š|ÂŒ –¾×(D414USM_TBL)
      *****************************************************************
       01  Œ_–ñ”„Š|ÂŒ –¾×.
           03  ‚c‚S‚P‚S|Œ_–ñ”Ô†    PIC  X(010).
           03  ‚c‚S‚P‚S|–¾×”Ô†    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚S‚P‚S|Œ_–ñæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚S‚P‚S|Šz–Ê‹àŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|Šú“ú        PIC  X(008).
           03  ‚c‚S‚P‚S|—˜‘§Šú“ú    PIC  X(008).
           03  ‚c‚S‚P‚S|“ú”        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|Š„ˆø—¦      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|Š„ˆø—¿      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|Žæ—§Žè”—¿“™
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|Žæ—§Žè”—¿“™Á”ïÅŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|”ƒŽæ‘ã‹àŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|ŽÐ“à‹à—˜‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚P‚S|ŽÐ“à‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|ŽÀŽ¿”N—¦    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|‘e—˜        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|¿‹æƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚S‚P‚S|ŽÐ“à‹à—˜|ˆê”Ê
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|‘e—˜|ˆê”Ê  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚S|ŠúŒÀ‘OŒˆÏ“ú
                                     PIC  X(008).
           03  ‚c‚S‚P‚S|—¬“®‰»æ    PIC  X(010).
           03  ‚c‚S‚P‚S|ÂŒ —¬“®‰»æ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚P‚S|XV”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚S|XVŽžŠÔ    PIC  X(008).
           03  ‚c‚S‚P‚S|XVŽÒ      PIC  X(008).
           03  ‚c‚S‚P‚S|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚S‚P‚S|“o˜^”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚S|“o˜^ŽžŠÔ    PIC  X(008).
           03  ‚c‚S‚P‚S|“o˜^’S“–ŽÒ  PIC  X(008).
000550     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL          END-EXEC.
000560*                                                                 
000010************************************************
000020* •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001)
000030************************************************
000040 01  ‚h‚j‚n‚O‚O‚P|ŽæˆøæƒR[ƒh PIC  X(008).
000050 01  ‚h‚j‚n‚O‚O‚P|–Ú“I‚b‚c PIC  X(001).
000060 01  ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh PIC  X(007).
000070 01  ‚h‚j‚n‚O‚O‚P|Ž}”Ô PIC  X(003).
000080 01  ‚h‚j‚n‚O‚O‚P|—^MŠ‡‚èƒR[ƒh PIC  X(007).
000090 01  ‚h‚j‚n‚O‚O‚P|–¼Šñ‚¹ƒR[ƒh PIC  X(008).
000100 01  ‚h‚j‚n‚O‚O‚P|ƒ†[ƒUƒR[ƒh PIC  X(008).
000110 01  ‚h‚j‚n‚O‚O‚P|Ž¯•Ê‚b‚c PIC  X(001).
000570     
      *    EXEC  SQL  END      DECLARE      SECTION   END-EXEC.
000580*----------------------------------------------------------------*
000590*    ì‹Æ—Ìˆæ’è‹`                                                *
000600*----------------------------------------------------------------*
000610 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000620*                                                                 
000630*--< ƒGƒ‰[ƒR[ƒh >                                               
000640     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(02).                 
000650*                                                                 
000660*--< Œ”ƒGƒŠƒA >                                                 
000670     03  Œ”ƒGƒŠƒA.                                              
000680        05  ‚v|“ü—Í|Œ”            PIC  9(09).                 
000690        05  ‚v|o—Í|Œ”            PIC  9(09).                 
000700*                                                                 
000710*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000720     03  ƒtƒ‰ƒO|ƒGƒŠƒA.                                          
000730        05  ‚v|I—¹|ƒtƒ‰ƒO          PIC  X(01).                 
000740        05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO      PIC  X(01).                 
000750*                                                                 
000850*----------------------------------------------------------------*
000860*   ˆ—ŽžŠÔ’è‹`                                                 *
000870*----------------------------------------------------------------*
000880*--< ‹¤’Êî•ñ >                                                   
000890 01  ‚v|‹¤’Êî•ñ.                                                
000900     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
000910         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
000920         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
000930     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
000940     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKPO    ".
000950*----------------------------------------------------------------*
000960*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
000970*----------------------------------------------------------------*
000980 01  CALL-AREA.                                                   
000990*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001000     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001010     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001020*----------------------------------------------------------------*
001030*    ‚b‚n‚o‚x—Ìˆæ                                                *
001040*----------------------------------------------------------------*
001050*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001060 01  IF-CHOCO001.                                                 
001070     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001080*                                                                 
001090*----------------------------------------------------------------*
001100*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001110*----------------------------------------------------------------*
001120 01  PARA-AREA.                                                   
001130     COPY CPBCO001.                                               
001140******************************************************************
001150*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001160******************************************************************
001170 CONSTANT                             SECTION.                    
001180 01  ’è”—Ìˆæ.                                                    
001190     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS490".
001200     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80) VALUE            
001210                                       "Œ_–ñ”„Š|ÂŒ –¾×ˆÚs".    
001220     03  ’è”|‚r‚p‚k‚n‚j             PIC  9(04) VALUE  0000.     
001230     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC  9(04) VALUE  0100.     
001240     03  ’è”|³íó‘Ô               PIC  9(04) VALUE  ZERO.     
001250     03  ’è”|ˆÙíó‘Ô               PIC  9(04) VALUE  0009.     
001260******************************************************************
001270*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001280******************************************************************
001290 PROCEDURE                            DIVISION.                   
001300*                                                                 
001310     PERFORM  ‰Šúˆ—.                                           
001320*                                                                 
001330     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001340*                                                                 
001350     PERFORM  I—¹ˆ—.                                           
001360*                                                                 
001370     STOP RUN.                                                    
001380*                                                                 
001390******************************************************************
001400*    ‰Šúˆ—                                                    *
001410******************************************************************
001420 ‰Šúˆ—                             SECTION.                    
001430 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001440*                                                                 
001450*----------------------------------------------------------------*
001460*     ŠJŽnƒƒbƒZ[ƒWo—Í                                         *
001470*----------------------------------------------------------------*
001480     INITIALIZE                       IF-CHOCO001.                
001490     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001500     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001510     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001520     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001530     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001540     CALL  CLOCO001                USING  IF-CHOCO001.            
001550*                                                                 
001560*----------------------------------------------------------------*
001570*    ì‹Æ—Ìˆæ‚Ì‰Šú’lÝ’è                                        *
001580*----------------------------------------------------------------*
001590     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001600     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001610*                                                                 
001620*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001630     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001640*                                                                 
001650*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001660     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001670*----------------------------------------------------------------*
001680*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001690*----------------------------------------------------------------*
001700     PERFORM  ‚n‚q‚`‚b‚k‚dÚ‘±.                                   
001710*----------------------------------------------------------------*
001720*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                    *
001730*----------------------------------------------------------------*
001740     PERFORM   Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                           
001750*----------------------------------------------------------------*
001760*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú)                            *
001770*----------------------------------------------------------------*
001780     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
001790*----------------------------------------------------------------*
001800  ‰Šúˆ—|‚d‚w‚h‚s.                                             
001810     EXIT.                                                        
001820******************************************************************
001830*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001840******************************************************************
001850 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001860 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001870*                                                                 
001880*--< ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“ŒÄ‚Ño‚µ >                     
001890     CALL  COBCO001                USING  PARA-AREA.              
001900*                                                                 
001910     MOVE  PARA-DBSTRING              TO  DB-STRING.              
001920     MOVE  PARA-USERNAME              TO  USERNAME.               
001930     MOVE  PARA-PASSWORD              TO  PASSWD.                 
001940*                                                                 
001950*----------------------------------------------------------------*
001960*    ŠJŽnÚ‘±                                                    *
001970*----------------------------------------------------------------*
001980     IF  DB-STRING  =  SPACE                                      
001990        
      *       EXEC  SQL                                                 
002000*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002010*       END-EXEC 
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
002020     ELSE                                                         
002030        
      *       EXEC  SQL                                                 
002040*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002050*            USING  :DB-STRING                                    
002060*       END-EXEC 
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
002070     END-IF.                                                      
002080*                                                                 
002090*----------------------------------------------------------------*
002100*    Ú‘±ó‘Ô”»’è                                                *
002110*----------------------------------------------------------------*
002120     EVALUATE  SQLCODE                                            
002130        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002140*--<       Ú‘±³í >                                             
002150           CONTINUE                                               
002160        WHEN  OTHER                                               
002170*--<       Ú‘±ƒGƒ‰[ >                                           
002180           MOVE     -1                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002190           PERFORM  ƒGƒ‰[ˆ—                                    
002200     END-EVALUATE.                                                
002210*                                                                 
002220 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002230     EXIT.                                                        
002240******************************************************************
002250*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                    *
002260******************************************************************
002270*                                                                 
002280 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002290 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002300*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`  >                                  
002310     
      *    EXEC SQL                                                     
002320*       DECLARE CUR1 CURSOR FOR                                   
002330*        SELECT  LTRFCU.Œ_–ñ”Ô†                                  
002340*               ,LTRFCK.ƒ†[ƒU[ƒR[ƒh                            
002350* 	      ,LTRFCK.Šz–Ê‹àŠz                                  
002360* 	      ,LTRFCK.Šú“ú                                      
002370* 	      ,LTRFCU.—˜‘§Šú“ú                                  
002380* 	      ,LTRFCU.ŠúŠÔ“ú”                                  
002390* 	      ,LTRFCU.Š„ˆø—¦                                    
002400* 	      ,LTRFCU.Š„ˆø—¿                                    
002410* 	      ,LTRFCU.ŽóŽæŽè”—¿                                
002420* 	      ,LTRFCU.ŽóŽæŽè”—¿Á”ïÅ“™Šz                      
002430* 	      ,LTRFCU.”ƒŽæ‹àŠz                                  
002440* 	      ,LTRFCK.ŽÐ“à‹à—˜                                  
002450* 	      ,LTRFCK.‘e—˜‰v                                    
002460*               ,LTRFCK.¿‹æƒR[ƒh                              
002470* 	      ,LTRFCK.ŽÐ“à‹à—˜                                  
002480* 	      ,LTRFCK.‘e—˜‰v                                    
002490* 	      ,LTRFCU.ŠúŒÀ‘OŒˆÙ“ú                              
002500*          FROM  LTRFCK                                           
002510*               ,LTRFCU                                           
002520*         WHERE  LTRFCU.Œ_–ñ”Ô† = LTRFCK.Œ_–ñ”Ô†                
002530*    END-EXEC.
002540*                                                                 
002550*----------------------------------------------------------------*
002560*    ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“ˆ—                                        *
002570*----------------------------------------------------------------*
002580     
      *    EXEC  SQL                                                    
002590*       OPEN  CUR1                                                
002600*    END-EXEC.
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
002610*----------------------------------------------------------------*
002620*    ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Šm”F                                        *
002630*----------------------------------------------------------------*
002640     EVALUATE  SQLCODE                                            
002650        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002660*--<       ³í >                                                 
002670           CONTINUE                                               
002680        WHEN  OTHER                                               
002690*--<       ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
002700           MOVE     -2                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002710           PERFORM  ƒGƒ‰[ˆ—                                    
002720     END-EVALUATE.                                                
002730*                                                                 
002740 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
002750     EXIT.                                                        
002760******************************************************************
002770*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
002780******************************************************************
002790 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
002800 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
002810*                                                                 
002820     
      *    EXEC  SQL                                                    
002830*       FETCH  CUR1                                               
002840*          INTO  :‚k‚s‚q‚e‚b‚t|Œ_–ñ”Ô†                          
002850*               ,:‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh                    
002860*               ,:‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz                          
002870* 	      ,:‚k‚s‚q‚e‚b‚j|Šú“ú                              
002880* 	      ,:‚k‚s‚q‚e‚b‚t|—˜‘§Šú“ú                          
002890* 	      ,:‚k‚s‚q‚e‚b‚t|ŠúŠÔ“ú”                          
002900* 	      ,:‚k‚s‚q‚e‚b‚t|Š„ˆø—¦                            
002910* 	      ,:‚k‚s‚q‚e‚b‚t|Š„ˆø—¿                            
002920* 	      ,:‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿                        
002930* 	      ,:‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿Á”ïÅ“™Šz              
002940* 	      ,:‚k‚s‚q‚e‚b‚t|”ƒŽæ‹àŠz                          
002950* 	      ,:‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜                          
002960* 	      ,:‚k‚s‚q‚e‚b‚j|‘e—˜‰v                            
002970*               ,:‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh                      
002980*               ,:‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜                          
002990* 	      ,:‚k‚s‚q‚e‚b‚j|‘e—˜‰v                            
003000* 	      ,:‚k‚s‚q‚e‚b‚t|ŠúŒÀ‘OŒˆÙ“ú   		        
003010*    END-EXEC.
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
               ‚k‚s‚q‚e‚b‚t|Œ_–ñ”Ô†
               SQL-SQHSTV(1)
           MOVE 9 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Šú“ú
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|—˜‘§Šú“ú
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|ŠúŠÔ“ú”
               SQL-SQHSTV(6)
           MOVE 3 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|Š„ˆø—¦
               SQL-SQHSTV(7)
           MOVE 6 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|Š„ˆø—¿
               SQL-SQHSTV(8)
           MOVE 7 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿Á”ïÅ“™Šz
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|”ƒŽæ‹àŠz
               SQL-SQHSTV(11)
           MOVE 7 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜
               SQL-SQHSTV(12)
           MOVE 6 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|‘e—˜‰v
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜
               SQL-SQHSTV(15)
           MOVE 6 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|‘e—˜‰v
               SQL-SQHSTV(16)
           MOVE 7 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚t|ŠúŒÀ‘OŒˆÙ“ú
               SQL-SQHSTV(17)
           MOVE 7 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
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
003020*----------------------------------------------------------------*
003030*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“ÇžƒGƒ‰[                              *
003040*----------------------------------------------------------------*
003050     EVALUATE   SQLCODE                                           
003060        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003070*--<       ³í >                                                 
003080           COMPUTE  ‚v|“ü—Í|Œ”    =  ‚v|“ü—Í|Œ”  +  1     
003090        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
003100*--<       “ÇžI—¹ >                                             
003110           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
003120        WHEN   OTHER                                              
003130*--<       “ÇžƒGƒ‰[ >                                           
003140           MOVE     -3                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003150           PERFORM  ƒGƒ‰[ˆ—                                    
003160     END-EVALUATE.                                                
003170*                                                                 
003180 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003190     EXIT.                                                        
003200*                                                                 
003210******************************************************************
003220*    Žåˆ—                                                      *
003230******************************************************************
003240 Žåˆ—                               SECTION.                    
003250 Žåˆ—|‚r‚s‚`‚q‚s.                                              
003260*----------------------------------------------------------------*
003270*--<  •ÒWo—Íˆ— >                                             *
003280*---------------------------------------------------------------- 
003290        PERFORM  •ÒWˆ—                                         
003300        PERFORM  o—Íˆ—                                         
003310*                                                                 
003320*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
003330     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
003340*                                                                 
003350 Žåˆ—|‚d‚w‚h‚s.                                                
003360     EXIT.                                                        
003370******************************************************************
003380*    •ÏŠ·ˆ—‚P                                                  *
003390******************************************************************
003400 •ÏŠ·ˆ—‚P                           SECTION.                    
003410 •ÏŠ·ˆ—‚P|‚r‚s‚`‚q‚s.                                          
003420*                                                                 
003430     
      *    EXEC  SQL                                                    
003440*          SELECT  VŽæˆøæƒR[ƒh                                 
003450*            INTO :‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                   
003460*            FROM  IKOTBL001                                      
003470*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh                         
003480*                                     =                           
003490*                                    :‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
003500*             AND  IKOTBL001.–Ú“I‚b‚c = '2'                       
003510*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 165 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 7 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
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
003520*                                                                 
003530*----------------------------------------------------------------*
003540*    •ÏŠ·ˆ—‚PŠm”F                                              *
003550*----------------------------------------------------------------*
003560     EVALUATE  SQLCODE                                            
003570        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003580*--<       ³í >                                                 
003590           CONTINUE                                               
003600        WHEN  OTHER                                               
003610*--<       •ÏŠ·ˆ—‚PƒGƒ‰[ >                                     
003620           MOVE     SPACE             TO                          
003630                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
003640     END-EVALUATE.                                                
003650*                                                                 
003660  •ÏŠ·ˆ—‚P|‚d‚w‚h‚s.                                           
003670     EXIT.                                                        
003680*                                                                 
003690******************************************************************
003700*    •ÏŠ·ˆ—‚Q                                                  *
003710******************************************************************
003720 •ÏŠ·ˆ—‚Q                           SECTION.                    
003730 •ÏŠ·ˆ—‚Q|‚r‚s‚`‚q‚s.                                          
003740*                                                                 
003750     
      *    EXEC  SQL                                                    
003760*          SELECT Ž}”Ô                                            
003770*            INTO :‚h‚j‚n‚O‚O‚P|Ž}”Ô                             
003780*            FROM  IKOTBL001                                      
003790*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh                         
003800*                                     =                           
003810*                                    :‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
003820*             AND  IKOTBL001.–Ú“I‚b‚c = '2'                       
003830*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 188 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚P|Ž}”Ô
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
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
003840*                                                                 
003850*----------------------------------------------------------------*
003860*    •ÏŠ·ˆ—‚QŠm”F                                              *
003870*----------------------------------------------------------------*
003880     EVALUATE  SQLCODE                                            
003890        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003900*--<       ³í >                                                 
003910           CONTINUE                                               
003920        WHEN  OTHER                                               
003930*--<       •ÏŠ·ˆ—‚QƒGƒ‰[ >                                     
003940           MOVE     SPACE             TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
003950     END-EVALUATE.                                                
003960*                                                                 
003970 •ÏŠ·ˆ—‚Q|‚d‚w‚h‚s.                                            
003980     EXIT.                                                        
003990*                                                                 
004000******************************************************************
004010*    •ÏŠ·ˆ—‚R                                                  *
004020******************************************************************
004030 •ÏŠ·ˆ—‚R                           SECTION.                    
004040 •ÏŠ·ˆ—‚R|‚r‚s‚`‚q‚s.                                          
004050*                                                                 
004060     
      *    EXEC  SQL                                                    
004070*          SELECT  Ž}”Ô                                           
004080*            INTO :‚h‚j‚n‚O‚O‚P|Ž}”Ô                             
004090*            FROM  IKOTBL001                                      
004100*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh                         
004110*                                     =                           
004120*                                      :‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
004130*             AND  IKOTBL001.–Ú“I‚b‚c = '3'                       
004140*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 211 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚P|Ž}”Ô
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
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
004150*                                                                 
004160*----------------------------------------------------------------*
004170*    •ÏŠ·ˆ—‚RŠm”F                                              *
004180*----------------------------------------------------------------*
004190     EVALUATE  SQLCODE                                            
004200        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004210*--<       ³í >                                                 
004220           CONTINUE                                               
004230        WHEN  OTHER                                               
004240*--<       •ÏŠ·ˆ—‚RƒGƒ‰[ >                                     
004250           MOVE     SPACE             TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
004260     END-EVALUATE.                                                
004270 •ÏŠ·ˆ—‚R|‚d‚w‚h‚s.                                            
004280      EXIT.                                                       
004290*                                                                 
004300******************************************************************
004310*     •ÒWˆ—                                                   *
004320******************************************************************
004330 •ÒWˆ—                             SECTION.                    
004340 •ÒWˆ—|‚r‚s‚`‚q‚s.                                            
004350*                                                                 
004360*----------------------------------------------------------------*
004370*       ‰Šú‰»ˆ—                                               *
004380*----------------------------------------------------------------*
004390        MOVE  SPACE                   TO  Œ_–ñ”„Š|ÂŒ –¾×.       
004400        INITIALIZE                        Œ_–ñ”„Š|ÂŒ –¾×.       
004410*                                                                 
004420*----------------------------------------------------------------*
004430*       €–Ú•ÒWˆ—                                             *
004440*----------------------------------------------------------------*
004450*--<    No.01 >                                                   
004460        MOVE  ‚k‚s‚q‚e‚b‚t|Œ_–ñ”Ô†  TO  ‚c‚S‚P‚S|Œ_–ñ”Ô†.     
004470*--<    No.02 >                                                   
004480        MOVE  ‚v|o—Í|Œ”          TO  ‚c‚S‚P‚S|–¾×”Ô†.     
004490*--<    No.03 >                                                   
004500        PERFORM •ÏŠ·ˆ—‚P.                                       
004510        MOVE   ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                       
004520                                      TO  ‚c‚S‚P‚S|ŽæˆøæƒR[ƒh. 
004530*--<    No.04 >                                                   
004540        PERFORM •ÏŠ·ˆ—‚Q.                                       
004550        MOVE  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      TO  ‚c‚S‚P‚S|Œ_–ñæƒR[ƒh. 
004560*--<    No.05 >                                                   
004570	      MOVE  ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz  TO  ‚c‚S‚P‚S|Šz–Ê‹àŠz.     
004580*--<    No.06 >		                                        
004590        MOVE  ‚k‚s‚q‚e‚b‚j|Šú“ú      TO  ‚c‚S‚P‚S|Šú“ú.         
004600*--<    No.07 >		                                        
004610	      MOVE  ‚k‚s‚q‚e‚b‚t|—˜‘§Šú“ú  TO  ‚c‚S‚P‚S|—˜‘§Šú“ú.     
004620*--<    No.08 >		                                        
004630	      MOVE  ‚k‚s‚q‚e‚b‚t|ŠúŠÔ“ú”  TO  ‚c‚S‚P‚S|“ú”.         
004640*--<    No.09 >	                                                
004650	      MOVE  ‚k‚s‚q‚e‚b‚t|Š„ˆø—¦    TO  ‚c‚S‚P‚S|Š„ˆø—¦.       
004660*--<    No.10 >		                                        
004670	      MOVE  ‚k‚s‚q‚e‚b‚t|Š„ˆø—¿    TO  ‚c‚S‚P‚S|Š„ˆø—¿.       
004680*--<    No.11 >		                                        
004690	      MOVE  ‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿                            
004700                                      TO  ‚c‚S‚P‚S|Žæ—§Žè”—¿“™. 
004710*--<    No.12 >	       	                                        
004720	      MOVE  ‚k‚s‚q‚e‚b‚t|ŽóŽæŽè”—¿Á”ïÅ“™Šz                  
004730                                      TO                          
004740                                  ‚c‚S‚P‚S|Žæ—§Žè”—¿“™Á”ïÅŠz. 
004750*--<    No.13 >		                                        
004760	      MOVE  ‚k‚s‚q‚e‚b‚t|”ƒŽæ‹àŠz  TO  ‚c‚S‚P‚S|”ƒŽæ‘ã‹àŠz.   
004770*--<    No.14 >		                                        
004780	      MOVE  ‚v‚r|ŽÐ“à‹à—˜‹æ•ª      TO  ‚c‚S‚P‚S|ŽÐ“à‹à—˜‹æ•ª. 
004790*--<    No.15 >		                                        
004800	      MOVE  ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜  TO  ‚c‚S‚P‚S|ŽÐ“à‹à—˜.     
004810*--<    No.16 >	                                                
004820	      MOVE  ‚v‚r|ŽÀŽ¿”N—¦          TO  ‚c‚S‚P‚S|ŽÀŽ¿”N—¦.     
004830*--<    No.17 >		                                        
004840	      MOVE  ‚k‚s‚q‚e‚b‚j|‘e—˜‰v    TO  ‚c‚S‚P‚S|‘e—˜.         
004850*--<    No.18 >                                                   
004860        PERFORM •ÏŠ·ˆ—‚R.                                       
004870	      MOVE  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      TO  ‚c‚S‚P‚S|¿‹æƒR[ƒh. 
004880*--<    No.19 >		                                        
004890        MOVE  ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜  TO                          
004900                                        ‚c‚S‚P‚S|ŽÐ“à‹à—˜|ˆê”Ê. 
004910*--<    No.20 >		                                        
004920	      MOVE  ‚k‚s‚q‚e‚b‚j|‘e—˜‰v    TO  ‚c‚S‚P‚S|‘e—˜|ˆê”Ê.   
004930*--<    No.21 >		                                        
004940	      MOVE  ‚k‚s‚q‚e‚b‚t|ŠúŒÀ‘OŒˆÙ“ú                          
004950                                      TO  ‚c‚S‚P‚S|ŠúŒÀ‘OŒˆÏ“ú. 
004960*--<    No.22 >		                                        
004970	      MOVE  ‚v‚r|—¬“®‰»æ          TO  ‚c‚S‚P‚S|—¬“®‰»æ.     
004980*--<    No.23 >		                                        
004990	      MOVE  ‚v‚r|ÂŒ —¬“®‰»æ‹æ•ª  TO                          
005000                                      ‚c‚S‚P‚S|ÂŒ —¬“®‰»æ‹æ•ª. 
005010*--<    No.24 >	                                                
005020	      MOVE   ‚v|ƒVƒXƒeƒ€“ú•t       TO  ‚c‚S‚P‚S|XV”NŒŽ“ú.   
005030*--<    No.25 >	       	                                        
005040	      MOVE   ‚v|ƒVƒXƒeƒ€Žž       TO  ‚c‚S‚P‚S|XVŽžŠÔ.     
005050*--<    No.26 >	                                                
005060	      MOVE   ‚v|’S“–ŽÒ             TO  ‚c‚S‚P‚S|XVŽÒ.       
005070*--<    No.27 >	 	                                        
005080	      MOVE   ‚v|’S“–ŽÒ             TO                          
005090                                      ‚c‚S‚P‚S|“ü—Í’S“–ŽÒƒR[ƒh. 
005100*--<    No.28 >		                                        
005110	      MOVE   ‚v|ƒVƒXƒeƒ€“ú•t       TO  ‚c‚S‚P‚S|“o˜^”NŒŽ“ú.   
005120*--<    No.29 >		                                        
005130	      MOVE   ‚v|ƒVƒXƒeƒ€Žž       TO  ‚c‚S‚P‚S|“o˜^ŽžŠÔ.     
005140*--<    No.30 >		                                        
005150	      MOVE   ‚v|’S“–ŽÒ             TO  ‚c‚S‚P‚S|“o˜^’S“–ŽÒ.   
005160*                                                                 
005190 •ÒWo—Íˆ—|‚d‚w‚h‚s.                                          
005200     EXIT.                                                        
005210******************************************************************
005220*    o—Íˆ—                                                    *
005230******************************************************************
005240 o—Íˆ—                             SECTION.                    
005250 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
005260*                                                                 
005270       
      *      EXEC  SQL                                                  
005280*       INSERT  INTO  D414USM_TBL                                 
005290*          ( Œ_–ñ”Ô†                                             
005300*           ,–¾×”Ô†                                             
005310*           ,ŽæˆøæƒR[ƒh                                         
005320*           ,Œ_–ñæƒR[ƒh                                         
005330*           ,Šz–Ê‹àŠz                                             
005340*           ,Šú“ú                                                 
005350*           ,—˜‘§Šú“ú                                             
005360*           ,“ú”                                                 
005370*           ,Š„ˆø—¦                                               
005380*           ,Š„ˆø—¿                                               
005390*           ,Žæ—§Žè”—¿“™                                         
005400* 	  ,Žæ—§Žè”—¿“™Á”ïÅŠz                                 
005410* 	  ,”ƒŽæ‘ã‹àŠz                                           
005420* 	  ,ŽÐ“à‹à—˜‹æ•ª                                         
005430* 	  ,ŽÐ“à‹à—˜                                             
005440* 	  ,ŽÀŽ¿”N—¦                                             
005450* 	  ,‘e—˜                                                 
005460* 	  ,¿‹æƒR[ƒh                                         
005470* 	  ,ŽÐ“à‹à—˜_ˆê”Ê                                        
005480* 	  ,‘e—˜_ˆê”Ê                                            
005490* 	  ,ŠúŒÀ‘OŒˆÏ“ú                                         
005500* 	  ,—¬“®‰»æ                                             
005510* 	  ,ÂŒ —¬“®‰»æ‹æ•ª                                     
005520*           ,XV”NŒŽ“ú                                           
005530*           ,XVŽžŠÔ                                             
005540*           ,XVŽÒ                                               
005550*           ,“ü—Í’S“–ŽÒƒR[ƒh                                     
005560*           ,“o˜^”NŒŽ“ú                                           
005570*           ,“o˜^ŽžŠÔ                                             
005580*           ,“o˜^’S“–ŽÒ)                                          
005590*      VALUES                                                     
005600*          ( :‚c‚S‚P‚S|Œ_–ñ”Ô†                                  
005610*           ,:‚c‚S‚P‚S|–¾×”Ô†                                  
005620*           ,:‚c‚S‚P‚S|ŽæˆøæƒR[ƒh                              
005630*           ,:‚c‚S‚P‚S|Œ_–ñæƒR[ƒh                              
005640*           ,:‚c‚S‚P‚S|Šz–Ê‹àŠz                                  
005650* 	  ,:‚c‚S‚P‚S|Šú“ú                                      
005660* 	  ,:‚c‚S‚P‚S|—˜‘§Šú“ú                                  
005670* 	  ,:‚c‚S‚P‚S|“ú”                                      
005680* 	  ,:‚c‚S‚P‚S|Š„ˆø—¦                                    
005690* 	  ,:‚c‚S‚P‚S|Š„ˆø—¿                                    
005700* 	  ,:‚c‚S‚P‚S|Žæ—§Žè”—¿“™                              
005710* 	  ,:‚c‚S‚P‚S|Žæ—§Žè”—¿“™Á”ïÅŠz                      
005720* 	  ,:‚c‚S‚P‚S|”ƒŽæ‘ã‹àŠz                                
005730* 	  ,:‚c‚S‚P‚S|ŽÐ“à‹à—˜‹æ•ª                              
005740* 	  ,:‚c‚S‚P‚S|ŽÐ“à‹à—˜                                  
005750* 	  ,:‚c‚S‚P‚S|ŽÀŽ¿”N—¦                                  
005760* 	  ,:‚c‚S‚P‚S|‘e—˜                                      
005770* 	  ,:‚c‚S‚P‚S|¿‹æƒR[ƒh                              
005780* 	  ,:‚c‚S‚P‚S|ŽÐ“à‹à—˜|ˆê”Ê                            
005790* 	  ,:‚c‚S‚P‚S|‘e—˜|ˆê”Ê                                
005800* 	  ,:‚c‚S‚P‚S|ŠúŒÀ‘OŒˆÏ“ú                              
005810* 	  ,:‚c‚S‚P‚S|—¬“®‰»æ                                  
005820* 	  ,:‚c‚S‚P‚S|ÂŒ —¬“®‰»æ‹æ•ª                          
005830* 	  ,:‚c‚S‚P‚S|XV”NŒŽ“ú                                
005840* 	  ,:‚c‚S‚P‚S|XVŽžŠÔ                                  
005850* 	  ,:‚c‚S‚P‚S|XVŽÒ                                    
005860* 	  ,:‚c‚S‚P‚S|“ü—Í’S“–ŽÒƒR[ƒh                          
005870* 	  ,:‚c‚S‚P‚S|“o˜^”NŒŽ“ú                                
005880* 	  ,:‚c‚S‚P‚S|“o˜^ŽžŠÔ                                  
005890*           ,:‚c‚S‚P‚S|“o˜^’S“–ŽÒ)                               
005900*    END-EXEC.
             CALL "SQLADR" USING SQ0005 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 234 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Œ_–ñ”Ô† IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|–¾×”Ô† IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ŽæˆøæƒR[ƒh IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(3)
             MOVE 9 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Œ_–ñæƒR[ƒh IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(4)
             MOVE 5 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Šz–Ê‹àŠz IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(5)
             MOVE 7 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Šú“ú IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(6)
             MOVE 8 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|—˜‘§Šú“ú IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(7)
             MOVE 8 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|“ú” IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(8)
             MOVE 2 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Š„ˆø—¦ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(9)
             MOVE 6 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Š„ˆø—¿ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(10)
             MOVE 7 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Žæ—§Žè”—¿“™ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(11)
             MOVE 7 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|Žæ—§Žè”—¿“™Á”ïÅŠz IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(12)
             MOVE 7 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|”ƒŽæ‘ã‹àŠz IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(13)
             MOVE 7 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ŽÐ“à‹à—˜‹æ•ª IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(14)
             MOVE 1 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ŽÐ“à‹à—˜ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(15)
             MOVE 6 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ŽÀŽ¿”N—¦ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(16)
             MOVE 6 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|‘e—˜ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(17)
             MOVE 7 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|¿‹æƒR[ƒh IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(18)
             MOVE 5 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ŽÐ“à‹à—˜|ˆê”Ê IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(19)
             MOVE 6 TO SQL-SQHSTL(19)
             MOVE 0 TO SQL-SQHSTS(19)
             MOVE 0 TO SQL-SQINDV(19)
             MOVE 0 TO SQL-SQINDS(19)
             MOVE 0 TO SQL-SQHARM(19)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|‘e—˜|ˆê”Ê IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(20)
             MOVE 7 TO SQL-SQHSTL(20)
             MOVE 0 TO SQL-SQHSTS(20)
             MOVE 0 TO SQL-SQINDV(20)
             MOVE 0 TO SQL-SQINDS(20)
             MOVE 0 TO SQL-SQHARM(20)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ŠúŒÀ‘OŒˆÏ“ú IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(21)
             MOVE 8 TO SQL-SQHSTL(21)
             MOVE 0 TO SQL-SQHSTS(21)
             MOVE 0 TO SQL-SQINDV(21)
             MOVE 0 TO SQL-SQINDS(21)
             MOVE 0 TO SQL-SQHARM(21)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|—¬“®‰»æ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(22)
             MOVE 10 TO SQL-SQHSTL(22)
             MOVE 0 TO SQL-SQHSTS(22)
             MOVE 0 TO SQL-SQINDV(22)
             MOVE 0 TO SQL-SQINDS(22)
             MOVE 0 TO SQL-SQHARM(22)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|ÂŒ —¬“®‰»æ‹æ•ª IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(23)
             MOVE 1 TO SQL-SQHSTL(23)
             MOVE 0 TO SQL-SQHSTS(23)
             MOVE 0 TO SQL-SQINDV(23)
             MOVE 0 TO SQL-SQINDS(23)
             MOVE 0 TO SQL-SQHARM(23)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|XV”NŒŽ“ú IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(24)
             MOVE 8 TO SQL-SQHSTL(24)
             MOVE 0 TO SQL-SQHSTS(24)
             MOVE 0 TO SQL-SQINDV(24)
             MOVE 0 TO SQL-SQINDS(24)
             MOVE 0 TO SQL-SQHARM(24)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|XVŽžŠÔ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(25)
             MOVE 8 TO SQL-SQHSTL(25)
             MOVE 0 TO SQL-SQHSTS(25)
             MOVE 0 TO SQL-SQINDV(25)
             MOVE 0 TO SQL-SQINDS(25)
             MOVE 0 TO SQL-SQHARM(25)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|XVŽÒ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(26)
             MOVE 8 TO SQL-SQHSTL(26)
             MOVE 0 TO SQL-SQHSTS(26)
             MOVE 0 TO SQL-SQINDV(26)
             MOVE 0 TO SQL-SQINDS(26)
             MOVE 0 TO SQL-SQHARM(26)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|“ü—Í’S“–ŽÒƒR[ƒh IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(27)
             MOVE 8 TO SQL-SQHSTL(27)
             MOVE 0 TO SQL-SQHSTS(27)
             MOVE 0 TO SQL-SQINDV(27)
             MOVE 0 TO SQL-SQINDS(27)
             MOVE 0 TO SQL-SQHARM(27)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|“o˜^”NŒŽ“ú IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(28)
             MOVE 8 TO SQL-SQHSTL(28)
             MOVE 0 TO SQL-SQHSTS(28)
             MOVE 0 TO SQL-SQINDV(28)
             MOVE 0 TO SQL-SQINDS(28)
             MOVE 0 TO SQL-SQHARM(28)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|“o˜^ŽžŠÔ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(29)
             MOVE 8 TO SQL-SQHSTL(29)
             MOVE 0 TO SQL-SQHSTS(29)
             MOVE 0 TO SQL-SQINDV(29)
             MOVE 0 TO SQL-SQINDS(29)
             MOVE 0 TO SQL-SQHARM(29)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚S|“o˜^’S“–ŽÒ IN
                 Œ_–ñ”„Š|ÂŒ –¾×
                 SQL-SQHSTV(30)
             MOVE 8 TO SQL-SQHSTL(30)
             MOVE 0 TO SQL-SQHSTS(30)
             MOVE 0 TO SQL-SQINDV(30)
             MOVE 0 TO SQL-SQINDS(30)
             MOVE 0 TO SQL-SQHARM(30)
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
005910*                                                                 
005920*----------------------------------------------------------------*
005930*    ’Ç‰Áˆ—‚ðŠm”F                                              *
005940*----------------------------------------------------------------*
005950     EVALUATE  SQLCODE                                            
005960        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
005970*--<       ’Ç‰Á¬Œ÷ >                                             
005980           COMPUTE  ‚v|o—Í|Œ”    =  ‚v|o—Í|Œ”  +  1     
005990        WHEN   OTHER                                              
006000*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
006010           MOVE     -4                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006020           PERFORM  ƒGƒ‰[ˆ—                                    
006030     END-EVALUATE.                                                
006040*                                                                 
006050 o—Íˆ—|‚d‚w‚h‚s.                                              
006060     EXIT.                                                        
006070*                                                                 
006080******************************************************************
006090*    I—¹ˆ—                                                    *
006100******************************************************************
006110 I—¹ˆ—                             SECTION.                    
006120 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
006130*                                                                 
006140*----------------------------------------------------------------*
006150*    ‚c‚aƒNƒ[ƒYˆ—                                            *
006160*----------------------------------------------------------------*
006170     PERFORM ‚c‚aƒNƒ[ƒYˆ—.                                    
006180*----------------------------------------------------------------*
006190*    ‚c‚aƒRƒ~ƒbƒgˆ—                                             
006200*----------------------------------------------------------------*
006210     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—                                    
006220*----------------------------------------------------------------*
006230*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
006240*----------------------------------------------------------------*
006250     PERFORM  Œ”ƒƒbƒZ[ƒWo—Í.                                 
006260*----------------------------------------------------------------*
006270*    I—¹ƒƒbƒZ[ƒWo—Íˆ—                                      *
006280*----------------------------------------------------------------*
006290     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
006300*                                                                 
006310*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
006320     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
006330*                                                                 
006340 I—¹ˆ—|‚d‚w‚h‚s.                                              
006350     EXIT.                                                        
006360******************************************************************
006370*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
006380******************************************************************
006390 Œ”ƒƒbƒZ[ƒWo—Í                   SECTION.                    
006400 Œ”ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
006410*                                                                 
006420     INITIALIZE                       IF-CHOCO001.                
006430     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006440     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006450     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006460     MOVE  "LTRFCU"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
006470     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006480     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
006490     MOVE  "SUMMITÌ§¸ÀØÝ¸Þ”„Š|ÂŒ “ÇžŒ”"                       
006500                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006510     CALL  CLOCO001                USING  IF-CHOCO001.            
006520*                                                                 
006530     INITIALIZE                       IF-CHOCO001.                
006540     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006550     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006560     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006570     MOVE  "LTRFCK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
006580     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006590     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
006600     MOVE  "SUMMITÌ§¸ÀØÝ¸ÞŠî–{î•ñ“ÇžŒ”"                       
006610                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006620     CALL  CLOCO001                USING  IF-CHOCO001.            
006630*                                                                 
006640     INITIALIZE                       IF-CHOCO001.                
006650     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006660     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006670     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006680     MOVE  "D414USM"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
006690     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006700     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
006710     MOVE  "Œ_–ñ”„Š|ÂŒ –¾×“o˜^Œ”"                             
006720                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006730     CALL  CLOCO001                USING  IF-CHOCO001.            
006740*                                                                 
006750 Œ”ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
006760     EXIT.                                                        
006770*                                                                 
006780******************************************************************
006790*    I—¹ƒƒbƒZ[ƒWo—Íˆ—                                      *
006800******************************************************************
006810 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
006820 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
006830*                                                                 
006840     INITIALIZE                       IF-CHOCO001.                
006850     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006860     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006870     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006880     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006890     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006900     CALL  CLOCO001                USING  IF-CHOCO001.            
006910*                                                                 
006920 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
006930     EXIT.                                                        
006940*                                                                 
006950******************************************************************
006960*    ‚c‚aƒNƒ[ƒY                                                *
006970******************************************************************
006980 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
006990 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
007000*                                                                 
007010*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
007020     
      *    EXEC SQL                                                     
007030*       CLOSE  CUR1                                               
007040*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 369 TO SQL-OFFSET
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
007050*                                                                 
007060 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
007070     EXIT.                                                        
007080******************************************************************
007090*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
007100******************************************************************
007110 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
007120 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
007130*                                                                 
007140     
      *    EXEC  SQL                                                    
007150*       COMMIT  WORK  RELEASE                                     
007160*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 384 TO SQL-OFFSET
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
007170*                                                                 
007180     INITIALIZE                       IF-CHOCO001.                
007190     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007200     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007210     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007220     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007230     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007240     CALL  CLOCO001                USING  IF-CHOCO001.            
007250*                                                                 
007260 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
007270     EXIT.                                                        
007280******************************************************************
007290*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
007300******************************************************************
007310 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
007320 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
007330*                                                                 
007340     
      *    EXEC  SQL                                                    
007350*       ROLLBACK WORK  RELEASE                                    
007360*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 399 TO SQL-OFFSET
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
007370*                                                                 
007380     INITIALIZE                       IF-CHOCO001.                
007390     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007400     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007410     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007420     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007430     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007440     CALL  CLOCO001                USING  IF-CHOCO001.            
007450*                                                                 
007460 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
007470     EXIT.                                                        
007480
007490******************************************************************
007500*    ƒGƒ‰[ˆ—                                                  *
007510******************************************************************
007520 ƒGƒ‰[ˆ—                           SECTION.                    
007530 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
007540*                                                                 
007550     MOVE  "Y"                        TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.   
007560     INITIALIZE                       IF-CHOCO001.                
007570*                                                                 
007580     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
007590        WHEN  -1                                                  
007600*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
007610           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
007620           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
007630           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
007640           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
007650           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
007660           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
007670           CALL  CLOCO001          USING  IF-CHOCO001             
007680*                                                                 
007690        WHEN  -2                                                  
007700*--<       ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“ƒGƒ‰[  >                              
007710           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
007720           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
007730           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
007740           MOVE  "LTRFCU"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
007750           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
007760           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
007770           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
007780           CALL  CLOCO001          USING  IF-CHOCO001             
007790*                                                                 
007800        WHEN  -3                                                  
007810*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“ÇžƒGƒ‰[ >                       
007820           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
007830           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
007840           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
007850           MOVE  SQLCODE              TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
007860           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
007870           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
007880           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
007890           CALL  CLOCO001          USING  IF-CHOCO001             
007900*                                                                 
007910        WHEN  -4                                                  
007920*--<       ’Ç‰Áˆ—ƒGƒ‰[  >                                      
007930           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
007940           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
007950           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
007960           MOVE  "D414USM"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
007970           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
007980           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
007990           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008000           CALL  CLOCO001          USING  IF-CHOCO001             
008010*                                                                 
008020        WHEN  OTHER                                               
008030           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
008040     END-EVALUATE.                                                
008050*                                                                 
008060     IF  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO =  "Y"                              
008070*--<    Œ”ƒƒbƒZ[ƒWo—Í >                                      
008080        PERFORM  Œ”ƒƒbƒZ[ƒWo—Í                               
008090*--<    I—¹ƒƒbƒZ[ƒWo—Íˆ— >                                  
008100        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
008110*--<    ƒvƒƒOƒ‰ƒ€ƒŠƒ^[ƒ“ƒR[ƒh >                                
008120        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
008130        EXIT  PROGRAM                                             
008140     END-IF.                                                      
008150*                                                                 
008160 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
008170     EXIT.                                                        
008180******************************************************************
008190*                  END OF PROGRAM                                *
008200******************************************************************
