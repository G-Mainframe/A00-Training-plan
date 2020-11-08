000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : •Ï‘¥•¥ˆÚsˆ—                         *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS560                               *
000050*      3. ˆ—ŠT—v      : ˆÚsŒãiƒŒƒxƒ‹ƒAƒbƒvj‚ÌÂŒ “WŠJ‚æ‚èA *
000060*                         •Ï‘¥•¥‚c‚a‚ðì¬‚·‚éB                 *
000070*      4. ì¬ŽÒ        : ‘h  ‹Å  ”Ž                             *
000080*      5. ì¬“ú        : 2005.04.04                             *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS560.                   
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
000280  WORKING-STORAGE                     SECTION.                    
000290*----------------------------------------------------------------*
000300*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000310*----------------------------------------------------------------*
000320     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS560\CO
      -    "BIS560.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D511HJS_TBL(Œ_–ñ”Ô†
      -     ",Œ_–ñŽí—Þ,•¨Œ”Ô†,˜A”Ô,‘—‹à˜A”Ô,ÄƒŠ[ƒX‰ñ”,‘—‹àæƒR[ƒh,
      -    "‘—‹àæ–¼,‘—‹àŠz,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,“o˜^’S“–ŽÒ,XV”NŒŽ“ú,X
      -    "VŽžŠÔ,X".

           02  FILLER PIC X(102) VALUE "VŽÒ,“ü—Í’S“–ŽÒƒR[ƒh) values (:
      -    "b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:b13,:b14,
      -    ":b15,:b16)".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(136) VALUE "select Œ_–ñŽí—Þ  ,ÄƒŠ[ƒX‰ñ”  
      -     " into :b1,:b2  from IKOTBL002 where ((Œ_–ñ‚m‚n=:b3 and ÄƒŠ
      -    "[ƒXƒR[ƒh=:b4) and ‹ŒÂŒ Š¨’èˆ—ƒR[ƒh=:b5)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148377852.


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
           02  FILLER PIC X(159) VALUE "select Œ_–ñ‚m‚n  ,ÄƒŠ[ƒXƒR[ƒh
      -    "  ,Š¨’èˆ—ƒR[ƒh  ,•¨ŒŽ}”Ô  ,‘—‹àæƒR[ƒh‚P  ,‘—‹àæƒR[ƒh
      -    "‚Q  ,‘—‹àæƒR[ƒh‚R  ,‘—‹àæ–¼‚P  ,‘—‹àæ–¼‚Q  ,‘—‹àæ–¼‚R  
      -    ",‘—‹àŠz".

           02  FILLER PIC X(50) VALUE "‚P  ,‘—‹àŠz‚Q  ,‘—‹àŠz‚R   from L
      -    "TRHJK            ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +189.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +193.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +209.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +244.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +270.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +149.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +262.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +364.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +228.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +136.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +422.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +263.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +581.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +278.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +593.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +293.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +613.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000330*                                                                 
000340*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000350     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000360*                                                                 
000370*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000380     
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
000390*                                                                 
000400*--< •ÛŒ¯Ž–ŒÌƒ}ƒXƒ^i•ÛŒ¯‹à¿‹“ü‹àÚº°ÄÞj>                       
000410     
      *    EXEC  SQL  INCLUDE  LTRHJK.CBL            END-EXEC.
