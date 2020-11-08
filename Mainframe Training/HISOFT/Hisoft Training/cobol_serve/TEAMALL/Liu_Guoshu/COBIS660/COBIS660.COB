000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : ŠÇ——^MŒ_–ñˆÚsˆ—                   *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS660                               *
000050*      3. ˆ—ŠT—v      : ‡@ —^M(Šî–{E–¾×)‚ð‘SŒ‘ÎÛ‚Æ‚µ‚Ä    *
000060*                         —^M(–¾×)’PˆÊ‚ÉŠÇ——^MŒ_–ñ‚ðì¬‚·‚é *
000070*                                                                *
000080*                         ‡A ÂŒ ‚æ‚èÁ”ïÅ—¦‚ðŽæ“¾‚·‚éB        *
000090*                                                                *
000100*                         ‡B ”Û”F‚É“o˜^‚³‚ê‚½Œ_–ñ‚Å              *
000110*                            ‚ ‚é‚©”Û‚©‚ðŒ_–ñ“à—e‚æ‚èŽæ“¾‚·‚éB  *
000120*                                                                *
000130*      4. ì¬ŽÒ        : —«‘˜®                                 *
000140*      5. ì¬“ú        : 2005.04.04                             *
000150******************************************************************
000160*                                                                 
000170******************************************************************
000180*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000190******************************************************************
000200 IDENTIFICATION                       DIVISION.                   
000210*                                                                 
000220 PROGRAM-ID.                          COBIS660.                   
000230*                                                                 
000240******************************************************************
000250*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000260******************************************************************
000270 ENVIRONMENT                          DIVISION.                   
000280*                                                                 
000290******************************************************************
000300*    ‚h‚m‚o‚t‚s|‚n‚t‚s‚o‚t‚s      ‚r‚d‚b‚s‚h‚n‚m                *
000310******************************************************************
000320 INPUT-OUTPUT                         SECTION.                    
000330*                                                                 
000340 FILE-CONTROL.                                                    
000350     SELECT    o—Íƒtƒ@ƒCƒ‹           ASSIGN    TO     U11        
000360     FILE      STATUS     IS          ‚v|ƒtƒ@ƒCƒ‹ó‘Ô            
000370     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000380*                                                                 
000390******************************************************************
000400*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000410******************************************************************
000420 DATA                                 DIVISION.                   
000430*                                                                 
000440******************************************************************
000450*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000460******************************************************************
000470 FILE                                 SECTION.                    
000480*                                                                 
000490*----------------------------------------------------------------*
000500*    o—Íƒtƒ@ƒCƒ‹                                                *
000510*----------------------------------------------------------------*
000520 FD  o—Íƒtƒ@ƒCƒ‹                                                 
000530     LABEL     RECORD     IS          STANDARD                    
000540     BLOCK     CONTAINS   0           RECORDS.                    
000550*                                                                 
000560 01  o—Í|ƒŒƒR[ƒh.                                              
000570     COPY  CISUF660  REPLACING  ==()==  BY  ==o—Í|==.           
000580*                                                                 
000590******************************************************************
000600*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000610******************************************************************
000620 WORKING-STORAGE                      SECTION.                    
000630*                                                                 
000640*----------------------------------------------------------------*
000650*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000660*----------------------------------------------------------------*
000670     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS660.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(90) VALUE "select VŽæˆøæƒR[ƒh   into :b1 
      -    " from IKOTBL001 where (ŽæˆøæƒR[ƒh=:b2 and –Ú“I‚b‚c='2')".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(101) VALUE "select max(ÄƒŠ[ƒX‰ñ”)   into 
      -    ":b1  from IKOTBL002 where (Œ_–ñ‚m‚n=:b2 and ‹ŒÂŒ Š¨’èˆ—ƒR
      -    "[ƒh=:b3)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(120) VALUE "select min(Œ_–ñŽí—Þ)   into :b1 
      -     " from IKOTBL002 where ((Œ_–ñ‚m‚n=:b2 and ‹ŒÂŒ Š¨’èˆ—ƒR[
      -    "ƒh=:b3) and ÄƒŠ[ƒX‰ñ”=:b4)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(136) VALUE "select ŽåŒ_–ñ‹æ•ª   into :b1  fr
      -    "om IKOTBL002 where (((Œ_–ñ‚m‚n=:b2 and ‹ŒÂŒ Š¨’èˆ—ƒR[ƒh=
      -    ":b3) and Œ_–ñŽí—Þ=:b4) and ÄƒŠ[ƒX‰ñ”=:b5)".

       01  SQ0006 GLOBAL.
           02  FILLER PIC X(105) VALUE "select Ž}”Ô   into :b1  from IKO
      -    "TBL001 where ((ŽæˆøæƒR[ƒh=:b2 and –Ú“I‚b‚c='2') and VŽæˆø
      -    "æƒR[ƒh=:b3)".

       01  SQ0007 GLOBAL.
           02  FILLER PIC X(100) VALUE "select Œ_–ñŒ–¼  ,”Û”F‹æ•ª   int
      -     "o :b1,:b2  from D31KYK_TBL where (Œ_–ñ”Ô†=:b3 and ÄƒŠ[ƒX
      -    "‰ñ”=:b4)".

       01  SQ0008 GLOBAL.
           02  FILLER PIC X(110) VALUE "select ÅVÁ”ïÅ‹æ•ª   into :b1
      -    "  from D32SAK_TBL where ((Œ_–ñ”Ô†=:b2 and ÄƒŠ[ƒX‰ñ”=:b3)
      -    " and Œ_–ñŽí—Þ=:b4)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +288069.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +39.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 39 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 39 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE  "select NVL(YOSHINKIHON.ŠÇ——^M
      -    "æƒR[ƒh,'00000000')  ,YOSHINMEISAI.Œ_–ñ‚m‚n  ,YOSHINMEISAI.
      -    "Š¨’èƒR[ƒh  ,YOSHINMEISAI.Ž–‹ÆŠƒR[ƒh  ,YOSHINMEISAI.Ž–ŒÌ“ú
      -    "  ,YOSHIN".

           02  FILLER PIC X(160) VALUE  "MEISAI.Œ_–ñ“ú  ,YOSHINMEISAI.ŒŸ
      -    "Žû“ú  ,YOSHINMEISAI.–ž—¹“ú  ,YOSHINMEISAI.“–ÂŒ Žc  ,YOSHINM
      -    "EISAI.‘Ý•t‹à•ÊŒû  ,YOSHINMEISAI.”ñ‰Ò“®Ž‘ŽY  ,YOSHINMEISAI.’™
      -    "‘ •i  ,YO".

           02  FILLER PIC X(160) VALUE "SHINMEISAI.M—p•ÛŒ¯•t•Û‹æ•ª  ,YO
      -    "SHINMEISAI.M—p•ÛŒ¯‹ž  ,YOSHINMEISAI.Œ_–ñ‹àŠz  ,YOSHINMEIS
      -     "AI.“ü‹à“ú  ,YOSHINMEISAI.ŠJŽn‰ñ”  ,YOSHINMEISAI.–¾×Žx•¥‰ñ
      -    "”  ,YOSH".

           02  FILLER PIC X(160) VALUE "INMEISAI.ŒvŽZ•ûŽ®  ,YOSHINMEISAI
      -     ".¿‹ƒTƒCƒNƒ‹  ,YOSHINMEISAI.‰„‘ØŠJŽn“ú  ,YOSHINMEISAI.Ž•”²
      -    "‚¯ƒtƒ‰ƒO‚P  ,YOSHINMEISAI.Ž•”²‚¯ƒtƒ‰ƒO‚Q  ,YOSHINMEISAI.Žc‰¿
      -    "Šz  ,YOSH".

           02  FILLER PIC X(160) VALUE "INMEISAI.ŒŽŠ„‚k—¿  ,YOSHINMEISAI
      -     ".ƒ„ƒNƒxƒ“‹æ•ª  ,YOSHINMEISAI.Ž–ŒÌÂŒ Žc  ,YOSHINMEISAI.Ž–ŒÌ
      -    "Œ³–{Žc  ,YOSHINMEISAI.“–Œ³–{Žc  ,YOSHINMEISAI.–¢ŽûŒ³–{  ,YOS
      -    "HINMEISAI".

           02  FILLER PIC X(159) VALUE  ".–¢Žû—˜‘§  ,YOSHINMEISAI.–¢’¥Žû
      -    "‹à  ,YOSHINMEISAI.‚a–¢’¥Žû‹à  ,YOSHINMEISAI.”„‹p‹àŠz  ,YOSHI
      -    "NMEISAI.ŒÅ’è—˜—¦  ,YOSHINMEISAI.‹à—˜•Ï“®‹æ•ª  ,YOSHINMEISAI.
      -     "ƒXƒvƒŒƒb".

           02  FILLER PIC X(159) VALUE "ƒh  ,YOSHINMEISAI.˜A“®‹à—˜‹æ•ª  
      -    ",NVL(YOSHINKIHON.‰ð–ñ‹æ•ª,' ')   from YOSHINMEISAI ,YOSHINKI
      -     "HON where (((YOSHINMEISAI.ŠÇ——^MæƒR[ƒh=YOSHINKIHON.ŠÇ—
      -    "—^MæƒR".

           02  FILLER PIC X(160) VALUE  "[ƒh(+) and YOSHINMEISAI.ŠÇ——^
      -     "M‹æ•ª=YOSHINKIHON.ŠÇ——^M‹æ•ª(+)) and YOSHINMEISAI.Ž©“®—^
      -    "M‹æ•ª=YOSHINKIHON.Ž©“®—^M‹æ•ª(+)) and YOSHINMEISAI.Ž–ŒÌ“ú=
      -    "YOSHINKIHO".

           02  FILLER PIC X(23) VALUE "N.Ž–ŒÌ“ú(+))           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +269.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +273.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1301.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +355.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +418.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +39.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +253.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +90.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +525.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +276.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +848.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +303.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +120.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +877.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +334.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +136.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +908.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +369.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +105.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +939.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +396.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +100.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +968.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +427.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +110.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +1000.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +458.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +1130.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000680*                                                                 
000690 01  ‚v‚r|ƒzƒXƒg•Ï”.                                            
000700     03  ‚v‚r|ŠÇ——^MæƒR[ƒh       PIC  X(08)  VALUE  SPACE.   
000710     03  ‚v‚r|VŽæˆøæƒR[ƒh         PIC  X(07)  VALUE  SPACE.   
000720     03  ‚v‚r|ÄƒŠ[ƒX‰ñ”           PIC  9(02)  VALUE  ZERO.    
000730     03  ‚v‚r|Œ_–ñŽí—Þ               PIC  X(03)  VALUE  SPACE.   
000740*                                                                 
000750*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000760     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000770*                                                                 
000780*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000790     
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
000800*                                                                 
000810*--< —^M(Šî–{) >                                                 
000820     
      *    EXEC  SQL  INCLUDE  YOSHINKIHON.CBL       END-EXEC.
000830*                                                                 
000840*--< —^M(–¾×) >                                                 
000010************************************************
000020* —^M(Šî–{)(YOSHINKIHON)
000030************************************************
000040 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^MæƒR[ƒh  PIC  X(008).
000050 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^M‹æ•ª  PIC  X(001).
000060 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|Ž©“®—^M‹æ•ª  PIC  X(001).
000070 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|Ž–ŒÌ“ú  PIC  X(008).
000080 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|‰ð–ñ‹æ•ª  PIC  X(001).
000090 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^Mæ–¼  PIC  X(080).
000100 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|—L“ÁŠ¨Ï—§  PIC S9(013) COMP-3.
000110 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|–³“ÁŠ¨Ï—§  PIC S9(013) COMP-3.
000120 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|‚w‚x‚y‹æ•ª  PIC  X(001).
000130 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|•¶Œ¾‚P  PIC  X(112).
000140 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|•¶Œ¾‚Q  PIC  X(112).
000150 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|•¶Œ¾‚R  PIC  X(112).
000160 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|•¶Œ¾‚S  PIC  X(112).
000170 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|•¶Œ¾‚T  PIC  X(112).
000180 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|•¶Œ¾‚U  PIC  X(112).
000190 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|’S•Û‚P  PIC  X(010).
000200 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|’S•Û‚Q  PIC  X(010).
000210 01  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|’S•Û‚R  PIC  X(010).
000850     
      *    EXEC  SQL  INCLUDE  YOSHINMEISAI.CBL      END-EXEC.
000860*                                                                 
000870*--< Œ_–ñ“à—e >                                                   
000010************************************************
000020* —^M(–¾×)(YOSHINMEISAI)
000030************************************************
000040 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŠÇ——^MæƒR[ƒh  PIC  X(008).
000050 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŠÇ——^M‹æ•ª  PIC  X(001).
000060 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž©“®—^M‹æ•ª  PIC  X(001).
000070 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌ“ú  PIC  X(008).
000080 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n  PIC  X(009).
000090 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh  PIC  X(002).
000100 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–‹ÆŠƒR[ƒh  PIC  X(004).
000110 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚P  PIC  X(002).
000120 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚Q  PIC  X(002).
000130 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|•¨Œ–¼  PIC  X(060).
000140 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ“ú  PIC  X(008).
000150 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŸŽû“ú  PIC  X(008).
000160 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–ž—¹“ú  PIC  X(008).
000170 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‰„‘ØŠJŽn“ú  PIC  X(008).
000180 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‘Ý•t‹à•ÊŒû  PIC S9(013) COMP-3.
000190 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”ñ‰Ò“®Ž‘ŽY  PIC S9(013) COMP-3.
000200 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|’™‘ •i  PIC S9(013) COMP-3.
000210 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯•t•Û‹æ•ª  PIC  X(001).
000220 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯‹ž  PIC S9(013) 
000230                                                     COMP-3.
000240 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‹àŠz  PIC S9(013) COMP-3.
000250 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Žc‰¿Šz  PIC S9(013) COMP-3.
000260 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“ü‹à“ú  PIC  X(002).
000270 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŠJŽn‰ñ”  PIC  X(001).
000280 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¾×Žx•¥‰ñ”  PIC  X(003).
000290 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒvŽZ•ûŽ®  PIC  X(001).
000300 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|¿‹ƒTƒCƒNƒ‹  PIC  X(002).
000310 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŽŠ„‚k—¿  PIC S9(013) COMP-3.
000320 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒ„ƒNƒxƒ“‹æ•ª  PIC  X(001).
000330 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌÂŒ Žc  PIC S9(013) COMP-3.
000340 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌŒ³–{Žc  PIC S9(013) COMP-3.
000350 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc  PIC S9(013) COMP-3.
000360 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–Œ³–{Žc  PIC S9(013) COMP-3.
000370 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‚m“–ÂŒ Žc  PIC S9(013) COMP-3.
000380 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‚m“–Œ³–{Žc  PIC S9(013) COMP-3.
000390 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢ŽûŒ³–{  PIC S9(013) COMP-3.
000400 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢Žû—˜‘§  PIC S9(013) COMP-3.
000410 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢’¥Žû‹à  PIC S9(013) COMP-3.
000420 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‚a–¢’¥Žû‹à  PIC S9(013) COMP-3.
000430 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”„‹p‹àŠz  PIC S9(013) COMP-3.
000440 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|XV“ú•t  PIC  X(008).
000450 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒÅ’è—˜—¦  PIC S9(003)V9(8) 
000460                                                    COMP-3.
000470 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‹à—˜•Ï“®‹æ•ª  PIC  X(001).
000480 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒXƒvƒŒƒbƒh  PIC S9(003)V9(8) 
000490                                                    COMP-3.
000500 01  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|˜A“®‹à—˜‹æ•ª  PIC  X(001).
000880     
      *    EXEC  SQL  INCLUDE  D31KYK.CBL            END-EXEC.
000890*                                                                 
000900*--< ÂŒ  >                                                       
      *****************************************************************
      *   Œ_–ñ“à—e(D31KYK_TBL)
      *****************************************************************
       01  Œ_–ñ“à—e.
           03  ‚c‚R‚P|Œ_–ñ”Ô†      PIC  X(010).
           03  ‚c‚R‚P|ÄƒŠ[ƒX‰ñ”  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ©Ï”Ô†      PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ©Ï”Ô†Ž}”Ô  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽæˆøæƒR[ƒh  PIC  X(009).
           03  ‚c‚R‚P|âg‹cŒˆÙ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘Ý•tŽÀs—\’è“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¬–ñ”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|ˆø“n”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|Œ_–ñŠJŽn“ú    PIC  X(008).
           03  ‚c‚R‚P|Œ_–ñI—¹“ú    PIC  X(008).
           03  ‚c‚R‚P|ŠúŠÔ          PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ_–ñŒ–¼      PIC  X(060).
           03  ‚c‚R‚P|ƒGƒ“ƒhƒ†[ƒUƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚R‚P|Œ_–ñ‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|Ð‰îƒ‹[ƒg    PIC  X(001).
           03  ‚c‚R‚P|’S“–•”‰ÛƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚R‚P|’S“–ŽÒƒR[ƒh  PIC  X(008).
           03  ‚c‚R‚P|•Ï‘¥•¥        PIC  X(001).
           03  ‚c‚R‚P|ŒŽŠz—¿‹à      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ_–ñ‘Šz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿‹à‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|M—p•ÛŒ¯‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|’S•Û‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‹¦’²‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñæƒR[ƒh  PIC  X(005).
           03  ‚c‚R‚P|ŽåŠ²Ž–æƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚R‚P|—˜‰ñ‚è        PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒ†[ƒU—˜‰ñ‚è  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|’·ƒvƒ‰‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽÐ“à‹à—˜      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|¿‹æƒR[ƒh  PIC  X(005).
           03  ‚c‚R‚P|¿‹‘ì¬‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|¿‹Œ–¼      PIC  X(060).
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽû•û–@
                                     PIC  X(001).
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽû“ú  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽû‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|U‘ÖŠJŽn”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|‘O•¥‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|“ª‹à‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚P
                                     PIC  X(080).
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚Q
                                     PIC  X(080).
           03  ‚c‚R‚P|ó‘Ôƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ˆÄ“à‘—•t‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ˆÄ“à‰ñ“š‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ŽåŒ_–ñ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|‘k‹yˆ—‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‘k‹yˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ŒŸŽûƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ŒŸŽûŽæÁ“ú    PIC  X(008).
           03  ‚c‚R‚P|ŒŸŽûŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ŒŸŽûˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ŒŸŽûŽæÁ”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|“–‰‰ñŽûŠúŠÔ  PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÅV‰ñŽûŠúŠÔ  PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÅI•¨Œ”Ô†  PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒXƒf[ƒ^ì¬‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽ©“®ì¬”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ƒŠ[ƒXŠ„•Š‘O•¥ŒŽ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|“ª‹à¿‹‘ì¬ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‘O•¥¿‹‘ì¬ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|“ª‹à¿‹Ïƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‘O•¥¿‹Ïƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñ”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘‰ñŽû‰ñ”    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|•¨ŒŠm”F      PIC  X(001).
           03  ‚c‚R‚P|‚Ü‚é‚ß’PˆÊ    PIC  X(001).
           03  ‚c‚R‚P|“à–óˆóü•û–@  PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñŠúŠÔ‰ñ”ˆóü—L–³
                                     PIC  X(001).
           03  ‚c‚R‚P|¬–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¬–ñŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¬–ñˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|¬–ñŽæÁ”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ÄƒŠ[ƒX¿‹ŠÔŠu
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒX‰ñŽûŠÔŠu
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚P|XVŽÒ        PIC  X(008).
           03  ‚c‚R‚P|“–‰—˜‰ñ‚è    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰‘e—˜Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰ŒŽŠz—¿‹à  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰Œ_–ñ‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽû“ú    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽûŠÔŠu  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹ŒŽæˆø”Ô†    PIC  X(010).
           03  ‚c‚R‚P|‰ð–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|‰ð–ñˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|‰ð–ñŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|‰ð–ñŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|–ž—¹—\–ñƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|–ž—¹—\–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|–ž—¹ˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ÄƒŠ[ƒXƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ÄƒŠ[ƒXˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|³ŒpƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|³Œpˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|³ŒpŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|³ŒpŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|”„‹pƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|”„‹pˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ðŒ•ÏXƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ðŒ•ÏXˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|ŠÇ—ÂŒ ƒŒƒxƒ‹
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ—¿—¦      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘e—˜Šz        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰Œ_–ñ—¿—¦  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽû•û–@  PIC  X(001).
           03  ‚c‚R‚P|¿‹ƒTƒCƒg    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|¿‹ŠÔŠu      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|¿‹Šî€ŒŽ    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ_–ñŽæˆø‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|Ó”C‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‘ŠŽE‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|’•¶‘o—Í‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ˆÄ“à’ •[‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽ©“®Œp‘±‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ‘Ž®      PIC  X(001).
           03  ‚c‚R‚P|•¨Œ•ÛŠÇêŠ  PIC  X(001).
           03  ‚c‚R‚P|¿‹æ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|•s“®ŽY’S•ÛÝ’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|—L‰¿ØŒ”’S•ÛÝ’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‚»‚Ì‘¼’S•ÛÝ’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|•ÛØl—L–³‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|–¢ŽûŽc‚‘ÎÛŠOƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÛŒ¯‰ïŽÐ‹æ•ª  PIC  X(004).
           03  ‚c‚R‚P|“®‘•ÛŒ¯—¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“®‘•t•ÛŠJŽn”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚R‚P|¿‹ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚R‚P|–â‡‚¹”Ô†    PIC  X(010).
           03  ‚c‚R‚P|ÄƒŠ[ƒX‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‹ŒŒ_–ñ”Ô†    PIC  X(010).
           03  ‚c‚R‚P|w“ü‘I‘ðŒ •tƒŠ[ƒX‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿‘—L–³‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|³Œp\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|\¿˜A”Ô      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒŠƒXƒPƒtƒ‰ƒO  PIC  X(001).
           03  ‚c‚R‚P|‘e—˜‰vŠz|•\  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‚¨Žx•¥–¾×‘ì¬Ïƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‚¨Žx•¥–¾×‘—v”Û
                                     PIC  X(001).
           03  ‚c‚R‚P|\¿”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘ÎÛŒ³–{Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|Á”ïÅ—¦‹æ•ª  PIC  X(002).
           03  ‚c‚R‚P|\¿‘o—Í”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿‘o—Í”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¿‹Šî€      PIC  X(001).
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX‰ñŽû“ú
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ï•ÛŽç—¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ï”Ì‘£”ï    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ïM—p•ÛŒ¯  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ï‚»‚Ì‘¼    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|’¥‹Š®—¹ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|’¥‹Š®—¹ŽæÁƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|’•¶‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‚»‚Ì‘¼”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚R
                                     PIC  X(080).
           03  ‚c‚R‚P|ŽÐ“à‹à—˜‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|ŽG”ï’²®Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒI[ƒvƒ“ƒuƒ‰ƒCƒ“ƒh‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|‹¦’²‰ñŽû‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|’P”N“xŒ_–ñ    PIC  X(001).
           03  ‚c‚R‚P|ƒoƒbƒNŽæˆø    PIC  X(001).
           03  ‚c‚R‚P|”Û”F‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‘O“n‹à‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|”ñ‰ÛÅ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|•ïŠ‡‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|ŠCŠOÝ’u‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|•¨ŒƒRƒƒ“ƒg  PIC  X(040).
           03  ‚c‚R‚P|‰ð–ñ‹àŒvŽZ•û–@
                                     PIC  X(001).
           03  ‚c‚R‚P|”À“ü—\’è“ú    PIC  X(008).
           03  ‚c‚R‚P|\¿Œ_–ñŠz‰ÁŽZƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Ð‰îæŽæˆøæ  PIC  X(009).
           03  ‚c‚R‚P|Ð‰îæŒ_–ñæ  PIC  X(005).
           03  ‚c‚R‚P|Ð‰îæ‚a‚s‚l  PIC  X(004).
           03  ‚c‚R‚P|Ð‰îæ—»“X    PIC  X(004).
           03  ‚c‚R‚P|Ð‰îæ‹âs    PIC  X(004).
           03  ‚c‚R‚P|Ð‰îæŽx“X    PIC  X(003).
           03  ‚c‚R‚P|¿‹“ú        PIC  X(002).
           03  ‚c‚R‚P|Œ_–ñŽæÁ——R‚P
                                     PIC  X(080).
           03  ‚c‚R‚P|Œ_–ñŽæÁ——R‚Q
                                     PIC  X(080).
           03  ‚c‚R‚P|Œ_–ñŽæÁ\¿‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŒˆÙ“o˜^\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ“o˜^\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŒŸŽû“o˜^\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñŽæÁ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŒŸŽûŽæÁ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÏX\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÏXƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|•ÏX”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|Â–±‹¦’²ƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚R‚P|ˆê”Ê‘åŒû‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|§“xƒŠ[ƒX    PIC  X(001).
           03  ‚c‚R‚P|Šî–{—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽÀŽ¿—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘e—˜Šz‘Šz•ª  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŽÐ“à‹à—˜  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŠî–{—˜‰ñ‚è
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŽÀŽ¿—˜‰ñ‚è
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”Ê‘e—˜Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŠî–{—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŽÀŽ¿—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”Ê‘e—˜ŠzŽ©ŽÐ•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹­§•Û‘¶ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚P|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚R‚P|“]ƒŠ[ƒX’ñŒgæƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚R‚P|ˆ´ùŽè”—¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹Æ–±‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|”ƒ–ß‹`–±‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‘ã—‰ñŽû      PIC  X(001).
           03  ‚c‚R‚P|”ƒŽæ‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹à—˜•Ï“®‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|˜A“®‹à—˜‹æ•ª  PIC  X(002).
           03  ‚c‚R‚P|Š„ˆø—¦        PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘Ý•t‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘Ý•t‹à—˜      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|Ž‘‹àŽg“r‹æ•ª  PIC  X(002).
           03  ‚c‚R‚P|Ž‘‹àŽg“r•¶Œ¾  PIC  X(080).
           03  ‚c‚R‚P|Žx•¥ˆÏ‘õŽæˆøŒ`‘Ô
                                     PIC  X(001).
           03  ‚c‚R‚P|—ZŽ‘•û–@      PIC  X(001).
           03  ‚c‚R‚P|•ÔÏðŒ      PIC  X(001).
           03  ‚c‚R‚P|ƒŠ[ƒXŽí—Þ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Ž‘ŽY‰È–Ú‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|d—v«Šî€‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|‘O“n‹à‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒgƒŠƒvƒ‹ƒIƒvƒVƒ‡ƒ“•ûŽ®
                                     PIC  X(001).
           03  ‚c‚R‚P|ˆø‡’†Ž~‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|“à—e•ÏX\¿˜A”Ô
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|³Œp•ªŠ„Ží—Þ  PIC  X(001).
           03  ‚c‚R‚P|³Œp‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ðŒ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‘æ‚P‰ñ–Ú‰ñŽû“ú•¶Œ¾
                                     PIC  X(040).
           03  ‚c‚R‚P|‘æ‚Q‰ñ–ÚˆÈ~‰ñŽû“ú•¶Œ¾
                                     PIC  X(040).
           03  ‚c‚R‚P|÷“nðŒ•tƒŠ[ƒX‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Žc‰¿‰ñŽûƒTƒCƒg
                                     PIC S9(002)V9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÂŒ ”ƒŽæ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|Žx•¥Šî€ŒŽ    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘¹ŠQ”…ž‹à•¶Œ¾
                                     PIC  X(080).
           03  ‚c‚R‚P|—¬“®‰»”Ô†    PIC  X(006).
           03  ‚c‚R‚P|—¬“®‰»æ      PIC  X(007).
           03  ‚c‚R‚P|M‘õæÝ’è“ú  PIC  X(008).
           03  ‚c‚R‚P|M‘õI—¹“ú    PIC  X(008).
           03  ‚c‚R‚P|ÂŒ —¬“®‰»‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|·“ü—\–ñ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|ÂŒ ”ƒŽæ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘ŠŽEð€‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|÷“n‹ÖŽ~“Á–ñ  PIC  X(001).
           03  ‚c‚R‚P|æ•ûŒ_–ñ”Ô†  PIC  X(016).
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿•ªŽq
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿•ª•ê
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚S
                                     PIC  X(080).
           03  ‚c‚R‚P|V‹Kæ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|e–§æ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|à–±•”‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”Ê‘O“n‹à‹à—˜
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŒˆÙƒ‰ƒ“ƒN    PIC  X(001).
           03  ‚c‚R‚P|‚¨—çó”­sƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ˆÚsƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿ðŒ‹æ•ª
                                     PIC  X(002).
           03  ‚c‚R‚P|–â‚¢‡‚í‚¹’S“–•”“XƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚R‚P|–â‚¢‡‚í‚¹’S“–ŽÒ–¼
                                     PIC  X(020).
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿Žx•¥—\’è“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|–ž—¹’Ê’m‘‰ñ“šŠúŒÀ
                                     PIC  X(008).
           03  ‚c‚R‚P|\¿‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|“à—e\¿‘ˆóü‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|“à—e\¿‘ˆóüÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñŒ–¼Ž©“®“o˜^‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÔÏŒ´Ž‘      PIC  X(080).
           03  ‚c‚R‚P|”Û”Fˆ—‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñ——R      PIC  X(002).
           03  ‚c‚R‚P|—¬“®‰»æŒ_–ñæƒR[ƒh
                                     PIC  X(005).
000910     
      *    EXEC  SQL  INCLUDE  D32SAK.CBL            END-EXEC.
000920*                                                                 
000930*--< •ÏŠ·ƒe[ƒuƒ‹ >                                               
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
000940     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
000950*                                                                 
000960*--< Œ_–ñŽí—Þ“™•ÏŠ·ƒe[ƒuƒ‹ >                                     
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
000970     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
000980*                                                                 
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
000990     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
001000*                                                                 
001010*----------------------------------------------------------------*
001020*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
001030*----------------------------------------------------------------*
001040 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
001050*--< ƒGƒ‰[”»’è—p >                                               
001060     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
001070*                                                                 
001080*--< Œ”ƒGƒŠƒA >                                                 
001090     03  Œ”ƒGƒŠƒA.                                              
001100         05  ‚v|“ü—Í‚P|Œ”         PIC  9(09).                 
001110         05  ‚v|“ü—Í‚Q|Œ”         PIC  9(09).                 
001120         05  ‚v|“ü—Í‚R|Œ”         PIC  9(09).                 
001130         05  ‚v|“ü—Í‚S|Œ”         PIC  9(09).                 
001140         05  ‚v|o—Í|Œ”           PIC  9(09).                 
001150*                                                                 
001160*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001170     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
001180         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
001190         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
001200*                                                                 
001210*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
001220     03  ‚v|ƒtƒ@ƒCƒ‹ó‘Ô             PIC  X(02).                 
001230*                                                                 
001240*--< •Ï”’è‹` >                                                   
001250     03  ‚v|•Ï”’è‹`.                                            
001260         05  ‚v|M—p•ÛŒ¯•t•Û‹æ•ª     PIC  X(01).                 
001270         05  ‚v|ŒvŽZ•ûŽ®             PIC  X(01).                 
001280         05  ‚v|Á”ïÅ—¦             PIC  9V99.                  
001290         05  ‚v|”»’è                 PIC  X(01).                 
001300*                                                                 
001310*--< ‹¤’Êî•ñ’è‹` >                                               
001320 01  ‚v|‹¤’Êî•ñ.                                                
001330     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
001340         05  ‚v|¢‹I                 PIC  X(02) VALUE "20".      
001350         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
001360     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
001370     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
001380*                                                                 
001390*----------------------------------------------------------------*
001400*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001410*----------------------------------------------------------------*
001420 01  CALL-AREA.                                                   
001430*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001440     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001450     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001460*                                                                 
001470*----------------------------------------------------------------*
001480*    ‚b‚n‚o‚x—Ìˆæ                                                *
001490*----------------------------------------------------------------*
001500*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001510 01  IF-CHOCO001.                                                 
001520     COPY  CHOCO001  REPLACING   ==()==  BY  ==‹¤‚P|==.          
001530*                                                                 
001540*----------------------------------------------------------------*
001550*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001560*----------------------------------------------------------------*
001570 01  PARA-AREA.                                                   
001580     COPY CPBCO001.                                               
001590*                                                                 
001600*----------------------------------------------------------------*
001610*    ƒŒƒR[ƒh‰Šú‰»—Ìˆæ                                          *
001620*----------------------------------------------------------------*
001630 01  ‰Šú‰»ƒŒƒR[ƒh.                                              
001640     COPY  CISUF660   REPLACING  ==()==  BY  ==‰Šú‰»|==.        
001650*                                                                 
001660*----------------------------------------------------------------*
001670*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001680*----------------------------------------------------------------*
001690 CONSTANT                             SECTION.                    
001700 01  ’è”—Ìˆæ.                                                    
001710     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS660".
001720     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001730                                    VALUE  "ŠÇ——^MŒ_–ñˆÚsˆ—".
001740     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001750     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001760     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001770     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001780*                                                                 
001790******************************************************************
001800*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001810******************************************************************
001820 PROCEDURE                            DIVISION.                   
001830*                                                                 
001840     PERFORM  ‰Šúˆ—.                                           
001850*                                                                 
001860     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001870*                                                                 
001880     PERFORM  I—¹ˆ—.                                           
001890*                                                                 
001900     STOP     RUN.                                                
001910*                                                                 
001920******************************************************************
001930*    ‰Šúˆ—                                                    *
001940******************************************************************
001950 ‰Šúˆ—                             SECTION.                    
001960 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001970*                                                                 
001980*--< ŠJŽnƒƒbƒZ[ƒWo—Í >                                         
001990     PERFORM   ŠJŽnƒƒbƒZ[ƒWo—Í.                                
002000*                                                                 
002010*--< ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ— >                                       
002020     PERFORM   ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—.                              
002030*                                                                 
002040*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
002050     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
002060*                                                                 
002070*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
002080     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
002090*                                                                 
002100*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
002110     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
002120*                                                                 
002130*--< ƒVƒXƒeƒ€Žž‚ðŽæ“¾ >                                         
002140     PERFORM  ƒVƒXƒeƒ€Žž‚ðŽæ“¾.                                 
002150*                                                                 
002160*--< Œ‹‡ƒe[ƒuƒ‹“Çži‚PŒ–Új>                                  
002170     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çž.                                   
002180*                                                                 
002190 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002200     EXIT.                                                        
002210*                                                                 
002220******************************************************************
002230*    ŠJŽnƒƒbƒZ[ƒWo—Í                                          *
002240******************************************************************
002250 ŠJŽnƒƒbƒZ[ƒWo—Í                   SECTION.                    
002260 ŠJŽnƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
002270*                                                                 
002280     INITIALIZE                       IF-CHOCO001.                
002290     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
002300     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
002310     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
002320     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
002330     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
002340     CALL  CLOCO001                USING  IF-CHOCO001.            
002350*                                                                 
002360 ŠJŽnƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
002370     EXIT.                                                        
002380*                                                                 
002390******************************************************************
002400*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
002410******************************************************************
002420 ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                 SECTION.                    
002430 ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—|‚r‚s‚`‚q‚s.                                
002440*                                                                 
002450     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
002460     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
002470*                                                                 
002480     MOVE  SPACE                      TO  ‰Šú‰»ƒŒƒR[ƒh.         
002490     INITIALIZE                           ‰Šú‰»ƒŒƒR[ƒh.         
002500*                                                                 
002510 ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—|‚d‚w‚h‚s.                                  
002520     EXIT.                                                        
002530*                                                                 
002540******************************************************************
002550*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
002560******************************************************************
002570 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002580 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002590*                                                                 
002600*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002610     CALL  COBCO001                USING  PARA-AREA.              
002620*                                                                 
002630     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002640     MOVE  PARA-USERNAME              TO  USERNAME.               
002650     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002660*                                                                 
002670*--< ŠJŽnÚ‘± >                                                   
002680     IF    DB-STRING  =  SPACE                                    
002690        
      *       EXEC SQL                                                  
002700*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002710*       END-EXEC 
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
002720     ELSE                                                         
002730        
      *       EXEC SQL                                                  
002740*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002750*            USING  :DB-STRING                                    
002760*       END-EXEC 
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
002770     END-IF.                                                      
002780*                                                                 
002790*--< Ú‘±Šm”F >                                                   
002800     EVALUATE  SQLCODE                                            
002810*--<    Ú‘±³í >                                                
002820        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002830           CONTINUE                                               
002840*--<    Ú‘±ƒGƒ‰[ >                                              
002850        WHEN  OTHER                                               
002860           MOVE  -10                  TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002870           PERFORM  ƒGƒ‰[”»’èˆ—                                
002880     END-EVALUATE.                                                
002890*                                                                 
002900 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002910     EXIT.                                                        
002920*                                                                 
002930******************************************************************
002940*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                    *
002950******************************************************************
002960 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002970 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002980*                                                                 
002990*--< ƒJ[ƒ\ƒ‹’è‹` >                                               
003000     
      *    EXEC SQL                                                     
003010*       DECLARE CUR1  CURSOR FOR                                  
003020*          SELECT                                                 
003030*                  NVL(YOSHINKIHON.ŠÇ——^MæƒR[ƒh,'00000000')   
003040*                 ,YOSHINMEISAI.Œ_–ñ‚m‚n                          
003050*                 ,YOSHINMEISAI.Š¨’èƒR[ƒh                        
003060*                 ,YOSHINMEISAI.Ž–‹ÆŠƒR[ƒh                      
003070*                 ,YOSHINMEISAI.Ž–ŒÌ“ú                            
003080*                 ,YOSHINMEISAI.Œ_–ñ“ú                            
003090*                 ,YOSHINMEISAI.ŒŸŽû“ú                            
003100*                 ,YOSHINMEISAI.–ž—¹“ú                            
003110*                 ,YOSHINMEISAI.“–ÂŒ Žc                          
003120*                 ,YOSHINMEISAI.‘Ý•t‹à•ÊŒû                        
003130*                 ,YOSHINMEISAI.”ñ‰Ò“®Ž‘ŽY                        
003140*                 ,YOSHINMEISAI.’™‘ •i                            
003150*                 ,YOSHINMEISAI.M—p•ÛŒ¯•t•Û‹æ•ª                  
003160*                 ,YOSHINMEISAI.M—p•ÛŒ¯‹ž                      
003170*                 ,YOSHINMEISAI.Œ_–ñ‹àŠz                          
003180*                 ,YOSHINMEISAI.“ü‹à“ú                            
003190*                 ,YOSHINMEISAI.ŠJŽn‰ñ”                          
003200*                 ,YOSHINMEISAI.–¾×Žx•¥‰ñ”                      
003210*                 ,YOSHINMEISAI.ŒvŽZ•ûŽ®                          
003220*                 ,YOSHINMEISAI.¿‹ƒTƒCƒNƒ‹                      
003230*                 ,YOSHINMEISAI.‰„‘ØŠJŽn“ú                        
003240*                 ,YOSHINMEISAI.Ž•”²‚¯ƒtƒ‰ƒO‚P                    
003250*                 ,YOSHINMEISAI.Ž•”²‚¯ƒtƒ‰ƒO‚Q                    
003260*                 ,YOSHINMEISAI.Žc‰¿Šz                            
003270*                 ,YOSHINMEISAI.ŒŽŠ„‚k—¿                          
003280*                 ,YOSHINMEISAI.ƒ„ƒNƒxƒ“‹æ•ª                      
003290*                 ,YOSHINMEISAI.Ž–ŒÌÂŒ Žc                        
003300*                 ,YOSHINMEISAI.Ž–ŒÌŒ³–{Žc                        
003310*                 ,YOSHINMEISAI.“–Œ³–{Žc                          
003320*                 ,YOSHINMEISAI.–¢ŽûŒ³–{                          
003330*                 ,YOSHINMEISAI.–¢Žû—˜‘§                          
003340*                 ,YOSHINMEISAI.–¢’¥Žû‹à                          
003350*                 ,YOSHINMEISAI.‚a–¢’¥Žû‹à                        
003360*                 ,YOSHINMEISAI.”„‹p‹àŠz                          
003370*                 ,YOSHINMEISAI.ŒÅ’è—˜—¦                          
003380*                 ,YOSHINMEISAI.‹à—˜•Ï“®‹æ•ª                      
003390*                 ,YOSHINMEISAI.ƒXƒvƒŒƒbƒh                        
003400*                 ,YOSHINMEISAI.˜A“®‹à—˜‹æ•ª                      
003410*                 ,NVL(YOSHINKIHON.‰ð–ñ‹æ•ª,' ')                  
003420*            FROM  YOSHINMEISAI                                   
003430*                 ,YOSHINKIHON                                    
003440*           WHERE  YOSHINMEISAI.ŠÇ——^MæƒR[ƒh  =               
003450*                               YOSHINKIHON.ŠÇ——^MæƒR[ƒh (+)  
003460*             AND  YOSHINMEISAI.ŠÇ——^M‹æ•ª  =                   
003470*                               YOSHINKIHON.ŠÇ——^M‹æ•ª (+)      
003480*             AND  YOSHINMEISAI.Ž©“®—^M‹æ•ª  =                   
003490*                               YOSHINKIHON.Ž©“®—^M‹æ•ª (+)      
003500*             AND  YOSHINMEISAI.Ž–ŒÌ“ú  =                         
003510*                               YOSHINKIHON.Ž–ŒÌ“ú (+)            
003520*    END-EXEC.
003530*                                                                 
003540*--< ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ— >                                       
003550     
      *    EXEC  SQL                                                    
003560*       OPEN  CUR1                                                
003570*    END-EXEC.
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
003580*                                                                 
003590*--< ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F >                                       
003600     EVALUATE  SQLCODE                                            
003610*--<    ƒJ[ƒ\ƒ‹‚n‚o‚d‚m³í >                                    
003620        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003630           CONTINUE                                               
003640*--<    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                                  
003650        WHEN  OTHER                                               
003660           MOVE  -20                  TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003670           PERFORM  ƒGƒ‰[”»’èˆ—                                
003680     END-EVALUATE.                                                
003690*                                                                 
003700 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
003710     EXIT.                                                        
003720*                                                                 
003730******************************************************************
003740*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                            *
003750******************************************************************
003760 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
003770 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
003780*                                                                 
003790*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ ‚n‚o‚d‚m >                                  
003800     OPEN  OUTPUT  o—Íƒtƒ@ƒCƒ‹.                                  
003810*                                                                 
003820*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è >                                   
003830     EVALUATE  ‚v|ƒtƒ@ƒCƒ‹ó‘Ô                                   
003840*--<    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“³í >                                    
003850        WHEN  ZERO                                                
003860           CONTINUE                                               
003870*--<    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                                  
003880        WHEN  OTHER                                               
003890           MOVE  -30                  TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003900           PERFORM  ƒGƒ‰[”»’èˆ—                                
003910     END-EVALUATE.                                                
003920*                                                                 
003930 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
003940     EXIT.                                                        
003950*                                                                 
003960******************************************************************
003970*    ƒVƒXƒeƒ€Žž‚ðŽæ“¾                                          *
003980******************************************************************
003990 ƒVƒXƒeƒ€Žž‚ðŽæ“¾                   SECTION.                    
004000 ƒVƒXƒeƒ€Žž‚ðŽæ“¾|‚r‚s‚`‚q‚s.                                  
004010*                                                                 
004020*--< ƒVƒXƒeƒ€”NŒŽ“ú‚ðŽæ“¾ >                                       
004030     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
004040*                                                                 
004050*--< ƒVƒXƒeƒ€Žž‚ðŽæ“¾ >                                         
004060     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
004070*                                                                 
004080 ƒVƒXƒeƒ€Žž‚ðŽæ“¾|‚d‚w‚h‚s.                                    
004090     EXIT.                                                        
004100*                                                                 
004110******************************************************************
004120*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
004130******************************************************************
004140 Œ‹‡ƒe[ƒuƒ‹“Çž                     SECTION.                    
004150 Œ‹‡ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                                    
004160*                                                                 
004170*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
004180     
      *    EXEC SQL                                                     
004190*        FETCH  CUR1                                              
004200*         INTO   :‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^MæƒR[ƒh        
004210*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n              
004220*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh            
004230*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–‹ÆŠƒR[ƒh          
004240*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌ“ú                
004250*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ“ú                
004260*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŸŽû“ú                
004270*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–ž—¹“ú                
004280*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc              
004290*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‘Ý•t‹à•ÊŒû            
004300*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”ñ‰Ò“®Ž‘ŽY            
004310*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|’™‘ •i                
004320*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯•t•Û‹æ•ª      
004330*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯‹ž          
004340*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‹àŠz              
004350*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“ü‹à“ú                
004360*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŠJŽn‰ñ”              
004370*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¾×Žx•¥‰ñ”          
004380*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒvŽZ•ûŽ®              
004390*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|¿‹ƒTƒCƒNƒ‹          
004400*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‰„‘ØŠJŽn“ú            
004410*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚P        
004420*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚Q        
004430*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Žc‰¿Šz                
004440*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŽŠ„‚k—¿              
004450*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒ„ƒNƒxƒ“‹æ•ª          
004460*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌÂŒ Žc            
004470*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌŒ³–{Žc            
004480*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–Œ³–{Žc              
004490*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢ŽûŒ³–{              
004500*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢Žû—˜‘§              
004510*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢’¥Žû‹à              
004520*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‚a–¢’¥Žû‹à            
004530*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”„‹p‹àŠz              
004540*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒÅ’è—˜—¦              
004550*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‹à—˜•Ï“®‹æ•ª          
004560*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒXƒvƒŒƒbƒh            
004570*               ,:‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|˜A“®‹à—˜‹æ•ª          
004580*               ,:‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|‰ð–ñ‹æ•ª                
004590*    END-EXEC.
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
               ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^MæƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 8 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–‹ÆŠƒR[ƒh
               SQL-SQHSTV(4)
           MOVE 4 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌ“ú
               SQL-SQHSTV(5)
           MOVE 8 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ“ú
               SQL-SQHSTV(6)
           MOVE 8 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŸŽû“ú
               SQL-SQHSTV(7)
           MOVE 8 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–ž—¹“ú
               SQL-SQHSTV(8)
           MOVE 8 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‘Ý•t‹à•ÊŒû
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”ñ‰Ò“®Ž‘ŽY
               SQL-SQHSTV(11)
           MOVE 7 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|’™‘ •i
               SQL-SQHSTV(12)
           MOVE 7 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯•t•Û‹æ•ª
               SQL-SQHSTV(13)
           MOVE 1 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯‹ž
               SQL-SQHSTV(14)
           MOVE 7 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‹àŠz
               SQL-SQHSTV(15)
           MOVE 7 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“ü‹à“ú
               SQL-SQHSTV(16)
           MOVE 2 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŠJŽn‰ñ”
               SQL-SQHSTV(17)
           MOVE 1 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¾×Žx•¥‰ñ”
               SQL-SQHSTV(18)
           MOVE 3 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒvŽZ•ûŽ®
               SQL-SQHSTV(19)
           MOVE 1 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|¿‹ƒTƒCƒNƒ‹
               SQL-SQHSTV(20)
           MOVE 2 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‰„‘ØŠJŽn“ú
               SQL-SQHSTV(21)
           MOVE 8 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚P
               SQL-SQHSTV(22)
           MOVE 2 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚Q
               SQL-SQHSTV(23)
           MOVE 2 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Žc‰¿Šz
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŽŠ„‚k—¿
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒ„ƒNƒxƒ“‹æ•ª
               SQL-SQHSTV(26)
           MOVE 1 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌÂŒ Žc
               SQL-SQHSTV(27)
           MOVE 7 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌŒ³–{Žc
               SQL-SQHSTV(28)
           MOVE 7 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–Œ³–{Žc
               SQL-SQHSTV(29)
           MOVE 7 TO SQL-SQHSTL(29)
           MOVE 0 TO SQL-SQHSTS(29)
           MOVE 0 TO SQL-SQINDV(29)
           MOVE 0 TO SQL-SQINDS(29)
           MOVE 0 TO SQL-SQHARM(29)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢ŽûŒ³–{
               SQL-SQHSTV(30)
           MOVE 7 TO SQL-SQHSTL(30)
           MOVE 0 TO SQL-SQHSTS(30)
           MOVE 0 TO SQL-SQINDV(30)
           MOVE 0 TO SQL-SQINDS(30)
           MOVE 0 TO SQL-SQHARM(30)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢Žû—˜‘§
               SQL-SQHSTV(31)
           MOVE 7 TO SQL-SQHSTL(31)
           MOVE 0 TO SQL-SQHSTS(31)
           MOVE 0 TO SQL-SQINDV(31)
           MOVE 0 TO SQL-SQINDS(31)
           MOVE 0 TO SQL-SQHARM(31)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢’¥Žû‹à
               SQL-SQHSTV(32)
           MOVE 7 TO SQL-SQHSTL(32)
           MOVE 0 TO SQL-SQHSTS(32)
           MOVE 0 TO SQL-SQINDV(32)
           MOVE 0 TO SQL-SQINDS(32)
           MOVE 0 TO SQL-SQHARM(32)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‚a–¢’¥Žû‹à
               SQL-SQHSTV(33)
           MOVE 7 TO SQL-SQHSTL(33)
           MOVE 0 TO SQL-SQHSTS(33)
           MOVE 0 TO SQL-SQINDV(33)
           MOVE 0 TO SQL-SQINDS(33)
           MOVE 0 TO SQL-SQHARM(33)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”„‹p‹àŠz
               SQL-SQHSTV(34)
           MOVE 7 TO SQL-SQHSTL(34)
           MOVE 0 TO SQL-SQHSTS(34)
           MOVE 0 TO SQL-SQINDV(34)
           MOVE 0 TO SQL-SQINDS(34)
           MOVE 0 TO SQL-SQHARM(34)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒÅ’è—˜—¦
               SQL-SQHSTV(35)
           MOVE 6 TO SQL-SQHSTL(35)
           MOVE 0 TO SQL-SQHSTS(35)
           MOVE 0 TO SQL-SQINDV(35)
           MOVE 0 TO SQL-SQINDS(35)
           MOVE 0 TO SQL-SQHARM(35)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‹à—˜•Ï“®‹æ•ª
               SQL-SQHSTV(36)
           MOVE 1 TO SQL-SQHSTL(36)
           MOVE 0 TO SQL-SQHSTS(36)
           MOVE 0 TO SQL-SQINDV(36)
           MOVE 0 TO SQL-SQINDS(36)
           MOVE 0 TO SQL-SQHARM(36)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒXƒvƒŒƒbƒh
               SQL-SQHSTV(37)
           MOVE 6 TO SQL-SQHSTL(37)
           MOVE 0 TO SQL-SQHSTS(37)
           MOVE 0 TO SQL-SQINDV(37)
           MOVE 0 TO SQL-SQINDS(37)
           MOVE 0 TO SQL-SQHARM(37)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|˜A“®‹à—˜‹æ•ª
               SQL-SQHSTV(38)
           MOVE 1 TO SQL-SQHSTL(38)
           MOVE 0 TO SQL-SQHSTS(38)
           MOVE 0 TO SQL-SQINDV(38)
           MOVE 0 TO SQL-SQINDS(38)
           MOVE 0 TO SQL-SQHARM(38)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|‰ð–ñ‹æ•ª
               SQL-SQHSTV(39)
           MOVE 1 TO SQL-SQHSTL(39)
           MOVE 0 TO SQL-SQHSTS(39)
           MOVE 0 TO SQL-SQINDV(39)
           MOVE 0 TO SQL-SQINDS(39)
           MOVE 0 TO SQL-SQHARM(39)
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
004600*                                                                 
004610*--< Œ‹‡ƒe[ƒuƒ‹“Çž‚ðŠm”F >                                     
004620     EVALUATE   SQLCODE                                           
004630*--<    “Çž³í >                                                
004640        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004650           COMPUTE  ‚v|“ü—Í‚P|Œ”  =  ‚v|“ü—Í‚P|Œ”  +  1   
004660           COMPUTE  ‚v|“ü—Í‚Q|Œ”  =  ‚v|“ü—Í‚Q|Œ”  +  1   
004670*--<    “ÇžI—¹ >                                                
004680        WHEN  ’è”|‚r‚p‚k‚d‚m‚c                                  
004690           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
004700*--<    “ÇžƒGƒ‰[ >                                              
004710        WHEN  OTHER                                               
004720           MOVE  -40                  TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004730           PERFORM  ƒGƒ‰[”»’èˆ—                                
004740     END-EVALUATE.                                                
004750*                                                                 
004760 Œ‹‡ƒe[ƒuƒ‹“Çž|‚d‚w‚h‚s.                                      
004770     EXIT.                                                        
004780*                                                                 
004790******************************************************************
004800*    Žåˆ—                                                      *
004810******************************************************************
004820 Žåˆ—                               SECTION.                    
004830 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004840*                                                                 
004850*--< ŠÇ——^MæƒR[ƒh•ÒW >                                       
004860     PERFORM  ŠÇ——^MæƒR[ƒh•ÒW.                               
004870*                                                                 
004880*--< •ÒWAo—Í”»’è >                                             
004890     IF  ‚v|”»’è  =  "Y"                                         
004900*                                                                 
004910*--<    •ÒWˆ— >                                                
004920        PERFORM  •ÒWˆ—                                         
004930*                                                                 
004940*--<    o—Íˆ— >                                                
004950        PERFORM  o—Íˆ—                                         
004960     END-IF.                                                      
004970*                                                                 
004980*--< Œ‹‡ƒe[ƒuƒ‹“ü—Í“Çžˆ—(‚QŒ–ÚˆÈ~) >                       
004990     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çž.                                   
005000*                                                                 
005010 Žåˆ—|‚d‚w‚h‚s.                                                
005020     EXIT.                                                        
005030*                                                                 
005040******************************************************************
005050*    ŠÇ——^MæƒR[ƒh•ÒW                                        *
005060******************************************************************
005070 ŠÇ——^MæƒR[ƒh•ÒW                 SECTION.                    
005080 ŠÇ——^MæƒR[ƒh•ÒW|‚r‚s‚`‚q‚s.                                
005090*                                                                 
005100*--< ŠÇ——^MæƒR[ƒh•ÏŠ· >                                       
005110     EVALUATE  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^MæƒR[ƒh           
005120        WHEN  "02683250"                                          
005130           MOVE  "02683233"           TO  ‚v‚r|ŠÇ——^MæƒR[ƒh  
005140        WHEN  "T2677944"                                          
005150           MOVE  "T2672500"           TO  ‚v‚r|ŠÇ——^MæƒR[ƒh  
005160        WHEN  "S1519455"                                          
005170           MOVE  "S1519684"           TO  ‚v‚r|ŠÇ——^MæƒR[ƒh  
005180        WHEN  OTHER                                               
005190           MOVE  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|ŠÇ——^MæƒR[ƒh         
005200                                      TO  ‚v‚r|ŠÇ——^MæƒR[ƒh  
005210*                                                                 
005220     END-EVALUATE.                                                
005230*                                                                 
005240*--< VŽæˆøæƒR[ƒh•ÒW >                                         
005250     
      *    EXEC  SQL                                                    
005260*       SELECT  VŽæˆøæƒR[ƒh                                    
005270*         INTO  :‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                     
005280*         FROM  IKOTBL001                                         
005290*        WHERE  ŽæˆøæƒR[ƒh          =  :‚v‚r|ŠÇ——^MæƒR[ƒh  
005300*          AND  –Ú“I‚b‚c              =  '2'                      
005310*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 253 TO SQL-OFFSET
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
               ‚v‚r|ŠÇ——^MæƒR[ƒh IN
               ‚v‚r|ƒzƒXƒg•Ï”
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
005320*                                                                 
005330*--< VŽæˆøæƒR[ƒhŽæ“¾‚ðŠm”F >                                   
005340     EVALUATE  SQLCODE                                            
005350*--<    Žæ“¾³í >                                                
005360        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005370           MOVE  ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                     
005380                                      TO  ‚v‚r|VŽæˆøæƒR[ƒh    
005390           MOVE  "Y"                  TO  ‚v|”»’è                
005400*                                                                 
005410*--<    Žæ“¾ƒGƒ‰[ >                                              
005420        WHEN  OTHER                                               
005430           DISPLAY  "ƒ—^MŠÇ—æƒR[ƒh•ÏŠ·ƒGƒ‰[„  "            
005440                    "ŠÇ——^MæƒR[ƒh/–Ú“I‚b‚c :"                 
005450                     ‚v‚r|ŠÇ——^MæƒR[ƒh "/""2"                
005460           MOVE  "N"                  TO  ‚v|”»’è                
005470     END-EVALUATE.                                                
005480*                                                                 
005490 ŠÇ——^MæƒR[ƒh•ÒW|‚d‚w‚h‚s.                                  
005500     EXIT.                                                        
005510*                                                                 
005520******************************************************************
005530*    •ÒWˆ—                                                    *
005540******************************************************************
005550 •ÒWˆ—                             SECTION.                    
005560 •ÒWˆ—|‚r‚s‚`‚q‚s.                                            
005570*                                                                 
005580*--< o—ÍƒŒƒR[ƒh‰Šú‰» >                                         
005590     MOVE  ‰Šú‰»ƒŒƒR[ƒh             TO  o—Í|ƒŒƒR[ƒh.         
005600*                                                                 
005610*--< NO.01 >                                                      
005620     MOVE  ‚v‚r|VŽæˆøæƒR[ƒh       TO  o—Í|—^MŠÇ—æƒR[ƒh. 
005630*                                                                 
005640*--< NO.02 >                                                      
005650     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n                     
005660                                      TO  o—Í|Œ_–ñ”Ô†.         
005670*                                                                 
005680*--< NO.03 >                                                      
005690     PERFORM  ÄƒŠ[ƒX‰ñ”•ÒW.                                   
005700     MOVE  ‚v‚r|ÄƒŠ[ƒX‰ñ”         TO  o—Í|ÄƒŠ[ƒX‰ñ”.     
005710*                                                                 
005720*--< NO.04 >                                                      
005730     PERFORM  Œ_–ñŽí—Þ•ÒW.                                       
005740     MOVE  ‚v‚r|Œ_–ñŽí—Þ             TO  o—Í|Œ_–ñŽí—Þ.         
005750*                                                                 
005760*--< NO.05 >                                                      
005770     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh                   
005780                                      TO  o—Í|Š¨’èˆ—ƒR[ƒh.   
005790*                                                                 
005800*--< NO.06 >                                                      
005810     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–‹ÆŠƒR[ƒh                 
005820                                      TO  o—Í|•”‰ÛƒR[ƒh.       
005830*                                                                 
005840*--< NO.07 >                                                      
005850     PERFORM  ŽåŒ_–ñ‹æ•ª•ÒW.                                     
005860     MOVE  ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª   TO  o—Í|ŽåŒ_–ñ‹æ•ª.       
005870*                                                                 
005880*--< NO.08 >                                                      
005890     PERFORM  Œ_–ñæƒR[ƒh•ÒW.                                   
005900     MOVE  ‚h‚j‚n‚O‚O‚P|Ž}”Ô         TO  o—Í|Œ_–ñæƒR[ƒh.     
005910*                                                                 
005920*--< NO.09 >                                                      
005930     PERFORM  Œ_–ñ“à—eƒe[ƒuƒ‹“Çžˆ—                            
005940     MOVE  ‚c‚R‚P|Œ_–ñŒ–¼           TO  o—Í|Œ_–ñŒ–¼.         
005950*                                                                 
005960*--< NO.10 >                                                      
005970     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌ“ú                       
005980                                      TO  o—Í|Žæˆø”NŒŽ“ú.       
005990*                                                                 
006000*--< NO.11 >                                                      
006010     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ“ú                       
006020                                      TO  o—Í|Œ_–ñ”NŒŽ“ú.       
006030*                                                                 
006040*--< NO.12 >                                                      
006050     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŸŽû“ú                       
006060                                      TO  o—Í|ŒŸŽû”NŒŽ“ú.       
006070*                                                                 
006080*--< NO.13 >                                                      
006090     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–ž—¹“ú                       
006100                                      TO  o—Í|–ž—¹”NŒŽ“ú.       
006110*                                                                 
006120*--< NO.14 >                                                      
006130     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc                     
006140                                      TO  o—Í|‘ÎŠOÂŒ Žc‚.     
006150*                                                                 
006160*--< NO.15 >                                                      
006170     PERFORM  ÂŒ ƒe[ƒuƒ‹“Çžˆ—                                
006180     COMPUTE  o—Í|‘ÎŠOÂŒ Žc‚Á”ïÅ                            
006190           =  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc  *  ‚v|Á”ïÅ—¦.
006200*                                                                 
006210*--< NO.16 >                                                      
006220     MOVE  ZERO                       TO  o—Í|‘OŽó‹àŽc‚.       
006230*                                                                 
006240*--< NO.17 >                                                      
006250     MOVE  ZERO                       TO  o—Í|‘OŽó‹àŽc‚Á”ïÅ. 
006260*                                                                 
006270*--< NO.18 >                                                      
006280     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‘Ý•t‹à•ÊŒû                   
006290                                      TO  o—Í|‘Ý•t‹à•ÊŒû.       
006300*                                                                 
006310*--< NO.19 >                                                      
006320     COMPUTE  o—Í|‘Ý•t‹à•ÊŒûÁ”ïÅ                              
006330         =  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‘Ý•t‹à•ÊŒû  *  ‚v|Á”ïÅ—¦.
006340*                                                                 
006350*--< NO.20 >                                                      
006360     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”ñ‰Ò“®Ž‘ŽY                   
006370                                      TO  o—Í|”ñ‰Ò“­Ž‘ŽY.       
006380*                                                                 
006390*--< NO.21 >                                                      
006400     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|’™‘ •i                       
006410                                      TO  o—Í|’™‘ •i.           
006420*                                                                 
006430*--< NO.22 >                                                      
006440     MOVE  ZERO                       TO  o—Í|’S•ÛŽc‚.         
006450*                                                                 
006460*--< NO.23 >                                                      
006470     PERFORM  M—p•ÛŒ¯‹æ•ª•ÒW.                                   
006480     MOVE  ‚v|M—p•ÛŒ¯•t•Û‹æ•ª       TO  o—Í|M—p•ÛŒ¯‹æ•ª.     
006490*                                                                 
006500*--< NO.24 >                                                      
006510     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯‹ž                 
006520                                      TO  o—Í|M—p•ÛŒ¯‹ž.     
006530*                                                                 
006540*--< NO.25 >                                                      
006550     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‹àŠz                     
006560                                      TO  o—Í|Œ_–ñ‹àŠz.         
006570*                                                                 
006580*--< NO.26 >                                                      
006590     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“ü‹à“ú                       
006600                                      TO  o—Í|“ü‹à“ú.           
006610*                                                                 
006620*--< NO.27 >                                                      
006630     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŠJŽn‰ñ”                     
006640                                      TO  o—Í|ŠJŽn‰ñ”.         
006650*                                                                 
006660*--< NO.28 >                                                      
006670     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¾×Žx•¥‰ñ”                 
006680                                      TO  o—Í|–¾×Žx•¥‰ñ”.     
006690*                                                                 
006700*--< NO.29 >                                                      
006710     PERFORM  ŒvŽZ•ûŽ®•ÒW.                                       
006720     MOVE  ‚v|ŒvŽZ•ûŽ®               TO  o—Í|ŒvŽZ•ûŽ®.         
006730*                                                                 
006740*--< NO.30 >                                                      
006750     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|¿‹ƒTƒCƒNƒ‹                 
006760                                      TO  o—Í|¿‹ƒTƒCƒNƒ‹.     
006770*                                                                 
006780*--< NO.31 >                                                      
006790     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‰„‘ØŠJŽn“ú                   
006800                                      TO  o—Í|‰„‘ØŠJŽn”NŒŽ“ú.   
006810*                                                                 
006820*--< NO.32 >                                                      
006830     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚P               
006840                                      TO  o—Í|Ž•”²ƒtƒ‰ƒO‚P.     
006850*                                                                 
006860*--< NO.33 >                                                      
006870     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž•”²‚¯ƒtƒ‰ƒO‚Q               
006880                                      TO  o—Í|Ž•”²ƒtƒ‰ƒO‚Q.     
006890*                                                                 
006900*--< NO.34 >                                                      
006910     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Žc‰¿Šz                       
006920                                      TO  o—Í|Žc‰¿Šz.           
006930*                                                                 
006940*--< NO.35 >                                                      
006950     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒŽŠ„‚k—¿                     
006960                                      TO  o—Í|ŒŽŠ„‚k—¿.         
006970*                                                                 
006980*--< NO.36 >                                                      
006990     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒ„ƒNƒxƒ“‹æ•ª                 
007000                                      TO  o—Í|–ñ•Ù‹æ•ª.         
007010*                                                                 
007020*--< NO.37 >                                                      
007030     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌÂŒ Žc                   
007040                                      TO  o—Í|Ž–ŒÌÂŒ Žc.       
007050*                                                                 
007060*--< NO.38 >                                                      
007070     COMPUTE  o—Í|Ž–ŒÌÂŒ ŽcÁ”ïÅ                              
007080          =  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌÂŒ Žc *  ‚v|Á”ïÅ—¦.
007090*                                                                 
007100*--< NO.39 >                                                      
007110     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Ž–ŒÌŒ³–{Žc                   
007120                                      TO  o—Í|Ž–ŒÌŒ³–{Žc.       
007130*                                                                 
007140*--< NO.40 >                                                      
007150     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc                     
007160                                      TO  o—Í|“–ŒŽ––ÂŒ Žc.     
007170*                                                                 
007180*--< NO.41 >                                                      
007190     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–Œ³–{Žc                     
007200                                      TO  o—Í|“–ŒŽ––Œ³–{Žc.     
007210*                                                                 
007220*--< NO.42 >                                                      
007230     MOVE  ZERO                       TO  o—Í|‚m“–ŒŽ––ÂŒ Žc.   
007240*                                                                 
007250*--< NO.43 >                                                      
007260     MOVE  ZERO                       TO  o—Í|‚m“–ŒŽ––Œ³–{Žc.   
007270*                                                                 
007280*--< NO.44 >                                                      
007290     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢ŽûŒ³–{                     
007300                                      TO  o—Í|–¢ŽûŒ³–{.         
007310*                                                                 
007320*--< NO.45 >                                                      
007330     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢Žû—˜‘§                     
007340                                      TO  o—Í|–¢Žû—˜‘§.         
007350*                                                                 
007360*--< NO.46 >                                                      
007370     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢’¥Žû‹à                     
007380                                      TO  o—Í|–¢’¥Žû‹à.         
007390*                                                                 
007400*--< NO.47 >                                                      
007410     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‚a–¢’¥Žû‹à                   
007420                                      TO  o—Í|‚a–¢’¥Žû‹à.       
007430*                                                                 
007440*--< NO.48 >                                                      
007450     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|”„‹p‹àŠz                     
007460                                      TO  o—Í|”„‹p‹àŠz.         
007470*                                                                 
007480*--< NO.49 >                                                      
007490     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒÅ’è—˜—¦                     
007500                                      TO  o—Í|ŒÅ’è—˜—¦.         
007510*                                                                 
007520*--< NO.50 >                                                      
007530     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|‹à—˜•Ï“®‹æ•ª                 
007540                                      TO  o—Í|‹à—˜•Ï“®‹æ•ª.     
007550*                                                                 
007560*--< NO.51 >                                                      
007570     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ƒXƒvƒŒƒbƒh                   
007580                                      TO  o—Í|ƒXƒvƒŒƒbƒh.       
007590*                                                                 
007600*--< NO.52 >                                                      
007610     MOVE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|˜A“®‹à—˜‹æ•ª                 
007620                                      TO  o—Í|˜A“®‹à—˜‹æ•ª.     
007630*                                                                 
007640*--< NO.53 >                                                      
007650     MOVE  SPACE                      TO  o—Í|”õl.             
007660*                                                                 
007670*--< NO.54 >                                                      
007680     MOVE  ZERO                       TO  o—Í|‘ÎŠOŒ³–{Žc‚.     
007690*                                                                 
007700*--< NO.55 >                                                      
007710     MOVE  o—Í|‘ÎŠOÂŒ Žc‚         TO o—Í|‘OŒŽ––‘ÎŠOÂŒ Žc‚.
007720*                                                                 
007730*--< NO.56 >                                                      
007740     MOVE  o—Í|‘ÎŠOÂŒ Žc‚Á”ïÅ   TO                          
007750                                   o—Í|‘OŒŽ––‘ÎŠOÂŒ Žc‚Á”ïÅ.
007760*                                                                 
007770*--< NO.57 >                                                      
007780     MOVE  o—Í|“–ŒŽ––Œ³–{Žc         TO o—Í|‘OŒŽ––‘ÎŠOŒ³–{Žc‚.
007790*                                                                 
007800*--< NO.58 >                                                      
007810     MOVE  ZERO                       TO  o—Í|‘OŒŽ––‘OŽó‹àŽc‚. 
007820*                                                                 
007830*--< NO.59 >                                                      
007840     MOVE  ZERO                       TO                          
007850                                     o—Í|‘OŒŽ––‘OŽó‹àŽc‚Á”ïÅ.
007860*                                                                 
007870*--< NO.60 >                                                      
007880     MOVE  o—Í|‘Ý•t‹à•ÊŒû           TO  o—Í|‘OŒŽ––‘Ý•t‹à•ÊŒû. 
007890*                                                                 
007900*--< NO.61 >                                                      
007910     MOVE  o—Í|‘Ý•t‹à•ÊŒûÁ”ïÅ     TO                          
007920                                     o—Í|‘OŒŽ––‘Ý•t‹à•ÊŒûÁ”ïÅ.
007930*                                                                 
007940*--< NO.62 >                                                      
007950     MOVE  o—Í|”ñ‰Ò“­Ž‘ŽY           TO  o—Í|‘OŒŽ––”ñ‰Ò“­Ž‘ŽY. 
007960*                                                                 
007970*--< NO.63 >                                                      
007980     MOVE  o—Í|’™‘ •i               TO  o—Í|‘OŒŽ––’™‘ •i.     
007990*                                                                 
008000*--< NO.64 >                                                      
008010     MOVE  "9"                        TO  o—Í|‰ð–ñ——R.         
008020*                                                                 
008030*--< NO.65 >                                                      
008040     MOVE  ‚x‚n‚r‚g‚h‚m‚j‚h‚g‚n‚m|‰ð–ñ‹æ•ª                       
008050                                      TO  o—Í|‰ð–ñ‹æ•ª.         
008060*                                                                 
008070*--< NO.66 >                                                      
008080     MOVE  ‚c‚R‚P|”Û”F‹æ•ª           TO  o—Í|”Û”F‹æ•ª.         
008090*                                                                 
008100*--< NO.67 >                                                      
008110     COMPUTE  o—Í|“–ŒŽ––ÂŒ Žc‚Á”ïÅ                          
008120           =  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|“–ÂŒ Žc  *  ‚v|Á”ïÅ—¦.
008130*                                                                 
008140*--< NO.68 >                                                      
008150     COMPUTE  o—Í|–¢’¥Žû‹àÁ”ïÅ                                
008160           =  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|–¢’¥Žû‹à  *  ‚v|Á”ïÅ—¦.
008170*                                                                 
008180*--< No.69 >                                                      
008190     MOVE  ‚v|ƒVƒXƒeƒ€“ú•t           TO  o—Í|“o˜^”NŒŽ“ú.       
008200*                                                                 
008210*--< No.70 >                                                      
008220     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO  o—Í|“o˜^ŽžŠÔ.         
008230*                                                                 
008240*--< No.71 >                                                      
008250     MOVE  ‚v|’S“–ŽÒ                 TO  o—Í|“o˜^’S“–ŽÒ.       
008260*                                                                 
008270*--< No.72 >                                                      
008280     MOVE  ‚v|ƒVƒXƒeƒ€“ú•t           TO  o—Í|XV”NŒŽ“ú.       
008290*                                                                 
008300*--< No.73 >                                                      
008310     MOVE  ‚v|ƒVƒXƒeƒ€Žž           TO  o—Í|XVŽžŠÔ.         
008320*                                                                 
008330*--< No.74 >                                                      
008340     MOVE  ‚v|’S“–ŽÒ                 TO  o—Í|XVŽÒ.           
008350*                                                                 
008360*--< No.75 >                                                      
008370     MOVE  ‚v|’S“–ŽÒ                 TO  o—Í|“ü—Í’S“–ŽÒƒR[ƒh. 
008380*                                                                 
008390 •ÒWˆ—|‚d‚w‚h‚s.                                              
008400     EXIT.                                                        
008410*                                                                 
008420******************************************************************
008430*    ÄƒŠ[ƒX‰ñ”•ÒW                                            *
008440******************************************************************
008450 ÄƒŠ[ƒX‰ñ”•ÒW                     SECTION.                    
008460 ÄƒŠ[ƒX‰ñ”•ÒW|‚r‚s‚`‚q‚s.                                    
008470*                                                                 
008480     
      *    EXEC  SQL                                                    
008490*       SELECT  MAX(ÄƒŠ[ƒX‰ñ”)                                 
008500*         INTO  :‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”                       
008510*         FROM  IKOTBL002                                         
008520*        WHERE  Œ_–ñ‚m‚n  =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n  
008530*          AND  ‹ŒÂŒ Š¨’èˆ—ƒR[ƒh                              
008540*                         =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
008550*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 276 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(1)
           MOVE 2 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
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
               .
008560*                                                                 
008570*--< ÄƒŠ[ƒX‰ñ”Žæ“¾‚ðŠm”F >                                     
008580     EVALUATE  SQLCODE                                            
008590*--<    Žæ“¾³í >                                                
008600        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
008610           MOVE  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”                       
008620                                      TO  ‚v‚r|ÄƒŠ[ƒX‰ñ”      
008630*--<    Žæ“¾ƒGƒ‰[ >                                              
008640        WHEN  OTHER                                               
008650           MOVE  ZERO                 TO  ‚v‚r|ÄƒŠ[ƒX‰ñ”      
008660     END-EVALUATE.                                                
008670*                                                                 
008680 ÄƒŠ[ƒX‰ñ”•ÒW|‚d‚w‚h‚s.                                      
008690     EXIT.                                                        
008700*                                                                 
008710******************************************************************
008720*    Œ_–ñŽí—Þ•ÒW                                                *
008730******************************************************************
008740 Œ_–ñŽí—Þ•ÒW                         SECTION.                    
008750 Œ_–ñŽí—Þ•ÒW|‚r‚s‚`‚q‚s.                                        
008760*                                                                 
008770     
      *    EXEC  SQL                                                    
008780*       SELECT  MIN(Œ_–ñŽí—Þ)                                     
008790*         INTO  :‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ                           
008800*         FROM  IKOTBL002                                         
008810*        WHERE  Œ_–ñ‚m‚n  =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n  
008820*          AND  ‹ŒÂŒ Š¨’èˆ—ƒR[ƒh                              
008830*                         =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
008840*          AND  ÄƒŠ[ƒX‰ñ”  =  :‚v‚r|ÄƒŠ[ƒX‰ñ”              
008850*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 303 TO SQL-OFFSET
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
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|ÄƒŠ[ƒX‰ñ” IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(4)
           MOVE 2 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
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
008860*                                                                 
008870*--< ÄƒŠ[ƒX‰ñ”Žæ“¾‚ðŠm”F >                                     
008880     EVALUATE  SQLCODE                                            
008890*--<    Žæ“¾³í >                                                
008900        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
008910           MOVE  ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ                           
008920                                      TO  ‚v‚r|Œ_–ñŽí—Þ          
008930*--<    Žæ“¾ƒGƒ‰[ >                                              
008940        WHEN  OTHER                                               
008950           MOVE  ZERO                 TO  ‚v‚r|Œ_–ñŽí—Þ          
008960*                                                                 
008970     END-EVALUATE.                                                
008980*                                                                 
008990 Œ_–ñŽí—Þ•ÒW|‚d‚w‚h‚s.                                          
009000     EXIT.                                                        
009010*                                                                 
009020******************************************************************
009030*    ŽåŒ_–ñ‹æ•ª•ÒW                                              *
009040******************************************************************
009050 ŽåŒ_–ñ‹æ•ª•ÒW                       SECTION.                    
009060 ŽåŒ_–ñ‹æ•ª•ÒW|‚r‚s‚`‚q‚s.                                      
009070*                                                                 
009080     
      *    EXEC  SQL                                                    
009090*       SELECT  ŽåŒ_–ñ‹æ•ª                                        
009100*         INTO  :‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª                         
009110*         FROM  IKOTBL002                                         
009120*        WHERE  Œ_–ñ‚m‚n  =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n  
009130*          AND  ‹ŒÂŒ Š¨’èˆ—ƒR[ƒh                              
009140*                         =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
009150*          AND  Œ_–ñŽí—Þ  =  :‚v‚r|Œ_–ñŽí—Þ                      
009160*          AND  ÄƒŠ[ƒX‰ñ”          =  :‚v‚r|ÄƒŠ[ƒX‰ñ”      
009170*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 334 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Š¨’èƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|Œ_–ñŽí—Þ IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(4)
           MOVE 3 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚v‚r|ÄƒŠ[ƒX‰ñ” IN
               ‚v‚r|ƒzƒXƒg•Ï”
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
009180*                                                                 
009190*--< ÄƒŠ[ƒX‰ñ”Žæ“¾‚ðŠm”F >                                     
009200     EVALUATE  SQLCODE                                            
009210*--<    Žæ“¾³í >                                                
009220        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
009230           CONTINUE                                               
009240*--<    Žæ“¾ƒGƒ‰[ >                                              
009250        WHEN  OTHER                                               
009260           MOVE  ZERO                 TO  ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª
009270*                                                                 
009280     END-EVALUATE.                                                
009290*                                                                 
009300 ŽåŒ_–ñ‹æ•ª•ÒW|‚d‚w‚h‚s.                                        
009310     EXIT.                                                        
009320*                                                                 
009330******************************************************************
009340*    Œ_–ñæƒR[ƒh•ÒW                                            *
009350******************************************************************
009360 Œ_–ñæƒR[ƒh•ÒW                     SECTION.                    
009370 Œ_–ñæƒR[ƒh•ÒW|‚r‚s‚`‚q‚s.                                    
009380*                                                                 
009390     
      *    EXEC  SQL                                                    
009400*       SELECT  Ž}”Ô                                              
009410*         INTO  :‚h‚j‚n‚O‚O‚P|Ž}”Ô                               
009420*         FROM  IKOTBL001                                         
009430*        WHERE  ŽæˆøæƒR[ƒh          =  :‚v‚r|ŠÇ——^MæƒR[ƒh  
009440*          AND  –Ú“I‚b‚c              =  '2'                      
009450*          AND  VŽæˆøæƒR[ƒh        =  :‚v‚r|VŽæˆøæƒR[ƒh    
009460*    END-EXEC.
           CALL "SQLADR" USING SQ0006 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 369 TO SQL-OFFSET
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
               ‚v‚r|ŠÇ——^MæƒR[ƒh IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚v‚r|VŽæˆøæƒR[ƒh IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
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
               .
009470*                                                                 
009480*--< Ž}”ÔŽæ“¾‚ðŠm”F >                                             
009490     EVALUATE  SQLCODE                                            
009500*--<    Žæ“¾³í >                                                
009510        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
009520           CONTINUE                                               
009530*--<    Žæ“¾ƒGƒ‰[ >                                              
009540        WHEN  OTHER                                               
009550           MOVE  ZERO                 TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
009560*                                                                 
009570     END-EVALUATE.                                                
009580*                                                                 
009590 Œ_–ñæƒR[ƒh•ÒW|‚d‚w‚h‚s.                                      
009600     EXIT.                                                        
009610*                                                                 
009620******************************************************************
009630*    Œ_–ñ“à—eƒe[ƒuƒ‹“Çžˆ—                                    *
009640******************************************************************
009650 Œ_–ñ“à—eƒe[ƒuƒ‹“Çžˆ—             SECTION.                    
009660 Œ_–ñ“à—eƒe[ƒuƒ‹“Çžˆ—|‚r‚s‚`‚q‚s.                            
009670*                                                                 
009680     
      *    EXEC  SQL                                                    
009690*       SELECT  Œ_–ñŒ–¼                                          
009700*              ,”Û”F‹æ•ª                                          
009710*         INTO  :‚c‚R‚P|Œ_–ñŒ–¼                                 
009720*              ,:‚c‚R‚P|”Û”F‹æ•ª                                 
009730*         FROM  D31KYK_TBL                                        
009740*        WHERE  Œ_–ñ”Ô†    =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
009750*          AND  ÄƒŠ[ƒX‰ñ”          =  :‚v‚r|ÄƒŠ[ƒX‰ñ”      
009760*    END-EXEC.
           CALL "SQLADR" USING SQ0007 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 396 TO SQL-OFFSET
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
               ‚c‚R‚P|Œ_–ñŒ–¼ IN
               Œ_–ñ“à—e
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚c‚R‚P|”Û”F‹æ•ª IN
               Œ_–ñ“à—e
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
               SQL-SQHSTV(3)
           MOVE 9 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|ÄƒŠ[ƒX‰ñ” IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(4)
           MOVE 2 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
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
009770*                                                                 
009780*--< Œ_–ñ“à—e“Çž‚ðŠm”F >                                         
009790     EVALUATE  SQLCODE                                            
009800*--<    “Çž³í >                                                
009810        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
009820           COMPUTE  ‚v|“ü—Í‚R|Œ”  =  ‚v|“ü—Í‚R|Œ”  +  1   
009830*--<    “ÇžƒGƒ‰[ >                                              
009840        WHEN  OTHER                                               
009850           MOVE  ZERO                 TO  ‚c‚R‚P|Œ_–ñŒ–¼        
009860           MOVE  ZERO                 TO  ‚c‚R‚P|”Û”F‹æ•ª        
009870*                                                                 
009880     END-EVALUATE.                                                
009890*                                                                 
009900 Œ_–ñ“à—eƒe[ƒuƒ‹“Çžˆ—|‚d‚w‚h‚s.                              
009910     EXIT.                                                        
009920*                                                                 
009930******************************************************************
009940*    ÂŒ ƒe[ƒuƒ‹“Çžˆ—                                        *
009950******************************************************************
009960 ÂŒ ƒe[ƒuƒ‹“Çžˆ—                 SECTION.                    
009970 ÂŒ ƒe[ƒuƒ‹“Çžˆ—|‚r‚s‚`‚q‚s.                                
009980*                                                                 
009990*--< ÅVÁ”ïÅ‹æ•ªŽæ“¾ >                                         
010000     
      *    EXEC  SQL                                                    
010010*       SELECT  ÅVÁ”ïÅ‹æ•ª                                    
010020*         INTO  :‚c‚R‚Q|ÅVÁ”ïÅ‹æ•ª                           
010030*         FROM  D32SAK_TBL                                        
010040*        WHERE  Œ_–ñ”Ô†  =  :‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n  
010050*          AND  ÄƒŠ[ƒX‰ñ”                                      
010060*                                     =  :‚v‚r|ÄƒŠ[ƒX‰ñ”      
010070*          AND  Œ_–ñŽí—Þ              =  :‚v‚r|Œ_–ñŽí—Þ          
010080*    END-EXEC.
           CALL "SQLADR" USING SQ0008 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 427 TO SQL-OFFSET
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
               ‚c‚R‚Q|ÅVÁ”ïÅ‹æ•ª IN
               ÂŒ 
               SQL-SQHSTV(1)
           MOVE 2 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|Œ_–ñ‚m‚n
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚v‚r|ÄƒŠ[ƒX‰ñ” IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|Œ_–ñŽí—Þ IN
               ‚v‚r|ƒzƒXƒg•Ï”
               SQL-SQHSTV(4)
           MOVE 3 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
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
010090*                                                                 
010100*--< ÅVÁ”ïÅ‹æ•ªŽæ“¾‚ðŠm”F >                                   
010110     EVALUATE  SQLCODE                                            
010120*--<    Á”ïÅ—¦Žæ“¾³í >                                        
010130        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
010140           EVALUATE  ‚c‚R‚Q|ÅVÁ”ïÅ‹æ•ª                       
010150              WHEN  "11"                                          
010160                 MOVE   0.03          TO  ‚v|Á”ïÅ—¦            
010170              WHEN  "12"                                          
010180                 MOVE   0.05          TO  ‚v|Á”ïÅ—¦            
010190              WHEN  OTHER                                         
010200                 MOVE   ZERO          TO  ‚v|Á”ïÅ—¦            
010210           END-EVALUATE                                           
010220           COMPUTE  ‚v|“ü—Í‚S|Œ”  =  ‚v|“ü—Í‚S|Œ”  +  1   
010230*--<    Á”ïÅ—¦Žæ“¾ƒGƒ‰[ >                                      
010240        WHEN  OTHER                                               
010250           MOVE  ZERO                 TO  ‚c‚R‚Q|ÅVÁ”ïÅ‹æ•ª  
010260           MOVE  0.05                 TO  ‚v|Á”ïÅ—¦            
010270     END-EVALUATE.                                                
010280*                                                                 
010290 ÂŒ ƒe[ƒuƒ‹“Çžˆ—|‚d‚w‚h‚s.                                  
010300     EXIT.                                                        
010310*                                                                 
010320******************************************************************
010330*    M—p•ÛŒ¯‹æ•ª•ÒW                                            *
010340******************************************************************
010350 M—p•ÛŒ¯‹æ•ª•ÒW                     SECTION.                    
010360 M—p•ÛŒ¯‹æ•ª•ÒW|‚r‚s‚`‚q‚s.                                    
010370*                                                                 
010380*--< M—p•ÛŒ¯•t•Û‹æ•ªƒR[ƒh•ÏŠ· >                                 
010390     EVALUATE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|M—p•ÛŒ¯•t•Û‹æ•ª         
010400        WHEN  ZERO                                                
010410           MOVE  ZERO                 TO  ‚v|M—p•ÛŒ¯•t•Û‹æ•ª    
010420        WHEN  OTHER                                               
010430           MOVE  "1"                  TO  ‚v|M—p•ÛŒ¯•t•Û‹æ•ª    
010440*                                                                 
010450     END-EVALUATE.                                                
010460*                                                                 
010470 M—p•ÛŒ¯‹æ•ª•ÒW|‚d‚w‚h‚s.                                      
010480     EXIT.                                                        
010490*                                                                 
010500******************************************************************
010510*    ŒvŽZ•ûŽ®•ÒW                                                *
010520******************************************************************
010530 ŒvŽZ•ûŽ®•ÒW                         SECTION.                    
010540 ŒvŽZ•ûŽ®•ÒW|‚r‚s‚`‚q‚s.                                        
010550*                                                                 
010560*--< M—p•ÛŒ¯•t•Û‹æ•ªƒR[ƒh•ÏŠ· >                                 
010570     EVALUATE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|ŒvŽZ•ûŽ®                 
010580        WHEN  ZERO                                                
010590           MOVE  "1"                  TO  ‚v|ŒvŽZ•ûŽ®            
010600        WHEN  "1"                                                 
010610           EVALUATE  ‚x‚n‚r‚g‚h‚m‚l‚d‚h‚r‚`‚h|¿‹ƒTƒCƒNƒ‹       
010620              WHEN  "12"                                          
010630                 MOVE  ZERO           TO  ‚v|ŒvŽZ•ûŽ®            
010640              WHEN  OTHER                                         
010650                 MOVE  "2"            TO  ‚v|ŒvŽZ•ûŽ®            
010660           END-EVALUATE                                           
010670        WHEN  "2"                                                 
010680           MOVE  "2"                  TO  ‚v|ŒvŽZ•ûŽ®            
010690*                                                                 
010700     END-EVALUATE.                                                
010710*                                                                 
010720 ŒvŽZ•ûŽ®•ÒW|‚d‚w‚h‚s.                                          
010730     EXIT.                                                        
010740*                                                                 
010750******************************************************************
010760*    o—Íˆ—                                                    *
010770******************************************************************
010780 o—Íˆ—                             SECTION.                    
010790 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
010800*                                                                 
010810     WRITE  o—Í|ƒŒƒR[ƒh.                                       
010820*                                                                 
010830*----------------------------------------------------------------*
010840*    ƒtƒ@ƒCƒ‹ó‘Ô”»’è                                            *
010850*----------------------------------------------------------------*
010860     EVALUATE   ‚v|ƒtƒ@ƒCƒ‹ó‘Ô                                  
010870*--<    o—ÍŒ”‚P‚Ì‰ÁŽZ >                                        
010880        WHEN  ZERO                                                
010890           COMPUTE  ‚v|o—Í|Œ”    =  ‚v|o—Í|Œ”  +  1     
010900*--<    ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹o—ÍƒGƒ‰[ >                      
010910        WHEN  OTHER                                               
010920           MOVE  -50                  TO  ‚v|ƒGƒ‰[ƒR[ƒh        
010930           PERFORM  ƒGƒ‰[”»’èˆ—                                
010940     END-EVALUATE.                                                
010950*                                                                 
010960 o—Íˆ—|‚d‚w‚h‚s.                                              
010970     EXIT.                                                        
010980*                                                                 
010990******************************************************************
011000*    I—¹ˆ—                                                    *
011010******************************************************************
011020 I—¹ˆ—                             SECTION.                    
011030 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
011040*                                                                 
011050*--< ‚c‚aƒNƒ[ƒY >                                               
011060     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
011070*                                                                 
011080*--< ƒtƒ@ƒCƒ‹ƒNƒ[ƒY >                                           
011090     CLOSE  o—Íƒtƒ@ƒCƒ‹.                                         
011100*                                                                 
011110*--< Œ”ƒƒbƒZ[ƒWo—Íˆ— >                                     
011120     PERFORM  Œ”ƒƒbƒZ[ƒWo—Í.                                 
011130*                                                                 
011140*--< I—¹ƒƒbƒZ[ƒWo—Íˆ— >                                     
011150     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
011160*                                                                 
011170*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
011180     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
011190*                                                                 
011200 I—¹ˆ—|‚d‚w‚h‚s.                                              
011210     EXIT.                                                        
011220*                                                                 
011230******************************************************************
011240*    ‚c‚aƒNƒ[ƒY                                                *
011250******************************************************************
011260 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
011270 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
011280*                                                                 
011290*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
011300     
      *    EXEC SQL                                                     
011310*       CLOSE  CUR1                                               
011320*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 458 TO SQL-OFFSET
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
011330*                                                                 
011340 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
011350     EXIT.                                                        
011360*                                                                 
011370******************************************************************
011380*    Œ”ƒƒbƒZ[ƒWo—Í                                          *
011390******************************************************************
011400 Œ”ƒƒbƒZ[ƒWo—Í                   SECTION.                    
011410 Œ”ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
011420*                                                                 
011430     INITIALIZE                       IF-CHOCO001.                
011440     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
011450     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
011460     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
011470     MOVE  "YSKIHON"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
011480     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
011490     MOVE  ‚v|“ü—Í‚P|Œ”           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
011500     MOVE  "—^M(Šî–{)“ÇžŒ”"       TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
011510     CALL  CLOCO001                USING  IF-CHOCO001.            
011520*                                                                 
011530     INITIALIZE                       IF-CHOCO001.                
011540     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
011550     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
011560     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
011570     MOVE  "YSMEISAI"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
011580     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
011590     MOVE  ‚v|“ü—Í‚Q|Œ”           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
011600     MOVE  "—^M(–¾×)“ÇžŒ”"       TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
011610     CALL  CLOCO001                USING  IF-CHOCO001.            
011620*                                                                 
011630     INITIALIZE                       IF-CHOCO001.                
011640     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
011650     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
011660     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
011670     MOVE  "D31KYK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
011680     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
011690     MOVE  ‚v|“ü—Í‚R|Œ”           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
011700     MOVE  "Œ_–ñ“à—e“ÇžŒ”"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
011710     CALL  CLOCO001                USING  IF-CHOCO001.            
011720*                                                                 
011730     INITIALIZE                       IF-CHOCO001.                
011740     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
011750     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
011760     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
011770     MOVE  "D32SAK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
011780     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
011790     MOVE  ‚v|“ü—Í‚S|Œ”           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
011800     MOVE  "ÂŒ “ÇžŒ”"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
011810     CALL  CLOCO001                USING  IF-CHOCO001.            
011820*                                                                 
011830     INITIALIZE                       IF-CHOCO001.                
011840     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
011850     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
011860     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
011870     MOVE  "FFUIS660"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
011880     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
011890     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
011900     MOVE  "ŠÇ——^MŒ_–ñ(PS)o—ÍŒ”" TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
011910     CALL  CLOCO001                USING  IF-CHOCO001.            
011920*                                                                 
011930 Œ”ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
011940     EXIT.                                                        
011950*                                                                 
011960******************************************************************
011970*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
011980******************************************************************
011990 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
012000 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
012010*                                                                 
012020     INITIALIZE                       IF-CHOCO001.                
012030     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
012040     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
012050     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
012060     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
012070     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
012080     CALL  CLOCO001                USING  IF-CHOCO001.            
012090*                                                                 
012100 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
012110     EXIT.                                                        
012120*                                                                 
012130******************************************************************
012140*    ƒGƒ‰[”»’èˆ—                                              *
012150******************************************************************
012160 ƒGƒ‰[”»’èˆ—                       SECTION.                    
012170 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
012180*                                                                 
012190     MOVE  "Y"                        TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.   
012200     INITIALIZE                       IF-CHOCO001.                
012210*                                                                 
012220     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
012230*                                                                 
012240        WHEN  -10                                                 
012250*                                                                 
012260*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
012270           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
012280           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
012290           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
012300           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
012310           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
012320           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
012330           CALL  CLOCO001          USING  IF-CHOCO001             
012340*                                                                 
012350        WHEN  -20                                                 
012360*                                                                 
012370*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`Ž¸”s >                         
012380           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
012390           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
012400           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
012410           MOVE  "YSMEISAI"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
012420           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
012430           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
012440           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
012450           CALL  CLOCO001          USING  IF-CHOCO001             
012460*                                                                 
012470        WHEN  -30                                                 
012480*                                                                 
012490*--<       ŠÇ——^MŒ_–ñƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                   
012500           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
012510           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
012520           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
012530           MOVE  "FFUIS660"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
012540           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
012550           MOVE  ‚v|ƒtƒ@ƒCƒ‹ó‘Ô     TO  ‹¤‚P|ƒf[ƒ^“à—e        
012560           MOVE  "ŠÇ——^MŒ_–ñƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ "            
012570                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
012580           CALL  CLOCO001          USING  IF-CHOCO001             
012590*                                                                 
012600        WHEN  -40                                                 
012610*                                                                 
012620*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
012630           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
012640           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
012650           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
012660           MOVE  "YSMEISAI"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
012670           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
012680           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
012690           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
012700           CALL  CLOCO001          USING  IF-CHOCO001             
012710*                                                                 
012720        WHEN  -50                                                 
012730*                                                                 
012740*--<       ŠÇ——^MŒ_–ñƒtƒ@ƒCƒ‹o—Íˆ—Ž¸”s >                     
012750           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
012760           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
012770           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
012780           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
012790           MOVE  "WRITE"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
012800           MOVE  ‚v|ƒtƒ@ƒCƒ‹ó‘Ô     TO  ‹¤‚P|ƒf[ƒ^“à—e        
012810           MOVE  "ŠÇ——^MŒ_–ñƒtƒ@ƒCƒ‹o—ÍƒGƒ‰["                 
012820                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
012830           CALL  CLOCO001          USING  IF-CHOCO001             
012840*                                                                 
012850        WHEN  OTHER                                               
012860           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
012870     END-EVALUATE.                                                
012880*                                                                 
012890     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
012900*--<    Œ”ƒƒbƒZ[ƒWo—Íˆ— >                                  
012910        PERFORM  Œ”ƒƒbƒZ[ƒWo—Í                               
012920*                                                                 
012930*--<    I—¹ƒƒbƒZ[ƒWo—Íˆ— >                                  
012940        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
012950*                                                                 
012960*--<    ƒvƒƒOƒ‰ƒ€ƒŠƒ^[ƒ“ƒR[ƒh >                                
012970        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
012980*                                                                 
012990        EXIT  PROGRAM                                             
013000     END-IF.                                                      
013010*                                                                 
013020 ƒGƒ‰[”»’èˆ—|‚d‚w‚h‚s.                                        
013030     EXIT.                                                        
013040*                                                                 
013050******************************************************************
013060*                  END OF PROGRAM                                *
013070******************************************************************
