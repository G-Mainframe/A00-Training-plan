000010******************************************************************
000020*         ƒ“Œ‹âƒŠ[ƒX„                                         *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : •Ï‘¥•¥ˆÚsˆ—                         *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS430                               *
000050*      3. ˆ—ŠT—v      : ˆÚsŒãiƒŒƒxƒ‹ƒAƒbƒvj‚ÌÂŒ “WŠJ‚æ‚èA *
000060*                         •Ï‘¥•¥‚c‚a‚ðì¬‚·‚éB                 *
000070*                                                                *
000080*      4. ì¬ŽÒ        : ”C‘å—˜                                 *
000090*      5. ì¬“ú        : 2004.10.10                             *
000100******************************************************************
000110*                                                                 
000120******************************************************************
000130*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          COBIS430.                   
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
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS430.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(159) VALUE "insert into D34HNS_TBL(Œ_–ñ”Ô†,
      -     "ÄƒŠ[ƒX‰ñ”,Œ_–ñŽí—Þ,ŠJŽn‰ñ,ŠJŽn”NŒŽ,I—¹‰ñ,I—¹”NŒŽ,‹àŠz,
      -     "Á”ïÅ,XV”NŒŽ“ú,XVŽžŠÔ,XVŽÒ,“ü—Í’S“–ŽÒƒR[ƒh,“o˜^”NŒŽ
      -    "“ú,“o˜^Žž".

           02  FILLER PIC X(94) VALUE "ŠÔ,“o˜^’S“–ŽÒ) values (:b1,:b2,:b
      -    "3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:b13,:b14,:b15,:b16
      -    ")".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +287845.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +16.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 16 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select D411STK_TBL.Œ_–ñ”Ô†  ,D4
      -    "11STK_TBL.ÄƒŠ[ƒX‰ñ”  ,D411STK_TBL.Œ_–ñŽí—Þ  ,D411STK_TBL.
      -    "¿‹Šz  ,D411STK_TBL.¿‹Á”ïÅ  ,D411STK_TBL.”„ã”NŒŽ  ,D41
      -    "1STK_TBL".

           02  FILLER PIC X(160) VALUE ".˜A”Ô   from D32SAK_TBL ,D411STK
      -    "_TBL where (((D32SAK_TBL.•Ï‘¥•¥='1' and D32SAK_TBL.Œ_–ñ”Ô†=
      -    "D411STK_TBL.Œ_–ñ”Ô†) and D32SAK_TBL.ÄƒŠ[ƒX‰ñ”=D411STK_TB
      -    "L.ÄƒŠ[".

           02  FILLER PIC X(159) VALUE "ƒX‰ñ”) and D32SAK_TBL.Œ_–ñŽí—Þ=
      -    "D411STK_TBL.Œ_–ñŽí—Þ) order by D411STK_TBL.Œ_–ñ”Ô†,D411STK_
      -    "TBL.ÄƒŠ[ƒX‰ñ”,D411STK_TBL.Œ_–ñŽí—Þ,D411STK_TBL.¿‹Šz    
      -    "       ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +199.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +203.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +479.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +257.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +283.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +125.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +253.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +422.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +16.
           02     FILLER PIC S9(4) COMP-5 VALUE +16.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +204.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +544.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +219.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +556.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +234.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +576.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000340*                                                                 
000350*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000360     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000370*                                                                 
000380*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000390     
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
000400*                                                                 
000410*--< ˆÚsŒã_ÂŒ “WŠJ >                                            
000420     
      *    EXEC  SQL  INCLUDE  D411STK.CBL           END-EXEC.
000430*                                                                 
000440*--< ˆÚsŒã_ÂŒ  >                                                
      *****************************************************************
      *   ÂŒ “WŠJ(D411STK_TBL)
      *****************************************************************
       01  ÂŒ “WŠJ.
           03  ‚c‚S‚P‚P|Œ_–ñ”Ô†    PIC  X(010).
           03  ‚c‚S‚P‚P|ÄƒŠ[ƒX‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Œ_–ñŽí—Þ    PIC  X(003).
           03  ‚c‚S‚P‚P|˜A”Ô        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Á”ïÅ—¦    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Á”ïÅ—¦‹æ•ª
                                     PIC  X(002).
           03  ‚c‚S‚P‚P|”„ã”NŒŽ    PIC  X(006).
           03  ‚c‚S‚P‚P|”„ãŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|”„ãÁ”ïÅ  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|”„ãÁ”ïÅ•â³Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚S‚P‚P|¿‹æƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚S‚P‚P|¿‹”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|¿‹Šz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹Á”ïÅ  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹Á”ïÅ•â³Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|‰ñŽû—\’è“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|‰ñŽû”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|‰ñŽûŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|‰ñŽûŠzÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚S‚P‚P|XV”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|XVŽžŠÔ    PIC  X(008).
           03  ‚c‚S‚P‚P|XVŽÒ      PIC  X(008).
           03  ‚c‚S‚P‚P|¿‹‘”­s“ú
                                     PIC  X(008).
           03  ‚c‚S‚P‚P|¿‹‘”Ô†  PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|–¢‰ñŽûŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|ˆÏ‘õ•ÛŽç‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚P‚P|ˆÏ‘õ•ÛŽç—¿  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|ˆÏ‘õ•ÛŽçÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹Œ_–ñ”Ô†
                                     PIC  X(015).
           03  ‚c‚S‚P‚P|‰ñŽû•û–@    PIC  X(001).
           03  ‚c‚S‚P‚P|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚S‚P‚P|ŽèŒ`ŽóŽæƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚S‚P‚P|‘¼ŽÐ‰ñŽûŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|‘¼ŽÐ‰ñŽûŠzÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ¿‹Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ¿‹Á”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹“à–óƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚S‚P‚P|—˜‘§¿‹“à–óƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚S‚P‚P|Áž’Ê”Ô    PIC  X(011).
           03  ‚c‚S‚P‚P|—š—ð˜A”Ô    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|”„ãÂŒ Žc  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|”„ãÂŒ Žc’²®
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹ÂŒ Žc  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹ÂŒ Žc’²®
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ¿‹ÂŒ Žc
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ¿‹ÂŒ Žc’²®
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹Œ³–{    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹—˜‘§    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|¿‹Œ³–{Žc‚
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Œ³–{‰ñŽûŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|—˜‘§‰ñŽûŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐŒÅ’èŽ‘ŽYÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ“®‘•ÛŒ¯—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐˆÏ‘õ•ÛŽç—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ”„ãŒ³–{
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ”„ã—˜‘§
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ”„ãŒ³–{Žc‚
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Žû‰v“WŠJ—˜‰ñ‚è
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ”„ãŒ³–{’²®
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ•ªŽx•¥—˜‘§“K—p
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ•ªŽx•¥—˜‘§ˆê”Ê
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|‹à—˜        PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|•ÔÏ”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|ŠúŠÔŒŽ”    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|ŠúŠÔ“ú”    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|—˜‘§ŒvŽZŠJŽn“ú
                                     PIC  X(008).
           03  ‚c‚S‚P‚P|—˜‘§ŒvŽZI—¹“ú
                                     PIC  X(008).
           03  ‚c‚S‚P‚P|Ž©ŽÐ‰ñŽûŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ‰ñŽûÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|“o˜^”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|“o˜^ŽžŠÔ    PIC  X(008).
           03  ‚c‚S‚P‚P|“o˜^’S“–ŽÒ  PIC  X(008).
           03  ‚c‚S‚P‚P|‰‰ñ“ü‹à“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|‘O•¥[“–‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚P‚P|¿‹‰ñ      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Áž”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚P|‘¼ŽÐ¿‹Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|‘¼ŽÐ¿‹ŠzÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚P|Ž©ŽÐ‚»‚Ì‘¼””ï—p
                                     PIC S9(013) PACKED-DECIMAL.
000450     
      *    EXEC  SQL  INCLUDE  D32SAK.CBL            END-EXEC.
000460*                                                                 
000470*--< •Ï‘¥•¥‚c‚a>                                                  
      *****************************************************************
      *   ÂŒ  (D32SAK_TBL)
      *****************************************************************
       01  ÂŒ .
           03  ‚c‚R‚Q|Œ_–ñ”Ô†      PIC  X(010).
           03  ‚c‚R‚Q|ÄƒŠ[ƒX‰ñ”  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Œ_–ñŽí—Þ      PIC  X(003).
           03  ‚c‚R‚Q|Œ_–ñŒ–¼      PIC  X(040).
           03  ‚c‚R‚Q|¿‹Œ–¼      PIC  X(060).
           03  ‚c‚R‚Q|•Ï‘¥•¥        PIC  X(001).
           03  ‚c‚R‚Q|“–‰ŒŽŠz—¿‹à  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Á”ïÅ‹æ•ª
                                     PIC  X(002).
           03  ‚c‚R‚Q|“–‰Á”ïÅŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Œ_–ñ‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Á”ïÅ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVŒŽŠz—¿‹à  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVÁ”ïÅ‹æ•ª
                                     PIC  X(002).
           03  ‚c‚R‚Q|ÅVÁ”ïÅŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVŒ_–ñ‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVÁ”ïÅ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|•ÛŽç–³žŠúŠÔ  PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ó‘Ôƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚Q|‰ð–ñƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚Q|‰ð–ñ”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚Q|‰ð–ñ‹æ•ª      PIC  X(001).
           03  ‚c‚R‚Q|‰ð–ñ——R      PIC  X(002).
           03  ‚c‚R‚Q|‰ð–ñ‰ñ”      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅV—š—ð‰ð–ñ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|‰ñŽûŠz        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Á”ïÅ‰ñŽûŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅV‰ñŽû“ú    PIC  X(008).
           03  ‚c‚R‚Q|ŠÇ—ÂŒ ƒŒƒxƒ‹
                                     PIC  X(001).
           03  ‚c‚R‚Q|Š„•ŠŒ´‰¿‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Š„•Š—˜‰v‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Žæ“¾‰¿Šz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘k‹y‰ð–ñƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚Q|‰ð–ñˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚Q|‰ð–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|–ž—¹ƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚Q|–ž—¹”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚Q|‰ð–ñ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚Q|‰ð–ñ\¿“ú    PIC  X(008).
           03  ‚c‚R‚Q|‰ñŽûðŒ•ÏXƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚Q|‰ñŽûðŒ•ÏX‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‰ñŽûðŒ•ÏX“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|‘O•¥‹æ•ª      PIC  X(001).
           03  ‚c‚R‚Q|ŽŸ‰ñÄƒŠ[ƒX—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÄƒŠ[ƒX—¿‹à‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚Q|•ÛŽç—L–³ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚Q|ÄƒŠ[ƒXŽ©“®ì¬ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚Q|ÄƒŠ[ƒXŽ©“®ì¬”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚Q|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚Q|XVŽÒ        PIC  X(008).
           03  ‚c‚R‚Q|“–‰Žæ“¾Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Žæ“¾ŠzŒ»‰¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘O•¥ŒŽ”      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ŽŸ‰ñÄƒŠ[ƒX—¿Á”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ŽŸ‰ñÄƒŠ[ƒX—¿Á”ïÅ‹æ•ª
                                     PIC  X(002).
           03  ‚c‚R‚Q|¿‹‰ñ”      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘‰ñŽû‰ñ”    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‡ŽZæŒ_–ñŽí—Þ
                                     PIC  X(003).
           03  ‚c‚R‚Q|¡‰ñÄƒŠ[ƒX—¿‹à‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚Q|ÄƒŠ[ƒXŽè”—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©U¿‹ƒXƒgƒbƒv\¿”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|Ž©U¿‹ƒXƒgƒbƒv\¿•”‰Û
                                     PIC  X(004).
           03  ‚c‚R‚Q|Ž©U¿‹ƒXƒgƒbƒv\¿ŽÒ
                                     PIC  X(008).
           03  ‚c‚R‚Q|Ž©U¿‹ƒXƒgƒbƒvŠJŽn”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚Q|Ž©U¿‹ƒXƒgƒbƒvI—¹”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚Q|Ž©U¿‹ƒXƒgƒbƒv——R
                                     PIC  X(002).
           03  ‚c‚R‚Q|Ž©UƒXƒgƒbƒvƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|Ž©U“Á•Ê¿‹\¿”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|Ž©U“Á•Ê¿‹\¿•”‰Û
                                     PIC  X(004).
           03  ‚c‚R‚Q|Ž©U“Á•Ê¿‹\¿ŽÒ
                                     PIC  X(008).
           03  ‚c‚R‚Q|Ž©U“Á•Ê¿‹ŠJŽn”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚Q|Ž©U“Á•Ê¿‹I—¹”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚Q|Ž©U“Á•Ê¿‹\¿‹àŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©U“Á•ÊƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|Žx•¥ŽŸ‰ñÄƒŠ[ƒX—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ˆÏ‘õ•ÛŽç‹æ•ª  PIC  X(001).
           03  ‚c‚R‚Q|ˆÏ‘õ•ÛŽç‘Š“–ŒŽŠz—¿‹à
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚R‚Q|‚»‚Ì‘¼Œ_–ñŽí—Þ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚Q|ŽæˆøæƒR[ƒh  PIC  X(009).
           03  ‚c‚R‚Q|¿‹æƒR[ƒh  PIC  X(005).
           03  ‚c‚R‚Q|‘e—˜‰vŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘e—˜‰vŠz|•\  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ŽèŒ`ŽóŽæ“ú    PIC  X(008).
           03  ‚c‚R‚Q|ŽèŒ`–‡”      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŒŽŠz—¿‹à
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŒŽŠzÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŒ_–ñ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªÁ”ïÅ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘¼ŽÐw“üŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Žc‰¿Ý’èŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘¼ŽÐŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘¼ŽÐ‰ñŽûŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘¼ŽÐ‰ñŽûŠzÁ”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘¼ŽÐŠ„•ŠŒ´‰¿‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|‘¼ŽÐŠ„•Š—˜‰v‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÄƒŠ[ƒXŽè”—¿‰ñŽûŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÄƒŠ[ƒXŽè”—¿‰ñŽû“ú
                                     PIC  X(008).
           03  ‚c‚R‚Q|”„‹p‘ãŽè”—¿  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÄƒŠ[ƒXŽ©ŽÐŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÄƒŠ[ƒX‘¼ŽÐŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Š„•ŠŒ´‰¿‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Š„•Š—˜‰v‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Š„•ŠŒ´‰¿‘ŠzŽ©ŽÐ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Š„•Š—˜‰v‘ŠzŽ©ŽÐ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰””ï—p‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Â–±Š¨’èˆ—ƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚R‚Q|Á”ïÅ’·Šú|ŽÀÑ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Š¨’èˆ—ƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚R‚Q|ÂŒ ”ƒŽæ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚Q|“–‰ŒŽŠz—¿‹à‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Á”ïÅŠz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVŒŽŠz—¿‹à‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVÁ”ïÅŠz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVŒ_–ñ‘Šz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ÅVÁ”ïÅ‘Šz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Žæ“¾‰¿Šz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Žæ“¾Šz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ŽŸ‰ñÄƒŠ[ƒX—¿‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ŽŸ‰ñÄƒŠ[ƒX—¿Á”ïÅ‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Žc‰¿‰ñŽûƒTƒCƒg
                                     PIC S9(002)V9(002) PACKED-DECIMAL.
           03  ‚c‚R‚Q|ƒŠƒXƒP‘OŒ_–ñ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Á”ïÅ’¥Žû‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚Q|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚Q|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚Q|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚R‚Q|Ž©U¿‹‹àŠz•ÏX——R
                                     PIC  X(002).
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŽŸ‰ñÄƒŠ[ƒX—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŽŸ‰ñÄƒŠ[ƒX—¿Á”ïÅ
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ý’uêŠ‹æ•ª  PIC S9(001) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Œ_–ñ‘Šz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|“–‰Á”ïÅ‘Šz‘Šz•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐw“üŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐŒ³–{‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ”„ã—˜‘§‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ—˜‘§‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ””ï—p‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐŒÅ’èŽ‘ŽYÅ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ“®‘•ÛŒ¯‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐˆÏ‘õ•ÛŽç—¿‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ‚»‚Ì‘¼””ï—p‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŽx•¥”ï—p“K—p‡Œv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Ž©ŽÐ•ªŽx•¥”ï—pˆê”Ê‡Œv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|Œ³–{‘Šz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|—˜‘§‘Šz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚Q|””ï—p‘Šz    PIC S9(013) PACKED-DECIMAL.
000480     
      *    EXEC  SQL  INCLUDE  D34HNS.CBL            END-EXEC.
000490*                                                                 
      *****************************************************************
      *   •Ï‘¥•¥(D34HNS_TBL)
      *****************************************************************
       01  •Ï‘¥•¥.
           03  ‚c‚R‚S|Œ_–ñ”Ô†      PIC  X(010).
           03  ‚c‚R‚S|ÄƒŠ[ƒX‰ñ”  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚S|Œ_–ñŽí—Þ      PIC  X(003).
           03  ‚c‚R‚S|ŠJŽn‰ñ        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚S|ŠJŽn”NŒŽ      PIC  X(006).
           03  ‚c‚R‚S|I—¹‰ñ        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚S|I—¹”NŒŽ      PIC  X(006).
           03  ‚c‚R‚S|‹àŠz          PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚S|Á”ïÅ        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚S|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚S|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚S|XVŽÒ        PIC  X(008).
           03  ‚c‚R‚S|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚R‚S|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚S|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚S|“o˜^’S“–ŽÒ    PIC  X(008).
000500     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000510*                                                                 
000520*----------------------------------------------------------------*
000530*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000540*----------------------------------------------------------------*
000550 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000560*--< ƒGƒ‰[”»’è—p >                                               
000570     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000580*                                                                 
000590*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000600     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000610         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
000620         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000630*                                                                 
000640*--< Œ”ƒGƒŠƒA >                                                 
000650     03  Œ”ƒGƒŠƒA.                                              
000660         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
000670         05  ‚v|o—Í|Œ”           PIC  9(09).                 
000680*                                                                 
000690*--< ƒL[ƒGƒŠƒA >                                                 
000700     03  ‚j‚d‚x|ƒGƒŠƒA.                                          
000710        05  ‚m‚d‚vƒL[.                                           
000720            07 ‚m|Œ_–ñ”Ô†           PIC  X(09).                 
000730            07 ‚m|ÄƒŠ[ƒX‰ñ”       PIC  9(02).                 
000740            07 ‚m|Œ_–ñŽí—Þ           PIC  X(03).                 
000750            07 ‚m|¿‹Šz             PIC  9(13).                 
000760        05  ‚n‚k‚cƒL[.                                           
000770            07 ‚n|Œ_–ñ”Ô†           PIC  X(09).                 
000780            07 ‚n|ÄƒŠ[ƒX‰ñ”       PIC  9(02).                 
000790            07 ‚n|Œ_–ñŽí—Þ           PIC  X(03).                 
000800            07 ‚n|¿‹Šz             PIC  9(13).                 
000810*                                                                 
000820*--< ‹¤’Êî•ñ >                                                   
000830 01  ‚v|‹¤’Êî•ñ.                                                
000840     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
000850         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
000860         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
000870     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
000880     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
000890*                                                                 
000900*----------------------------------------------------------------*
000910*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
000920*----------------------------------------------------------------*
000930 01  CALL-AREA.                                                   
000940*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
000950     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
000960     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
000970*                                                                 
000980*----------------------------------------------------------------*
000990*    ‚b‚n‚o‚x—Ìˆæ                                                *
001000*----------------------------------------------------------------*
001010*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001020 01  IF-CHOCO001.                                                 
001030     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001040*                                                                 
001050*----------------------------------------------------------------*
001060*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001070*----------------------------------------------------------------*
001080 01  PARA-AREA.                                                   
001090     COPY CPBCO001.                                               
001100******************************************************************
001110*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001120******************************************************************
001130 CONSTANT                             SECTION.                    
001140 01  ’è”—Ìˆæ.                                                    
001150     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS430".
001160     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001170                                      VALUE  "•Ï‘¥•¥ˆÚs".        
001180     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001190     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001200     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001210     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001220******************************************************************
001230*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001240******************************************************************
001250 PROCEDURE                            DIVISION.                   
001260*                                                                 
001270     PERFORM  ‰Šúˆ—.                                           
001280*                                                                 
001290     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001300*                                                                 
001310     PERFORM  I—¹ˆ—.                                           
001320*                                                                 
001330     STOP     RUN.                                                
001340*                                                                 
001350******************************************************************
001360*    ‰Šúˆ—                                                    *
001370******************************************************************
001380 ‰Šúˆ—                             SECTION.                    
001390 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001400*                                                                 
001410*----------------------------------------------------------------*
001420*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001430*----------------------------------------------------------------*
001440     INITIALIZE                       IF-CHOCO001.                
001450     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001460     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001470     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001480     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001490     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001500     CALL  CLOCO001                USING  IF-CHOCO001.            
001510*                                                                 
001520*----------------------------------------------------------------*
001530*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001540*----------------------------------------------------------------*
001550     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001560     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001570*                                                                 
001580     MOVE  LOW-VALUE                  TO  ‚n‚k‚cƒL[.             
001590*                                                                 
001600*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001610     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001620*                                                                 
001630*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001640     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001650*----------------------------------------------------------------*
001660*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001670*----------------------------------------------------------------*
001680     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001690*                                                                 
001700*----------------------------------------------------------------*
001710*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                    *
001720*----------------------------------------------------------------*
001730     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
001740*                                                                 
001750*----------------------------------------------------------------*
001760*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(1Œ–Ú)                             *
001770*----------------------------------------------------------------*
001780     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
001790*                                                                 
001800 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001810     EXIT.                                                        
001820******************************************************************
001830*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001840******************************************************************
001850 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001860 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001870*                                                                 
001880*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
001890     CALL  COBCO001                USING  PARA-AREA.              
001900*                                                                 
001910     MOVE  PARA-DBSTRING              TO  DB-STRING.              
001920     MOVE  PARA-USERNAME              TO  USERNAME.               
001930     MOVE  PARA-PASSWORD              TO  PASSWD.                 
001940*                                                                 
001950*----------------------------------------------------------------*
001960*    ŠJŽnÚ‘±                                                    *
001970*----------------------------------------------------------------*
001980     IF    DB-STRING  =  SPACE                                    
001990        
      *       EXEC SQL                                                  
002000*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
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
      *       EXEC SQL                                                  
002040*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
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
002100*    Ú‘±Šm”F                                                    *
002110*----------------------------------------------------------------*
002120     EVALUATE  SQLCODE                                            
002130        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002140           CONTINUE                                               
002150        WHEN   OTHER                                              
002160*--<       Ú‘±ƒGƒ‰[ >                                           
002170           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002180           PERFORM  ƒGƒ‰[”»’èˆ—                                
002190     END-EVALUATE.                                                
002200*                                                                 
002210 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002220     EXIT.                                                        
002230******************************************************************
002240*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002250******************************************************************
002260 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002270 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002280*                                                                 
002290*----------------------------------------------------------------*
002300*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002310*----------------------------------------------------------------*
002320     
      *    EXEC SQL                                                     
002330*       DECLARE CUR1  CURSOR FOR                                  
002340*          SELECT  D411STK_TBL.Œ_–ñ”Ô†                           
002350*                 ,D411STK_TBL.ÄƒŠ[ƒX‰ñ”                       
002360*                 ,D411STK_TBL.Œ_–ñŽí—Þ                           
002370*                 ,D411STK_TBL.¿‹Šz                             
002380*                 ,D411STK_TBL.¿‹Á”ïÅ                         
002390*                 ,D411STK_TBL.”„ã”NŒŽ                           
002400*                 ,D411STK_TBL.˜A”Ô                               
002410*            FROM  D32SAK_TBL                                     
002420*                 ,D411STK_TBL                                    
002430*           WHERE  D32SAK_TBL.•Ï‘¥•¥       =  '1'                 
002440*             AND  D32SAK_TBL.Œ_–ñ”Ô†     =  D411STK_TBL.Œ_–ñ”Ô†
002450*             AND  D32SAK_TBL.ÄƒŠ[ƒX‰ñ” =                      
002460*                                         D411STK_TBL.ÄƒŠ[ƒX‰ñ”
002470*             AND  D32SAK_TBL.Œ_–ñŽí—Þ     =  D411STK_TBL.Œ_–ñŽí—Þ
002480*        ORDER BY  D411STK_TBL.Œ_–ñ”Ô†                           
002490*                 ,D411STK_TBL.ÄƒŠ[ƒX‰ñ”                       
002500*                 ,D411STK_TBL.Œ_–ñŽí—Þ                           
002510*                 ,D411STK_TBL.¿‹Šz                             
002520*    END-EXEC.
002530*                                                                 
002540*----------------------------------------------------------------*
002550*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002560*----------------------------------------------------------------*
002570     
      *    EXEC  SQL                                                    
002580*       OPEN  CUR1                                                
002590*    END-EXEC.
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
002600*                                                                 
002610*----------------------------------------------------------------*
002620*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
002630*----------------------------------------------------------------*
002640     EVALUATE  SQLCODE                                            
002650        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002660*--<       ³í >                                                 
002670           CONTINUE                                               
002680        WHEN  OTHER                                               
002690*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
002700           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002710           PERFORM  ƒGƒ‰[”»’èˆ—                                
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
002820*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
002830     
      *    EXEC SQL                                                     
002840*        FETCH  CUR1                                              
002850*         INTO  :‚c‚S‚P‚P|Œ_–ñ”Ô†                               
002860*              ,:‚c‚S‚P‚P|ÄƒŠ[ƒX‰ñ”                           
002870*              ,:‚c‚S‚P‚P|Œ_–ñŽí—Þ                               
002880*              ,:‚c‚S‚P‚P|¿‹Šz                                 
002890*              ,:‚c‚S‚P‚P|¿‹Á”ïÅ                             
002900*              ,:‚c‚S‚P‚P|”„ã”NŒŽ                               
002910*              ,:‚c‚S‚P‚P|˜A”Ô                                   
002920*    END-EXEC.
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
               ‚c‚S‚P‚P|Œ_–ñ”Ô† IN
               ÂŒ “WŠJ
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚c‚S‚P‚P|ÄƒŠ[ƒX‰ñ” IN
               ÂŒ “WŠJ
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚c‚S‚P‚P|Œ_–ñŽí—Þ IN
               ÂŒ “WŠJ
               SQL-SQHSTV(3)
           MOVE 3 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚c‚S‚P‚P|¿‹Šz IN
               ÂŒ “WŠJ
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚c‚S‚P‚P|¿‹Á”ïÅ IN
               ÂŒ “WŠJ
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚c‚S‚P‚P|”„ã”NŒŽ IN
               ÂŒ “WŠJ
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚c‚S‚P‚P|˜A”Ô IN
               ÂŒ “WŠJ
               SQL-SQHSTV(7)
           MOVE 2 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
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
002930*                                                                 
002940*----------------------------------------------------------------*
002950*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
002960*----------------------------------------------------------------*
002970     EVALUATE   SQLCODE                                           
002980        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002990*--<       ³í >                                                 
003000           MOVE  ‚c‚S‚P‚P|Œ_–ñ”Ô†   TO  ‚m|Œ_–ñ”Ô†            
003010           MOVE  ‚c‚S‚P‚P|ÄƒŠ[ƒX‰ñ”                           
003020                                      TO  ‚m|ÄƒŠ[ƒX‰ñ”        
003030           MOVE  ‚c‚S‚P‚P|Œ_–ñŽí—Þ   TO  ‚m|Œ_–ñŽí—Þ            
003040           MOVE  ‚c‚S‚P‚P|¿‹Šz     TO  ‚m|¿‹Šz              
003050*                                                                 
003060           COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1       
003070        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
003080*--<       “ÇžI—¹ >                                             
003090           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
003100        WHEN   OTHER                                              
003110*--<       “ÇžƒGƒ‰[ >                                           
003120           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003130           PERFORM  ƒGƒ‰[”»’èˆ—                                
003140     END-EVALUATE.                                                
003150*                                                                 
003160 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003170     EXIT.                                                        
003180******************************************************************
003190*    Žåˆ—                                                      *
003200******************************************************************
003210 Žåˆ—                               SECTION.                    
003220 Žåˆ—|‚r‚s‚`‚q‚s.                                              
003230*                                                                 
003240     PERFORM  •ÒWo—Íˆ—.                                       
003250*                                                                 
003260*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
003270     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
003280*                                                                 
003290     IF  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y"                                 
003300*--<    “ü—Íƒf[ƒ^I‚í‚éŽž >                                      
003310        PERFORM  o—Íˆ—                                         
003320     END-IF.                                                      
003330*                                                                 
003340 Žåˆ—|‚d‚w‚h‚s.                                                
003350     EXIT.                                                        
003360******************************************************************
003370*     •ÒWo—Íˆ—                                               *
003380******************************************************************
003390 •ÒWo—Íˆ—                         SECTION.                    
003400 •ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                        
003410*                                                                 
003420     IF  ‚m‚d‚vƒL[  =  ‚n‚k‚cƒL[                                
003430*--<    No.06 >                                                   
003440        MOVE  ‚c‚S‚P‚P|˜A”Ô          TO  ‚c‚R‚S|I—¹‰ñ          
003450*--<    No.07 >                                                   
003460        MOVE  ‚c‚S‚P‚P|”„ã”NŒŽ      TO  ‚c‚R‚S|I—¹”NŒŽ        
003470     ELSE                                                         
003480        IF  ‚v|“ü—Í|Œ”  >  1                                  
003490*--<       ‚QŒ–ÚˆÈ~AŠŽ‚ÂƒL[•Ï‚í‚éŽžAo—Í‚·‚é >               
003500           PERFORM  o—Íˆ—                                      
003510        END-IF                                                    
003520*                                                                 
003530*----------------------------------------------------------------*
003540*       ‰Šú‰»ˆ—                                               *
003550*----------------------------------------------------------------*
003560        MOVE  SPACE                   TO  •Ï‘¥•¥                  
003570        INITIALIZE                        •Ï‘¥•¥                  
003580*                                                                 
003590*----------------------------------------------------------------*
003600*       €–Ú•ÒWˆ—                                             *
003610*----------------------------------------------------------------*
003620*--<    No.01 >                                                   
003630        MOVE  ‚c‚S‚P‚P|Œ_–ñ”Ô†(1:9) TO  ‚c‚R‚S|Œ_–ñ”Ô†        
003640*                                                                 
003650*--<    No.02 >                                                   
003660        MOVE  ‚c‚S‚P‚P|ÄƒŠ[ƒX‰ñ”  TO  ‚c‚R‚S|ÄƒŠ[ƒX‰ñ”    
003670                                                                  
003680*--<    No.03 >                                                   
003690        MOVE  ‚c‚S‚P‚P|Œ_–ñŽí—Þ      TO  ‚c‚R‚S|Œ_–ñŽí—Þ        
003700*                                                                 
003710*--<    No.04 >                                                   
003720        MOVE  ‚c‚S‚P‚P|˜A”Ô          TO  ‚c‚R‚S|ŠJŽn‰ñ          
003730*                                                                 
003740*--<    No.05 >                                                   
003750        MOVE  ‚c‚S‚P‚P|”„ã”NŒŽ      TO  ‚c‚R‚S|ŠJŽn”NŒŽ        
003760*                                                                 
003770*--<    No.06 >                                                   
003780        MOVE  ‚c‚S‚P‚P|˜A”Ô          TO  ‚c‚R‚S|I—¹‰ñ          
003790*                                                                 
003800*--<    No.07 >                                                   
003810        MOVE  ‚c‚S‚P‚P|”„ã”NŒŽ      TO  ‚c‚R‚S|I—¹”NŒŽ        
003820*                                                                 
003830*--<    No.08 >                                                   
003840        MOVE  ‚c‚S‚P‚P|¿‹Šz        TO  ‚c‚R‚S|‹àŠz            
003850*                                                                 
003860*--<    No.09 >                                                   
003870        MOVE  ‚c‚S‚P‚P|¿‹Á”ïÅ    TO  ‚c‚R‚S|Á”ïÅ          
003880*                                                                 
003890*--<    No.10 >                                                   
003900        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t        TO  ‚c‚R‚S|XV”NŒŽ“ú      
003910*                                                                 
003920*--<    No.11 >                                                   
003930        MOVE  ‚v|ƒVƒXƒeƒ€Žž        TO  ‚c‚R‚S|XVŽžŠÔ        
003940*                                                                 
003950*--<    No.12 >                                                   
003960        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚R‚S|XVŽÒ          
003970*                                                                 
003980*--<    No.13 >                                                   
003990        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚R‚S|“ü—Í’S“–ŽÒƒR[ƒh
004000*                                                                 
004010*--<    No.14 >                                                   
004020        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t        TO  ‚c‚R‚S|“o˜^”NŒŽ“ú      
004030*                                                                 
004040*--<    No.15 >                                                   
004050        MOVE  ‚v|ƒVƒXƒeƒ€Žž        TO  ‚c‚R‚S|“o˜^ŽžŠÔ        
004060*                                                                 
004070*--<    No.16 >                                                   
004080        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚R‚S|“o˜^’S“–ŽÒ      
004090*                                                                 
004100     END-IF.                                                      
004110*                                                                 
004120     MOVE ‚m‚d‚vƒL[                  TO  ‚n‚k‚cƒL[.             
004130*                                                                 
004140 •ÒWo—Íˆ—|‚d‚w‚h‚s.                                          
004150     EXIT.                                                        
004160******************************************************************
004170*    o—Íˆ—                                                    *
004180******************************************************************
004190 o—Íˆ—                             SECTION.                    
004200 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
004210*                                                                 
004220       
      *      EXEC  SQL                                                  
004230*       INSERT  INTO  D34HNS_TBL                                  
004240*          ( Œ_–ñ”Ô†                                             
004250*           ,ÄƒŠ[ƒX‰ñ”                                         
004260*           ,Œ_–ñŽí—Þ                                             
004270*           ,ŠJŽn‰ñ                                               
004280*           ,ŠJŽn”NŒŽ                                             
004290*           ,I—¹‰ñ                                               
004300*           ,I—¹”NŒŽ                                             
004310*           ,‹àŠz                                                 
004320*           ,Á”ïÅ                                               
004330*           ,XV”NŒŽ“ú                                           
004340*           ,XVŽžŠÔ                                             
004350*           ,XVŽÒ                                               
004360*           ,“ü—Í’S“–ŽÒƒR[ƒh                                     
004370*           ,“o˜^”NŒŽ“ú                                           
004380*           ,“o˜^ŽžŠÔ                                             
004390*           ,“o˜^’S“–ŽÒ)                                          
004400*      VALUES                                                     
004410*          ( :‚c‚R‚S|Œ_–ñ”Ô†                                    
004420*           ,:‚c‚R‚S|ÄƒŠ[ƒX‰ñ”                                
004430*           ,:‚c‚R‚S|Œ_–ñŽí—Þ                                    
004440*           ,:‚c‚R‚S|ŠJŽn‰ñ                                      
004450*           ,:‚c‚R‚S|ŠJŽn”NŒŽ                                    
004460*           ,:‚c‚R‚S|I—¹‰ñ                                      
004470*           ,:‚c‚R‚S|I—¹”NŒŽ                                    
004480*           ,:‚c‚R‚S|‹àŠz                                        
004490*           ,:‚c‚R‚S|Á”ïÅ                                      
004500*           ,:‚c‚R‚S|XV”NŒŽ“ú                                  
004510*           ,:‚c‚R‚S|XVŽžŠÔ                                    
004520*           ,:‚c‚R‚S|XVŽÒ                                      
004530*           ,:‚c‚R‚S|“ü—Í’S“–ŽÒƒR[ƒh                            
004540*           ,:‚c‚R‚S|“o˜^”NŒŽ“ú                                  
004550*           ,:‚c‚R‚S|“o˜^ŽžŠÔ                                    
004560*           ,:‚c‚R‚S|“o˜^’S“–ŽÒ)                                 
004570*    END-EXEC.
             CALL "SQLADR" USING SQ0002 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 125 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚R‚S|Œ_–ñ”Ô† IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚R‚S|ÄƒŠ[ƒX‰ñ” IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚R‚S|Œ_–ñŽí—Þ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(3)
             MOVE 3 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚R‚S|ŠJŽn‰ñ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(4)
             MOVE 2 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚R‚S|ŠJŽn”NŒŽ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(5)
             MOVE 6 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚R‚S|I—¹‰ñ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(6)
             MOVE 2 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚R‚S|I—¹”NŒŽ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(7)
             MOVE 6 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚R‚S|‹àŠz IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(8)
             MOVE 7 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚R‚S|Á”ïÅ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(9)
             MOVE 7 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚R‚S|XV”NŒŽ“ú IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(10)
             MOVE 8 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚R‚S|XVŽžŠÔ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(11)
             MOVE 8 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚R‚S|XVŽÒ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(12)
             MOVE 8 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚R‚S|“ü—Í’S“–ŽÒƒR[ƒh IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚R‚S|“o˜^”NŒŽ“ú IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(14)
             MOVE 8 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚R‚S|“o˜^ŽžŠÔ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(15)
             MOVE 8 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 ‚c‚R‚S|“o˜^’S“–ŽÒ IN
                 •Ï‘¥•¥
                 SQL-SQHSTV(16)
             MOVE 8 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
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
004580*                                                                 
004590*----------------------------------------------------------------*
004600*    ’Ç‰Áˆ—‚ðŠm”F                                              *
004610*----------------------------------------------------------------*
004620     EVALUATE  SQLCODE                                            
004630        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004640*--<       ’Ç‰Á¬Œ÷ >                                             
004650           COMPUTE  ‚v|o—Í|Œ”  =  ‚v|o—Í|Œ”  +  1       
004660        WHEN   OTHER                                              
004670*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
004680           MOVE     -40               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004690           PERFORM  ƒGƒ‰[”»’èˆ—                                
004700     END-EVALUATE.                                                
004710*                                                                 
004720 o—Íˆ—|‚d‚w‚h‚s.                                              
004730     EXIT.                                                        
004740******************************************************************
004750*    I—¹ˆ—                                                    *
004760******************************************************************
004770 I—¹ˆ—                             SECTION.                    
004780 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
004790*                                                                 
004800*--< ‚c‚aƒNƒ[ƒY >                                               
004810     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
004820*                                                                 
004830*--< ‚c‚aƒRƒ~ƒbƒgˆ— >                                           
004840     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
004850*                                                                 
004860*--< I—¹ƒƒbƒZ[ƒWo—Íˆ— >                                     
004870     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
004880*                                                                 
004890*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
004900     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
004910*                                                                 
004920 I—¹ˆ—|‚d‚w‚h‚s.                                              
004930     EXIT.                                                        
004940******************************************************************
004950*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
004960******************************************************************
004970 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
004980 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
004990*                                                                 
005000*----------------------------------------------------------------*
005010*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
005020*----------------------------------------------------------------*
005030     INITIALIZE                       IF-CHOCO001.                
005040     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005050     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005060     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005070     MOVE  "D411STK"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
005080     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005090     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
005100     MOVE  "ƒŒƒxƒ‹ƒAƒbƒvÂŒ “WŠJ“ü—ÍŒ”"                         
005110                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005120     CALL  CLOCO001                USING  IF-CHOCO001.            
005130*                                                                 
005140     INITIALIZE                       IF-CHOCO001.                
005150     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005160     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005170     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005180     MOVE  "D34HNS"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
005190     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005200     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
005210     MOVE  "•Ï‘¥•¥DBo—ÍŒ”"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005220     CALL  CLOCO001                USING  IF-CHOCO001.            
005230*                                                                 
005240*----------------------------------------------------------------*
005250*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
005260*----------------------------------------------------------------*
005270     INITIALIZE                       IF-CHOCO001.                
005280     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005290     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005300     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005310     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005320     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005330     CALL  CLOCO001                USING  IF-CHOCO001.            
005340*                                                                 
005350 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
005360     EXIT.                                                        
005370******************************************************************
005380*    ‚c‚aƒNƒ[ƒY                                                *
005390******************************************************************
005400 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
005410 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
005420*                                                                 
005430*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
005440     
      *    EXEC SQL                                                     
005450*       CLOSE  CUR1                                               
005460*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 204 TO SQL-OFFSET
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
005470*                                                                 
005480 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
005490     EXIT.                                                        
005500******************************************************************
005510*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
005520******************************************************************
005530 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
005540 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
005550*                                                                 
005560     
      *    EXEC  SQL                                                    
005570*       COMMIT  WORK  RELEASE                                     
005580*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 219 TO SQL-OFFSET
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
005590*                                                                 
005600     INITIALIZE                       IF-CHOCO001.                
005610     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005620     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005630     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005640     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005650     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005660     CALL  CLOCO001                USING  IF-CHOCO001.            
005670*                                                                 
005680 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
005690     EXIT.                                                        
005700******************************************************************
005710*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
005720******************************************************************
005730 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
005740 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
005750*                                                                 
005760     
      *    EXEC  SQL                                                    
005770*       ROLLBACK WORK  RELEASE                                    
005780*    END-EXEC.
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

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
005790*                                                                 
005800     INITIALIZE                       IF-CHOCO001.                
005810     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005820     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005830     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005840     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005850     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005860     CALL  CLOCO001                USING  IF-CHOCO001.            
005870*                                                                 
005880 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
005890     EXIT.                                                        
005900******************************************************************
005910*    ƒGƒ‰[ˆ—                                                  *
005920******************************************************************
005930 ƒGƒ‰[”»’èˆ—                       SECTION.                    
005940 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
005950*                                                                 
005960     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
005970     INITIALIZE                       IF-CHOCO001.                
005980*                                                                 
005990     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
006000        WHEN  -10                                                 
006010*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
006020           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006030           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006040           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006050           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
006060           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006070           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006080           CALL  CLOCO001          USING  IF-CHOCO001             
006090*                                                                 
006100        WHEN  -20                                                 
006110*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
006120           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006130           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006140           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006150           MOVE  "D32SAK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006160           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
006170           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006180           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006190           CALL  CLOCO001          USING  IF-CHOCO001             
006200*                                                                 
006210        WHEN  -30                                                 
006220*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
006230           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006240           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006250           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006260           MOVE  "D11STK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006270           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
006280           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006290           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006300           CALL  CLOCO001          USING  IF-CHOCO001             
006310*                                                                 
006320        WHEN  -40                                                 
006330*--<       •Ï‘¥•¥‚c‚a’Ç‰ÁŽ¸”s >                                   
006340           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006350           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006360           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006370           MOVE  "D34HNS"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006380           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
006390           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006400           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006410           CALL  CLOCO001          USING  IF-CHOCO001             
006420*                                                                 
006430        WHEN  OTHER                                               
006440           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
006450     END-EVALUATE.                                                
006460*                                                                 
006470     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
006480        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
006490*                                                                 
006500        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
006510*                                                                 
006520*--<    ƒvƒƒOƒ‰ƒ€ƒŠƒ^[ƒ“ƒR[ƒh >                                
006530        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
006540*                                                                 
006550        EXIT  PROGRAM                                             
006560     END-IF.                                                      
006570*                                                                 
006580 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
006590     EXIT.                                                        
006600******************************************************************
006610*                  END OF PROGRAM                                *
006620******************************************************************