000420*                                                                 
000430*--< Œ_–ñŽí—Þ“™•ÏŠ·ƒe[ƒuƒ‹>                                      
000010************************************************
000020* •ÛŒ¯Ž–ŒÌƒ}ƒXƒ^i•ÛŒ¯‹à¿‹“ü‹à)(LTRHJK)
000030************************************************
000040 01  ‚k‚s‚q‚g‚i‚j|Œ_–ñ‚m‚n PIC  X(009).
000050 01  ‚k‚s‚q‚g‚i‚j|•¨ŒŽ}”Ô PIC S9(003) COMP-3.
000060 01  ‚k‚s‚q‚g‚i‚j|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000070 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌ“ú•t|¢‹I PIC S9(001) COMP-3.
000080 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌ“ú•t|“ú•t PIC  X(006).
000090 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌ“ú•t|Žž‚g‚g‚l‚l PIC  X(004).
000100 01  ‚k‚s‚q‚g‚i‚j|•¨Œ–¼ PIC  X(030).
000110 01  ‚k‚s‚q‚g‚i‚j|ƒŠ[ƒXŠJŽn“ú|¢‹I PIC S9(001) COMP-3.
000120 01  ‚k‚s‚q‚g‚i‚j|ƒŠ[ƒXŠJŽn“ú|“ú•t PIC  X(006).
000130 01  ‚k‚s‚q‚g‚i‚j|ƒŠ[ƒXI—¹“ú|¢‹I PIC S9(001) COMP-3.
000140 01  ‚k‚s‚q‚g‚i‚j|ƒŠ[ƒXI—¹“ú|“ú•t PIC  X(006).
000150 01  ‚k‚s‚q‚g‚i‚j|ŠúŠÔ PIC S9(003) COMP-3.
000160 01  ‚k‚s‚q‚g‚i‚j|w“ü‹àŠz PIC S9(013) COMP-3.
000170 01  ‚k‚s‚q‚g‚i‚j|ƒ†[ƒU[ƒR[ƒh PIC  X(008).
000180 01  ‚k‚s‚q‚g‚i‚j|ƒ†[ƒU[ƒŠƒtƒ@ƒŒƒ“ƒX PIC  X(012).
000190 01  ‚k‚s‚q‚g‚i‚j|Ý’uêŠ PIC  X(020).
000200 01  ‚k‚s‚q‚g‚i‚j|“]ƒŠ[ƒX’ñŒgæƒR[ƒh PIC  X(002).
000210 01  ‚k‚s‚q‚g‚i‚j|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz PIC S9(013) COMP-3.
000220 01  ‚k‚s‚q‚g‚i‚j|Š¨’èˆ—ƒR[ƒh PIC  X(002).
000230 01  ‚k‚s‚q‚g‚i‚j|ŠÇ—‚m‚n PIC  X(015).
000240 01  ‚k‚s‚q‚g‚i‚j|“®‘•ÛŒ¯ƒR[ƒh PIC  X(004).
000250 01  ‚k‚s‚q‚g‚i‚j|Ó”CŠúŠÔŽ©|¢‹I PIC S9(001) COMP-3.
000260 01  ‚k‚s‚q‚g‚i‚j|Ó”CŠúŠÔŽ©|“ú•t PIC  X(006).
000270 01  ‚k‚s‚q‚g‚i‚j|Ó”CŠúŠÔŽŠ|¢‹I PIC S9(001) COMP-3.
000280 01  ‚k‚s‚q‚g‚i‚j|Ó”CŠúŠÔŽŠ|“ú•t PIC  X(006).
000290 01  ‚k‚s‚q‚g‚i‚j|•ÛŒ¯ØŒ””Ô† PIC  X(011).
000300 01  ‚k‚s‚q‚g‚i‚j|“®‘•ÛŒ¯‰¿Ši PIC S9(013) COMP-3.
000310 01  ‚k‚s‚q‚g‚i‚j|ÄƒŠ[ƒX•t•Û—¦ PIC S9(002) COMP-3.
000320 01  ‚k‚s‚q‚g‚i‚j|ƒ_ƒ~[‚O‚O‚P PIC  X(012).
000330 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌ¿‹“o˜^“ú|¢‹I PIC S9(001) COMP-3.
000340 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌ¿‹“o˜^“ú|“ú•t PIC  X(006).
000350 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌ‹æ•ª PIC  X(001).
000360 01  ‚k‚s‚q‚g‚i‚j|Ž–ŒÌŒ´ˆö PIC  X(001).
000370 01  ‚k‚s‚q‚g‚i‚j|”íÐ•¨Œ‹àŠz PIC S9(013) COMP-3.
000380 01  ‚k‚s‚q‚g‚i‚j|”íÐ•¨ŒŽc‰¿Šz PIC S9(013) COMP-3.
000390 01  ‚k‚s‚q‚g‚i‚j|ƒ_ƒ~[‚O‚O‚Q PIC  X(017).
000400 01  ‚k‚s‚q‚g‚i‚j|¿‹”NŒŽ“ú|¢‹I PIC S9(001) COMP-3.
000410 01  ‚k‚s‚q‚g‚i‚j|¿‹”NŒŽ“ú|“ú•t PIC  X(006).
000420 01  ‚k‚s‚q‚g‚i‚j|¿‹‚q‚d‚e‚m‚n PIC  X(008).
000430 01  ‚k‚s‚q‚g‚i‚j|¿‹•ÛŒ¯‹à PIC S9(013) COMP-3.
000440 01  ‚k‚s‚q‚g‚i‚j|—ÕŽž”ï—p•ÛŒ¯‹à PIC S9(013) COMP-3.
000450 01  ‚k‚s‚q‚g‚i‚j|•ÛŒ¯‹à¿‹Šz PIC S9(013) COMP-3.
000460 01  ‚k‚s‚q‚g‚i‚j|ƒ_ƒ~[‚O‚O‚R PIC  X(014).
000470 01  ‚k‚s‚q‚g‚i‚j|“ü‘—‹à“o˜^“ú|¢‹I PIC S9(001) COMP-3.
000480 01  ‚k‚s‚q‚g‚i‚j|“ü‘—‹à“o˜^“ú|“ú•t PIC  X(006).
000490 01  ‚k‚s‚q‚g‚i‚j|“ü‹à“ú|¢‹I PIC S9(001) COMP-3.
000500 01  ‚k‚s‚q‚g‚i‚j|“ü‹à“ú|“ú•t PIC  X(006).
000510 01  ‚k‚s‚q‚g‚i‚j|“ü‹àŠz PIC S9(013) COMP-3.
000520 01  ‚k‚s‚q‚g‚i‚j|•ÛŒ¯‹àˆ—‹æ•ª PIC  X(001).
000530 01  ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚P PIC S9(002) COMP-3.
000540 01  ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚P PIC  X(040).
000550 01  ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚P PIC S9(013) COMP-3.
000560 01  ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚Q PIC S9(002) COMP-3.
000570 01  ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚Q PIC  X(040).
000580 01  ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚Q PIC S9(013) COMP-3.
000590 01  ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚R PIC S9(002) COMP-3.
000600 01  ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚R PIC  X(040).
000610 01  ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚R PIC S9(013) COMP-3.
000620 01  ‚k‚s‚q‚g‚i‚j|ƒ_ƒ~[‚O‚O‚S PIC  X(011).
000630 01  ‚k‚s‚q‚g‚i‚j|ƒ_ƒ~[‚O‚O‚T PIC  X(021).
000640 01  ‚k‚s‚q‚g‚i‚j|‹¤’Êî•ñ PIC  X(035).
000440     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
000450*                                                                 
000460*--< ˆÚsŒã_ÂŒ “WŠJ >                                            
000010************************************************
000020* Œ_–ñŽí—Þ“™•ÏŠ·ƒe[ƒuƒ‹(IKOTBL002)
000030************************************************
000040 01  ‚h‚j‚n‚O‚O‚Q|Œ_–ñ‚m‚n PIC  X(009).
000050 01  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000060 01  ‚h‚j‚n‚O‚O‚Q|‹ŒÂŒ Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000070 01  ‚h‚j‚n‚O‚O‚Q|‹ŒÂ–±Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000080 01  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ” PIC S9(002) COMP-3.
000090 01  ‚h‚j‚n‚O‚O‚Q|ÂŒ Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000100 01  ‚h‚j‚n‚O‚O‚Q|Â–±Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000110 01  ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ PIC  X(003).
000120 01  ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª PIC  X(001).
000130 01  ‚h‚j‚n‚O‚O‚Q|‰ñŽûŽè‡ PIC  X(001).
000470     
      *    EXEC  SQL  INCLUDE  D511HJS.CBL           END-EXEC.
000480*                                                                 
      *****************************************************************
      *   •ÛŒ¯Ž–ŒÌ‘—‹à(D511HJS_TBL)
      *****************************************************************
       01  •ÛŒ¯Ž–ŒÌ‘—‹à.
           03  ‚c‚T‚P‚P|Œ_–ñ”Ô†    PIC  X(010).
           03  ‚c‚T‚P‚P|Œ_–ñŽí—Þ    PIC  X(003).
           03  ‚c‚T‚P‚P|•¨Œ”Ô†    PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚T‚P‚P|˜A”Ô        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚T‚P‚P|‘—‹à˜A”Ô    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚T‚P‚P|ÄƒŠ[ƒX‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚T‚P‚P|‘—‹àæƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚T‚P‚P|‘—‹àæ–¼    PIC  X(040).
           03  ‚c‚T‚P‚P|‘—‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚T‚P‚P|“o˜^”NŒŽ“ú  PIC  X(008).
           03  ‚c‚T‚P‚P|“o˜^ŽžŠÔ    PIC  X(008).
           03  ‚c‚T‚P‚P|“o˜^’S“–ŽÒ  PIC  X(008).
           03  ‚c‚T‚P‚P|XV”NŒŽ“ú  PIC  X(008).
           03  ‚c‚T‚P‚P|XVŽžŠÔ    PIC  X(008).
           03  ‚c‚T‚P‚P|XVŽÒ      PIC  X(008).
           03  ‚c‚T‚P‚P|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
000490     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000500*                                                                 
000510*----------------------------------------------------------------*
000520*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000530*----------------------------------------------------------------*
000540*--< ƒGƒ‰[”»’è&TEMP—p>                                           
000550*--<TEMP—p>                                                       
000560 01  ‚v|ƒJƒEƒ“ƒ^                     PIC  9(03)   VALUE  1.      
000570 01  ‚v|ƒtƒ‰ƒO                       PIC  X(01)   VALUE  "N".    
000580 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000590*--< ƒGƒ‰[”»’è—p >                                               
000600     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000610                                                                  
000620*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000630     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000640         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
000650         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000660*                                                                 
000670*--< Œ”ƒGƒŠƒA >                                                 
000680     03  Œ”ƒGƒŠƒA.                                              
000690         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
000700         05  ‚v|o—Í|Œ”           PIC  9(09).                 
000710*                                                                 
000720*--< ˜A”Ôˆ—‚ÌƒGƒŠƒA >                                           
000730     03  ˜A”Ôˆ—.                                                
000740          05  ‚n‚k‚cŒ_–ñ”Ô†          PIC  X(010)  VALUE SPACE.   
000750          05  ‚n‚k‚cŒ_–ñŽí—Þ          PIC  X(003)  VALUE SPACE.   
000760          05  ‚n‚k‚c•¨Œ”Ô†          PIC  S9(004)  VALUE ZERO.   
000770*                                                                 
000780*--< ‹¤’Êî•ñ >                                                   
000790 01  ‚v|‹¤’Êî•ñ.                                                
000800     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
000810         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
000820         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
000830     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
000840     03  ‚v|’S“–ŽÒ                   PIC  X(08)                  
000850	                                           VALUE  "IKOPG   ".   
000860*                                                                 
000870*----------------------------------------------------------------*
000880*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
000890*----------------------------------------------------------------*
000900 01  CALL-AREA.                                                   
000910*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
000920     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
000930     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
000940*                                                                 
000950*----------------------------------------------------------------*
000960*    ‚b‚n‚o‚x—Ìˆæ                                                *
000970*----------------------------------------------------------------*
000980*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
000990 01  IF-CHOCO001.                                                 
001000     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001010*                                                                 
001020*----------------------------------------------------------------*
001030*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001040*----------------------------------------------------------------*
001050 01  PARA-AREA.                                                   
001060     COPY CPBCO001.                                               
001070******************************************************************
001080*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001090******************************************************************
001100 CONSTANT                             SECTION.                    
001110 01  ’è”—Ìˆæ.                                                    
001120     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS560".
001130     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001140                                   VALUE  "•ÛŒ¯Ž–ŒÌ‘—‹àì¬".     
001150     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001160     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001170     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001180     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001190******************************************************************
001200*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001210******************************************************************
001220 PROCEDURE                            DIVISION.                   
001230*                                                                 
001240     PERFORM  ‰Šúˆ—.                                           
001250*                                                                 
001260     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001270*                                                                 
001280     PERFORM  I—¹ˆ—.                                           
001290*                                                                 
001300     STOP     RUN.                                                
001310*                                                                 
001320******************************************************************
001330*    ‰Šúˆ—                                                    *
001340******************************************************************
001350 ‰Šúˆ—                             SECTION.                    
001360 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001370*                                                                 
001380*----------------------------------------------------------------*
001390*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001400*----------------------------------------------------------------*
001410     INITIALIZE                       IF-CHOCO001.                
001420     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001430     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001440     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001450     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001460     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001470     CALL  CLOCO001                USING  IF-CHOCO001.            
001480*                                                                 
001490*----------------------------------------------------------------*
001500*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001510*----------------------------------------------------------------*
001520     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001530     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001540*                                                                 
001550*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001560     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001570*                                                                 
001580*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001590     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001600*                                                                 
001610*--< ‚n‚q‚`‚b‚k‚dÚ‘± >          ‚n‚q‚`‚b‚k‚dÚ‘±.                
001620     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001630*                                                                 
001640*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
001650     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
001660*                                                                 
001670*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
001680     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
001690*                                                                 
001700 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001710     EXIT.                                                        
001720******************************************************************
001730*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001740******************************************************************
001750 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001760 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001770*                                                                 
001780*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
001790     CALL  COBCO001                USING  PARA-AREA.              
001800*                                                                 
001810     MOVE  PARA-DBSTRING              TO  DB-STRING.              
001820     MOVE  PARA-USERNAME              TO  USERNAME.               
001830     MOVE  PARA-PASSWORD              TO  PASSWD.                 
001840*                                                                 
001850*----------------------------------------------------------------*
001860*    ŠJŽnÚ‘±                                                    *
001870*----------------------------------------------------------------*
001880     IF    DB-STRING  =  SPACE                                    
001890        
      *       EXEC SQL                                                  
001900*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
001910*       END-EXEC 
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
001920     ELSE                                                         
001930        
      *       EXEC SQL                                                  
001940*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
001950*            USING  :DB-STRING                                    
001960*       END-EXEC 
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
001970     END-IF.                                                      
001980*                                                                 
001990*----------------------------------------------------------------*
002000*    Ú‘±Šm”F                                                    *
002010*----------------------------------------------------------------*
002020     EVALUATE  SQLCODE                                            
002030        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002040           CONTINUE                                               
002050        WHEN   OTHER                                              
002060*--<       Ú‘±ƒGƒ‰[ >                                           
002070           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002080           PERFORM  ƒGƒ‰[”»’èˆ—                                
002090     END-EVALUATE.                                                
002100*                                                                 
002110 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002120     EXIT.                                                        
002130******************************************************************
002140*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002150******************************************************************
002160 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002170 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002180*                                                                 
002190*----------------------------------------------------------------*
002200*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002210*----------------------------------------------------------------*
002220     
      *    EXEC SQL                                                     
002230*       DECLARE CUR1  CURSOR FOR                                  
002240*          SELECT                                                 
002250*                Œ_–ñ‚m‚n                                         
002260*               ,ÄƒŠ[ƒXƒR[ƒh                                   
002270*               ,Š¨’èˆ—ƒR[ƒh                                   
002280*               ,•¨ŒŽ}”Ô                                         
002290*               ,‘—‹àæƒR[ƒh‚P                                   
002300*               ,‘—‹àæƒR[ƒh‚Q                                   
002310*               ,‘—‹àæƒR[ƒh‚R                                   
002320*               ,‘—‹àæ–¼‚P                                       
002330*               ,‘—‹àæ–¼‚Q                                       
002340*               ,‘—‹àæ–¼‚R                                       
002350*               ,‘—‹àŠz‚P                                         
002360*               ,‘—‹àŠz‚Q                                         
002370*               ,‘—‹àŠz‚R                                         
002380*            FROM  LTRHJK                                         
002390*    END-EXEC.
002400*                                                                 
002410*----------------------------------------------------------------*
002420*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002430*----------------------------------------------------------------*
002440     
      *    EXEC  SQL                                                    
002450*       OPEN  CUR1                                                
002460*    END-EXEC.
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
002470*                                                                 
002480*----------------------------------------------------------------*
002490*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
002500*----------------------------------------------------------------*
002510     EVALUATE  SQLCODE                                            
002520        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002530*--<       ³í >                                                 
002540           CONTINUE                                               
002550        WHEN  OTHER                                               
002560*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
002570           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002580           PERFORM  ƒGƒ‰[”»’èˆ—                                
002590     END-EVALUATE.                                                
002600*                                                                 
002610 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
002620     EXIT.                                                        
002630******************************************************************
002640*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
002650******************************************************************
002660 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
002670 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
002680*                                                                 
002690*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
002700     
      *    EXEC SQL                                                     
002710*        FETCH  CUR1                                              
002720*         INTO  :‚k‚s‚q‚g‚i‚j|Œ_–ñ‚m‚n                           
002730*              ,:‚k‚s‚q‚g‚i‚j|ÄƒŠ[ƒXƒR[ƒh                     
002740*              ,:‚k‚s‚q‚g‚i‚j|Š¨’èˆ—ƒR[ƒh                     
002750*              ,:‚k‚s‚q‚g‚i‚j|•¨ŒŽ}”Ô                           
002760*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚P                     
002770*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚Q                     
002780*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚R                     
002790*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚P                         
002800*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚Q                         
002810*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚R                         
002820*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚P                           
002830*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚Q                           
002840*              ,:‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚R                           
002850*    END-EXEC.
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
               ‚k‚s‚q‚g‚i‚j|Œ_–ñ‚m‚n
               SQL-SQHSTV(1)
           MOVE 9 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|Š¨’èˆ—ƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|•¨ŒŽ}”Ô
               SQL-SQHSTV(4)
           MOVE 2 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚P
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚Q
               SQL-SQHSTV(6)
           MOVE 2 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚R
               SQL-SQHSTV(7)
           MOVE 2 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚P
               SQL-SQHSTV(8)
           MOVE 40 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚Q
               SQL-SQHSTV(9)
           MOVE 40 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚R
               SQL-SQHSTV(10)
           MOVE 40 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚P
               SQL-SQHSTV(11)
           MOVE 7 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚Q
               SQL-SQHSTV(12)
           MOVE 7 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚R
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
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
002860*                                                                 
002870*----------------------------------------------------------------*
002880*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
002890*----------------------------------------------------------------*
002900     EVALUATE   SQLCODE                                           
002910        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002920*--<       ³í >                                                 
002930           COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1       
002940        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
002950*--<       “ÇžI—¹ >                                             
002960           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
002970        WHEN   OTHER                                              
002980*--<       “ÇžƒGƒ‰[ >                                           
002990           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003000           PERFORM  ƒGƒ‰[”»’èˆ—                                
003010     END-EVALUATE.                                                
003020*                                                                 
003030 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003040     EXIT.                                                        
003050******************************************************************
003060*    Žåˆ—                                                      *
003070******************************************************************
003080 Žåˆ—                               SECTION.                    
003090 Žåˆ—|‚r‚s‚`‚q‚s.                                              
003100*                                                                 
003110     PERFORM  •ÒWo—Íˆ—.                                       
003120*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
003130     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
003140*                                                                 
003150 Žåˆ—|‚d‚w‚h‚s.                                                
003160     EXIT.                                                        
003170******************************************************************
003180*     •ÒWo—Íˆ—                                               *
003190******************************************************************
003200 •ÒWo—Íˆ—                         SECTION.                    
003210 •ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                        
003220*                                                                 
003230*---<No.01 >                                                      
003240     MOVE  ‚k‚s‚q‚g‚i‚j|Œ_–ñ‚m‚n     TO  ‚c‚T‚P‚P|Œ_–ñ”Ô†.     
003250*-- <No.02,06 >                                                   
003260     PERFORM  •ÏŠ·ƒe[ƒuƒ‹ˆ—.                                   
003270*-- <No.03 >                                                      
003280     MOVE  ‚k‚s‚q‚g‚i‚j|•¨ŒŽ}”Ô     TO  ‚c‚T‚P‚P|•¨Œ”Ô†.     
003290*---<No.10>                                                       
003300     MOVE  ‚v|”NŒŽ“ú                 TO  ‚c‚T‚P‚P|“o˜^”NŒŽ“ú.   
003310*---<No.11>                                                       
003320     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO  ‚c‚T‚P‚P|“o˜^ŽžŠÔ.     
003330*---<No.12>                                                       
003340     MOVE  ‚v|’S“–ŽÒ                 TO  ‚c‚T‚P‚P|“o˜^’S“–ŽÒ.   
003350*---<No.13>                                                       
003360     MOVE  ‚v|”NŒŽ“ú                 TO  ‚c‚T‚P‚P|XV”NŒŽ“ú.   
003370*---<No.14>                                                       
003380     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO  ‚c‚T‚P‚P|XVŽžŠÔ.     
003390*---<No.15>                                                       
003400     MOVE  ‚v|’S“–ŽÒ                 TO  ‚c‚T‚P‚P|XVŽÒ.       
003410*---<No.16>                                                       
003420     MOVE  ‚v|’S“–ŽÒ                 TO                          
003430                                     ‚c‚T‚P‚P|“ü—Í’S“–ŽÒƒR[ƒh.  
003440     PERFORM  •ÒWˆ—  THRU  o—Íˆ—  3  TIMES.                 
003450******************************************************************
003460*     •ÒWˆ—                                                   *
003470******************************************************************
003480 •ÒWˆ—                             SECTION.                    
003490 •ÒWˆ—|‚r‚s‚`‚q‚s.                                            
003500*---<No.04>                                                       
003510     PERFORM  ˜A”Ô•ÒWˆ—.                                       
003520*---<No.05A07A08A09 >                                          
003530     PERFORM  ‘—‹à•ÒW.                                           
003540*---<‚v|ƒJƒEƒ“ƒ^ ˆ— >                                          
003550     PERFORM  ƒJƒEƒ“ƒ^ˆ—.                                       
003560 •ÒWˆ—|‚d‚w‚h‚s.                                              
003570     EXIT.                                                        
003580******************************************************************
003590*    o—Íˆ—                                                    *
003600******************************************************************
003610 o—Íˆ—                             SECTION.                    
003620 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
003630*                                                                 
003640      
      *     EXEC  SQL                                                   
003650*       INSERT  INTO  D511HJS_TBL                                 
003660*          ( Œ_–ñ”Ô†                                             
003670*           ,Œ_–ñŽí—Þ                                             
003680*           ,•¨Œ”Ô†                                             
003690*           ,˜A”Ô                                                 
003700*           ,‘—‹à˜A”Ô                                             
003710*           ,ÄƒŠ[ƒX‰ñ”                                         
003720*           ,‘—‹àæƒR[ƒh                                         
003730*           ,‘—‹àæ–¼                                             
003740*           ,‘—‹àŠz                                               
003750*           ,“o˜^”NŒŽ“ú                                           
003760*           ,“o˜^ŽžŠÔ                                             
003770*           ,“o˜^’S“–ŽÒ                                           
003780*           ,XV”NŒŽ“ú                                           
003790*           ,XVŽžŠÔ                                             
003800*           ,XVŽÒ                                               
003810*           ,“ü—Í’S“–ŽÒƒR[ƒh )                                   
003820*                                                                 
003830*      VALUES                                                     
003840*          ( :‚c‚T‚P‚P|Œ_–ñ”Ô†                                  
003850*           ,:‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ                              
003860*           ,:‚c‚T‚P‚P|•¨Œ”Ô†                                  
003870*           ,:‚c‚T‚P‚P|˜A”Ô                                      
003880*           ,:‚c‚T‚P‚P|‘—‹à˜A”Ô                                  
003890*           ,:‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”                          
003900*           ,:‚c‚T‚P‚P|‘—‹àæƒR[ƒh                              
003910*           ,:‚c‚T‚P‚P|‘—‹àæ–¼                                  
003920*           ,:‚c‚T‚P‚P|‘—‹àŠz                                    
003930*           ,:‚c‚T‚P‚P|“o˜^”NŒŽ“ú                                
003940*           ,:‚c‚T‚P‚P|“o˜^ŽžŠÔ                                  
003950*           ,:‚c‚T‚P‚P|“o˜^’S“–ŽÒ                                
003960*           ,:‚c‚T‚P‚P|XV”NŒŽ“ú                                
003970*           ,:‚c‚T‚P‚P|XVŽžŠÔ                                  
003980*           ,:‚c‚T‚P‚P|XVŽÒ                                    
003990*           ,:‚c‚T‚P‚P|“ü—Í’S“–ŽÒƒR[ƒh )                        
004000*    END-EXEC.
            CALL "SQLADR" USING SQ0002 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 149 TO SQL-OFFSET
            MOVE 0 TO SQL-OCCURS
            CALL "SQLADR" USING
                SQLCUD
                SQL-CUD
            CALL "SQLADR" USING
                SQLCA
                SQL-SQLEST
            MOVE 256 TO SQL-SQLETY
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|Œ_–ñ”Ô† IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(1)
            MOVE 10 TO SQL-SQHSTL(1)
            MOVE 0 TO SQL-SQHSTS(1)
            MOVE 0 TO SQL-SQINDV(1)
            MOVE 0 TO SQL-SQINDS(1)
            MOVE 0 TO SQL-SQHARM(1)
            CALL "SQLADR" USING
                ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ
                SQL-SQHSTV(2)
            MOVE 3 TO SQL-SQHSTL(2)
            MOVE 0 TO SQL-SQHSTS(2)
            MOVE 0 TO SQL-SQINDV(2)
            MOVE 0 TO SQL-SQINDS(2)
            MOVE 0 TO SQL-SQHARM(2)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|•¨Œ”Ô† IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(3)
            MOVE 3 TO SQL-SQHSTL(3)
            MOVE 0 TO SQL-SQHSTS(3)
            MOVE 0 TO SQL-SQINDV(3)
            MOVE 0 TO SQL-SQINDS(3)
            MOVE 0 TO SQL-SQHARM(3)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|˜A”Ô IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(4)
            MOVE 2 TO SQL-SQHSTL(4)
            MOVE 0 TO SQL-SQHSTS(4)
            MOVE 0 TO SQL-SQINDV(4)
            MOVE 0 TO SQL-SQINDS(4)
            MOVE 0 TO SQL-SQHARM(4)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|‘—‹à˜A”Ô IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(5)
            MOVE 2 TO SQL-SQHSTL(5)
            MOVE 0 TO SQL-SQHSTS(5)
            MOVE 0 TO SQL-SQINDV(5)
            MOVE 0 TO SQL-SQINDS(5)
            MOVE 0 TO SQL-SQHARM(5)
            CALL "SQLADR" USING
                ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”
                SQL-SQHSTV(6)
            MOVE 2 TO SQL-SQHSTL(6)
            MOVE 0 TO SQL-SQHSTS(6)
            MOVE 0 TO SQL-SQINDV(6)
            MOVE 0 TO SQL-SQINDS(6)
            MOVE 0 TO SQL-SQHARM(6)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|‘—‹àæƒR[ƒh IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(7)
            MOVE 2 TO SQL-SQHSTL(7)
            MOVE 0 TO SQL-SQHSTS(7)
            MOVE 0 TO SQL-SQINDV(7)
            MOVE 0 TO SQL-SQINDS(7)
            MOVE 0 TO SQL-SQHARM(7)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|‘—‹àæ–¼ IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(8)
            MOVE 40 TO SQL-SQHSTL(8)
            MOVE 0 TO SQL-SQHSTS(8)
            MOVE 0 TO SQL-SQINDV(8)
            MOVE 0 TO SQL-SQINDS(8)
            MOVE 0 TO SQL-SQHARM(8)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|‘—‹àŠz IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(9)
            MOVE 7 TO SQL-SQHSTL(9)
            MOVE 0 TO SQL-SQHSTS(9)
            MOVE 0 TO SQL-SQINDV(9)
            MOVE 0 TO SQL-SQINDS(9)
            MOVE 0 TO SQL-SQHARM(9)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|“o˜^”NŒŽ“ú IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(10)
            MOVE 8 TO SQL-SQHSTL(10)
            MOVE 0 TO SQL-SQHSTS(10)
            MOVE 0 TO SQL-SQINDV(10)
            MOVE 0 TO SQL-SQINDS(10)
            MOVE 0 TO SQL-SQHARM(10)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|“o˜^ŽžŠÔ IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(11)
            MOVE 8 TO SQL-SQHSTL(11)
            MOVE 0 TO SQL-SQHSTS(11)
            MOVE 0 TO SQL-SQINDV(11)
            MOVE 0 TO SQL-SQINDS(11)
            MOVE 0 TO SQL-SQHARM(11)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|“o˜^’S“–ŽÒ IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(12)
            MOVE 8 TO SQL-SQHSTL(12)
            MOVE 0 TO SQL-SQHSTS(12)
            MOVE 0 TO SQL-SQINDV(12)
            MOVE 0 TO SQL-SQINDS(12)
            MOVE 0 TO SQL-SQHARM(12)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|XV”NŒŽ“ú IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(13)
            MOVE 8 TO SQL-SQHSTL(13)
            MOVE 0 TO SQL-SQHSTS(13)
            MOVE 0 TO SQL-SQINDV(13)
            MOVE 0 TO SQL-SQINDS(13)
            MOVE 0 TO SQL-SQHARM(13)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|XVŽžŠÔ IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(14)
            MOVE 8 TO SQL-SQHSTL(14)
            MOVE 0 TO SQL-SQHSTS(14)
            MOVE 0 TO SQL-SQINDV(14)
            MOVE 0 TO SQL-SQINDS(14)
            MOVE 0 TO SQL-SQHARM(14)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|XVŽÒ IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
                SQL-SQHSTV(15)
            MOVE 8 TO SQL-SQHSTL(15)
            MOVE 0 TO SQL-SQHSTS(15)
            MOVE 0 TO SQL-SQINDV(15)
            MOVE 0 TO SQL-SQINDS(15)
            MOVE 0 TO SQL-SQHARM(15)
            CALL "SQLADR" USING
                ‚c‚T‚P‚P|“ü—Í’S“–ŽÒƒR[ƒh IN
                •ÛŒ¯Ž–ŒÌ‘—‹à
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
004010*                                                                 
004020*----------------------------------------------------------------*
004030*    ’Ç‰Áˆ—‚ðŠm”F                                              *
004040*----------------------------------------------------------------*
004050     EVALUATE  SQLCODE                                            
004060        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004070*--<       ’Ç‰Á¬Œ÷ >                                             
004080           COMPUTE  ‚v|o—Í|Œ”  =  ‚v|o—Í|Œ”  +  1       
004090        WHEN   OTHER                                              
004100*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
004110           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004120           PERFORM  ƒGƒ‰[”»’èˆ—                                
004130     END-EVALUATE.                                                
004140*                                                                 
004150 o—Íˆ—|‚d‚w‚h‚s.                                              
004160     EXIT.                                                        
004170******************************************************************
004180*   •ÏŠ·ƒe[ƒuƒ‹ˆ—                                             *
004190******************************************************************
004200 •ÏŠ·ƒe[ƒuƒ‹ˆ—                     SECTION.                    
004210 •ÏŠ·ƒe[ƒuƒ‹ˆ—|‚r‚s‚`‚q‚s.                                    
004220     
      *    EXEC SQL                                                     
004230*          SELECT  Œ_–ñŽí—Þ                                       
004240*                 ,ÄƒŠ[ƒX‰ñ”                                   
004250*            INTO  :‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ                        
004260*                 ,:‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”         		
004270*            FROM  IKOTBL002                                      
004280*           WHERE  Œ_–ñ‚m‚n = :‚k‚s‚q‚g‚i‚j|Œ_–ñ‚m‚n             
004290*             AND  ÄƒŠ[ƒXƒR[ƒh = :‚k‚s‚q‚g‚i‚j|ÄƒŠ[ƒXƒR[ƒh 
004300*             AND  ‹ŒÂŒ Š¨’èˆ—ƒR[ƒh =                         
004310*                                  :‚k‚s‚q‚g‚i‚j|Š¨’èˆ—ƒR[ƒh  
004320*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 228 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|Œ_–ñ‚m‚n
               SQL-SQHSTV(3)
           MOVE 9 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚g‚i‚j|Š¨’èˆ—ƒR[ƒh
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
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
004330*----------------------------------------------------------------*
004340*   •ÏŠ·ƒe[ƒuƒ‹ˆ—‚ðŠm”F                                       *
004350*----------------------------------------------------------------*
004360     EVALUATE  SQLCODE                                            
004370        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004380*--<       Žæ“¾¬Œ÷ >                                             
004390           CONTINUE                                               
004400        WHEN   OTHER                                              
004410*--<       Žæ“¾ƒGƒ‰[ >                                           
004420           MOVE     -40               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004430           PERFORM  ƒGƒ‰[”»’èˆ—                                
004440     END-EVALUATE.                                                
004450 •ÏŠ·ƒe[ƒuƒ‹ˆ—|‚d‚w‚h‚s.                                      
004460     EXIT.                                                        
004470******************************************************************
004480*    ˜A”Ô•ÒWˆ—                                                *
004490******************************************************************
004500 ˜A”Ô•ÒWˆ—                         SECTION.                    
004510 ˜A”Ô•ÒWˆ—|‚r‚s‚`‚q‚s.                                        
004520        IF ‚v|ƒtƒ‰ƒO = "N"                                       
004530           MOVE "Y"                   TO ‚v|ƒtƒ‰ƒO               
004540	         MOVE  1                    TO  ‚c‚T‚P‚P|˜A”Ô	        
004550	      ELSE                                                      
004560           IF  ‚c‚T‚P‚P|Œ_–ñ”Ô† = ‚n‚k‚cŒ_–ñ”Ô†                
004570           AND ‚c‚T‚P‚P|Œ_–ñŽí—Þ = ‚n‚k‚cŒ_–ñŽí—Þ                
004580           AND ‚c‚T‚P‚P|•¨Œ”Ô† = ‚n‚k‚c•¨Œ”Ô†                
004590              COMPUTE  ‚c‚T‚P‚P|˜A”Ô  =  ‚c‚T‚P‚P|˜A”Ô  + 1     
004600           ELSE                                                   
004610              MOVE  1                 TO  ‚c‚T‚P‚P|˜A”Ô          
004620           END-IF				                        
004630        END-IF.                                                   
004640 ˜A”Ô•ÒWˆ—|‚d‚w‚h‚s.                                          
004650     EXIT.                                                        
004660******************************************************************
004670*    ‘—‹à•ÒW                                                    *
004680******************************************************************
004690 ‘—‹à•ÒW                             SECTION.                    
004700 ‘—‹à•ÒW|‚r‚s‚`‚q‚s.                                            
004710     EVALUATE ‚v|ƒJƒEƒ“ƒ^                                        
004720       WHEN  1  MOVE  1               TO  ‚c‚T‚P‚P|‘—‹à˜A”Ô      
004730                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚P                
004740                                      TO  ‚c‚T‚P‚P|‘—‹àæƒR[ƒh  
004750                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚P                    
004760                                      TO  ‚c‚T‚P‚P|‘—‹àæ–¼      
004770                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚P                      
004780                                      TO  ‚c‚T‚P‚P|‘—‹àŠz        
004790       WHEN  2  MOVE  2               TO  ‚c‚T‚P‚P|‘—‹à˜A”Ô      
004800                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚Q                
004810                                      TO  ‚c‚T‚P‚P|‘—‹àæƒR[ƒh  
004820                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚Q                    
004830                                      TO  ‚c‚T‚P‚P|‘—‹àæ–¼      
004840                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚Q                      
004850                                      TO  ‚c‚T‚P‚P|‘—‹àŠz        
004860       WHEN  3  MOVE  3               TO  ‚c‚T‚P‚P|‘—‹à˜A”Ô      
004870                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àæƒR[ƒh‚R                
004880                                      TO  ‚c‚T‚P‚P|‘—‹àæƒR[ƒh  
004890                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àæ–¼‚R                    
004900                                      TO  ‚c‚T‚P‚P|‘—‹àæ–¼      
004910                MOVE  ‚k‚s‚q‚g‚i‚j|‘—‹àŠz‚R                      
004920                                      TO  ‚c‚T‚P‚P|‘—‹àŠz        
004930     END-EVALUATE.                                                
004940 ‘—‹à•ÒW|‚d‚w‚h‚s.                                              
004950     EXIT.                                                        
004960******************************************************************
004970*    ƒJƒEƒ“ƒ^ˆ—                                                *
004980******************************************************************
004990 ƒJƒEƒ“ƒ^ˆ—                         SECTION.                    
005000 ƒJƒEƒ“ƒ^ˆ—|‚r‚s‚`‚q‚s.                                        
005010*--<    NEW TO OLD>                                               
005020     MOVE  ‚c‚T‚P‚P|Œ_–ñ”Ô†         TO  ‚n‚k‚cŒ_–ñ”Ô†.         
005030     MOVE  ‚c‚T‚P‚P|Œ_–ñŽí—Þ         TO  ‚n‚k‚cŒ_–ñŽí—Þ.         
005040     MOVE  ‚c‚T‚P‚P|•¨Œ”Ô†         TO  ‚n‚k‚c•¨Œ”Ô†.         
005050*--<    COUNT ‚Ì  COMPUTE >                                       
005060	   IF  ‚v|ƒJƒEƒ“ƒ^  NOT =  3                                   
005070        MOVE 1                        TO ‚v|ƒJƒEƒ“ƒ^             
005080     ELSE                                                         
005090	      COMPUTE  ‚v|ƒJƒEƒ“ƒ^ = ‚v|ƒJƒEƒ“ƒ^ + 1                  
005100	   END-IF.                                                      
005110 ƒJƒEƒ“ƒ^ˆ—|‚d‚w‚h‚s.                                          
005120     EXIT.                                                        
005130******************************************************************
005140*    I—¹ˆ—                                                    *
005150******************************************************************
005160 I—¹ˆ—                             SECTION.                    
005170 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
005180*                                                                 
005190     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
005200*                                                                 
005210     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
005220*                                                                 
005230     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
005240*                                                                 
005250*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
005260     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
005270*                                                                 
005280 I—¹ˆ—|‚d‚w‚h‚s.                                              
005290     EXIT.                                                        
005300******************************************************************
005310*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
005320******************************************************************
005330 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
005340 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
005350*                                                                 
005360*----------------------------------------------------------------*
005370*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
005380*----------------------------------------------------------------*
005390     INITIALIZE                       IF-CHOCO001.                
005400     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005410     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005420     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005430     MOVE  "LTRHJK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
005440     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005450     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
005460     MOVE  "•ÛŒ¯‹à¿‹“ü‹à“ÇžŒ”"                               
005470                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005480     CALL  CLOCO001                USING  IF-CHOCO001.            
005490*                                                                 
005500     INITIALIZE                       IF-CHOCO001.                
005510     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005520     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005530     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005540     MOVE  "D511HJS"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
005550     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005560     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
005570     MOVE  "•ÛŒ¯Ž–ŒÌ‘—‹ào—ÍŒ”"     TO                          
005580                                      ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW.     
005590     CALL  CLOCO001                USING  IF-CHOCO001.            
005600*                                                                 
005610*----------------------------------------------------------------*
005620*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
005630*----------------------------------------------------------------*
005640     INITIALIZE                       IF-CHOCO001.                
005650     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005660     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
005670     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
005680     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
005690     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
005700     CALL  CLOCO001                USING  IF-CHOCO001.            
005710*                                                                 
005720 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
005730     EXIT.                                                        
005740******************************************************************
005750*    ‚c‚aƒNƒ[ƒY                                                *
005760******************************************************************
005770 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
005780 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
005790*                                                                 
005800*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
005810     
      *    EXEC SQL                                                     
005820*       CLOSE  CUR1                                               
005830*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 263 TO SQL-OFFSET
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
005840*                                                                 
005850 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
005860     EXIT.                                                        
005870******************************************************************
005880*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
005890******************************************************************
005900 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
005910 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
005920*                                                                 
005930     
      *    EXEC  SQL                                                    
005940*       COMMIT  WORK  RELEASE                                     
005950*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 278 TO SQL-OFFSET
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
005960*                                                                 
005970     INITIALIZE                       IF-CHOCO001.                
005980     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
005990     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006000     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006010     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006020     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006030     CALL  CLOCO001                USING  IF-CHOCO001.            
006040*                                                                 
006050 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
006060     EXIT.                                                        
006070******************************************************************
006080*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
006090******************************************************************
006100 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
006110 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
006120*                                                                 
006130     
      *    EXEC  SQL                                                    
006140*       ROLLBACK WORK  RELEASE                                    
006150*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 293 TO SQL-OFFSET
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
006160*                                                                 
006170     INITIALIZE                       IF-CHOCO001.                
006180     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006190     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006200     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006210     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006220     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006230     CALL  CLOCO001                USING  IF-CHOCO001.            
006240*                                                                 
006250 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
006260     EXIT.                                                        
006270******************************************************************
006280*    ƒGƒ‰[ˆ—                                                  *
006290******************************************************************
006300 ƒGƒ‰[”»’èˆ—                       SECTION.                    
006310 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
006320*                                                                 
006330     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
006340     INITIALIZE                           IF-CHOCO001.            
006350*                                                                 
006360     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
006370        WHEN  -10                                                 
006380*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
006390           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006400           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006410           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006420           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
006430           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006440           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006450           CALL  CLOCO001          USING  IF-CHOCO001             
006460*                                                                 
006470        WHEN  -20                                                 
006480*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
006490           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006500           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006510           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006520           MOVE  "LTRHJK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006530           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
006540           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006550           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006560           CALL  CLOCO001          USING  IF-CHOCO001             
006570*                                                                 
006580        WHEN  -30                                                 
006590*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
006600           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
006610           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006620           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006630           MOVE  "LTRHJK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006640           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
006650           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006660           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006670           CALL  CLOCO001          USING  IF-CHOCO001             
006680        WHEN  -40                                                 
006690*--<       Œ_–ñŽí—Þ“™•ÏŠ·ƒe[ƒuƒ‹‚ÌŽæ“¾ >                         
006700           MOVE  "1"                  TO   ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê     
006710           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006720           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006730           MOVE  "LTRHJK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006740           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
006750           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006760           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006770           CALL  CLOCO001          USING  IF-CHOCO001             
006780        WHEN  -50                                                 
006790*--<       •ÛŒ¯Ž–ŒÌ‘—‹à’Ç‰ÁŽ¸”s >                                 
006800           MOVE  "1"                  TO   ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê     
006810           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
006820           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
006830           MOVE  "D511HJS"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
006840           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
006850           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
006860           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
006870           CALL  CLOCO001          USING  IF-CHOCO001             
006880*                                                                 
006890        WHEN  OTHER                                               
006900           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
006910     END-EVALUATE.                                                
006920*                                                                 
006930     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
006940        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
006950*                                                                 
006960        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
006970*                                                                 
006980*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
006990        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
007000*                                                                 
007010        EXIT  PROGRAM                                             
007020     END-IF.                                                      
007030*                                                                 
007040 ƒGƒ‰[”»’èˆ—|‚d‚w‚h‚s.                                        
007050     EXIT.                                                        
007060******************************************************************
007070*                  END OF PROGRAM                                *
007080******************************************************************
