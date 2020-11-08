000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : Œo—’÷ˆ—i’ •[ì¬j                 *
000040*                         ƒŠ[ƒX‘OŽóŠÖ˜A’ •[’Šo                 *
000050*      2. ƒvƒƒOƒ‰ƒ€ID  : AAASED25                               *
000060*      3. ˆ—ŠT—v      : ‘OŽóî•ñ‚c‚a‚ðƒƒCƒ“‚ÉAƒ}ƒXƒ^‚Æ•\     *
000070*                          Œ‹‡‚µ‚Ä“Çž ‘OŽó‹àŽó•¥Žc‚’†ŠÔ       *
000080*                         ƒtƒ@ƒCƒ‹‚ð ì¬‚·‚é*                   *
000110*      4. ì¬ŽÒ        : ‰¤GŒ†                                 *
000120*      5. ì¬“ú        : 2005.03.25                             *
000130******************************************************************
000140*                                                                 
000150******************************************************************
000160*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000170******************************************************************
000180 IDENTIFICATION                       DIVISION.                   
000190*                                                                 
000200 PROGRAM-ID.                          AAASED25.                   
000210******************************************************************
000220*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000230******************************************************************
000240 ENVIRONMENT                          DIVISION.                   
000250******************************************************************
000260*    ‚h‚m‚o‚t‚s|‚n‚t‚s‚o‚t‚s      ‚r‚d‚b‚s‚h‚n‚m                *
000270******************************************************************
000280 INPUT-OUTPUT                         SECTION.                    
000290*                                                                 
000300 FILE-CONTROL.                                                    
000310     SELECT    o—Íƒtƒ@ƒCƒ‹            ASSIGN    TO     U11       
000320     FILE      STATUS     IS          ‚v|ó‘Ô                    
000330     ORGANIZATION         IS          LINE      SEQUENTIAL. 
000340******************************************************************
000350*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000360******************************************************************
000370 DATA                                 DIVISION.                   
000380******************************************************************
000390*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000400******************************************************************
000410 FILE                                 SECTION.                    
000420*----------------------------------------------------------------*
000430*    o—Íƒtƒ@ƒCƒ‹  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹                     
000440*----------------------------------------------------------------*
000450 FD  o—Íƒtƒ@ƒCƒ‹                                                 
000460     LABEL     RECORD     IS          STANDARD                    
000470     BLOCK     CONTAINS   0           RECORDS.                    
000480*                                                                 
000490 01  o—Í|ƒŒƒR[ƒh.                                              
000500     COPY  CPSCE50  REPLACING  ==()==  BY  ==o—Í|==.            
000510*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000520******************************************************************
000530  WORKING-STORAGE                     SECTION.                    
000540*----------------------------------------------------------------*
000550*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000560*----------------------------------------------------------------*
000570     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\AAASED25\AA
      -    "ASED25.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(81) VALUE "select ƒoƒbƒ`—p‹Æ–±”NŒŽ   into :b
      -    "1  from D70GYM_TBL where ‹Æ–±ŠÇ—‚h‚c='GYMKNRRC'".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(149) VALUE "select –¼Ì   into :b1  from D19
      -    "MSY_TBL ,M40MAB_TBL where (D19MSY_TBL.ƒR[ƒh‚m‚n='038' and S
      -    "UBSTR(D19MSY_TBL.ƒR[ƒh,1,1)=M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(141) VALUE "select –¼Ì   into :b1  from D19
      -    "MSY_TBL ,M40MAB_TBL where (D19MSY_TBL.ƒR[ƒh‚m‚n='005' and S
      -    "UBSTR(D19MSY_TBL.ƒR[ƒh,1,2)=M40MAB_TBL.ŒÚ‹q‹æ•ª)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "select M01SAJ_TBL.ó‘Ôƒtƒ‰ƒO  ,M
      -    "01SAJ_TBL.ÂŒ Œ_–ñŒ–¼  ,M01SAJ_TBL.’S•Û‹æ•ª   into :b1,:b2,
      -     ":b3  from M01SAJ_TBL ,M40MAB_TBL where (((M01SAJ_TBL.ƒŒƒR[
      -    "ƒh‹æ•ª='1".

           02  FILLER PIC X(144) VALUE "' and M01SAJ_TBL.Œ_–ñ”Ô†=M40MAB
      -    "_TBL.Œ_–ñ”Ô†) and M01SAJ_TBL.ÄƒŠ[ƒX‰ñ”=M40MAB_TBL.ÄƒŠ[
      -    "ƒX‰ñ”) and M01SAJ_TBL.Œ_–ñŽí—Þ=M40MAB_TBL.Œ_–ñŽí—Þ)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +157234284.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +28.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 28 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE "select M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª  
      -    ",M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª  ,M40MAB_TBL.ŒÚ‹q‹æ•ª  ,D01TRS_
      -    "TBL.–¼Šñ‚¹ƒR[ƒh  ,M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh  ,M40MAB_TB
      -    "L.¿‹æ".

           02  FILLER PIC X(160) VALUE "ƒR[ƒh  ,M40MAB_TBL.Œ_–ñ”Ô†  ,M
      -    "40MAB_TBL.Œ_–ñŽí—Þ  ,M40MAB_TBL.’S“–•”‰ÛƒR[ƒh  ,M40MAB_TBL.
      -    "ÄƒŠ[ƒX‰ñ”  ,M40MAB_TBL.[“–ŠJŽn”NŒŽ  ,M40MAB_TBL.[“–ŒŽ”
      -    "  ,M40MA".

           02  FILLER PIC X(160) VALUE "B_TBL.‘O•¥‰ñŽû•û–@  ,M40MAB_TBL.
      -    "“ü‹à“ú  ,M40MAB_TBL.“ü‹à‹æ•ª  ,D01TRS_TBL.Žæˆøæ–¼Ì  ,D02SQ
      -    "S_TBL.¿‹æ–¼Ì  ,M40MAB_TBL.‘OŒŽ––Žc‚  ,M40MAB_TBL.“–ŒŽ‰ñ
      -    "ŽûŠz  ,M".

           02  FILLER PIC X(160) VALUE "40MAB_TBL.“–ŒŽÁ‰»Šz  ,M40MAB_TB
      -    "L.“–ŒŽ––Žc‚  ,M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ  ,M40MAB_TBL.“–ŒŽ‘¼
      -    "ŽÐ‰ð–ñ•ª—¿‹à  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ  ,M40MAB_TBL.
      -    "“–ŒŽ––Žc".

           02  FILLER PIC X(160) VALUE "‚‘¼ŽÐ  ,M40MAB_TBL.‹¦’²‹æ•ª   f
      -     "rom M40MAB_TBL ,D01TRS_TBL ,D02SQS_TBL where (((M40MAB_TBL.
      -    "‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO='1' and M40MAB_TBL.¿‹æŽæˆøæƒR
      -    "[ƒh=D01T".

           02  FILLER PIC X(160) VALUE "RS_TBL.ŽæˆøæƒR[ƒh(+)) and M40M
      -    "AB_TBL.¿‹æŽæˆøæƒR[ƒh=D02SQS_TBL.ŽæˆøæƒR[ƒh(+)) and M4
      -    "0MAB_TBL.¿‹æƒR[ƒh=D02SQS_TBL.¿‹æƒR[ƒh(+)) order by M
      -    "40MAB_TB".

           02  FILLER PIC X(45) VALUE  "L.ƒŒƒR[ƒh‹æ•ª,M40MAB_TBL.Œ_–ñ”Ô
      -    "†           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +207.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +81.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +236.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +86.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1005.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +312.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +362.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +28.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +228.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +149.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +441.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +247.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +141.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +467.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +266.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +304.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +502.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1120.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +293.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +681.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580*--< €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì >                                       
000590 01 €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì.                                         
000600    03 ‚v‚r|–¼Ì‚P               PIC  X(60).                     
000610    03 ‚v‚r|–¼Ì‚Q               PIC  X(60).                     
000620*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000630     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000640*                        M40MAB.CBL                               
000650*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000660     
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
000670*                                                                 
000680*--< ‘OŽóî•ñ‚c‚a >                                               
000690     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL            END-EXEC.
000700*                                                                 
000710*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹ >                                           
000010************************************************
000020* ‘OŽóî•ñ(M40MAB)
000030************************************************
000040 01  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª           PIC  X(1).
000050 01  ‚l‚S‚O|Œ_–ñ”Ô†               PIC  X(15).
000060 01  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”           PIC S9(2) COMP-3.
000070 01  ‚l‚S‚O|Œ_–ñŽí—Þ               PIC  X(3).
000080 01  ‚l‚S‚O|‰¼Žó‹à“ü‹à“ú           PIC  X(8).
000090 01  ‚l‚S‚O|‰¼Žó‹à‚r‚d‚p|‚m‚n     PIC S9(6) COMP-3.
000100 01  ‚l‚S‚O|‘O•¥‰ñŽû•û–@           PIC  X(1).
000110 01  ‚l‚S‚O|‘O•¥‰ñŽûƒTƒCƒg         PIC S9(2) COMP-3.
000120 01  ‚l‚S‚O|‘O•¥‰ñŽû“ú             PIC  X(2).
000130 01  ‚l‚S‚O|[“–ŠJŽn‰ñ             PIC S9(3) COMP-3.
000140 01  ‚l‚S‚O|[“–ŒŽ”               PIC S9(3) COMP-3.
000150 01  ‚l‚S‚O|[“–ŠJŽn”NŒŽ           PIC  X(6).
000160 01  ‚l‚S‚O|UžŽè”—¿             PIC S9(13) COMP-3.
000170 01  ‚l‚S‚O|‘O•¥‹àŠz               PIC S9(13) COMP-3.
000180 01  ‚l‚S‚O|‘O•¥‹àŠzÁ”ïÅ         PIC S9(13) COMP-3.
000190 01  ‚l‚S‚O|‘¼ŽÐ‘O•¥‹àŠz           PIC S9(13) COMP-3.
000200 01  ‚l‚S‚O|‘¼ŽÐ‘O•¥‹àŠzÁ”ïÅ     PIC S9(13) COMP-3.
000210 01  ‚l‚S‚O|‰ð–ñ•ª—¿‹à—ÝŒv         PIC S9(13) COMP-3.
000220 01  ‚l‚S‚O|‰ð–ñ•ªÁ”ïÅ—ÝŒv       PIC S9(13) COMP-3.
000230 01  ‚l‚S‚O|‘¼ŽÐ‰ð–ñ•ª—¿‹à—ÝŒv     PIC S9(13) COMP-3.
000240 01  ‚l‚S‚O|‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ—ÝŒv   PIC S9(13) COMP-3.
000250 01  ‚l‚S‚O|–¢‰ñŽûŠz               PIC S9(13) COMP-3.
000260 01  ‚l‚S‚O|‘¼ŽÐ–¢‰ñŽûŠz           PIC S9(13) COMP-3.
000270 01  ‚l‚S‚O|ó‘ÔƒR[ƒh             PIC  N(2).
000280 01  ‚l‚S‚O|‹âsƒR[ƒh             PIC  X(4).
000290 01  ‚l‚S‚O|Žx“XƒR[ƒh             PIC  X(4).
000300 01  ‚l‚S‚O|UžˆË—Šl–¼           PIC  X(48).
000310 01  ‚l‚S‚O|‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO PIC  X(1).
000320 01  ‚l‚S‚O|‰¼Žó‹à“à–ó•\‘ÎÛƒtƒ‰ƒO PIC  X(1).
000330 01  ‚l‚S‚O|‰ïŒv•”–åƒR[ƒh         PIC  X(2).
000340 01  ‚l‚S‚O|Žd–óƒtƒ‰ƒO|U‘Ö‘OŽóƒŠ[ƒX—¿ PIC  X(1).
000350 01  ‚l‚S‚O|Žd–óƒtƒ‰ƒO|U‘Ö‘OŽó   PIC  X(1).
000360 01  ‚l‚S‚O|Žd–óƒtƒ‰ƒO|U‘Ö‰¼Žó   PIC  X(1).
000370 01  ‚l‚S‚O|Œ_–ñŠJŽn“ú             PIC  X(8).
000380 01  ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh     PIC  X(9).
000390 01  ‚l‚S‚O|ŒÚ‹q‹æ•ª               PIC  X(2).
000400 01  ‚l‚S‚O|‚s‚`‚r‚rƒR[ƒh         PIC  X(7).
000410 01  ‚l‚S‚O|‘Ý“|”NŒŽ“ú             PIC  X(8).
000420 01  ‚l‚S‚O|“Á’èŽæˆøæ‹æ•ª         PIC  X(1).
000430 01  ‚l‚S‚O|Å‘å“Â‘£‰ñ”           PIC  X(1).
000440 01  ‚l‚S‚O|¿‹æƒR[ƒh           PIC  X(5).
000450 01  ‚l‚S‚O|Œ_–ñæŽæˆøæƒR[ƒh     PIC  X(9).
000460 01  ‚l‚S‚O|Œ_–ñæƒR[ƒh           PIC  X(5).
000470 01  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh         PIC  X(4).
000480 01  ‚l‚S‚O|’S“–ŽÒƒR[ƒh           PIC  X(8).
000490 01  ‚l‚S‚O|‹¦’²‹æ•ª               PIC  X(1).
000500 01  ‚l‚S‚O|ŠÇ—ÂŒ ƒŒƒxƒ‹         PIC  X(1).
000510 01  ‚l‚S‚O|ŽåŒ_–ñ‹æ•ª             PIC  X(1).
000520 01  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª       PIC  X(1).
000530 01  ‚l‚S‚O|ŽæÁ‹æ•ª               PIC  X(1).
000540 01  ‚l‚S‚O|‘OŒŽ––Žc‚             PIC S9(13) COMP-3.
000550 01  ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ         PIC S9(13) COMP-3.
000560 01  ‚l‚S‚O|‘OŒŽ–˜‰ð–ñ•ª—¿‹à—ÝŒv   PIC S9(13) COMP-3.
000570 01  ‚l‚S‚O|‘OŒŽ–˜‰ð–ñ•ªÁ”ïÅ—ÝŒv PIC S9(13) COMP-3.
000580 01  ‚l‚S‚O|‘OŒŽ–˜‘¼ŽÐ‰ð–ñ•ª—¿‹à—ÝŒv PIC S9(13) COMP-3.
000590 01  ‚l‚S‚O|‘OŒŽ–˜‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ—ÝŒv PIC S9(13) COMP-3.
000600 01  ‚l‚S‚O|‘OŒŽ–˜Á‰»Šz—ÝŒv       PIC S9(13) COMP-3.
000610 01  ‚l‚S‚O|‘OŒŽ–˜Á‰»Šz—ÝŒv‘¼ŽÐ   PIC S9(13) COMP-3.
000620 01  ‚l‚S‚O|‘OŒŽ–˜U‘ÖŠz—ÝŒv       PIC S9(13) COMP-3.
000630 01  ‚l‚S‚O|‘OŒŽ–˜U‘ÖŠz—ÝŒv‘¼ŽÐ   PIC S9(13) COMP-3.
000640 01  ‚l‚S‚O|“–ŒŽ‰ð–ñ•ª—¿‹à         PIC S9(13) COMP-3.
000650 01  ‚l‚S‚O|“–ŒŽ‰ð–ñ•ªÁ”ïÅ       PIC S9(13) COMP-3.
000660 01  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à     PIC S9(13) COMP-3.
000670 01  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ   PIC S9(13) COMP-3.
000680 01  ‚l‚S‚O|‰ñŽûŠz                 PIC S9(13) COMP-3.
000690 01  ‚l‚S‚O|‘¼ŽÐ‰ñŽûŠz             PIC S9(13) COMP-3.
000700 01  ‚l‚S‚O|‘¼ŽÐ‰ñŽûŠzÁ”ïÅ       PIC S9(13) COMP-3.
000710 01  ‚l‚S‚O|“ü‹à“ú                 PIC  X(8).
000720 01  ‚l‚S‚O|”ï–Ú                   PIC  X(1).
000730 01  ‚l‚S‚O|“ü‹à‹æ•ª               PIC  X(2).
000740 01  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz             PIC S9(13) COMP-3.
000750 01  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ         PIC S9(13) COMP-3.
000760 01  ‚l‚S‚O|“–ŒŽÁ‰»Šz             PIC S9(13) COMP-3.
000770 01  ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ         PIC S9(13) COMP-3.
000780 01  ‚l‚S‚O|Á‰»Šz—ÝŒv             PIC S9(13) COMP-3.
000790 01  ‚l‚S‚O|Á‰»Šz—ÝŒv‘¼ŽÐ         PIC S9(13) COMP-3.
000800 01  ‚l‚S‚O|Á‰»“ú                 PIC  X(8).
000810 01  ‚l‚S‚O|“–ŒŽU‘ÖŠz             PIC S9(13) COMP-3.
000820 01  ‚l‚S‚O|“–ŒŽU‘ÖŠz‘¼ŽÐ         PIC S9(13) COMP-3.
000830 01  ‚l‚S‚O|U‘Ö“ú                 PIC  X(8).
000840 01  ‚l‚S‚O|U‘ÖŠz—ÝŒv             PIC S9(13) COMP-3.
000850 01  ‚l‚S‚O|U‘ÖŠz—ÝŒv‘¼ŽÐ         PIC S9(13) COMP-3.
000860 01  ‚l‚S‚O|“–ŒŽ––Žc‚             PIC S9(13) COMP-3.
000870 01  ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ         PIC S9(13) COMP-3.
000880 01  ‚l‚S‚O|Žc‘OŽóŒŽ”             PIC S9(3)V9(2) COMP-3.
000720     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL            END-EXEC.
000730*                                                                 
000740*--< Žæˆøæƒ}ƒXƒ^>                                                
000010************************************************
000020* ‹Æ–±ŠÇ—(D70GYM)
000030************************************************
000040 01  ‚c‚V‚O|‹Æ–±ŠÇ—‚h‚c           PIC  X(8).
000050 01  ‚c‚V‚O|‹Æ–±”NŒŽ               PIC  X(6).
000060 01  ‚c‚V‚O|ŠúŽñ”NŒŽ               PIC  X(6).
000070 01  ‚c‚V‚O|Šú––”NŒŽ               PIC  X(6).
000080 01  ‚c‚V‚O|{ˆ—“ú               PIC  X(8).
000090 01  ‚c‚V‚O|{ŽŸ’÷“ú               PIC  X(8).
000100 01  ‚c‚V‚O|{ŽŸˆ—“ú             PIC  X(8).
000110 01  ‚c‚V‚O|ŒûU’÷“ú‚P             PIC  X(2).
000120 01  ‚c‚V‚O|ŒûU“ú‚P               PIC  X(8).
000130 01  ‚c‚V‚O|ŒûU‰¼’÷“ú‚P           PIC  X(8).
000140 01  ‚c‚V‚O|ŒûU–{’÷“ú‚P           PIC  X(8).
000150 01  ‚c‚V‚O|ŒûU’÷“ú‚Q             PIC  X(2).
000160 01  ‚c‚V‚O|ŒûU“ú‚Q               PIC  X(8).
000170 01  ‚c‚V‚O|ŒûU‰¼’÷“ú‚Q           PIC  X(8).
000180 01  ‚c‚V‚O|ŒûU–{’÷“ú‚Q           PIC  X(8).
000190 01  ‚c‚V‚O|ŒŽŽŸ’÷“ú               PIC  X(8).
000200 01  ‚c‚V‚O|ŒŽŽŸˆ—“ú             PIC  X(8).
000210 01  ‚c‚V‚O|”N––’÷“ú               PIC  X(8).
000220 01  ‚c‚V‚O|”N––ˆ—“ú             PIC  X(8).
000230 01  ‚c‚V‚O|Šú––’÷“ú               PIC  X(8).
000240 01  ‚c‚V‚O|Šú––ˆ—“ú             PIC  X(8).
000250 01  ‚c‚V‚O|ÅV¿‹‘”Ô†         PIC S9(7) COMP-3.
000260 01  ‚c‚V‚O|XV”NŒŽ“ú             PIC  X(8).
000270 01  ‚c‚V‚O|XVŽžŠÔ               PIC  X(8).
000280 01  ‚c‚V‚O|XVŽÒ                 PIC  X(8).
000290 01  ‚c‚V‚O|“ü—Í’S“–ŽÒƒR[ƒh       PIC  X(8).
000300 01  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ       PIC  X(6).
000310 01  ‚c‚V‚O|ƒoƒbƒ`—pŠúŽñ”NŒŽ       PIC  X(6).
000320 01  ‚c‚V‚O|ƒoƒbƒ`—pŠú––”NŒŽ       PIC  X(6).
000330 01  ‚c‚V‚O|“Â‘£ˆ—”NŒŽ“ú         PIC  X(8).
000340 01  ‚c‚V‚O|ƒ`ƒFƒbƒNƒŠƒXƒgˆ—”NŒŽ“ú PIC  X(8).
000350 01  ‚c‚V‚O|Å‚Žx•¥ˆË—Š”Ô†       PIC S9(10) COMP-3.
000360 01  ‚c‚V‚O|ŒŽŽŸˆ—ŠJŽn”NŒŽ“ú     PIC  X(8).
000370 01  ‚c‚V‚O|ŒŽŽŸˆ—ŠJŽnŽž       PIC  X(8).
000380 01  ‚c‚V‚O|ŒŽŽŸˆ—I—¹”NŒŽ“ú     PIC  X(8).
000390 01  ‚c‚V‚O|ŒŽŽŸˆ—I—¹Žž       PIC  X(8).
000400 01  ‚c‚V‚O|‘O‰ñ“Â‘£ˆ—”NŒŽ“ú     PIC  X(8).
000410 01  ‚c‚V‚O|ƒoƒbƒ`ˆ—ó‹µƒtƒ‰ƒO   PIC  X(1).
000750     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL            END-EXEC.
000760*                                                                 
000770*--< ¿‹æƒ}ƒXƒ^ >                                               
      *****************************************************************
      *   Žæˆøæƒ}ƒXƒ^(D01TRS_TBL)
      *****************************************************************
       01  Žæˆøæƒ}ƒXƒ^.
           03  ‚c‚O‚P|ŽæˆøæƒR[ƒh  PIC  X(009).
           03  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh  PIC  X(040).
           03  ‚c‚O‚P|Žæˆøæ–¼Ì    PIC  X(080).
           03  ‚c‚O‚P|Žæˆøæ’Z–¼Ì  PIC  X(016).
           03  ‚c‚O‚P|ŽæˆøæƒJƒi–¼Ì
                                     PIC  X(040).
           03  ‚c‚O‚P|—X•Ö”Ô†      PIC  X(007).
           03  ‚c‚O‚P|”[•tæƒR[ƒh  PIC  X(011).
           03  ‚c‚O‚P|ZŠ‚P        PIC  X(060).
           03  ‚c‚O‚P|ZŠ‚Q        PIC  X(060).
           03  ‚c‚O‚P|ZŠ‚R        PIC  X(060).
           03  ‚c‚O‚P|“d˜b”Ô†      PIC  X(015).
           03  ‚c‚O‚P|‹ŒŽÐ–¼        PIC  X(080).
           03  ‚c‚O‚P|Ž‘–{‹à        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚O‚P|Ý—§”N        PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚O‚P|Ý—§ŒŽ        PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚P|ŒÚ‹q‹æ•ª      PIC  X(002).
           03  ‚c‚O‚P|Šé‹Æ‹æ•ª      PIC  X(001).
           03  ‚c‚O‚P|]‹Æˆõ”      PIC S9(006) PACKED-DECIMAL.
           03  ‚c‚O‚P|‹ÆŽíƒR[ƒh    PIC  X(005).
           03  ‚c‚O‚P|Ši•tƒ‰ƒ“ƒN    PIC  X(003).
           03  ‚c‚O‚P|Œ»’S“–ŽÒ      PIC  X(008).
           03  ‚c‚O‚P|¿‹æÅI”Ô†
                                     PIC S9(005) PACKED-DECIMAL.
           03  ‚c‚O‚P|Žx•¥æÅI”Ô†
                                     PIC S9(005) PACKED-DECIMAL.
           03  ‚c‚O‚P|Žå’S“–•”‰ÛƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚O‚P|Ši•tƒ‰ƒ“ƒN‚Q  PIC  X(003).
           03  ‚c‚O‚P|‘ã•\ŽÒ–¼Ì    PIC  X(020).
           03  ‚c‚O‚P|ƒAƒhƒŒƒX      PIC  X(040).
           03  ‚c‚O‚P|ŒÚ‹qŽg—p•s‰Âƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚O‚P|—^MŠ‡‚èƒR[ƒh
                                     PIC  X(007).
           03  ‚c‚O‚P|‰‰ñ¿‹˜’u‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|–ž—¹ˆÄ“à‘—•t‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|ÄƒŠ[ƒXŽ©“®Œp‘±‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|“Á’èŽæˆøæ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|Ž–‹ÆŠ–¼Ì    PIC  X(080).
           03  ‚c‚O‚P|Ž–‹ÆŠ—X•Ö”Ô†
                                     PIC  X(007).
           03  ‚c‚O‚P|Ž–‹ÆŠZŠƒR[ƒh
                                     PIC  X(011).
           03  ‚c‚O‚P|Ž–‹ÆŠZŠ‚Q  PIC  X(060).
           03  ‚c‚O‚P|Ž–‹ÆŠ“d˜b”Ô†
                                     PIC  X(015).
           03  ‚c‚O‚P|¶”NŒŽ“ú      PIC  X(008).
           03  ‚c‚O‚P|ŠÇ—ÂŒ ƒŒƒxƒ‹
                                     PIC  X(001).
           03  ‚c‚O‚P|‘Ý“|”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚P|‘Ý“|‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚O‚P|‘Ý“|——RƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚O‚P|‘Ý“|ƒRƒƒ“ƒg  PIC  X(100).
           03  ‚c‚O‚P|‘Ý“|\¿”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚O‚P|Ž©“®¿‹ƒf[ƒ^ì¬—v”Û
                                     PIC  X(001).
           03  ‚c‚O‚P|ŠJŽ¦’ •[Žæ“¾‰¿Ši‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|ŽæˆøŠJŽn”NŒŽ  PIC  X(006).
           03  ‚c‚O‚P|‘n‹Æ”NŒŽ      PIC  X(006).
           03  ‚c‚O‚P|Œn—ñ          PIC  X(030).
           03  ‚c‚O‚P|”Ì”„æ        PIC  X(030).
           03  ‚c‚O‚P|Žd“üæ        PIC  X(030).
           03  ‚c‚O‚P|Žå—vŠ”Žå      PIC  X(020).
           03  ‚c‚O‚P|Žå—vŠ”ŽåŽ—¦  PIC S9(003)V9(003) PACKED-DECIMAL.
           03  ‚c‚O‚P|•ÛØlŠÇ—ÂŒ ƒŒƒxƒ‹
                                     PIC  X(001).
           03  ‚c‚O‚P|‰ß‹ŽÅ‚“Â‘£’iŠK
                                     PIC  X(001).
           03  ‚c‚O‚P|‰ß‹ŽÅ‚“Â‘£’iŠKXV“ú
                                     PIC  X(008).
           03  ‚c‚O‚P|Œ»ÝÅ‚“Â‘£’iŠK
                                     PIC  X(001).
           03  ‚c‚O‚P|Œ»ÝÅ‚“Â‘£’iŠKXV“ú
                                     PIC  X(008).
           03  ‚c‚O‚P|”„‹pŒ»ÝÅ‚“Â‘£’iŠK
                                     PIC  X(001).
           03  ‚c‚O‚P|”„‹pŒ»ÝÅ‚“Â‘£’iŠKXV“ú
                                     PIC  X(008).
           03  ‚c‚O‚P|ƒŠ[ƒX“Â‘£ŒðÂo—Íƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚O‚P|’†“r‰ð–ñ“Â‘£ŒðÂo—Íƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚O‚P|”„‹p“Â‘£ŒðÂo—Íƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚O‚P|‹âsƒR[ƒh    PIC  X(004).
           03  ‚c‚O‚P|Žx“XƒR[ƒh    PIC  X(003).
           03  ‚c‚O‚P|‘ã•\ŽÒ–ðE–¼  PIC  X(020).
           03  ‚c‚O‚P|]‹ÆŽí–¼      PIC  X(020).
           03  ‚c‚O‚P|ZŠ–¼ƒJƒi    PIC  X(040).
           03  ‚c‚O‚P|ƒRƒƒ“ƒg—“    PIC  X(120).
           03  ‚c‚O‚P|’é‘ƒR[ƒh    PIC  X(009).
           03  ‚c‚O‚P|Žå—vŠ”ŽåŽŠ””
                                     PIC S9(010) PACKED-DECIMAL.
           03  ‚c‚O‚P|Š”Žå”        PIC S9(010) PACKED-DECIMAL.
           03  ‚c‚O‚P|‘S‘‹ÆŠE‡ˆÊ  PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚O‚P|‘S‘‹ÆŠE‰ïŽÐ”
                                     PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚O‚P|Œ§“à‹ÆŠE‡ˆÊ  PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚O‚P|Œ§“à‹ÆŠE‰ïŽÐ”
                                     PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚O‚P|Ž–‹ÆŠ”      PIC S9(005) PACKED-DECIMAL.
           03  ‚c‚O‚P|Žå—vŽ–‹ÆŠ–¼  PIC  X(120).
           03  ‚c‚O‚P|—˜—pƒŠ[ƒX‰ïŽÐ–¼
                                     PIC  X(040).
           03  ‚c‚O‚P|ƒXƒRƒAƒŠƒ“ƒO•]“_
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚O‚P|’é‘•]“_      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚O‚P|Ši•t\¿’†ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚O‚P|Ši•t’²®\¿——R
                                     PIC  X(200).
           03  ‚c‚O‚P|Ši•t“ú        PIC  X(008).
           03  ‚c‚O‚P|—^MŒÀ“xŠz“K—p“ú
                                     PIC  X(008).
           03  ‚c‚O‚P|“–ŽÐŽæˆøŠJŽnŒoˆÜ
                                     PIC  X(160).
           03  ‚c‚O‚P|Šé‹Æ–Ú“I      PIC  X(100).
           03  ‚c‚O‚P|•\Ž¦’PˆÊ‹æ•ª  PIC  X(001).
           03  ‚c‚O‚P|‚a‚s‚lŽæˆø‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|‚a‚s‚l’S“–Žx“XƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚O‚P|î•ñŒðŠ·’Ê’m‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|î•ñŒðŠ·’Ê’mÝ’è“ú
                                     PIC  X(008).
           03  ‚c‚O‚P|‚a‚s‚l˜AŒ‹‘ÎÛ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|‚a‚n‚s‚k˜AŒ‹‘ÎÛ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|e–§æ‹æ•ª    PIC  X(001).
           03  ‚c‚O‚P|‚m‚d‚s‚k‚d‚`‚r‚h‚m‚f—˜—p‘ÎÛ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|“]ƒŠ[ƒX’ñŒgæƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚O‚P|Ž–‹ÆŠZŠ‚P  PIC  X(060).
           03  ‚c‚O‚P|Ž–‹ÆŠZŠ‚R  PIC  X(060).
           03  ‚c‚O‚P|Šé‹ÆŒˆŽZŒŽ    PIC  X(002).
           03  ‚c‚O‚P|ˆê”Ê‘åŒû‹æ•ª  PIC  X(001).
           03  ‚c‚O‚P|ŽØ“ü‹àŽ¯•Ê‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚P|ŽØ“üæŽí•Ê    PIC  X(002).
           03  ‚c‚O‚P|’S•Û·“ü—¦    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚O‚P|‹Œ–¼Šñ‚¹ƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚O‚P|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚P|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚O‚P|XVŽÒ        PIC  X(008).
           03  ‚c‚O‚P|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚P|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚O‚P|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚O‚P|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
000780     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL            END-EXEC.
000790*--< €–Ú–¼Ìƒ}ƒXƒ^ >                                             
      *****************************************************************
      *   ¿‹æƒ}ƒXƒ^(D02SQS_TBL)
      *****************************************************************
       01  ¿‹æƒ}ƒXƒ^.
           03  ‚c‚O‚Q|ŽæˆøæƒR[ƒh  PIC  X(009).
           03  ‚c‚O‚Q|¿‹æƒR[ƒh  PIC  X(005).
           03  ‚c‚O‚Q|¿‹æ–¼Ì    PIC  X(080).
           03  ‚c‚O‚Q|•”–å–¼Ì      PIC  X(060).
           03  ‚c‚O‚Q|’S“–ŽÒ–¼Ì    PIC  X(020).
           03  ‚c‚O‚Q|¿‹‘•\Ž¦    PIC  X(001).
           03  ‚c‚O‚Q|Užl–¼      PIC  X(040).
           03  ‚c‚O‚Q|—X•Ö”Ô†      PIC  X(007).
           03  ‚c‚O‚Q|”[•tæƒR[ƒh  PIC  X(011).
           03  ‚c‚O‚Q|ZŠ‚Q        PIC  X(060).
           03  ‚c‚O‚Q|ZŠ‚R        PIC  X(060).
           03  ‚c‚O‚Q|“d˜b”Ô†      PIC  X(015).
           03  ‚c‚O‚Q|ˆêŠ‡“ü‹àƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚O‚Q|‘—•tæ–¼Ì    PIC  X(060).
           03  ‚c‚O‚Q|‘—•tæ•”–å    PIC  X(060).
           03  ‚c‚O‚Q|‘—•tæ’S“–ŽÒ  PIC  X(020).
           03  ‚c‚O‚Q|‘—•tæƒJƒi–¼Ì
                                     PIC  X(040).
           03  ‚c‚O‚Q|‘—•tæ—X•Ö”Ô†
                                     PIC  X(007).
           03  ‚c‚O‚Q|‘—•tæŽs’¬‘ºƒR[ƒh
                                     PIC  X(011).
           03  ‚c‚O‚Q|‘—•tæZŠ‚Q  PIC  X(060).
           03  ‚c‚O‚Q|‘—•tæZŠ‚R  PIC  X(060).
           03  ‚c‚O‚Q|‘—•tæ“d˜b”Ô†
                                     PIC  X(015).
           03  ‚c‚O‚Q|Ž©“®ƒ}ƒbƒ`ƒ“ƒO‘ÎÛŠO‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚Q|‰ñŽûƒTƒCƒg    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚Q|‰ñŽû“ú        PIC  X(002).
           03  ‚c‚O‚Q|‰ñŽû•û–@      PIC  X(001).
           03  ‚c‚O‚Q|‰ñŽûŠÔŠu      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚Q|¿‹ƒTƒCƒg    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚Q|¿‹’÷“ú      PIC  X(002).
           03  ‚c‚O‚Q|¿‹ŠÔŠu      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚Q|¿‹Šî€ŒŽ    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚Q|ì¬’Ê”      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚O‚Q|ì¬’PˆÊ      PIC  X(001).
           03  ‚c‚O‚Q|¿‹‘ì¬‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚Q|¿‹Žw’è—lŽ®‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚Q|‘—•t‹æ•ª      PIC  X(001).
           03  ‚c‚O‚Q|ŽóŽæ‘¤‹à—Z‹@ŠÖƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚O‚Q|ŽóŽæ‘¤Žx“XƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚O‚Q|ŽóŽæ‘¤ŒûÀŽí—Þ
                                     PIC  X(001).
           03  ‚c‚O‚Q|ŽóŽæ‘¤ŒûÀ”Ô†
                                     PIC  X(010).
           03  ‚c‚O‚Q|ŒûU‹âsƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚O‚Q|ŒûUŽx“XƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚O‚Q|ŒûUŒûÀŽí—Þ  PIC  X(001).
           03  ‚c‚O‚Q|ŒûUŒûÀ”Ô†  PIC  X(010).
           03  ‚c‚O‚Q|ŒûU–¼‹`l    PIC  X(030).
           03  ‚c‚O‚Q|¿‹ˆ¶–¼ˆóü  PIC  X(001).
           03  ‚c‚O‚Q|¿‹“ú•tˆóü  PIC  X(001).
           03  ‚c‚O‚Q|‰ñŽûŠúŒÀˆóü  PIC  X(001).
           03  ‚c‚O‚Q|Žg—pŒŽˆóü    PIC  X(001).
           03  ‚c‚O‚Q|“à–óˆóü      PIC  X(001).
           03  ‚c‚O‚Q|¿‹”Ô†ˆóü  PIC  X(001).
           03  ‚c‚O‚Q|“E—v—“ˆóü    PIC  X(001).
           03  ‚c‚O‚Q|“E—v—“        PIC  X(060).
           03  ‚c‚O‚Q|”õl—“ˆóü    PIC  X(001).
           03  ‚c‚O‚Q|ŒûU‚²ˆÄ“à‘ì¬‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚Q|W–ñ‹æ•ª      PIC  X(001).
           03  ‚c‚O‚Q|XV“úŽž      PIC  X(016).
           03  ‚c‚O‚Q|XVŽÒ        PIC  X(008).
           03  ‚c‚O‚Q|‘—•tæƒR[ƒh  PIC  X(003).
           03  ‚c‚O‚Q|‰¼‘zŒûÀ˜A”Ô  PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚O‚Q|ŒÚ‹qŽg—p•s‰Âƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚O‚Q|ƒRƒƒ“ƒg—“    PIC  X(060).
           03  ‚c‚O‚Q|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚O‚Q|•”–åƒJƒi–¼Ì  PIC  X(030).
           03  ‚c‚O‚Q|Œ_–ñæƒR[ƒh  PIC  X(005).
           03  ‚c‚O‚Q|‹¤—Lƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚O‚Q|ZŠ‚P        PIC  X(060).
           03  ‚c‚O‚Q|ZŠƒJƒi–¼Ì  PIC  X(060).
           03  ‚c‚O‚Q|‚e‚`‚w”Ô†    PIC  X(015).
           03  ‚c‚O‚Q|U‘Ö‹âsƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚O‚Q|Ž©Uˆø—Ž“ú    PIC  X(002).
           03  ‚c‚O‚Q|ŽóŽæ‘¤ŒûÀƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚O‚Q|UžŽè”—¿•‰’S‹æ•ª
                                     PIC  X(001).
           03  ‚c‚O‚Q|Œ»’S“–ŽÒ      PIC  X(008).
           03  ‚c‚O‚Q|Žå’S“–•”‰ÛƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚O‚Q|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚Q|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚O‚Q|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚O‚Q|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚Q|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚O‚Q|‹Œ¿‹æƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚O‚Q|ŒûÀˆø—ŽˆË—Š‘Žó—Ì“ú
                                     PIC  X(008).
           03  ‚c‚O‚Q|ŒûÀˆø—ŽŠJŽn“ú
                                     PIC  X(008).
000800     
      *    EXEC  SQL  INCLUDE  D19MSY.CBL            END-EXEC.
000810*--< ÂŒ î•ñiˆê”Êj‚c‚a >                                       
      *****************************************************************
      *   €–Ú–¼Ìƒ}ƒXƒ^(D19MSY_TBL)
      *****************************************************************
       01  €–Ú–¼Ìƒ}ƒXƒ^.
           03  ‚c‚P‚X|ƒR[ƒh‚m‚n    PIC  X(012).
           03  ‚c‚P‚X|ƒR[ƒh        PIC  X(005).
           03  ‚c‚P‚X|ƒR[ƒh–¼      PIC  X(040).
           03  ‚c‚P‚X|–¼Ì          PIC  X(060).
           03  ‚c‚P‚X|XV“úŽž      PIC  X(016).
           03  ‚c‚P‚X|XVŽÒ        PIC  X(008).
           03  ‚c‚P‚X|ƒfƒtƒHƒ‹ƒg‹æ•ª
                                     PIC  X(001).
           03  ‚c‚P‚X|ƒpƒXƒ[ƒh“ü—Í‹æ•ª
                                     PIC  X(001).
           03  ‚c‚P‚X|ƒ\[ƒg‡      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚P‚X|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚P‚X|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚P‚X|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚P‚X|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚P‚X|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚P‚X|XVŽžŠÔ      PIC  X(008).
000820     
      *    EXEC  SQL  INCLUDE  M01SAJ.CBL            END-EXEC.
000830*                                                                 
000100************************************************
000200* ÂŒ î•ñ(ˆê”Ê)(M01SAJ)
000300************************************************
000400 01  ‚l‚O‚P|ƒŒƒR[ƒh‹æ•ª           PIC  X(1).
000500 01  ‚l‚O‚P|Œ_–ñ”Ô†               PIC  X(15).
000600 01  ‚l‚O‚P|ÄƒŠ[ƒX‰ñ”           PIC S9(2) COMP-3.
000700 01  ‚l‚O‚P|Œ_–ñŽí—Þ               PIC  X(3).
000800 01  ‚l‚O‚P|˜A”Ô                   PIC S9(3) COMP-3.
000900 01  ‚l‚O‚P|¿‹‹æ•ª               PIC  X(1).
001000 01  ‚l‚O‚P|‰ð–ñ”„‹pŽæÁ‹æ•ª       PIC  X(1).
001100 01  ‚l‚O‚P|ˆ—”NŒŽ               PIC  X(6).
001200 01  ‚l‚O‚P|¿‹æŽæˆøæƒR[ƒh     PIC  X(9).
001300 01  ‚l‚O‚P|ŒÚ‹q‹æ•ª               PIC  X(2).
001400 01  ‚l‚O‚P|‚s‚`‚r‚rƒR[ƒh         PIC  X(7).
001500 01  ‚l‚O‚P|‘Ý“|”NŒŽ“ú             PIC  X(8).
001600 01  ‚l‚O‚P|“Á’èŽæˆøæ‹æ•ª         PIC  X(1).
001700 01  ‚l‚O‚P|Å‘å“Â‘£‰ñ”           PIC  X(1).
001800 01  ‚l‚O‚P|Œ_–ñ“ú                 PIC  X(8).
001900 01  ‚l‚O‚P|ˆø“n”NŒŽ“ú             PIC  X(8).
002000 01  ‚l‚O‚P|Œ_–ñŠJŽn“ú             PIC  X(8).
002100 01  ‚l‚O‚P|Œ_–ñI—¹“ú             PIC  X(8).
002200 01  ‚l‚O‚P|ŠúŠÔ                   PIC S9(3) COMP-3.
002300 01  ‚l‚O‚P|Œ_–ñ‹æ•ª               PIC  X(1).
002400 01  ‚l‚O‚P|ƒŠ[ƒXŠJŽn‹æ•ª         PIC  X(1).
002500 01  ‚l‚O‚P|’S“–•”‰ÛƒR[ƒh         PIC  X(4).
002600 01  ‚l‚O‚P|’S“–ŽÒƒR[ƒh           PIC  X(8).
002700 01  ‚l‚O‚P|‹¦’²‹æ•ª               PIC  X(1).
002800 01  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO             PIC  X(1).
002900 01  ‚l‚O‚P|ŽåŒ_–ñ‹æ•ª             PIC  X(1).
003000 01  ‚l‚O‚P|‘k‹yˆ—‹æ•ª           PIC  X(1).
003100 01  ‚l‚O‚P|‘k‹yˆ—”NŒŽ           PIC  X(6).
003200 01  ‚l‚O‚P|¬–ñ”NŒŽ               PIC  X(6).
003300 01  ‚l‚O‚P|¬–ñŽæÁ”NŒŽ           PIC  X(6).
003400 01  ‚l‚O‚P|ŒŸŽûˆ—”NŒŽ           PIC  X(6).
003500 01  ‚l‚O‚P|ŒŸŽûŽæÁ“ú             PIC  X(8).
003600 01  ‚l‚O‚P|ŒŸŽûŽæÁˆ—”NŒŽ       PIC  X(6).
003700 01  ‚l‚O‚P|ÅV‰ñŽûŠúŠÔ           PIC S9(3) COMP-3.
003800 01  ‚l‚O‚P|‘‰ñŽû‰ñ”             PIC S9(3) COMP-3.
003900 01  ‚l‚O‚P|¿‹ŠÔŠu               PIC S9(2) COMP-3.
004000 01  ‚l‚O‚P|‰ñŽûŠÔŠu               PIC S9(2) COMP-3.
004100 01  ‚l‚O‚P|§“x“]“o˜^”NŒŽ         PIC  X(6).
004200 01  ‚l‚O‚P|§“x“]Šm’èƒtƒ‰ƒO       PIC  X(1).
004300 01  ‚l‚O‚P|‰ñŽûƒTƒCƒg             PIC S9(2) COMP-3.
004400 01  ‚l‚O‚P|‰ñŽû•û–@               PIC  X(1).
004500 01  ‚l‚O‚P|ÄƒŠ[ƒX‹æ•ª           PIC  X(1).
004600 01  ‚l‚O‚P|ŠÇ—ÂŒ ƒŒƒxƒ‹         PIC  X(1).
004700 01  ‚l‚O‚P|‘O•¥ƒtƒ‰ƒO             PIC  X(1).
004800 01  ‚l‚O‚P|“Â‘£‰ñ”               PIC S9(1) COMP-3.
004900 01  ‚l‚O‚P|¿‹æƒR[ƒh           PIC  X(5).
005000 01  ‚l‚O‚P|Œ_–ñæŽæˆøæƒR[ƒh     PIC  X(9).
005100 01  ‚l‚O‚P|Œ_–ñæƒR[ƒh           PIC  X(5).
005200 01  ‚l‚O‚P|Žx•¥ŽæˆøæƒR[ƒh       PIC  X(9).
005300 01  ‚l‚O‚P|Žx•¥æƒR[ƒh           PIC  X(5).
005400 01  ‚l‚O‚P|ŽG”ï”Ì‘£”ï             PIC S9(13) COMP-3.
005500 01  ‚l‚O‚P|ÅVŒŽŠz—¿‹à           PIC S9(13) COMP-3.
005600 01  ‚l‚O‚P|ÅVÁ”ï—¦             PIC S9(2)V9(7) COMP-3.
005700 01  ‚l‚O‚P|ÅVÁ”ïÅŠz           PIC S9(13) COMP-3.
005800 01  ‚l‚O‚P|“–‰Œ_–ñ‘Šz           PIC S9(13) COMP-3.
005900 01  ‚l‚O‚P|“–‰Á”ïÅ‘Šz         PIC S9(13) COMP-3.
006000 01  ‚l‚O‚P|ÅVŒ_–ñ‘Šz           PIC S9(13) COMP-3.
006100 01  ‚l‚O‚P|ÅVÁ”ïÅ‘Šz         PIC S9(13) COMP-3.
006200 01  ‚l‚O‚P|•ÛŽç–³žŠúŠÔ           PIC S9(3) COMP-3.
006300 01  ‚l‚O‚P|‰ñŽûŠz                 PIC S9(13) COMP-3.
006400 01  ‚l‚O‚P|Á”ïÅ‰ñŽûŠz           PIC S9(13) COMP-3.
006500 01  ‚l‚O‚P|ÅV‰ñŽû“ú             PIC  X(8).
006600 01  ‚l‚O‚P|Š„•ŠŒ´‰¿‘Šz           PIC S9(13) COMP-3.
006700 01  ‚l‚O‚P|Š„•Š—˜‰v‘Šz           PIC S9(13) COMP-3.
006800 01  ‚l‚O‚P|“–‰Žæ“¾‰¿Šz           PIC S9(13) COMP-3.
006900 01  ‚l‚O‚P|–ž—¹ƒtƒ‰ƒO             PIC  X(1).
007000 01  ‚l‚O‚P|–ž—¹“ú                 PIC  X(8).
007100 01  ‚l‚O‚P|Ž‘ŽYŽí—Þ               PIC  X(5).
007200 01  ‚l‚O‚P|‡ŽZæŒ_–ñŽí—Þ         PIC  X(3).
007300 01  ‚l‚O‚P|‘Ý•t—˜—¦               PIC S9(2)V9(7) COMP-3.
007400 01  ‚l‚O‚P|ÄƒŠ[ƒXŽè”—¿         PIC S9(13) COMP-3.
007500 01  ‚l‚O‚P|ˆÏ‘õ•ÛŽç‹æ•ª           PIC  X(1).
007600 01  ‚l‚O‚P|ˆÏ‘õ•ÛŽç‘Š“–ŒŽŠz       PIC S9(13) COMP-3.
007700 01  ‚l‚O‚P|§“x“]Žx•¥ŒŽŠz         PIC S9(13) COMP-3.
007800 01  ‚l‚O‚P|‘O•¥ŒŽ”               PIC S9(3) COMP-3.
007900 01  ‚l‚O‚P|‚»‚Ì‘¼Œ_–ñŽí—Þ‹æ•ª     PIC  X(1).
008000 01  ‚l‚O‚P|Œ_–ñŽí—Þ‹æ•ª           PIC  X(1).
008100 01  ‚l‚O‚P|Œ_–ñŽí—Þ“à•”ƒR[ƒh     PIC  X(2).
008200 01  ‚l‚O‚P|Žx•¥—˜‘§               PIC S9(13) COMP-3.
008300 01  ‚l‚O‚P|Œ´‰¿’²®Šz             PIC S9(13) COMP-3.
008400 01  ‚l‚O‚P|ŒÅ’èŽ‘ŽYÅ             PIC S9(13) COMP-3.
008500 01  ‚l‚O‚P|”N—˜‰ñ‚è               PIC S9(2)V9(3) COMP-3.
008600 01  ‚l‚O‚P|‰^—p—˜‰ñ‚è             PIC S9(2)V9(3) COMP-3.
008700 01  ‚l‚O‚P|‘e—˜‰vŠz               PIC S9(13) COMP-3.
008800 01  ‚l‚O‚P|‘e—˜‰vŠz|•\           PIC S9(13) COMP-3.
008900 01  ‚l‚O‚P|‘e—˜‰vŠz|—            PIC S9(13) COMP-3.
009000 01  ‚l‚O‚P|‹K’è‘¹ŠQ‹àŠî–{Šz       PIC S9(13) COMP-3.
009100 01  ‚l‚O‚P|M—p•ÛŒ¯—¿             PIC S9(13) COMP-3.
009200 01  ‚l‚O‚P|“®ŽY•ÛŒ¯—¿             PIC S9(13) COMP-3.
009300 01  ‚l‚O‚P|•ÛŽç—¿                 PIC S9(13) COMP-3.
009400 01  ‚l‚O‚P|‚»‚Ì‘¼ŽG”ï             PIC S9(13) COMP-3.
009500 01  ‚l‚O‚P|Žè”—¿                 PIC S9(13) COMP-3.
009600 01  ‚l‚O‚P|ŽèŒ`ŽóŽæ“ú             PIC  X(8).
009700 01  ‚l‚O‚P|ŽèŒ`–‡”               PIC S9(3) COMP-3.
009800 01  ‚l‚O‚P|Ši•t‹æ•ª               PIC  X(2).
009900 01  ‚l‚O‚P|Žæ“¾‰¿Šz               PIC S9(13) COMP-3.
010000 01  ‚l‚O‚P|Ž©ŽÐ•ªŒŽŠz—¿‹à         PIC S9(13) COMP-3.
010100 01  ‚l‚O‚P|Ž©ŽÐ•ªŒŽŠzÁ”ïÅ       PIC S9(13) COMP-3.
010200 01  ‚l‚O‚P|Ž©ŽÐ•ªŒ_–ñ‘Šz         PIC S9(13) COMP-3.
010300 01  ‚l‚O‚P|Ž©ŽÐ•ªÁ”ïÅ‘Šz       PIC S9(13) COMP-3.
010400 01  ‚l‚O‚P|‘¼ŽÐw“üŠz             PIC S9(13) COMP-3.
010500 01  ‚l‚O‚P|Žc‰¿Ý’èŠz             PIC S9(13) COMP-3.
010600 01  ‚l‚O‚P|‘¼ŽÐŽc‰¿Ý’èŠz         PIC S9(13) COMP-3.
010700 01  ‚l‚O‚P|‘¼ŽÐ‰ñŽûŠz             PIC S9(13) COMP-3.
010800 01  ‚l‚O‚P|‘¼ŽÐ‰ñŽûŠzÁ”ïÅ       PIC S9(13) COMP-3.
010900 01  ‚l‚O‚P|‘¼ŽÐŠ„•ŠŒ´‰¿‘Šz       PIC S9(13) COMP-3.
011000 01  ‚l‚O‚P|‘¼ŽÐŠ„•Š—˜‰v‘Šz       PIC S9(13) COMP-3.
011100 01  ‚l‚O‚P|‰ð–ñƒtƒ‰ƒO             PIC  X(1).
011200 01  ‚l‚O‚P|‰ð–ñ“ú                 PIC  X(8).
011300 01  ‚l‚O‚P|‰ð–ñ‰ñ”               PIC S9(3) COMP-3.
011400 01  ‚l‚O‚P|‰ð–ñ‹æ•ª               PIC  X(1).
011500 01  ‚l‚O‚P|‰ð–ñ——R               PIC  X(2).
011600 01  ‚l‚O‚P|‰ð–ñˆ—”NŒŽ           PIC  X(6).
011700 01  ‚l‚O‚P|ŽæÁ‹æ•ª               PIC  X(1).
011800 01  ‚l‚O‚P|‰ð–ñŽæÁˆ—”NŒŽ       PIC  X(6).
011900 01  ‚l‚O‚P|‰ð–ñ”NŒŽ               PIC  X(6).
012000 01  ‚l‚O‚P|‰ð–ñŒŽ”               PIC S9(3) COMP-3.
012100 01  ‚l‚O‚P|‘OŒŽÂŒ ‘Šz           PIC S9(13) COMP-3.
012200 01  ‚l‚O‚P|‘OŒŽ”„ã‘Šz           PIC S9(13) COMP-3.
012300 01  ‚l‚O‚P|‘OŒŽ”„ã‘Šz‘¼ŽÐ       PIC S9(13) COMP-3.
012400 01  ‚l‚O‚P|‘OŒŽÁ”ïÅ‘Šz         PIC S9(13) COMP-3.
012500 01  ‚l‚O‚P|‘OŒŽÁ”ïÅ‘Šz‘¼ŽÐ     PIC S9(13) COMP-3.
012600 01  ‚l‚O‚P|”„ã‘Šz               PIC S9(13) COMP-3.
012700 01  ‚l‚O‚P|”„ã‘Šz‘¼ŽÐ           PIC S9(13) COMP-3.
012800 01  ‚l‚O‚P|”„ãÁ”ïÅ‘Šz         PIC S9(13) COMP-3.
012900 01  ‚l‚O‚P|”„ãÁ”ïÅ‘Šz‘¼ŽÐ     PIC S9(13) COMP-3.
013000 01  ‚l‚O‚P|‘OŠú–––¢ŽÀŒ»Žc‚       PIC S9(13) COMP-3.
013100 01  ‚l‚O‚P|‘OŠú–––¢ŽÀŒ»Žc‚‘¼ŽÐ   PIC S9(13) COMP-3.
013200 01  ‚l‚O‚P|‘OŠú–˜”„ãŠz—ÝŒv       PIC S9(13) COMP-3.
013300 01  ‚l‚O‚P|‘OŠú–˜”„ãŠz—ÝŒv‘¼ŽÐ   PIC S9(13) COMP-3.
013400 01  ‚l‚O‚P|‘OŠú–˜Á”ïÅŠz—ÝŒv     PIC S9(13) COMP-3.
013500 01  ‚l‚O‚P|‘OŠú–˜Á”ïÅŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
013600 01  ‚l‚O‚P|“–ŒŽ”„ãŠz             PIC S9(13) COMP-3.
013700 01  ‚l‚O‚P|“–ŒŽ”„ãŠz‚Q           PIC S9(13) COMP-3.
013800 01  ‚l‚O‚P|“–ŒŽ”„ãŠz‘¼ŽÐ         PIC S9(13) COMP-3.
013900 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ‘Š“–Šz       PIC S9(13) COMP-3.
014000 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ‘Š“–Šz‚Q     PIC S9(13) COMP-3.
014100 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ‘Š“–Šz‘¼ŽÐ   PIC S9(13) COMP-3.
014200 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ—¦           PIC S9(2)V9(7) COMP-3.
014300 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ—¦‚Q         PIC S9(2)V9(7) COMP-3.
014400 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ—¦‘¼ŽÐ       PIC S9(2)V9(7) COMP-3.
014500 01  ‚l‚O‚P|“–ŒŽ–˜”„ãŠz—ÝŒv       PIC S9(13) COMP-3.
014600 01  ‚l‚O‚P|“–ŒŽ–˜”„ãŠz—ÝŒv‘¼ŽÐ   PIC S9(13) COMP-3.
014700 01  ‚l‚O‚P|“–ŒŽ–˜Á”ïÅŠz—ÝŒv     PIC S9(13) COMP-3.
014800 01  ‚l‚O‚P|“–ŒŽ–˜Á”ïÅŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
014900 01  ‚l‚O‚P|“–Šú”„ãŠz—ÝŒv         PIC S9(13) COMP-3.
015000 01  ‚l‚O‚P|“–Šú”„ãŠz—ÝŒv‘¼ŽÐ     PIC S9(13) COMP-3.
015100 01  ‚l‚O‚P|“–ŒŽ–––¢ŽÀŒ»Žc‚       PIC S9(13) COMP-3.
015200 01  ‚l‚O‚P|“–ŒŽ–––¢ŽÀŒ»Žc‚‘¼ŽÐ   PIC S9(13) COMP-3.
015300 01  ‚l‚O‚P|“–ŒŽ”„ã‘‰ÁŠz         PIC S9(13) COMP-3.
015400 01  ‚l‚O‚P|“–ŒŽ”„ã‘‰ÁŠz‘¼ŽÐ     PIC S9(13) COMP-3.
015500 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ‘‰ÁŠz       PIC S9(13) COMP-3.
015600 01  ‚l‚O‚P|“–ŒŽÁ”ïÅ‘‰ÁŠz‘¼ŽÐ   PIC S9(13) COMP-3.
015700 01  ‚l‚O‚P|“–ŒŽ”„ãŒ¸­Šz         PIC S9(13) COMP-3.
015800 01  ‚l‚O‚P|“–ŒŽ”„ãŒ¸­Šz‘¼ŽÐ     PIC S9(13) COMP-3.
015900 01  ‚l‚O‚P|“–ŒŽÁ”ïÅŒ¸­Šz       PIC S9(13) COMP-3.
016000 01  ‚l‚O‚P|“–ŒŽÁ”ïÅŒ¸­Šz‘¼ŽÐ   PIC S9(13) COMP-3.
016100 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª‘‰ÁŽ©”„ã”NŒŽ PIC  X(6).
016200 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª‘‰ÁŽŠ”„ã”NŒŽ PIC  X(6).
016300 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ã‘‰ÁŠz   PIC S9(13) COMP-3.
016400 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ã‘‰ÁŠz‚Q PIC S9(13) COMP-3.
016500 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ã‘‰ÁŠz‘¼ŽÐ PIC S9(13) COMP-3.
016600 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅ‘‰ÁŠz PIC S9(13) COMP-3.
016700 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅ‘‰ÁŠz‚Q PIC S9(13) COMP-3.
016800 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅ‘‰ÁŠz‘¼ŽÐ PIC S9(13) COMP-3.
016900 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªŒ¸­Ž©”„ã”NŒŽ PIC  X(6).
017000 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªŒ¸­ŽŠ”„ã”NŒŽ PIC  X(6).
017100 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ãŒ¸­Šz   PIC S9(13) COMP-3.
017200 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ãŒ¸­Šz‚Q PIC S9(13) COMP-3.
017300 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ãŒ¸­Šz‘¼ŽÐ PIC S9(13) COMP-3.
017400 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅŒ¸­Šz PIC S9(13) COMP-3.
017500 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅŒ¸­Šz‚Q PIC S9(13) COMP-3.
017600 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅŒ¸­Šz‘¼ŽÐ PIC S9(13) COMP-3.
017700 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅ—¦     PIC S9(2)V9(7) COMP-3.
017800 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªÁ”ïÅ—¦‚Q   PIC S9(2)V9(7) COMP-3.
017900 01  ‚l‚O‚P|‘OŒŽ”„ãŠz             PIC S9(13) COMP-3.
018000 01  ‚l‚O‚P|‘OŒŽ”„ãŠz‚Q           PIC S9(13) COMP-3.
018100 01  ‚l‚O‚P|‘OŒŽ”„ãŠz‘¼ŽÐ         PIC S9(13) COMP-3.
018200 01  ‚l‚O‚P|‘OŒŽÁ”ïÅ‘Š“–Šz       PIC S9(13) COMP-3.
018300 01  ‚l‚O‚P|‘OŒŽÁ”ïÅ‘Š“–Šz‚Q     PIC S9(13) COMP-3.
018400 01  ‚l‚O‚P|‘OŒŽÁ”ïÅ‘Š“–Šz‘¼ŽÐ   PIC S9(13) COMP-3.
018500 01  ‚l‚O‚P|‘OŒŽ–˜”„ãŠz—ÝŒv       PIC S9(13) COMP-3.
018600 01  ‚l‚O‚P|‘OŒŽ–˜”„ãŠz—ÝŒv‘¼ŽÐ   PIC S9(13) COMP-3.
018700 01  ‚l‚O‚P|‘OŒŽ–˜Á”ïÅŠz—ÝŒv     PIC S9(13) COMP-3.
018800 01  ‚l‚O‚P|‘OŒŽ–˜Á”ïÅŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
018900 01  ‚l‚O‚P|‘OŠú––Œ³–{Žc‚         PIC S9(13) COMP-3.
019000 01  ‚l‚O‚P|‘OŠú––—˜‘§Žc‚         PIC S9(13) COMP-3.
019100 01  ‚l‚O‚P|‘OŒŽ–˜Œ³–{‰ñŽûŠz—ÝŒv   PIC S9(13) COMP-3.
019200 01  ‚l‚O‚P|‘OŒŽ–˜—˜‘§‰ñŽûŠz—ÝŒv   PIC S9(13) COMP-3.
019300 01  ‚l‚O‚P|‘OŒŽ––Œ³–{Žc‚         PIC S9(13) COMP-3.
019400 01  ‚l‚O‚P|‘OŒŽ––—˜‘§Žc‚         PIC S9(13) COMP-3.
019500 01  ‚l‚O‚P|V‹K‘‰Á•ªŒ³–{Šz       PIC S9(13) COMP-3.
019600 01  ‚l‚O‚P|V‹K‘‰Á•ª—˜‘§Šz       PIC S9(13) COMP-3.
019700 01  ‚l‚O‚P|“–ŒŽŒ³–{“ü‹àŠz         PIC S9(13) COMP-3.
019800 01  ‚l‚O‚P|“–ŒŽ—˜‘§“ü‹àŠz         PIC S9(13) COMP-3.
019900 01  ‚l‚O‚P|“–ŒŽ––Œ³–{Žc‚         PIC S9(13) COMP-3.
020000 01  ‚l‚O‚P|“–ŒŽ––—˜‘§Žc‚         PIC S9(13) COMP-3.
020100 01  ‚l‚O‚P|“–ŒŽ–˜Œ³–{Žû“ü—\’èŠz—ÝŒv PIC S9(13) COMP-3.
020200 01  ‚l‚O‚P|“–ŒŽ–˜—˜‘§Žû“ü—\’èŠz—ÝŒv PIC S9(13) COMP-3.
020300 01  ‚l‚O‚P|“–ŒŽ–˜Œ³–{‰ñŽûŠz—ÝŒv   PIC S9(13) COMP-3.
020400 01  ‚l‚O‚P|“–ŒŽ–˜—˜‘§‰ñŽûŠz—ÝŒv   PIC S9(13) COMP-3.
020500 01  ‚l‚O‚P|“–ŒŽ–˜Œ³–{‰ñŽûŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
020600 01  ‚l‚O‚P|“–ŒŽ–˜—˜‘§‰ñŽûŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
020700 01  ‚l‚O‚P|“–ŒŽ‰ñŽû—\’èŠz         PIC S9(13) COMP-3.
020800 01  ‚l‚O‚P|Œ³–{–¢Œo‰ßƒŠ[ƒX—¿     PIC S9(13) COMP-3.
020900 01  ‚l‚O‚P|—˜‘§–¢Œo‰ßƒŠ[ƒX—¿     PIC S9(13) COMP-3.
021000 01  ‚l‚O‚P|Œ³–{–¢ŽûƒŠ[ƒX—¿       PIC S9(13) COMP-3.
021100 01  ‚l‚O‚P|—˜‘§–¢ŽûƒŠ[ƒX—¿       PIC S9(13) COMP-3.
021200 01  ‚l‚O‚P|“–ŒŽ‘OŽóƒŠ[ƒX—¿“ü‹àŠz PIC S9(13) COMP-3.
021300 01  ‚l‚O‚P|“–ŒŽ–˜‘OŽóƒŠ[ƒX—¿“ü‹àŠz PIC S9(13) COMP-3.
021400 01  ‚l‚O‚P|“–ŒŽ‘OŽóƒŠ[ƒX—¿Á‰»Šz PIC S9(13) COMP-3.
021500 01  ‚l‚O‚P|“–ŒŽ‘OŽó‹àÁ‰»Šz       PIC S9(13) COMP-3.
021600 01  ‚l‚O‚P|Œ³–{‘OŽó‹à             PIC S9(13) COMP-3.
021700 01  ‚l‚O‚P|—˜‘§‘OŽó‹à             PIC S9(13) COMP-3.
021800 01  ‚l‚O‚P|“–ŒŽ––‘OŽóƒŠ[ƒX—¿Žc‚ PIC S9(13) COMP-3.
021900 01  ‚l‚O‚P|‘Ý“|‘¹Ž¸Šz             PIC S9(13) COMP-3.
022000 01  ‚l‚O‚P|Œ»Ý•ë‰¿               PIC S9(13) COMP-3.
022100 01  ‚l‚O‚P|‘Ï—p”N”               PIC S9(2) COMP-3.
022200 01  ‚l‚O‚P|•ÛŒ¯—¿—¦               PIC S9(2) COMP-3.
022300 01  ‚l‚O‚P|S‘©ŠúŠÔŒã“–ŒŽƒŒƒ“ƒ^ƒ‹—¿ PIC S9(13) COMP-3.
022400 01  ‚l‚O‚P|“–ŒŽ”„ã‘ÎÛƒtƒ‰ƒO     PIC  X(1).
022500 01  ‚l‚O‚P|VŒ_–ñ”Ô†             PIC  X(15).
022600 01  ‚l‚O‚P|“–ŒŽ”„ã’²®ƒtƒ‰ƒO     PIC  X(1).
022700 01  ‚l‚O‚P|“–ŒŽðŒ•ÏXƒtƒ‰ƒO     PIC  X(1).
022800 01  ‚l‚O‚P|‰c‹ÆŠT—vŒ_–ñ’Šoƒtƒ‰ƒO PIC  X(1).
022900 01  ‚l‚O‚P|‰c‹ÆŠT—vŒŸŽû’Šoƒtƒ‰ƒO PIC  X(1).
023000 01  ‚l‚O‚P|‰c‹ÆŠ‹æ•ª             PIC  X(1).
023100 01  ‚l‚O‚P|Œ_–ñ“à—eŒ_–ñŒ–¼       PIC  N(20).
023200 01  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼           PIC  N(20).
023300 01  ‚l‚O‚P|¬–ñ“ú                 PIC  X(8).
023400 01  ‚l‚O‚P|ŽÐ“à‹à—˜               PIC S9(2)V9(3) COMP-3.
023500 01  ‚l‚O‚P|”N‘e—˜—¦               PIC S9(2)V9(3) COMP-3.
023600 01  ‚l‚O‚P|”Ì”„‘£i”ï             PIC S9(13) COMP-3.
023700 01  ‚l‚O‚P|ŽG”ï                   PIC S9(13) COMP-3.
023800 01  ‚l‚O‚P|ÅI‰ñŽû—\’è“ú         PIC  X(8).
023900 01  ‚l‚O‚P|‰ïŒv•”–åƒR[ƒh         PIC  X(2).
024000 01  ‚l‚O‚P|–ž—¹”„‹pƒtƒ‰ƒO         PIC  X(1).
024100 01  ‚l‚O‚P|ÂŒ ÷“nŽx•¥Šz         PIC S9(13) COMP-3.
024200 01  ‚l‚O‚P|Žd–óƒtƒ‰ƒO|”„ã       PIC  X(1).
024300 01  ‚l‚O‚P|Žd–óƒtƒ‰ƒO|ŒŸŽû       PIC  X(1).
024400 01  ‚l‚O‚P|ÄƒŠ[ƒXŽæÁƒGƒ“ƒgƒŠ“ú PIC  X(8).
024500 01  ‚l‚O‚P|Á”ïÅ‹æ•ª             PIC  X(2).
024600 01  ‚l‚O‚P|“–‰‘¼ŽÐw“üŠz         PIC S9(13) COMP-3.
024700 01  ‚l‚O‚P|‘¼ŽÐÅVŒ_–ñ‘Šz       PIC S9(13) COMP-3.
024800 01  ‚l‚O‚P|‘¼ŽÐÅVÁ”ïÅ‘Šz     PIC S9(13) COMP-3.
024900 01  ‚l‚O‚P|‘¼ŽÐŒ_–ñ‘Šz           PIC S9(13) COMP-3.
025000 01  ‚l‚O‚P|¬–ñŽæÁƒGƒ“ƒgƒŠ“ú     PIC  X(8).
025100 01  ‚l‚O‚P|”„”pƒtƒ‰ƒO             PIC  X(1).
025200 01  ‚l‚O‚P|ÄƒŠ[ƒXˆ—”NŒŽ       PIC  X(6).
025300 01  ‚l‚O‚P|ÄƒŠ[ƒXŽ©“®Œp‘±‹æ•ª   PIC  X(1).
025400 01  ‚l‚O‚P|ÄƒŠ[ƒX\¿‘—L–³‹æ•ª PIC  X(1).
025500 01  ‚l‚O‚P|ÄƒŠ[ƒX\¿ƒtƒ‰ƒO     PIC  X(1).
025600 01  ‚l‚O‚P|‰ð–ñ\¿ƒtƒ‰ƒO         PIC  X(1).
025700 01  ‚l‚O‚P|Ž©“®¿‹‹æ•ª           PIC  X(1).
025800 01  ‚l‚O‚P|‘OŒŽŠ„•ŠŒ´‰¿‘Šz       PIC S9(13) COMP-3.
025900 01  ‚l‚O‚P|‘OŒŽ‘¼ŽÐŠ„•ŠŒ´‰¿‘Šz   PIC S9(13) COMP-3.
026000 01  ‚l‚O‚P|“ª‹à‹æ•ª               PIC  X(1).
026100 01  ‚l‚O‚P|ƒRƒ“ƒX[ƒ}–@l‹æ•ª     PIC  X(1).
026200 01  ‚l‚O‚P|\¿˜A”Ô               PIC S9(4) COMP-3.
026300 01  ‚l‚O‚P|–¢ŽûŽc‚‘ÎÛŠOƒtƒ‰ƒO   PIC  X(1).
026400 01  ‚l‚O‚P|‘OŒŽó‘Ôƒtƒ‰ƒO         PIC  X(1).
026500 01  ‚l‚O‚P|“ü‹à‰ñ”               PIC S9(3) COMP-3.
026600 01  ‚l‚O‚P|ŽÀŒ»‰ñ”               PIC S9(3) COMP-3.
026700 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª‘‰ÁŽ©”„ã”NŒŽ‚Q PIC  X(6).
026800 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª‘‰ÁŽŠ”„ã”NŒŽ‚Q PIC  X(6).
026900 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªŒ¸­Ž©”„ã”NŒŽ‚Q PIC  X(6).
027000 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ªŒ¸­ŽŠ”„ã”NŒŽ‚Q PIC  X(6).
027100 01  ‚l‚O‚P|‰‰ñ‰ñŽû—\’è“ú         PIC  X(8).
027200 01  ‚l‚O‚P|‘OŒŽ–˜Œ³–{Žû“ü—\’èŠz—ÝŒv PIC S9(13) COMP-3.
027300 01  ‚l‚O‚P|‘OŒŽ–˜—˜‘§Žû“ü—\’èŠz—ÝŒv PIC S9(13) COMP-3.
027400 01  ‚l‚O‚P|ÅV‘ÎŠOŒ_–ñ”Ô†       PIC  X(15).
027500 01  ‚l‚O‚P|Š„•Š“ª‹à               PIC S9(13) COMP-3.
027600 01  ‚l‚O‚P|Š„•Š“ª‹à‘¼ŽÐ           PIC S9(13) COMP-3.
027700 01  ‚l‚O‚P|Š„•Š“ª‹àÁ”ïÅ         PIC S9(13) COMP-3.
027800 01  ‚l‚O‚P|Š„•Š“ª‹àÁ”ïÅ‘¼ŽÐ     PIC S9(13) COMP-3.
027900 01  ‚l‚O‚P|‘OŒŽ‘¼ŽÐÅVŒ_–ñ‘Šz   PIC S9(13) COMP-3.
028000 01  ‚l‚O‚P|‘OŒŽ‘¼ŽÐÅVÁ”ïÅ‘Šz PIC S9(13) COMP-3.
028100 01  ‚l‚O‚P|‘OŠú––Œ³–{Žc‚‘¼ŽÐ     PIC S9(13) COMP-3.
028200 01  ‚l‚O‚P|‘OŠú––—˜‘§Žc‚‘¼ŽÐ     PIC S9(13) COMP-3.
028300 01  ‚l‚O‚P|‘OŒŽ–˜Œ³–{‰ñŽûŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
028400 01  ‚l‚O‚P|‘OŒŽ–˜—˜‘§‰ñŽûŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
028500 01  ‚l‚O‚P|‘OŒŽ––Œ³–{Žc‚‘¼ŽÐ     PIC S9(13) COMP-3.
028600 01  ‚l‚O‚P|‘OŒŽ––—˜‘§Žc‚‘¼ŽÐ     PIC S9(13) COMP-3.
028700 01  ‚l‚O‚P|V‹K‘‰Á•ªŒ³–{Šz‘¼ŽÐ   PIC S9(13) COMP-3.
028800 01  ‚l‚O‚P|V‹K‘‰Á•ª—˜‘§Šz‘¼ŽÐ   PIC S9(13) COMP-3.
028900 01  ‚l‚O‚P|“–ŒŽŒ³–{“ü‹àŠz‘¼ŽÐ     PIC S9(13) COMP-3.
029000 01  ‚l‚O‚P|“–ŒŽ—˜‘§“ü‹àŠz‘¼ŽÐ     PIC S9(13) COMP-3.
029100 01  ‚l‚O‚P|“–ŒŽ––Œ³–{Žc‚‘¼ŽÐ     PIC S9(13) COMP-3.
029200 01  ‚l‚O‚P|“–ŒŽ––—˜‘§Žc‚‘¼ŽÐ     PIC S9(13) COMP-3.
029300 01  ‚l‚O‚P|“–ŒŽ–˜Œ³–{Žû“ü—\’èŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
029400 01  ‚l‚O‚P|“–ŒŽ–˜—˜‘§Žû“ü—\’èŠz—ÝŒv‘¼ŽÐ PIC S9(13) COMP-3.
029500 01  ‚l‚O‚P|“–ŒŽ‰ñŽû—\’èŠz‘¼ŽÐ     PIC S9(13) COMP-3.
029600 01  ‚l‚O‚P|Œ³–{–¢Œo‰ßƒŠ[ƒX—¿‘¼ŽÐ PIC S9(13) COMP-3.
029700 01  ‚l‚O‚P|—˜‘§–¢Œo‰ßƒŠ[ƒX—¿‘¼ŽÐ PIC S9(13) COMP-3.
029800 01  ‚l‚O‚P|Œ³–{–¢ŽûƒŠ[ƒX—¿‘¼ŽÐ   PIC S9(13) COMP-3.
029900 01  ‚l‚O‚P|—˜‘§–¢ŽûƒŠ[ƒX—¿‘¼ŽÐ   PIC S9(13) COMP-3.
030000 01  ‚l‚O‚P|“–ŒŽ‘OŽóƒŠ[ƒX—¿“ü‹àŠz‘¼ŽÐ PIC S9(13) COMP-3.
030100 01  ‚l‚O‚P|“–ŒŽ–˜‘OŽóƒŠ[ƒX—¿“ü‹àŠz‘¼ŽÐ PIC S9(13) COMP-3.
030200 01  ‚l‚O‚P|Œ³–{‘OŽó‹à‘¼ŽÐ         PIC S9(13) COMP-3.
030300 01  ‚l‚O‚P|—˜‘§‘OŽó‹à‘¼ŽÐ         PIC S9(13) COMP-3.
030400 01  ‚l‚O‚P|ŒŸŽûƒGƒ“ƒgƒŠ“ú         PIC  X(8).
030500 01  ‚l‚O‚P|‘OŒŽ”„ã‘ŠzÄƒŠ[ƒX   PIC S9(13) COMP-3.
030600 01  ‚l‚O‚P|”„ã‘ŠzÄƒŠ[ƒX       PIC S9(13) COMP-3.
030700 01  ‚l‚O‚P|‘OŠú–˜”„ãŠz—ÝŒvÄƒŠ[ƒX PIC S9(13) COMP-3.
030800 01  ‚l‚O‚P|“–ŒŽ”„ãŠzÄƒŠ[ƒX     PIC S9(13) COMP-3.
030900 01  ‚l‚O‚P|“–ŒŽ–˜”„ãŠz—ÝŒvÄƒŠ[ƒX PIC S9(13) COMP-3.
031000 01  ‚l‚O‚P|“–Šú”„ãŠz—ÝŒvÄƒŠ[ƒX PIC S9(13) COMP-3.
031100 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ã‘‰ÁŠzÄƒŠ[ƒX PIC S9(13) COMP-3.
031200 01  ‚l‚O‚P|“–ŒŽ‘k‹y•ª”„ãŒ¸­ŠzÄƒŠ[ƒX PIC S9(13) COMP-3.
031300 01  ‚l‚O‚P|‘OŒŽ–˜”„ãŠz—ÝŒvÄƒŠ[ƒX PIC S9(13) COMP-3.
031400 01  ‚l‚O‚P|¡‰ñÄƒŠ[ƒX—¿‹à‹æ•ª   PIC  X(1).
031500 01  ‚l‚O‚P|“–ŒŽ–––¢ŽÀŒ»Žc‚ÄƒŠ[ƒX PIC S9(13) COMP-3.
031600 01  ‚l‚O‚P|‘OŠú–––¢ŽÀŒ»Žc‚ÄƒŠ[ƒX PIC S9(13) COMP-3.
031700 01  ‚l‚O‚P|‘OŒŽÂŒ Á”ïÅ‘Šz     PIC S9(13) COMP-3.
031800 01  ‚l‚O‚P|“–ŒŽ‘OŽóƒŠ[ƒX—¿Á‰»Šz‘¼ŽÐ PIC S9(13) COMP-3.
031900 01  ‚l‚O‚P|“–ŒŽ‘OŽó‹àÁ‰»Šz‘¼ŽÐ   PIC S9(13) COMP-3.
032000 01  ‚l‚O‚P|“–ŒŽ––‘OŽóƒŠ[ƒX—¿Žc‚‘¼ŽÐ PIC S9(13) COMP-3.
032100 01  ‚l‚O‚P|‘Ý“|‘¹Ž¸Šz—˜‘§‘Š“–Šz   PIC S9(13) COMP-3.
032200 01  ‚l‚O‚P|Œo——pŽåŒ_–ñ‹æ•ª       PIC  X(1).
032300 01  ‚l‚O‚P|ˆá–ñ‹à•ªŠ„‰ñŽû”„ãŠz   PIC S9(13) COMP-3.
032400 01  ‚l‚O‚P|ˆá–ñ‹à•ªŠ„‰ñŽû”„ãŠzÁ”ïÅ PIC S9(13) COMP-3.
032500 01  ‚l‚O‚P|ŒŸŽûŽæÁƒGƒ“ƒgƒŠ“ú     PIC  X(8).
032600 01  ‚l‚O‚P|“–ŒŽ‘OŽó‹à“ü‹àŠz       PIC S9(13) COMP-3.
032700 01  ‚l‚O‚P|“–ŒŽ‘OŽó‹à“ü‹àŠz‘¼ŽÐ   PIC S9(13) COMP-3.
032800 01  ‚l‚O‚P|“–ŒŽ––‘OŽó‹àŽc‚       PIC S9(13) COMP-3.
032900 01  ‚l‚O‚P|“–ŒŽ––‘OŽó‹àŽc‚‘¼ŽÐ   PIC S9(13) COMP-3.
033000 01  ‚l‚O‚P|ŒŸŽûƒGƒ“ƒgƒŠˆ—”NŒŽ   PIC  X(6).
033100 01  ‚l‚O‚P|‘ä’ |“–ŒŽ“ü‹à‰ñŽûŠz     PIC S9(13) COMP-3.
033200 01  ‚l‚O‚P|‘ä’ |“–ŒŽ“ü‹à‰ñŽûŠz‘¼ŽÐ PIC S9(13) COMP-3.
033300 01  ‚l‚O‚P|‘ä’ |“–ŒŽ“ü‹à‘OŽóŠz     PIC S9(13) COMP-3.
033400 01  ‚l‚O‚P|‘ä’ |“–ŒŽ“ü‹à‘OŽóŠz‘¼ŽÐ PIC S9(13) COMP-3.
033500 01  ‚l‚O‚P|’S•Û‹æ•ª               PIC  X(1).
033600 01  ‚l‚O‚P|“ª‹à‰ñŽûƒTƒCƒg         PIC S9(02) COMP-3.
033700 01  ‚l‚O‚P|“ª‹àŒvã”NŒŽ“ú         PIC  X(8).
033800 01  ‚l‚O‚P|Œ_–ñ“à—e|‰ð–ñˆ—”NŒŽ PIC  X(6).
033900 01  ‚l‚O‚P|ÂŒ |‰ð–ñˆ—”NŒŽ     PIC  X(6).
034000 01  ‚l‚O‚P|‰ð–ñ—š—ð|‘Ý“|‘¹Ž¸Šz   PIC  S9(13) COMP-3.
034100 01  ‚l‚O‚P|‰ð–ñ—š—ð|‘Ý“|‘¹Ž¸Šz—˜‰v‘Š“–Šz PIC S9(13) COMP-3.
034200 01  ‚l‚O‚P|Š„•Š“ª‹àÁ”ïÅ—¦       PIC S9(2)V9(7) COMP-3.
000840     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000850*                                                                 
000860*----------------------------------------------------------------*
000870*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000880*----------------------------------------------------------------*
000890 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000900*--< ƒGƒ‰[”»’è—p >                                               
000910     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000920*                                                                 
000930*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000940     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000950         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
000960         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000970*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
000980     03  ‚v|ó‘ÔƒGƒŠƒA.                                          
000990         05  ‚v|ó‘Ô                 PIC  X(02).
001000*                                                                 
001010*--< Œ”ƒGƒŠƒA >                                                 
001020     03  Œ”ƒGƒŠƒA.                                              
001030         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
001040         05  ‚v|o—Í|Œ”           PIC  9(09).                 
001050*----------------------------------------------------------------*
001060*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001070*----------------------------------------------------------------*
001080 01  CALL-AREA.                                                   
001090*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001100     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001110     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001120*                                                                 
001130*----------------------------------------------------------------*
001140*    ‚b‚n‚o‚x—Ìˆæ                                                *
001150*----------------------------------------------------------------*
001160*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001170 01  IF-CHOCO001.                                                 
001180     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001190*                                                                 
001200*----------------------------------------------------------------*
001210*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001220*----------------------------------------------------------------*
001230 01  PARA-AREA.                                                   
001240     COPY CPBCO001.                                               
001250******************************************************************
001260*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001270******************************************************************
001280 CONSTANT                             SECTION.                    
001290 01  ’è”—Ìˆæ.                                                    
001300     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "AAASED25".
001310     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001320                               VALUE "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬".
001330     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001340     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001350     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001360     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001370******************************************************************
001380*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001390******************************************************************
001400 PROCEDURE                            DIVISION.                   
001410*                                                                 
001420     PERFORM  ‰Šúˆ—.                                           
001430*                                                                 
001440     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001450*                                                                 
001460     PERFORM  I—¹ˆ—.                                           
001470*                                                                 
001480     STOP     RUN.                                                
001490*                                                                 
001500******************************************************************
001510*    ‰Šúˆ—                                                    *
001520******************************************************************
001530 ‰Šúˆ—                             SECTION.                    
001540 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001550*                                                                 
001560*----------------------------------------------------------------*
001570*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001580*----------------------------------------------------------------*
001590     INITIALIZE                       IF-CHOCO001.                
001600     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001610     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001620     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001630     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001640     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001650     CALL  CLOCO001                USING  IF-CHOCO001.            
001660*                                                                 
001670*----------------------------------------------------------------*
001680*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001690*----------------------------------------------------------------*
001700     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001710     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001720*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
001730     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001740*                                                                 
001750*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž  >                                      
001760     PERFORM  ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž.                               
001770*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾ >                                   
001780     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
001790*                                                                 
001800*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
001810     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
001820*                                                                 
001830*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
001840     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
001850*                                                                 
001860 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001870     EXIT.                                                        
001880******************************************************************
001890*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001900******************************************************************
001910 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001920 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001930*                                                                 
001940*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
001950     CALL  COBCO001                USING  PARA-AREA.              
001960*                                                                 
001970     MOVE  PARA-DBSTRING              TO  DB-STRING.              
001980     MOVE  PARA-USERNAME              TO  USERNAME.               
001990     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002000*                                                                 
002010*----------------------------------------------------------------*
002020*    ŠJŽnÚ‘±                                                    *
002030*----------------------------------------------------------------*
002040     IF    DB-STRING  =  SPACE                                    
002050        
      *       EXEC SQL                                                  
002060*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002070*       END-EXEC 
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
002080     ELSE                                                         
002090        
      *       EXEC SQL                                                  
002100*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002110*            USING  :DB-STRING                                    
002120*       END-EXEC 
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
002130     END-IF.                                                      
002140*                                                                 
002150*----------------------------------------------------------------*
002160*    Ú‘±Šm”F                                                    *
002170*----------------------------------------------------------------*
002180     EVALUATE  SQLCODE                                            
002190        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002200           CONTINUE                                               
002210        WHEN   OTHER                                              
002220*--<       Ú‘±ƒGƒ‰[ >                                           
002230           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002240           PERFORM  ƒGƒ‰[”»’èˆ—                                
002250     END-EVALUATE.                                                
002260*                                                                 
002270 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002280     EXIT.                                                        
002290******************************************************************
002300*        ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                    *
002310******************************************************************
002320 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                     SECTION.                
002330 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                                
002340*                                                                 
002350*----------------------------------------------------------------*
002360*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çžˆ—                                    *
002370*----------------------------------------------------------------*
002380     
      *    EXEC SQL                                                     
002390*          SELECT  ƒoƒbƒ`—p‹Æ–±”NŒŽ                               
002400*            INTO  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ                       
002410*            FROM  D70GYM_TBL                                     
002420*           WHERE  ‹Æ–±ŠÇ—‚h‚c = 'GYMKNRRC'                      
002430*    END-EXEC.
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
           CALL "SQLADR" USING
               ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
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
002440                                                                  
002450*----------------------------------------------------------------*
002460*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çžˆ—‚n‚o‚d‚mŠm”F                        *
002470*----------------------------------------------------------------*
002480     EVALUATE  SQLCODE                                            
002490        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002500*--<       ³í >                                                 
002510           CONTINUE                                               
002520        WHEN  OTHER                                               
002530*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
002540           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002550           PERFORM  ƒGƒ‰[”»’èˆ—                                
002560     END-EVALUATE.                                                
002570*                                                                 
002580 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚d‚w‚h‚s.                                  
002590     EXIT.                                                        
002600******************************************************************
002610*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002620******************************************************************
002630 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002640 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002650*                                                                 
002660*----------------------------------------------------------------*
002670*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002680*----------------------------------------------------------------*
002690     
      *    EXEC SQL                                                     
002700*       DECLARE CUR1  CURSOR FOR                                  
002710*          SELECT  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                        
002720*                 ,M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª                    
002730* 		,M40MAB_TBL.ŒÚ‹q‹æ•ª                            
002740* 		,D01TRS_TBL.–¼Šñ‚¹ƒR[ƒh                        
002750* 		,M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh                  
002760* 		,M40MAB_TBL.¿‹æƒR[ƒh                        
002770* 		,M40MAB_TBL.Œ_–ñ”Ô†                            
002780* 		,M40MAB_TBL.Œ_–ñŽí—Þ                            
002790* 		,M40MAB_TBL.’S“–•”‰ÛƒR[ƒh                      
002800* 		,M40MAB_TBL.ÄƒŠ[ƒX‰ñ”                        
002810* 		,M40MAB_TBL.[“–ŠJŽn”NŒŽ                        
002820* 		,M40MAB_TBL.[“–ŒŽ”                            
002830* 		,M40MAB_TBL.‘O•¥‰ñŽû•û–@                        
002840* 		,M40MAB_TBL.“ü‹à“ú                              
002850* 		,M40MAB_TBL.“ü‹à‹æ•ª                            
002860* 		,D01TRS_TBL.Žæˆøæ–¼Ì                          
002870* 		,D02SQS_TBL.¿‹æ–¼Ì                          
002880* 		,M40MAB_TBL.‘OŒŽ––Žc‚                          
002890* 		,M40MAB_TBL.“–ŒŽ‰ñŽûŠz                          
002900* 		,M40MAB_TBL.“–ŒŽÁ‰»Šz                          
002910* 		,M40MAB_TBL.“–ŒŽ––Žc‚                          
002920*                 ,M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ                      
002930*                 ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                  
002940*                 ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                
002950*                 ,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ                      
002960*                 ,M40MAB_TBL.‹¦’²‹æ•ª                            
002970*            FROM  M40MAB_TBL                                     
002980*                 ,D01TRS_TBL                                     
002990*                 ,D02SQS_TBL                                     
003000*           WHERE  M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO  =  '1'  
003010*             AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh  =               
003020*                             D01TRS_TBL.ŽæˆøæƒR[ƒh (+)         
003030*             AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh  =               
003040*                             D02SQS_TBL.ŽæˆøæƒR[ƒh (+)         
003050*             AND  M40MAB_TBL.¿‹æƒR[ƒh        =               
003060*                             D02SQS_TBL.¿‹æƒR[ƒh  (+)        
003070*        ORDER BY  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                        
003080*                 ,M40MAB_TBL.Œ_–ñ”Ô†                            
003090*                                                                 
003100*    END-EXEC.
003110*----------------------------------------------------------------*
003120*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003130*----------------------------------------------------------------*
003140     
      *    EXEC  SQL                                                    
003150*       OPEN  CUR1                                                
003160*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 86 TO SQL-OFFSET
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
003170*                                                                 
003180*----------------------------------------------------------------*
003190*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003200*----------------------------------------------------------------*
003210     EVALUATE  SQLCODE                                            
003220        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003230*--<       ³í >                                                 
003240           CONTINUE                                               
003250        WHEN  OTHER                                               
003260*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003270           MOVE -30                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003280           PERFORM  ƒGƒ‰[”»’èˆ—                                
003290     END-EVALUATE.                                                
003300*                                                                 
003310 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
003320     EXIT.                                                        
003330*                                                                 
003340******************************************************************
003350*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                            *
003360******************************************************************
003370 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
003380 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
003390*----------------------------------------------------------------*
003400*    [ƒvƒ“                                                      *
003410*----------------------------------------------------------------*
003420     OPEN  OUTPUT   o—Íƒtƒ@ƒCƒ‹.                                 
003430*                                                                 
003440*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“‚Ìó‘Ô”»’è >                                 
003450     EVALUATE  ‚v|ó‘Ô                                           
003460        WHEN  ZERO                                                
003470           CONTINUE                                               
003480        WHEN  OTHER                                               
003490*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
003500           MOVE     -40                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
003510           PERFORM  ƒGƒ‰[”»’èˆ—                                
003520     END-EVALUATE.                                                
003530*                                                                 
003540 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
003550     EXIT.                                                        
003560                                                                  
003570******************************************************************
003580*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
003590******************************************************************
003600 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
003610 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
003620*                                                                 
003630*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
003640     
      *    EXEC SQL                                                     
003650*        FETCH  CUR1                                              
003660*         INTO  :‚l‚S‚O|Œ_–ñ”Ô†                                 
003670*              ,:‚l‚S‚O|ÄƒŠ[ƒX‰ñ”                             
003680*              ,:‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª                             
003690*              ,:‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª                         
003700* 	     ,:‚l‚S‚O|ŒÚ‹q‹æ•ª                                 
003710* 	     ,:‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh                             
003720* 	     ,:‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh                       
003730* 	     ,:‚l‚S‚O|¿‹æƒR[ƒh                             
003740* 	     ,:‚l‚S‚O|Œ_–ñ”Ô†                                 
003750* 	     ,:‚l‚S‚O|Œ_–ñŽí—Þ                                 
003760* 	     ,:‚l‚S‚O|’S“–•”‰ÛƒR[ƒh                           
003770* 	     ,:‚l‚S‚O|ÄƒŠ[ƒX‰ñ”                             
003780* 	     ,:‚l‚S‚O|[“–ŠJŽn”NŒŽ                             
003790* 	     ,:‚l‚S‚O|[“–ŒŽ”                                 
003800* 	     ,:‚l‚S‚O|‘O•¥‰ñŽû•û–@                             
003810* 	     ,:‚l‚S‚O|“ü‹à“ú                                   
003820* 	     ,:‚l‚S‚O|“ü‹à‹æ•ª                                 
003830* 	     ,:‚c‚O‚P|Žæˆøæ–¼Ì                               
003840* 	     ,:‚c‚O‚Q|¿‹æ–¼Ì                               
003850* 	     ,:‚l‚S‚O|‘OŒŽ––Žc‚                               
003860* 	     ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz                               
003870* 	     ,:‚l‚S‚O|“–ŒŽÁ‰»Šz                               
003880* 	     ,:‚l‚S‚O|“–ŒŽ––Žc‚                               
003890*              ,:‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ                           
003900*              ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                       
003910*              ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                     
003920*              ,:‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ                           
003930*              ,:‚l‚S‚O|‹¦’²‹æ•ª                                 
003940*                                                                 
003950*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 101 TO SQL-OFFSET
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
               ‚l‚S‚O|Œ_–ñ”Ô†
               SQL-SQHSTV(1)
           MOVE 15 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚l‚S‚O|ŒÚ‹q‹æ•ª
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh IN
               Žæˆøæƒ}ƒXƒ^
               SQL-SQHSTV(6)
           MOVE 40 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh
               SQL-SQHSTV(7)
           MOVE 9 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚l‚S‚O|¿‹æƒR[ƒh
               SQL-SQHSTV(8)
           MOVE 5 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñ”Ô†
               SQL-SQHSTV(9)
           MOVE 15 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñŽí—Þ
               SQL-SQHSTV(10)
           MOVE 3 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh
               SQL-SQHSTV(11)
           MOVE 4 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚l‚S‚O|[“–ŠJŽn”NŒŽ
               SQL-SQHSTV(13)
           MOVE 6 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚l‚S‚O|[“–ŒŽ”
               SQL-SQHSTV(14)
           MOVE 2 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚l‚S‚O|‘O•¥‰ñŽû•û–@
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚l‚S‚O|“ü‹à“ú
               SQL-SQHSTV(16)
           MOVE 8 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚l‚S‚O|“ü‹à‹æ•ª
               SQL-SQHSTV(17)
           MOVE 2 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚c‚O‚P|Žæˆøæ–¼Ì IN
               Žæˆøæƒ}ƒXƒ^
               SQL-SQHSTV(18)
           MOVE 80 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ‚c‚O‚Q|¿‹æ–¼Ì IN
               ¿‹æƒ}ƒXƒ^
               SQL-SQHSTV(19)
           MOVE 80 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚l‚S‚O|‘OŒŽ––Žc‚
               SQL-SQHSTV(20)
           MOVE 7 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‰ñŽûŠz
               SQL-SQHSTV(21)
           MOVE 7 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽÁ‰»Šz
               SQL-SQHSTV(22)
           MOVE 7 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ––Žc‚
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ
               SQL-SQHSTV(27)
           MOVE 7 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               ‚l‚S‚O|‹¦’²‹æ•ª
               SQL-SQHSTV(28)
           MOVE 1 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
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
003960*                                                                 
003970*------------------------------------------------------------- --*
003980*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
003990*----------------------------------------------------------------*
004000     EVALUATE   SQLCODE                                           
004010        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004020*--<       ³í >                                                 
004030*                                                                 
004040           COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1       
004050        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
004060*--<       “ÇžI—¹ >                                             
004070           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
004080        WHEN   OTHER                                              
004090*--<       “ÇžƒGƒ‰[ >                                           
004100           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004110           PERFORM  ƒGƒ‰[”»’èˆ—                                
004120     END-EVALUATE.                                                
004130*                                                                 
004140 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
004150     EXIT.                                                        
004160******************************************************************
004170*    Žåˆ—                                                      *
004180******************************************************************
004190 Žåˆ—                               SECTION.                    
004200 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004210*                                                                 
004220     PERFORM  €–Ú–¼Ì’Šoˆ—.                                   
004230*                                                                 
004240     PERFORM  ÂŒ î•ñ’Šoˆ—.                                   
004250                                                                  
004260	   PERFORM  o—Í”»’èˆ—ˆ—.                                   
004270*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
004280     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
004290*                                                                 
004300*                                                                 
004310 Žåˆ—|‚d‚w‚h‚s.                                                
004320     EXIT.                                                        
004330******************************************************************
004340*     €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ—                           *
004350******************************************************************
004360 €–Ú–¼Ì’Šoˆ—                      SECTION.                   
004370 €–Ú–¼Ì’Šoˆ—|‚r‚s‚`‚q‚s.                                    
004380*                                                                 
004390*----------------------------------------------------------------*
004400*    €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—                  *
004410*----------------------------------------------------------------*
004420     INITIALIZE                       €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì.       
004430     
      *    EXEC SQL                                                     
004440*          SELECT  –¼Ì                                           
004450*            INTO  :‚v‚r|–¼Ì‚P                                  
004460*            FROM  D19MSY_TBL                                     
004470*                  ,M40MAB_TBL                                    
004480*            WHERE D19MSY_TBL.ƒR[ƒh‚m‚n  =  '038'                
004490*            AND  SUBSTR (D19MSY_TBL.ƒR[ƒh,1,1)  =               
004500* 	        M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª                     
004510*    END-EXEC.
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
               ‚v‚r|–¼Ì‚P IN
               €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
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
004520                                                                  
004530*----------------------------------------------------------------*
004540*     €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’ŠoŠm”F                 *
004550*----------------------------------------------------------------*
004560     EVALUATE  SQLCODE                                            
004570        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004580*--<       ³í >                                                 
004590           CONTINUE                                               
004600        WHEN  OTHER                                               
004610*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
004620           MOVE -60                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004630           PERFORM  ƒGƒ‰[”»’èˆ—                                
004640     END-EVALUATE.                                                
004650*----------------------------------------------------------------*
004660*    €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—                                             *
004670*----------------------------------------------------------------*
004680     INITIALIZE                       €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì.       
004690     
      *    EXEC SQL                                                     
004700*          SELECT  –¼Ì                                           
004710*            INTO  :‚v‚r|–¼Ì‚Q                                  
004720*            FROM  D19MSY_TBL                                     
004730*                 ,M40MAB_TBL                                     
004740*            WHERE D19MSY_TBL.ƒR[ƒh‚m‚n  =  '005'                
004750*              AND  SUBSTR (D19MSY_TBL.ƒR[ƒh,1,2) =              
004760* 	          M40MAB_TBL.ŒÚ‹q‹æ•ª                           
004770*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 247 TO SQL-OFFSET
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
               ‚v‚r|–¼Ì‚Q IN
               €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
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
004780                                                                  
004790*----------------------------------------------------------------*
004800*     €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’ŠoŠm”F                   *
004810*----------------------------------------------------------------*
004820     EVALUATE  SQLCODE                                            
004830        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004840*--<       ³í >                                                 
004850           CONTINUE                                               
004860        WHEN  OTHER                                               
004870*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
004880           MOVE -70                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004890           PERFORM  ƒGƒ‰[”»’èˆ—                                
004900     END-EVALUATE.                                                
004910*                                                                 
004920 €–Ú–¼Ì’Šoˆ—|‚d‚w‚h‚s.                                      
004930     EXIT.                                                        
004940******************************************************************
004950*     ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—                     *
004960******************************************************************
004970 ÂŒ î•ñ’Šoˆ—                     SECTION.                    
004980 ÂŒ î•ñ’Šoˆ—|‚r‚s‚`‚q‚s.                                    
004990*                                                                 
005000*----------------------------------------------------------------*
005010*    ÂŒ î•ñ’Šoˆ—‚Ì’Šoˆ—                                  *
005020*----------------------------------------------------------------*
005030     INITIALIZE                       €–Ú–¼Ìƒ}ƒXƒ^‚Ì–¼Ì.       
005040     
      *    EXEC SQL                                                     
005050*          SELECT  M01SAJ_TBL.ó‘Ôƒtƒ‰ƒO                          
005060*                 ,M01SAJ_TBL.ÂŒ Œ_–ñŒ–¼                        
005070* 		,M01SAJ_TBL.’S•Û‹æ•ª                            
005080*            INTO  :‚l‚O‚P|ó‘Ôƒtƒ‰ƒO                            
005090* 	        ,:‚l‚O‚P|ÂŒ Œ_–ñŒ–¼                          
005100* 		,:‚l‚O‚P|’S•Û‹æ•ª                              
005110*            FROM  M01SAJ_TBL                                     
005120*                 ,M40MAB_TBL                                     
005130*           WHERE  M01SAJ_TBL.ƒŒƒR[ƒh‹æ•ª  =  '1'                
005140*             AND  M01SAJ_TBL.Œ_–ñ”Ô†  =  M40MAB_TBL.Œ_–ñ”Ô†    
005150*             AND  M01SAJ_TBL.ÄƒŠ[ƒX‰ñ”  =                     
005160* 		    M40MAB_TBL.ÄƒŠ[ƒX‰ñ”                     
005170*             AND  M01SAJ_TBL.Œ_–ñŽí—Þ  =  M40MAB_TBL.Œ_–ñŽí—Þ    
005180*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 266 TO SQL-OFFSET
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
               ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼
               SQL-SQHSTV(2)
           MOVE 40 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚l‚O‚P|’S•Û‹æ•ª
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
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
005190                                                                  
005200*----------------------------------------------------------------*
005210*     ÂŒ î•ñ’Šoˆ—‚Ì’ŠoŠm”F                                 *
005220*----------------------------------------------------------------*
005230     EVALUATE  SQLCODE                                            
005240        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005250*--<       ³í >                                                 
005260           CONTINUE                                               
005270        WHEN  OTHER                                               
005280*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
005290           MOVE -80                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005300           PERFORM  ƒGƒ‰[”»’èˆ—                                
005310     END-EVALUATE.                                                
005320 ÂŒ î•ñ’Šoˆ—|‚d‚w‚h‚s.                                      
005330     EXIT.                                                        
005340******************************************************************
005350*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Í”»’èˆ—                      *
005360******************************************************************
005370 o—Í”»’èˆ—ˆ—                     SECTION.                    
005380 o—Í”»’èˆ—ˆ—|‚r‚s‚`‚q‚s.                                    
005390     IF ‚l‚O‚P|’S•Û‹æ•ª  = 1                                     
005400        CONTINUE                                                  
005410     ELSE                                                         
005420        PERFORM  Ž©ŽÐ•ªo—Íˆ—                                   
005430        IF  ‚l‚S‚O|‹¦’²‹æ•ª =  "2"                               
005440           PERFORM  ‘¼ŽÐ•ªo—Íˆ—                                
005450        END-IF                                                    
005460     END-IF.                                                      
005470 o—Í”»’èˆ—ˆ—|‚d‚w‚h‚s.                                      
005480     EXIT.                                                        
005490******************************************************************
005500*    Ž©ŽÐ•ªo—Íˆ—                                              *
005510******************************************************************
005520 Ž©ŽÐ•ªo—Íˆ—                       SECTION.                    
005530 Ž©ŽÐ•ªo—Íˆ—|‚r‚s‚`‚q‚s.                                      
005540*                                                                 
005550      IF   ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO  <  3                               
005560	       MOVE  "3"                    TO   o—Í|Ž©‘¼ŽÐ‹æ•ª       
005570      ELSE                                                        
005580         MOVE  "1"                    TO   o—Í|Ž©‘¼ŽÐ‹æ•ª.      
005590*--< ‹¤’Êo—Íˆ— >                                               
005600      PERFORM   ‹¤’Êo—Íˆ—.                                     
005610*                                                                 
005620      MOVE     ‚l‚S‚O|‘OŒŽ––Žc‚     TO   o—Í|‘OŒŽ––Žc‚.      
005630      MOVE     ‚l‚S‚O|“–ŒŽ‰ñŽûŠz     TO   o—Í|“–ŒŽ“ü‹àŠz.      
005640      MOVE     ‚l‚S‚O|“–ŒŽÁ‰»Šz     TO   o—Í|“–ŒŽÁ‰»Šz.      
005650      MOVE     ‚l‚S‚O|“–ŒŽ––Žc‚     TO   o—Í|“–ŒŽ––Žc‚.      
005660*----------------------------------------------------------------*
005670*     ‹¤’Ê‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—                     *
005680*----------------------------------------------------------------*
005690      PERFORM   ‹¤’ÊŽó•¥Žc‚o—Íˆ—.                             
005700 Ž©ŽÐ•ªo—Íˆ—|‚d‚w‚h‚s.                                        
005710     EXIT.                                                        
005720******************************************************************
005730*    ‘¼ŽÐ•ªo—Íˆ—                                              *
005740******************************************************************
005750 ‘¼ŽÐ•ªo—Íˆ—                       SECTION.                    
005760 ‘¼ŽÐ•ªo—Íˆ—|‚r‚s‚`‚q‚s.                                      
005770*                                                                 
005780     IF   ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO  <  3                                
005790        MOVE  "4"  TO   o—Í|Ž©‘¼ŽÐ‹æ•ª                          
005800     ELSE                                                         
005810        MOVE  "2"  TO   o—Í|Ž©‘¼ŽÐ‹æ•ª.                         
005820                                                                  
005830*--< ‹¤’Êo—Íˆ— >                                               
005840     PERFORM   ‹¤’Êo—Íˆ—.                                      
005850*                                                                 
005860     MOVE     ‚l‚S‚O|‘OŒŽ––Žc‚      TO   o—Í|‘OŒŽ––Žc‚.      
005870     MOVE     ‚l‚S‚O|“–ŒŽ‰ñŽûŠz      TO   o—Í|“–ŒŽ“ü‹àŠz.      
005880     COMPUTE  o—Í|“–ŒŽÁ‰»Šz    =  ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ       
005890                                  +  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à   
005900                                  +  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ.
005910*                                                                 
005920     COMPUTE  o—Í|“–ŒŽ––Žc‚    =  ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ       
005930                                  -  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à   
005940                                  -  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ.
005950*----------------------------------------------------------------*
005960*     ‹¤’Ê‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—                     *
005970*----------------------------------------------------------------*
005980     PERFORM   ‹¤’ÊŽó•¥Žc‚o—Íˆ—.                              
005990                                                                  
006000 ‘¼ŽÐ•ªo—Íˆ—|‚d‚w‚h‚s.                                        
006010     EXIT.                                                        
006020******************************************************************
006030*    ‹¤’Êo—Íˆ—                                                *
006040******************************************************************
006050 ‹¤’Êo—Íˆ—                           SECTION.                  
006060 ‹¤’Êo—Íˆ—|‚r‚s‚`‚q‚s.                                        
006070*                                                                 
006080     MOVE  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª       TO   o—Í|‘OŽó‹æ•ª.        
006090	   MOVE  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª   TO   o—Í|ŽåŒ_–ñ‹æ•ª.      
006100	   MOVE  ‚l‚S‚O|ŒÚ‹q‹æ•ª           TO   o—Í|˜AŒ‹‹æ•ª.        
006110	   MOVE  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh       TO   o—Í|–¼Šñ‚¹ƒR[ƒh.    
006120	   MOVE  ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh TO   o—Í|ŽæˆøæƒR[ƒh.    
006130	   MOVE  ‚l‚S‚O|¿‹æƒR[ƒh       TO   o—Í|¿‹æƒR[ƒh.    
006140	   MOVE  ‚l‚S‚O|Œ_–ñ”Ô†           TO   o—Í|Œ_–ñ”Ô†.        
006150     MOVE  ‚l‚S‚O|Œ_–ñŽí—Þ           TO   o—Í|Œ_–ñŽí—Þ.        
006160     MOVE  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ   TO   o—Í|‹Æ–±”NŒŽ.        
006170     MOVE  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh     TO   o—Í|’S“–•”‰ÛƒR[ƒh.  
006180     MOVE  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼       TO   o—Í|Œ_–ñŒ–¼.        
006190     MOVE  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”       TO   o—Í|ÄƒŠ[ƒX‰ñ”.    
006200     MOVE  ‚l‚S‚O|[“–ŠJŽn”NŒŽ       TO   o—Í|[“–ŠJŽn”NŒŽ.    
006210     MOVE  ‚l‚S‚O|[“–ŒŽ”           TO   o—Í|[“–ŒŽ”.        
006220     MOVE  ‚l‚S‚O|‘O•¥‰ñŽû•û–@       TO   o—Í|‘O•¥‰ñŽû•û–@.    
006230     MOVE  ‚l‚S‚O|“ü‹à“ú             TO   o—Í|“ü‹à“ú.          
006240     MOVE  ‚l‚S‚O|“ü‹à‹æ•ª           TO   o—Í|“ü‹à‹æ•ª.        
006250     MOVE  ‚c‚O‚P|Žæˆøæ–¼Ì         TO   o—Í|Žæˆøæ–¼Ì.      
006260     MOVE  ‚c‚O‚Q|¿‹æ–¼Ì         TO   o—Í|¿‹æ–¼Ì.      
006270     MOVE  ‚v‚r|–¼Ì‚P               TO   o—Í|ŽåŒ_–ñ‹æ•ª–¼Ì.  
006280     MOVE  ‚v‚r|–¼Ì‚Q               TO   o—Í|˜AŒ‹‹æ•ª–¼Ì.    
006290*                                                                 
006300 ‹¤o—Íˆ—|‚d‚w‚h‚s.                                            
006310     EXIT.                                                        
006320******************************************************************
006330*   ‹¤’Ê‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—                       *
006340******************************************************************
006350 ‹¤’ÊŽó•¥Žc‚o—Íˆ—                 SECTION.                    
006360 ‹¤’ÊŽó•¥Žc‚o—Íˆ—|‚r‚s‚`‚q‚s.                                
006370*                                                                 
006380     IF  o—Í|‘OŒŽ––Žc‚   =   0                                 
006390         AND  o—Í|“–ŒŽ“ü‹àŠz  =  0                              
006400         AND  o—Í|“–ŒŽÁ‰»Šz  =  0                              
006410         AND  o—Í|“–ŒŽ––Žc‚  =  0                              
006420         WRITE  o—Í|ƒŒƒR[ƒh.                                   
006430*                                                                 
006440*--< ‹¤’Êo—Í‚Ìó‘Ô”»’è >                                         
006450     EVALUATE  ‚v|ó‘Ô                                           
006460        WHEN  ZERO                                                
006470*--<      ‹¤’Êo—ÍŒ”‚Ì‰ÁŽZ >                                    
006480           COMPUTE  ‚v|o—Í|Œ” =  ‚v|o—Í|Œ” + 1          
006490        WHEN  OTHER                                               
006500*--<       ƒtƒ@ƒCƒ‹o—ÍƒGƒ‰[ >                                   
006510           MOVE     -90               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006520           PERFORM  ƒGƒ‰[”»’èˆ—                                
006530     END-EVALUATE.                                                
006540*                                                                 
006550 ‹¤’ÊŽó•¥Žc‚o—Íˆ—|‚d‚w‚h‚s.                                  
006560     EXIT.                                                        
006570******************************************************************
006580*    I—¹ˆ—                                                    *
006590******************************************************************
006600 I—¹ˆ—                             SECTION.                    
006610 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
006620*                                                                 
006630     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
006640*                                                                 
006650     PERFORM  ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—.                               
006660*                                                                 
006661     PERFORM  Œ”ƒƒbƒZ[ƒWo—Í.                                 
006662*                                                                 
006670     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
006680*                                                                 
006690*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
006700     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
006710*                                                                 
006720 I—¹ˆ—|‚d‚w‚h‚s.                                              
006730     EXIT.                                                        
006731******************************************************************
006732*    ‚c‚aƒNƒ[ƒY                                                *
006733******************************************************************
006734 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
006735 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
006736*                                                                 
006737*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
006738     
      *    EXEC SQL                                                     
006739*       CLOSE  CUR1                                               
006740*    END-EXEC.
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
006741*                                                                 
006742 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
006743     EXIT.                                                        
006744******************************************************************
006745*    ƒtƒ@ƒCƒ‹ƒNƒ[ƒY                                            *
006746******************************************************************
006747 ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—                 SECTION.                    
006748 ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                
006749*                                                                 
006750     CLOSE  o—Íƒtƒ@ƒCƒ‹.                                         
006751*                                                                 
006752 ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                  
006753     EXIT.                                                        
006754*                                                                 
006755******************************************************************
006756*     Œ”ƒƒbƒZ[ƒWo—Íˆ—                                     *
006757******************************************************************
006758 Œ”ƒƒbƒZ[ƒWo—Í                   SECTION.                    
006759 Œ”ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
006760*----------------------------------------------------------------*
006761*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
006762*----------------------------------------------------------------*
006763     INITIALIZE                       IF-CHOCO001.                
006764     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006765     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006766     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006767     MOVE  "M40MAB_TBL"               TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
006768     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006769     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
006770     MOVE  " ‘OŽóî•ñƒe[ƒuƒ‹i“ü—Íj"                            
006771                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006772     CALL  CLOCO001                   USING  IF-CHOCO001.         
006773*                                                                 
006774     INITIALIZE                       IF-CHOCO001.                
006775     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
006776     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
006777     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
006778     MOVE  "SFHSED25.U11"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
006779     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
006780     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
006781     MOVE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹"   TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
006782     CALL  CLOCO001                   USING  IF-CHOCO001.         
006783 Œ”ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
006784     EXIT.                                                        
006785*                                                                 
006786******************************************************************
006787*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
006788******************************************************************
006789 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
006790 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
006791*                                                                 
007030*                                                                 
007040*----------------------------------------------------------------*
007050*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007060*----------------------------------------------------------------*
007070     INITIALIZE                       IF-CHOCO001.                
007080     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007090     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007100     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007110     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007120     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007130     CALL  CLOCO001                   USING  IF-CHOCO001.         
007140*                                                                 
007150 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
007160     EXIT.                                                        
007330******************************************************************
007710*    ƒGƒ‰[ˆ—                                                  *
007720******************************************************************
007730 ƒGƒ‰[”»’èˆ—                       SECTION.                    
007740 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
007750*                                                                 
007760     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
007770     INITIALIZE                           IF-CHOCO001.            
007780*                                                                 
007790     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
007800        WHEN  -10                                                 
007810*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
007820           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
007830           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
007840           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
007850           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
007860           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
007870           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
007880           CALL  CLOCO001             USING  IF-CHOCO001          
007890*                                                                 
007900        WHEN  -20                                                 
007910*--<       ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çžˆ—Ž¸”s >                         
007920           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
007930           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
007940           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
007950           MOVE  "D70GYM_TBL"         TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
007960           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
007970           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
007980           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
007990           CALL  CLOCO001             USING  IF-CHOCO001          
008000*                                                                 
008010        WHEN  -30                                                 
008020*--<      Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`ˆ—Ž¸”s >                      
008030           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008040           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008050           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008060           MOVE  "M40MAB_TBL"         TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008070           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008080           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008090           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008100           CALL  CLOCO001             USING  IF-CHOCO001          
008110*                                                                 
008120        WHEN  -40                                                 
008130*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s >                                 
008140           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008150           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008160           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008170           MOVE  "SFHSED25.U11"       TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008180           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008190           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
008210           CALL  CLOCO001             USING  IF-CHOCO001          
008220*                                                                 
008230           WHEN  -50                                              
008240*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“ÇžŽ¸”s >                         
008250           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008260           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008270           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008280           MOVE  "M40MAB_TBL"         TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008290           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008300           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008310           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008320           CALL  CLOCO001             USING  IF-CHOCO001          
008330*                                                                 
008340           WHEN  -60                                              
008350*--< €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’ŠoŠm”FŽ¸”s>              
008360           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008370           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008380           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008390           MOVE  "D19MSY_TBL"         TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008400           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008410           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008420           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008430           CALL  CLOCO001             USING  IF-CHOCO001          
008440*                                                                 
008450           WHEN  -70                                              
008460*--<      €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’ŠoŽ¸”s >              
008470           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008480           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008490           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008500           MOVE  "D19MSY_TBL"         TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008510           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008520           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008530           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008540           CALL  CLOCO001             USING  IF-CHOCO001          
008550*                                                                 
008560           WHEN  -80                                              
008570*--<         ÂŒ î•ñ’Šoˆ—‚Ì’ŠoŠm”F Ž¸”s >                    
008580           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008590           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008600           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008610           MOVE  "M01SAJ_TBL"         TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008620           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008630           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008640           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008650           CALL  CLOCO001             USING  IF-CHOCO001          
008660*                                                                 
008670           WHEN  -90                                              
008680*--<         ‹¤’Ê‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—Ž¸”s >         
008690           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008700           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008710           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008720           MOVE  "SFHSED25.U11"       TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008730           MOVE  "WRITE"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008740           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008750           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008760           CALL  CLOCO001             USING  IF-CHOCO001          
008770        WHEN  OTHER                                               
008780           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
008790     END-EVALUATE.                                                
008800*                                                                 
008810     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                                                          
008830*                                                                 
008840        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
008850*                                                                 
008860*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
008870        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
008880*                                                                 
008890        EXIT  PROGRAM                                             
008900     END-IF.                                                      
008910*                                                                 
008920 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
008930     EXIT.                                                        
008940******************************************************************
008950*                  END OF PROGRAM                                *
008960******************************************************************
