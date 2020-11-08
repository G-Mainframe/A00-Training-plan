000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : ‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬             *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : AAASED25                               *
000050*      3. ˆ—ŠT—v      : ‘OŽóî•ñ‚c‚a‚ðƒƒCƒ“‚ÉAƒ}ƒXƒ^‚Æ•\Œ‹‡ *
000060*                ‚µ‚Ä“Çž‚ÝA‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹‚ðì¬‚·‚é*
000070*                                                                *
000080*      4. ì¬ŽÒ        : ÂiP                                 *
000090*      5. ì¬“ú        : 2005.03.27                             *
000100******************************************************************
000110*                                                                 
000120******************************************************************
000130*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          AAASED25.                   
000180******************************************************************
000190*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000200******************************************************************
000210 ENVIRONMENT                          DIVISION.                   
000220******************************************************************
000230*    ‚h‚m‚o‚t‚s|‚n‚t‚s‚o‚t‚s      ‚r‚d‚b‚s‚h‚n‚m                *
000240******************************************************************
000250 INPUT-OUTPUT                         SECTION.                    
000260 FILE-CONTROL.                                                    
000270*                                                                 
000280     SELECT         o—Íƒtƒ@ƒCƒ‹      ASSIGN    TO   U11          
000290     FILE STATUS    IS     ‚v|ó‘Ô                               
000300     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000310******************************************************************
000320*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000330******************************************************************
000340 DATA                                 DIVISION.                   
000350******************************************************************
000360*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000370******************************************************************
000380 FILE                                 SECTION.                    
000390 FD  o—Íƒtƒ@ƒCƒ‹                                                 
000400     LABEL     RECORD     IS          STANDARD                    
000410     BLOCK     CONTAINS   0           RECORDS.                    
000420*                                                                 
000430 01  o—Í|ƒŒƒR[ƒh.                                              
000440     COPY  CPSCE50  REPLACING  ==()==  BY  ==o—Í|==.            
000450*                                                                 
000460*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000470******************************************************************
000480  WORKING-STORAGE                     SECTION.                    
000490*----------------------------------------------------------------*
000500*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000510*----------------------------------------------------------------*
000520     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\AAASED25\AA
      -    "ASED25.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(92) VALUE "select ƒoƒbƒ`—p‹Æ–±”NŒŽ   into :b
      -    "1  from D70GYM_TBL where D70GYM_TBL.‹Æ–±ŠÇ—‚h‚c='GYMKNRRC'"
           .

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(152) VALUE "select –¼Ì   into :b1  from D19
      -    "MSY_TBL ,M40MAB_TBL where (D19MSY_TBL.ƒR[ƒh‚m‚n='‚O‚R‚W' an
      -    "d SUBSTR(D19MSY_TBL.ƒR[ƒh,1,1)=M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª)
      -    "".

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
      -    ",M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª  ,M40MAB_TBL.ŒÚ‹q‹æ•ª  ,NVL(D01
      -    "TRS_TBL.–¼Šñ‚¹ƒR[ƒh,RPAD(' ',40,' '))  ,M40MAB_TBL.¿‹æŽæ
      -    "ˆøæƒR[".

           02  FILLER PIC X(160) VALUE "ƒh  ,M40MAB_TBL.¿‹æƒR[ƒh  ,M
      -    "40MAB_TBL.Œ_–ñ”Ô†  ,M40MAB_TBL.Œ_–ñŽí—Þ  ,M40MAB_TBL.’S“–•”
      -    "‰ÛƒR[ƒh  ,M40MAB_TBL.ÄƒŠ[ƒX‰ñ”  ,M40MAB_TBL.[“–ŠJŽn”NŒŽ
      -    "  ,M40MA".

           02  FILLER PIC X(160) VALUE "B_TBL.[“–ŒŽ”  ,M40MAB_TBL.‘O•¥
      -    "‰ñŽû•û–@  ,M40MAB_TBL.“ü‹à“ú  ,M40MAB_TBL.“ü‹à‹æ•ª  ,NVL(D01
      -    "TRS_TBL.Žæˆøæ–¼Ì,RPAD(' ',80,' '))  ,NVL(D02SQS_TBL.¿‹æ
      -    "–¼Ì,RPA".

           02  FILLER PIC X(160) VALUE "D(' ',80,' '))  ,M40MAB_TBL.‘OŒŽ
      -    "––Žc‚  ,M40MAB_TBL.‘OŒŽ––Žc‚‘¼ŽÐ  ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz  
      -    ",M40MAB_TBL.“–ŒŽ‰ñŽûŠz‘¼ŽÐ  ,M40MAB_TBL.“–ŒŽÁ‰»Šz  ,M40MAB_
      -    "TBL.“–ŒŽ".

           02  FILLER PIC X(160) VALUE "––Žc‚  ,M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼
      -    "ŽÐ  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ
      -    "•ªÁ”ïÅ  ,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ  ,M40MAB_TBL.‹¦’²‹æ•ª  
      -    " from M4".

           02  FILLER PIC X(160) VALUE "0MAB_TBL ,D01TRS_TBL ,D02SQS_TBL
      -    " where (((M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO='1' and M40M
      -    "AB_TBL.¿‹æŽæˆøæƒR[ƒh=D01TRS_TBL.ŽæˆøæƒR[ƒh(+)) and M4
      -    "0MAB_TBL".

           02  FILLER PIC X(160) VALUE  ".¿‹æŽæˆøæƒR[ƒh=D02SQS_TBL.
      -    "ŽæˆøæƒR[ƒh(+)) and M40MAB_TBL.¿‹æƒR[ƒh=D02SQS_TBL.¿‹
      -     "æƒR[ƒh(+)) order by M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª,M40MAB_TBL.Œ_
      -    "–ñ”Ô†    ".

           02  FILLER PIC X(7) VALUE "       ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +332.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +336.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +92.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +361.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1127.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +430.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +477.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +152.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +541.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +553.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +584.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +806.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000530                                                                  
000540 01 ‚v‚r|ƒzƒXƒg•Ï”.                                             
000550    03  ‚v‚r|’Šo‚P                 PIC  X(060).                 
000560    03  ‚v‚r|’Šo‚Q                 PIC  X(060).                 
000570*                                                                 
000580*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000590     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000600*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000610     
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
000620*                                                                 
000630*--< ‘OŽóî•ñ‚c‚a >                                               
000640     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL            END-EXEC.
000650*                                                                 
000660*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹ >                                           
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
000670     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL            END-EXEC.
000680*                                                                 
000690*--< Žæˆøæƒ}ƒXƒ^ >                                               
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
000700     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL            END-EXEC.
000710*                                                                 
000720*--< ¿‹æƒ}ƒXƒ^ >                                               
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
000730     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL            END-EXEC.
000740*                                                                 
000750*--< €–Ú–¼Ìƒ}ƒXƒ^ >                                             
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
000760     
      *    EXEC  SQL  INCLUDE  D19MSY.CBL            END-EXEC.
000770*									
000780*--< ÂŒ î•ñiˆê”Êj‚c‚a >                                       
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
000790     
      *    EXEC  SQL  INCLUDE  M01SAJ.CBL            END-EXEC.
000800*                                                                 
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
000810     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000820*----------------------------------------------------------------*
000830*   ì‹Æ—Ìˆæ’è‹`                                                 *
000840*----------------------------------------------------------------*
000850 01  ‚v‚n‚q‚j|ƒGƒŠƒA.     					
000860*--< ’†ŠÔ[ƒR[ƒh >                                  	        
000870     03  ‚v‚r|“–ŒŽÁ‰»Šz            PIC S9(13).                  
000900     03  ‚v‚r|“–ŒŽ––Žc‚            PIC S9(13).                  
000910*--< ƒGƒ‰[ƒR[ƒh >                                               
000920     03  ‚v|ƒGƒ‰[ƒR[ƒh            PIC S9(04).                  
000930*                                                                 
000940*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
000950     03  ƒtƒ@ƒCƒ‹ó‘Ô.                                            
000960        05 ‚v|ó‘Ô                  PIC  X(02).                  
000970*									
000980*--< Œ”ƒGƒŠƒA >                                                 
000990     03  Œ”ƒGƒŠƒA.                                              
001000         05  ‚v|“ü—Í|Œ”‚P        PIC  9(09).                  
001010         05  ‚v|“ü—Í|Œ”‚Q        PIC  9(09).                  
001020         05  ‚v|“ü—Í|Œ”          PIC  9(09).                  
001030         05  ‚v|o—Í|Œ”          PIC  9(09).                  
001040*                                                                 
001050*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001060     03  ƒtƒ‰ƒO|ƒGƒŠƒA.                                          
001070         05  ‚v|I—¹|ƒtƒ‰ƒO        PIC  X(01).                  
001080         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    PIC  X(01).                  
001100*                                                                 
001110*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
001120     03  ‚v|“K—p“ú                  PIC  X(08).                  
001130*                                                                 
001140*----------------------------------------------------------------*
001150*   ˆ—ŽžŠÔ’è‹`                                                 *
001160*----------------------------------------------------------------*
001170*--< ‹¤’Êî•ñ >                                                   
001180 01  ‚v|‹¤’Êî•ñ.                                                
001190     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
001200         05  ‚v|¢‹I                PIC  X(02) VALUE  "20".      
001210         05  ‚v|”NŒŽ“ú              PIC  X(06).                  
001220     03  ‚v|ƒVƒXƒeƒ€Žž            PIC  X(08).                  
001230     03  ‚v|’S“–ŽÒ                  PIC  X(08) VALUE "IKOPG   ". 
001240*----------------------------------------------------------------*
001250*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001260*----------------------------------------------------------------*
001270 01  CALL-AREA.                                                   
001280*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001290     03  CLOCO001                    PIC  X(08) VALUE "CLOCO001". 
001300     03  COBCO001                    PIC  X(08) VALUE "COBCO001". 
001310*----------------------------------------------------------------*
001320*    ‚b‚n‚o‚x—Ìˆæ                                                *
001330*----------------------------------------------------------------*
001340*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001350 01  IF-CHOCO001.                                                 
001360     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001370*                                                                 
001380*----------------------------------------------------------------*
001390*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001400*----------------------------------------------------------------*
001410 01  PARA-AREA.                                                   
001420     COPY CPBCO001.                                               
001430******************************************************************
001440*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001450******************************************************************
001460 CONSTANT                             SECTION.                    
001470 01  ’è”—Ìˆæ.                                                    
001480     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "AAASED25".
001490     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001500                              VALUE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬".
001510     03  ’è”|‚r‚p‚k‚n‚j             PIC  9(04)  VALUE  0000.    
001520     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC  9(04)  VALUE  0100.    
001530     03  ’è”|³íó‘Ô               PIC  9(04)  VALUE  ZERO.    
001540     03  ’è”|ˆÙíó‘Ô               PIC  9(04)  VALUE  0009.    
001550******************************************************************
001560*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001570******************************************************************
001580 PROCEDURE                            DIVISION.                   
001590*                                                                 
001600     PERFORM   ‰Šúˆ—.                                          
001610*                                                                 
001620     PERFORM   Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".           
001630*                                                                 
001640     PERFORM   I—¹ˆ—.                                          
001650*                                                                 
001660     STOP RUN.                                                    
001670*                                                                 
001680******************************************************************
001690*    ‰Šúˆ—                                            <1.0>   *
001700******************************************************************
001710 ‰Šúˆ—                             SECTION.                    
001720 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001730*                                                                 
001740*----------------------------------------------------------------*
001750*    ŠJŽnƒƒbƒZ[ƒWo—Í                                          *
001760*----------------------------------------------------------------*
001770     INITIALIZE                       IF-CHOCO001.                
001780     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001790     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001800     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001810     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001820     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001830     CALL  CLOCO001                USING  IF-CHOCO001.            
001840*                                                                 
001850*----------------------------------------------------------------*
001860*    ì‹Æ—Ìˆæ‚Ì‰Šú’lÝ’è                                        *
001870*----------------------------------------------------------------*
001880     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001890     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001900*                                                                 
001910*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001920     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001930*                                                                 
001940*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001950     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001960*----------------------------------------------------------------*
001970*    ‚n‚q‚`‚b‚k‚dÚ‘±                                    <1.1>   *
001980*----------------------------------------------------------------*
001990     PERFORM  ‚n‚q‚`‚b‚k‚dÚ‘±.                                   
002000*----------------------------------------------------------------*
002010*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                <1.2>   *
002020*----------------------------------------------------------------*
002030     PERFORM  ‹Æ–±ŠÇ—“Çž.                                       
002040*----------------------------------------------------------------*
002050*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                            <1.3>   *
002060*----------------------------------------------------------------*
002070     PERFORM  ƒJ[ƒ\ƒ‹éŒ¾.  
002080*----------------------------------------------------------------*
002090*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                    <1.3>   *
002100*----------------------------------------------------------------*
002110     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
002120*                                                                 
002130*----------------------------------------------------------------*
002140*   Œ‹‡ƒe[ƒuƒ‹“Çži‚PŒ–Új                           <C.1>   *
002150*----------------------------------------------------------------*
002160     PERFORM   Œ‹‡ƒe[ƒuƒ‹“Çžˆ—.                              
002170*                                                                 
002180 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002190     EXIT.                                                        
002200******************************************************************
002210*    Žåˆ—                                              <2.0>   *
002220******************************************************************
002230 Žåˆ—                               SECTION.                    
002240 Žåˆ—|‚r‚s‚`‚q‚s.                                              
002250*                                                                 
002260*----------------------------------------------------------------*
002270*   €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ—                     <2.1>   *
002280*----------------------------------------------------------------*
002290     PERFORM  €–Ú–¼Ì’Šoˆ—.                                   
002300*                                                                 
002310*----------------------------------------------------------------*
002320*    ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—              <2.2>   *
002330*----------------------------------------------------------------*
002340     PERFORM  ÂŒ î•ñ’Šoˆ—.                                   
002350*									
002360*----------------------------------------------------------------*
002370*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Í”»’èˆ—              <2.3>   *
002380*----------------------------------------------------------------*
002390     PERFORM  ‘OŽó‹àŽó•¥Žc‚o—Í”»’èˆ—.                         
002400*     PERFORM  ‘OŽó‹àŽó•¥Žc•ÒWˆ—.                              
002410*									
002420*----------------------------------------------------------------*
002430*    Œ‹‡ƒe[ƒuƒ‹“Çži‚QŒ–ÚˆÈ~)                    <  C.1>    *
002440*----------------------------------------------------------------*
002450     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çžˆ—.                               
002460 Žåˆ—|‚d‚w‚h‚s.                                                
002470     EXIT.                                                        
002480******************************************************************
002490*    I—¹ˆ—                                            <3.0>   *
002500******************************************************************
002510 I—¹ˆ—                             SECTION.                    
002520 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
002530*                                                                 
002540*----------------------------------------------------------------*
002550*    ‚c‚aƒNƒ[ƒY                                        <3.1>   *
002560*----------------------------------------------------------------*
002570     PERFORM   ‚c‚aƒNƒ[ƒY.                                      
002580*                                                                 
002590*--< ƒtƒ@ƒCƒ‹ƒNƒ[ƒY >                                           
002600     CLOSE  o—Íƒtƒ@ƒCƒ‹.                                         
002610*                                                                 
002620*----------------------------------------------------------------*
002630*    I—¹ƒƒbƒZ[ƒWo—Íˆ—                              <C.3>   *
002640*----------------------------------------------------------------*
002650     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
002660*                                                                 
002670*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
002680     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
002690*                                                                 
002700 I—¹ˆ—|‚d‚w‚h‚s.                                              
002710     EXIT.                                                        
002720******************************************************************
002730*    I—¹ƒƒbƒZ[ƒWo—Í                                  <C.3>   *
002740******************************************************************
002750  I—¹ƒƒbƒZ[ƒWo—Í                  SECTION.                    
002760  I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                 
002770*                                                                 
002780*----------------------------------------------------------------*
002790*    ƒ}ƒXƒ^o—ÍŒ”                                              *
002800*----------------------------------------------------------------*
002810     INITIALIZE                       IF-CHOCO001.                
002820     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
002830     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
002840     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
002850     MOVE  "JOM_MST"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
002860     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
002870     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
002880     MOVE  "“ÇžŒ”" TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
002890     CALL  CLOCO001                USING  IF-CHOCO001.            
002900*                                                                 
002910*----------------------------------------------------------------*
003060*    Ž‘ŽYƒR[ƒh•ÏŠ·ƒ}ƒXƒ^o—ÍŒ”                                *
003070*----------------------------------------------------------------*
003080     INITIALIZE                       IF-CHOCO001.                
003090     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
003100     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
003110     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
003120     MOVE  "D077SSH"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
003130     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
003140     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
003150     MOVE  "•ÏŠ·ƒ}ƒXƒ^o—ÍŒ”"                         
003160                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
003170     CALL  CLOCO001                USING  IF-CHOCO001.            
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    I—¹ƒƒbƒZ[ƒW o—Í                                         *
003210*----------------------------------------------------------------*
003220     INITIALIZE                       IF-CHOCO001.                
003230     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
003240     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
003250     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
003260     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
003270     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
003280     CALL  CLOCO001                USING  IF-CHOCO001.            
003290*                                                                 
003300 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
003310     EXIT.                                                        
003320******************************************************************
003330*    ‚n‚q‚`‚b‚k‚dÚ‘±                                    <1.1>   *
003340******************************************************************
003350 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
003360 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
003370*                                                                 
003380*--< ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“ŒÄ‚Ño‚µ >                     
003390     CALL  COBCO001                USING  PARA-AREA.              
003400*                                                                 
003410     MOVE  PARA-DBSTRING              TO  DB-STRING.              
003420     MOVE  PARA-USERNAME              TO  USERNAME.               
003430     MOVE  PARA-PASSWORD              TO  PASSWD.                 
003440*                                                                 
003450*----------------------------------------------------------------*
003460*    ŠJŽnÚ‘±                                                    *
003470*----------------------------------------------------------------*
003480     IF  DB-STRING  =  SPACE                                      
003490        
      *       EXEC  SQL                                                 
003500*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
003510*       END-EXEC 
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
003520     ELSE                                                         
003530        
      *       EXEC  SQL                                                 
003540*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
003550*            USING  :DB-STRING                                    
003560*       END-EXEC 
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
003570     END-IF.                                                      
003580*                                                                 
003590*----------------------------------------------------------------*
003600*    Ú‘±ó‘Ô”»’è                                                *
003610*----------------------------------------------------------------*
003620      EVALUATE  SQLCODE                                           
003630        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
003640           CONTINUE                                               
003650        WHEN   OTHER                                              
003660*--<       Ú‘±ƒGƒ‰[ >                                           
003670           MOVE     -20               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003680           PERFORM  ƒGƒ‰[ˆ—                                    
003690     END-EVALUATE.                                                
003700*                                                                 
003710 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
003720     EXIT.                                                        
003730******************************************************************
003740*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                <1.2>   *
003750******************************************************************
003760 ‹Æ–±ŠÇ—“Çž                         SECTION.                    
003770 ‹Æ–±ŠÇ—“Çž|‚r‚s‚`‚q‚s.                                        
003780     
      *    EXEC SQL                                                     
003790*      SELECT  ƒoƒbƒ`—p‹Æ–±”NŒŽ                                   
003800*        INTO  :‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ                          
003810*        FROM  D70GYM_TBL                                         
003820*       WHERE  D70GYM_TBL.‹Æ–±ŠÇ—‚h‚c = 'GYMKNRRC'               
003830*    END-EXEC.
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
003840     EVALUATE  SQLCODE                                            
003850        WHEN  ZERO                                                
003860*--<       ³í >                                                 
003870           CONTINUE                                               
003880        WHEN  OTHER                                               
003890*--<       “]ƒŠ[ƒX’ñŒgæƒR[ƒh‚ðŽæ“¾‚µ‚È‚¢ >                     
003900           MOVE      -30              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003910           PERFORM   ƒGƒ‰[ˆ—                                   
003920      END-EVALUATE.                                               
003930*									
003940*----------------------------------------------------------------*
003950*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                            <1.3>   *
003960*----------------------------------------------------------------*
003970 ƒJ[ƒ\ƒ‹éŒ¾                         SECTION.                    
003980 ƒJ[ƒ\ƒ‹éŒ¾|‚r‚s‚`‚q‚s.                                        
003990     
      *    EXEC SQL                                                     
004000*       DECLARE CUR1  CURSOR FOR                                  
004010*         SELECT  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                         
004020*          SELECT  M40MAB_TBL.ó‘Ôƒtƒ‰ƒO                          
004030*                 ,M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                        
004040* 	       ,M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª                     
004050* 	       ,M40MAB_TBL.ŒÚ‹q‹æ•ª                             
004060* 	       ,NVL(D01TRS_TBL.–¼Šñ‚¹ƒR[ƒh, RPAD(' ',40,' '))  
004070*		       ,D01TRS_TBL.–¼Šñ‚¹ƒR[ƒh                         
004080* 	       ,M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh                   
004090* 	       ,M40MAB_TBL.¿‹æƒR[ƒh                         
004100* 	       ,M40MAB_TBL.Œ_–ñ”Ô†                             
004110* 	       ,M40MAB_TBL.Œ_–ñŽí—Þ                             
004120* 	       ,M40MAB_TBL.’S“–•”‰ÛƒR[ƒh                       
004130*		       ,M40MAB_TBL.Œ_–ñŒ–¼                             
004140* 	       ,M40MAB_TBL.ÄƒŠ[ƒX‰ñ”                         
004150* 	       ,M40MAB_TBL.[“–ŠJŽn”NŒŽ                         
004160* 	       ,M40MAB_TBL.[“–ŒŽ”                             
004170* 	       ,M40MAB_TBL.‘O•¥‰ñŽû•û–@                         
004180* 	       ,M40MAB_TBL.“ü‹à“ú                               
004190* 	       ,M40MAB_TBL.“ü‹à‹æ•ª                             
004200*                ,NVL(D01TRS_TBL.Žæˆøæ–¼Ì, RPAD(' ',80,' '))
004210*                ,NVL(D02SQS_TBL.¿‹æ–¼Ì, RPAD(' ',80,' '))    
004230*		       ,D02SQS_TBL.¿‹æ–¼Ì                           
004240* 	       ,M40MAB_TBL.‘OŒŽ––Žc‚                          
004250* 	       ,M40MAB_TBL.‘OŒŽ––Žc‚‘¼ŽÐ
      *                ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz                          
004260*                ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz‘¼ŽÐ
      *                ,M40MAB_TBL.“–ŒŽÁ‰»Šz                          
004270* 	       ,M40MAB_TBL.“–ŒŽ––Žc‚                          
004280*                ,M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ                      
004290*                ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                  
004300*                ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                
004310*                ,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ                      
004320*                ,M40MAB_TBL.‹¦’²‹æ•ª                                
004330*           FROM  M40MAB_TBL                                      
004340*                ,D01TRS_TBL                                      
004350*                ,D02SQS_TBL                                      
004360*          WHERE  M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO =  '1'    
004370*            AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh         =         
004380*                          D01TRS_TBL.ŽæˆøæƒR[ƒh( + )           
004390*            AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh         =         
004400*                          D02SQS_TBL.ŽæˆøæƒR[ƒh( + )           
004410*            AND  M40MAB_TBL.¿‹æƒR[ƒh               =         
004420*                          D02SQS_TBL.¿‹æƒR[ƒh( + )           
004430*       ORDER BY  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                         
004440*                ,M40MAB_TBL.Œ_–ñ”Ô†                             
004450*    END-EXEC.
004460     
      *    EXEC  SQL                                                    
004470*       OPEN  CUR1                                                
004480*    END-EXEC.
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
004490*                                                                 
004500*----------------------------------------------------------------*
004510*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
004520*----------------------------------------------------------------*
004530     EVALUATE  SQLCODE                                            
004540        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004550*--<       ³í >                                                 
004560           CONTINUE                                               
004570        WHEN  OTHER                                               
004580*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
004590           MOVE -40                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004600           PERFORM  ƒGƒ‰[ˆ—                                    
004610     END-EVALUATE.                                                
004620*                                                                 
004630 ƒJ[ƒ\ƒ‹éŒ¾|‚d‚w‚h‚s.                                          
004640     EXIT.                                                        
004650*----------------------------------------------------------------*
004660*  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                      <1.4>   *
004670*----------------------------------------------------------------*
004680 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
004690 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
004700*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
004710     OPEN  OUTPUT  o—Íƒtƒ@ƒCƒ‹.                                  
004720*                                                                 
004730*----------------------------------------------------------------*
004740*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
004750*----------------------------------------------------------------*
004760     EVALUATE  ‚v|ó‘Ô                                           
004770        WHEN   ZERO                                               
004780           CONTINUE                                               
004790        WHEN  OTHER                                               
004800*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
004810           MOVE     -10                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
004820           PERFORM  ƒGƒ‰[ˆ—                                    
004830     END-EVALUATE.                                                
004840*                                                                 
004850 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
004860     EXIT.                                                        
004870*----------------------------------------------------------------*
004880*  Œ‹‡ƒe[ƒuƒ‹“Çži‚PŒ–Új                            <C.1>   *
004890*----------------------------------------------------------------*
004900 Œ‹‡ƒe[ƒuƒ‹“Çžˆ—            SECTION.                         
004910 Œ‹‡ƒe[ƒuƒ‹“Çžˆ—|‚r‚s‚`‚q‚s.                                
004920*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
004930     
      *    EXEC SQL                                                     
004940*        FETCH  CUR1                                              
004950*           INTO    
004960*                 :‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª                           
004970*          INTO    :‚l‚S‚O|ó‘Ôƒtƒ‰ƒO                            
004980*		       ,:‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª                           
004990* 	       ,:‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª                       
005000* 	       ,:‚l‚S‚O|ŒÚ‹q‹æ•ª                               
005010* 	       ,:‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh                           
005020* 	       ,:‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh                     
005030* 	       ,:‚l‚S‚O|¿‹æƒR[ƒh                           
005040* 	       ,:‚l‚S‚O|Œ_–ñ”Ô†                               
005050* 	       ,:‚l‚S‚O|Œ_–ñŽí—Þ                               
005060* 	       ,:‚l‚S‚O|’S“–•”‰ÛƒR[ƒh                         
005070*		       ,:‚l‚S‚O|Œ_–ñŒ–¼                               
005080* 	       ,:‚l‚S‚O|ÄƒŠ[ƒX‰ñ”                           
005090* 	       ,:‚l‚S‚O|[“–ŠJŽn”NŒŽ                           
005100* 	       ,:‚l‚S‚O|[“–ŒŽ”                               
005110* 	       ,:‚l‚S‚O|‘O•¥‰ñŽû•û–@                           
005120* 	       ,:‚l‚S‚O|“ü‹à“ú                                 
005130* 	       ,:‚l‚S‚O|“ü‹à‹æ•ª                               
005140* 	       ,:‚c‚O‚P|Žæˆøæ–¼Ì                             
005150* 	       ,:‚c‚O‚Q|¿‹æ–¼Ì                             
005160* 	       ,:‚l‚S‚O|‘OŒŽ––Žc‚                               
005170* 	       ,:‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ
      *                ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz                               
005180*                ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ
      *                ,:‚l‚S‚O|“–ŒŽÁ‰»Šz                               
005190* 	       ,:‚l‚S‚O|“–ŒŽ––Žc‚                               
005200*                ,:‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ                           
005210*                ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                       
005220*                ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                     
005230*                ,:‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ                           
005240*                ,:‚l‚S‚O|‹¦’²‹æ•ª                              
005250*      END-EXEC.
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
               ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚l‚S‚O|ŒÚ‹q‹æ•ª
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh IN
               Žæˆøæƒ}ƒXƒ^
               SQL-SQHSTV(4)
           MOVE 40 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh
               SQL-SQHSTV(5)
           MOVE 9 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚l‚S‚O|¿‹æƒR[ƒh
               SQL-SQHSTV(6)
           MOVE 5 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñ”Ô†
               SQL-SQHSTV(7)
           MOVE 15 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñŽí—Þ
               SQL-SQHSTV(8)
           MOVE 3 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh
               SQL-SQHSTV(9)
           MOVE 4 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(10)
           MOVE 2 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚l‚S‚O|[“–ŠJŽn”NŒŽ
               SQL-SQHSTV(11)
           MOVE 6 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚l‚S‚O|[“–ŒŽ”
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚l‚S‚O|‘O•¥‰ñŽû•û–@
               SQL-SQHSTV(13)
           MOVE 1 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚l‚S‚O|“ü‹à“ú
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚l‚S‚O|“ü‹à‹æ•ª
               SQL-SQHSTV(15)
           MOVE 2 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚c‚O‚P|Žæˆøæ–¼Ì IN
               Žæˆøæƒ}ƒXƒ^
               SQL-SQHSTV(16)
           MOVE 80 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚c‚O‚Q|¿‹æ–¼Ì IN
               ¿‹æƒ}ƒXƒ^
               SQL-SQHSTV(17)
           MOVE 80 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚l‚S‚O|‘OŒŽ––Žc‚
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ
               SQL-SQHSTV(19)
           MOVE 7 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‰ñŽûŠz
               SQL-SQHSTV(20)
           MOVE 7 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ
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
005260*                                                                 
005270*----------------------------------------------------------------*
005280*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
005290*----------------------------------------------------------------*
005300     EVALUATE   SQLCODE                                           
005310        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
005320*--<       ³í >                                                 
005330*            CONTINUE                                              
005340           COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1      
005350        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
005360*--<       “ÇžI—¹ >                                             
005370           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
005380        WHEN   OTHER                                              
005390*--<       “ÇžƒGƒ‰[ >                                           
005400           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005410           PERFORM  ƒGƒ‰[ˆ—                                    
005420     END-EVALUATE.                                                
005430*                                                                 
005440 Œ‹‡ƒe[ƒuƒ‹“Çžˆ—|‚d‚w‚h‚s.                                  
005450     EXIT.                                                        
005460*                                                                 
005470*----------------------------------------------------------------*
005480*   €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ—                <2.1>   *     
005490*----------------------------------------------------------------*
005500 €–Ú–¼Ì’Šoˆ—                     SECTION.                    
005510 €–Ú–¼Ì’Šoˆ—|‚r‚s‚`‚q‚s.                                    
005520*----------------------------------------------------------------*
005530*  €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—                    *
005540*----------------------------------------------------------------*
005550     
      *    EXEC SQL                                                     
005560*       SELECT  –¼Ì                                              
005570*         INTO  ‚v‚r|’Šo‚P                                      
005580*         FROM  D19MSY_TBL                                        
005590*              ,M40MAB_TBL                                        
005600*        WHERE  D19MSY_TBL.ƒR[ƒh‚m‚n = '‚O‚R‚W'                  
005610*          AND  SUBSTR (D19MSY_TBL.ƒR[ƒh,1,1)                    
005620*                    = M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª                
005630*    END-EXEC.
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
               ‚v‚r|’Šo‚P IN
               ‚v‚r|ƒzƒXƒg•Ï”
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
005640*----------------------------------------------------------------*
005650*  €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—                    *  
005660*----------------------------------------------------------------*
005670     
      *    EXEC SQL                                                     
005680*       SELECT  –¼Ì                                              
005690*         INTO  ‚v‚r|’Šo‚Q                                      
005700*         FROM  D19MSY_TBL                                        
005710*              ,M40MAB_TBL                                        
005720*        WHERE  D19MSY_TBL.ƒR[ƒh‚m‚n = '005'                     
005730*          AND  SUBSTR (D19MSY_TBL.ƒR[ƒh,1,2)                    
005740*                    = M40MAB_TBL.ŒÚ‹q‹æ•ª                        
005750*    END-EXEC.
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
               ‚v‚r|’Šo‚Q IN
               ‚v‚r|ƒzƒXƒg•Ï”
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
005760                                                                  
005770*--<  €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ—‚ðŠm”F >                    
005780     EVALUATE   SQLCODE                                           
005790        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
005800*--<       ³í >                                                 
005810           CONTINUE                                               
005820        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
005830*--<       “ÇžI—¹ >                                             
005840           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
005850        WHEN   OTHER                                              
005860*--<       “ÇžƒGƒ‰[ >                                           
005870           MOVE     -60               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005880           PERFORM  ƒGƒ‰[ˆ—                                    
005890     END-EVALUATE.                                                
005900*                                                                 
005910 €–Ú–¼Ì’Šoˆ—|‚d‚w‚h‚s.                                      
005920     EXIT.                                                        
005930*----------------------------------------------------------------*
005940*  ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—                <2.2>   *
005950*----------------------------------------------------------------*
005960 ÂŒ î•ñ’Šoˆ—                     SECTION.                    
005970 ÂŒ î•ñ’Šoˆ—|‚r‚s‚`‚q‚s.                                    
005980     
      *    EXEC SQL                                                     
005990*       SELECT  M01SAJ_TBL.ó‘Ôƒtƒ‰ƒO                             
006000*              ,M01SAJ_TBL.ÂŒ Œ_–ñŒ–¼                           
006010*              ,M01SAJ_TBL.’S•Û‹æ•ª                               
006020*         INTO  :‚l‚O‚P|ó‘Ôƒtƒ‰ƒO                               
006030*              ,:‚l‚O‚P|ÂŒ Œ_–ñŒ–¼                             
006040*              ,:‚l‚O‚P|’S•Û‹æ•ª                                 
006050*         FROM  M01SAJ_TBL                                        
006060*              ,M40MAB_TBL                                        
006070*       WHERE   M01SAJ_TBL.ƒŒƒR[ƒh‹æ•ª = '1'                     
006080*         AND   M01SAJ_TBL.Œ_–ñ”Ô†     = M40MAB_TBL.Œ_–ñ”Ô†     
006090*         AND   M01SAJ_TBL.ÄƒŠ[ƒX‰ñ” = M40MAB_TBL.ÄƒŠ[ƒX‰ñ” 
006100*         AND   M01SAJ_TBL.Œ_–ñŽí—Þ     = M40MAB_TBL.Œ_–ñŽí—Þ     
006110*    END-EXEC.
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
006120*--<  ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šo‚ðŠm”F >                  
006130     EVALUATE   SQLCODE                                           
006140        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
006150*--<       ³í >                                                 
006160           CONTINUE                                               
006170        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
006180*--<       “ÇžI—¹ >                                             
006190           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
006200        WHEN   OTHER                                              
006210*--<       “ÇžƒGƒ‰[ >                                           
006220           MOVE     -70               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006230           PERFORM  ƒGƒ‰[ˆ—                                    
006240     END-EVALUATE.                                                
006250*                                                                 
006260 ÂŒ î•ñ’Šoˆ—|‚d‚w‚h‚s.                                      
006270     EXIT.                                                        
006280*----------------------------------------------------------------*
006290*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Í”»’èˆ—             <2.3>   * 
006300*----------------------------------------------------------------*
006310 ‘OŽó‹àŽó•¥Žc‚o—Í”»’èˆ—           SECTION.                    
006320 ‘OŽó‹àŽó•¥Žc‚o—Í”»’èˆ—|‚r‚s‚`‚q‚s.                          
006330*     IF  M01SAJ_TBL.’S•Û‹æ•ª NOT = '1'                           
006340     IF  ‚l‚O‚P|’S•Û‹æ•ª NOT = '1'                               
006350*                                                                 
006360*----------------------------------------------------------------*
006370*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—               <2.4>  *
006380*----------------------------------------------------------------*
006390         PERFORM  ‘OŽó‹àŽó•¥Žc•ÒWˆ—                            
006400*                                                                 
006410*----------------------------------------------------------------*
006420*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Úo—Íˆ—               <2.5>  *
006430*----------------------------------------------------------------*
006440         PERFORM  ‘OŽó‹àŽó•¥Žco—Íˆ—                            
006450*                                                                 
006460*----------------------------------------------------------------*
006470*    Œ‹‡ƒe[ƒuƒ‹“Çž                                  <  C.1>   *
006480*----------------------------------------------------------------*
006490     ELSE                                                         
006500         PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çžˆ—.                           
006510                                                                  
006520 ‘OŽó‹àŽó•¥Žc‚o—Í”»’èˆ—|‚d‚w‚h‚s.                            
006530     EXIT.                                                        
006540*                                                                 
006550*----------------------------------------------------------------*
006560*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—      <2.4>   *        
006570*----------------------------------------------------------------*
006580 ‘OŽó‹àŽó•¥Žc•ÒWˆ—                  SECTION.                   
006590 ‘OŽó‹àŽó•¥Žc•ÒWˆ—|‚r‚s‚`‚q‚s.                                
006600     IF ‚l‚S‚O|‹¦’²‹æ•ª = '2'                                    
006610*----------------------------------------------------------------*
006620*  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—iŽ©ŽÐ•ª)     <2.4.1>   *
006630*----------------------------------------------------------------*
006640        PERFORM Ž©ŽÐ•ª•ÒWˆ—                                    
006650*                                                                 
006660*----------------------------------------------------------------*
006670*  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—i‘¼ŽÐ•ª)     <2.4.2>   *
006680*----------------------------------------------------------------*
006690        PERFORM ‘¼ŽÐ•ª•ÒWˆ—                                    
006700                                                                  
006710     ELSE                                                         
006720        PERFORM Ž©ŽÐ•ª•ÒWˆ— .                                  
006730*--<  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—‚ðŠm”F >              
006740     EVALUATE   SQLCODE                                           
006750        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
006760*--<       ³í >                                                 
006770           CONTINUE                                               
006780        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
006790*--<       “ÇžI—¹ >                                             
006800           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
006810        WHEN   OTHER                                              
006820*--<       “ÇžƒGƒ‰[ >                                           
006830           MOVE     -80               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006840           PERFORM  ƒGƒ‰[ˆ—                                    
006850     END-EVALUATE.                                                
006860*                                                                 
006870 ‘OŽó‹àŽó•¥Žc•ÒWˆ—|‚d‚w‚h‚s.                                  
006880     EXIT.                                                        
006890*                                                                 
006900*----------------------------------------------------------------*
006910*  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—iŽ©ŽÐ•ª)     <2.4.1>   *
006920*----------------------------------------------------------------*
006930 Ž©ŽÐ•ª•ÒWˆ—                       SECTION.                    
006940 Ž©ŽÐ•ª•ÒWˆ—|‚r‚s‚`‚q‚s.                                      
006950*--< o—ÍƒŒƒR[ƒh‚Ì‰Šú‰»ˆ— >                                   
006960*       MOVE   o—Í|ƒŒƒR[ƒh            TO  o—Í|ƒŒƒR[ƒh.      
006970                                                                  
006980     IF ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO < 3                                    
006990        MOVE  3			       TO  o—Í|Ž©‘¼ŽÐ‹æ•ª     
007000     ELSE                                                        
007010        MOVE  1			       TO  o—Í|Ž©‘¼ŽÐ‹æ•ª     
007020     END-IF.
              MOVE  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª       TO  o—Í|‘OŽó‹æ•ª       
007030        MOVE  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª   TO  o—Í|ŽåŒ_–ñ‹æ•ª     
007040        MOVE  ‚l‚S‚O|ŒÚ‹q‹æ•ª	       TO  o—Í|˜AŒ‹‹æ•ª       
007050        MOVE  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh       TO  o—Í|–¼Šñ‚¹ƒR[ƒh   
007060        MOVE  ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh TO  o—Í|ŽæˆøæƒR[ƒh   
007070        MOVE  ‚l‚S‚O|¿‹æƒR[ƒh       TO  o—Í|¿‹æƒR[ƒh   
007080        MOVE  ‚l‚S‚O|Œ_–ñ”Ô†	       TO  o—Í|Œ_–ñ”Ô†       
007090        MOVE  ‚l‚S‚O|Œ_–ñŽí—Þ           TO  o—Í|Œ_–ñŽí—Þ       
007100        MOVE  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ   TO  o—Í|‹Æ–±”NŒŽ       
007110        MOVE  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh     TO  o—Í|’S“–•”‰ÛƒR[ƒh 
007120        MOVE  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼       TO  o—Í|Œ_–ñŒ–¼       
007130        MOVE  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”       TO  o—Í|ÄƒŠ[ƒX‰ñ”   
007140        MOVE  ‚l‚S‚O|[“–ŠJŽn”NŒŽ       TO  o—Í|[“–ŠJŽn”NŒŽ   
007150        MOVE  ‚l‚S‚O|[“–ŒŽ”           TO  o—Í|[“–ŒŽ”       
007160        MOVE  ‚l‚S‚O|‘O•¥‰ñŽû•û–@       TO  o—Í|‘O•¥‰ñŽû•û–@   
007170        MOVE  ‚l‚S‚O|“ü‹à“ú	       TO  o—Í|“ü‹à“ú         
007180        MOVE  ‚l‚S‚O|“ü‹à‹æ•ª	       TO  o—Í|“ü‹à‹æ•ª       
007190        MOVE  ‚c‚O‚P|Žæˆøæ–¼Ì 	       TO  o—Í|Žæˆøæ–¼Ì     
007200        MOVE  ‚c‚O‚Q|¿‹æ–¼Ì	       TO  o—Í|¿‹æ–¼Ì     
007210        MOVE  ‚v‚r|’Šo‚P	       TO  o—Í|ŽåŒ_–ñ‹æ•ª–¼Ì 
007220        MOVE  ‚v‚r|’Šo‚Q               TO  o—Í|˜AŒ‹‹æ•ª–¼Ì   
007230        MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚	       TO  o—Í|‘OŒŽ––Žc‚     
007240        MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz         TO  o—Í|“–ŒŽ“ü‹àŠz     
007250        MOVE  ‚l‚S‚O|“–ŒŽÁ‰»Šz 	       TO  o—Í|“–ŒŽÁ‰»Šz     
007260        MOVE  ‚l‚S‚O|“–ŒŽ––Žc‚         TO  o—Í|“–ŒŽ––Žc‚.    
007270*                                                                 
007280 Ž©ŽÐ•ª•ÒWˆ—|‚d‚w‚h‚s.                                        
007290     EXIT.                                                        
007300*                                                                 
007310*                                                                 
007320*----------------------------------------------------------------*
007330*  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—i‘¼ŽÐ•ª)     <2.4.2>   *
007340*----------------------------------------------------------------*
007350 ‘¼ŽÐ•ª•ÒWˆ—                       SECTION.                    
007360 ‘¼ŽÐ•ª•ÒWˆ—|‚r‚s‚`‚q‚s.                                      
007370*--< o—ÍƒŒƒR[ƒh‚Ì‰Šú‰»ˆ— >                                   
007380*        MOVE  ‰Šú‰»ƒŒƒR[ƒh             TO  o—Í|ƒŒƒR[ƒh.     
007390                                                                  
007400     IF ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO < 3                                    
007410        MOVE  4			       TO  o—Í|Ž©‘¼ŽÐ‹æ•ª     
007420     ELSE                                                         
007430        MOVE  2			       TO  o—Í|Ž©‘¼ŽÐ‹æ•ª     
007440     END-IF.
              MOVE  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª       TO  o—Í|‘OŽó‹æ•ª       
007450        MOVE  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª   TO  o—Í|ŽåŒ_–ñ‹æ•ª     
007460        MOVE  ‚l‚S‚O|ŒÚ‹q‹æ•ª	       TO  o—Í|˜AŒ‹‹æ•ª       
007470        MOVE  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh       TO  o—Í|–¼Šñ‚¹ƒR[ƒh   
007480        MOVE  ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh TO  o—Í|ŽæˆøæƒR[ƒh   
007490        MOVE  ‚l‚S‚O|¿‹æƒR[ƒh       TO  o—Í|¿‹æƒR[ƒh   
007500        MOVE  ‚l‚S‚O|Œ_–ñ”Ô†	       TO  o—Í|Œ_–ñ”Ô†       
007510        MOVE  ‚l‚S‚O|Œ_–ñŽí—Þ           TO  o—Í|Œ_–ñŽí—Þ       
007520        MOVE  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ   TO  o—Í|‹Æ–±”NŒŽ       
007530        MOVE  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh     TO  o—Í|’S“–•”‰ÛƒR[ƒh 
007540        MOVE  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼       TO  o—Í|Œ_–ñŒ–¼       
007550        MOVE  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”       TO  o—Í|ÄƒŠ[ƒX‰ñ”   
007560        MOVE  ‚l‚S‚O|[“–ŠJŽn”NŒŽ       TO  o—Í|[“–ŠJŽn”NŒŽ   
007570        MOVE  ‚l‚S‚O|[“–ŒŽ”           TO  o—Í|[“–ŒŽ”       
007580        MOVE  ‚l‚S‚O|‘O•¥‰ñŽû•û–@       TO  o—Í|‘O•¥‰ñŽû•û–@   
007590        MOVE  ‚l‚S‚O|“ü‹à“ú	       TO  o—Í|“ü‹à“ú         
007600        MOVE  ‚l‚S‚O|“ü‹à‹æ•ª	       TO  o—Í|“ü‹à‹æ•ª       
007610        MOVE  ‚c‚O‚P|Žæˆøæ–¼Ì 	       TO  o—Í|Žæˆøæ–¼Ì     
007620        MOVE  ‚c‚O‚Q|¿‹æ–¼Ì	       TO  o—Í|¿‹æ–¼Ì     
007630        MOVE  ‚v‚r|’Šo‚P	       TO  o—Í|ŽåŒ_–ñ‹æ•ª–¼Ì 
007640        MOVE  ‚v‚r|’Šo‚Q               TO  o—Í|˜AŒ‹‹æ•ª–¼Ì   
007650        MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ     TO  o—Í|‘OŒŽ––Žc‚     
007660        MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ     TO  o—Í|“–ŒŽ“ü‹àŠz     
007670        COMPUTE  ‚v‚r|“–ŒŽÁ‰»Šz = ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ        
007680                                 + ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à     
007690                                 + ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ   
007700        MOVE  ‚v‚r|“–ŒŽÁ‰»Šz 	      TO  o—Í|“–ŒŽÁ‰»Šz      
007710        COMPUTE  ‚v‚r|“–ŒŽ––Žc‚ = ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ        
007720                                 - ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à     
007730                                 - ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ   
007740        MOVE ‚v‚r|“–ŒŽ––Žc‚           TO  o—Í|“–ŒŽ––Žc‚.     
007750                                                                  
007760*                                                                 
007770 ‘¼ŽÐ•ª•ÒWˆ—|‚d‚w‚h‚s.                                        
007780     EXIT.                                                        
007790*----------------------------------------------------------------*
007800*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Úo—Íˆ—              <2.5>   *        
007810*----------------------------------------------------------------*
007820 ‘OŽó‹àŽó•¥Žco—Íˆ—                  SECTION.                   
007830 ‘OŽó‹àŽó•¥Žco—Íˆ—|‚r‚s‚`‚q‚s.                                
007840     IF  o—Í|‘OŒŽ––Žc‚ = ZERO                                  
007850         AND ‚l‚S‚O|“–ŒŽ‰ñŽûŠz = ZERO                            
007860         AND o—Í|“–ŒŽÁ‰»Šz   = ZERO                              
007870         AND o—Í|“–ŒŽ––Žc‚   = ZERO                              
007880         CONTINUE                                                 
007890     ELSE                                                         
007900        WRITE  o—Í|ƒŒƒR[ƒh                                     
007910*        COMPUTE ‚v|o—Í|Œ”= ‚v|o—Í|Œ”+ 1.               
007920        ADD  1 TO ‚v|o—Í|Œ”.                                 
007930*--<  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—‚ðŠm”F >              
007940     EVALUATE   SQLCODE                                           
007950        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
007960*--<       ³í >                                                 
007970           CONTINUE                                               
007980        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
007990*--<       “ÇžI—¹ >                                             
008000           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
008010        WHEN   OTHER                                              
008020*--<       “ÇžƒGƒ‰[ >                                           
008030           MOVE     -90               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
008040           PERFORM  ƒGƒ‰[ˆ—                                    
008050     END-EVALUATE.                                                
008060*                                                                 
008070 ‘OŽó‹àŽó•¥Žco—Íˆ—|‚d‚w‚h‚s.                                  
008080     EXIT.                                                        
008090*                                                                 
008100                                                                  
008110******************************************************************
008120*    ‚c‚aƒNƒ[ƒY                                        <3.1>   *
008130******************************************************************
008140 ‚c‚aƒNƒ[ƒY                         SECTION.                    
008150 ‚c‚aƒNƒ[ƒY|‚r‚s‚`‚q‚s.                                        
008160*                                                                 
008170*--< ƒJ[ƒ\ƒ‹‚ÌƒNƒ[ƒY >                                         
008180     
      *    EXEC  SQL                                                    
008190*       CLOSE  CUR1                                               
008200*    END-EXEC.
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
008210*                                                                 
008220 ‚c‚aƒNƒ[ƒY|‚d‚w‚h‚s.                                          
008230     EXIT.                                                        
008240******************************************************************
008250*    ƒGƒ‰[ˆ—                                                  *
008260******************************************************************
008270 ƒGƒ‰[ˆ—                       SECTION.                        
008280 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
008290*                                                                 
008300     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
008310     INITIALIZE                           IF-CHOCO001.            
008320*                                                                 
008330     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
008340        WHEN  -10                                                 
008350*--<    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“        >                                 
008360           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008370           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008380           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008390           MOVE  "OPENDB"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008400           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008410           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008420           CALL  CLOCO001          USING  IF-CHOCO001             
008430*                                                                 
008440        WHEN  -20                                                 
008450*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
008460           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008470           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008480           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008490           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
008500           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008510           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008520           CALL  CLOCO001          USING  IF-CHOCO001             
008530*                                                                 
008540        WHEN  -30                                                 
008550*--<       ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž  >                                
008560           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008570           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008580           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008590           MOVE  "D70GYM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008600           MOVE  "GRRC"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008610           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008620           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008630           CALL  CLOCO001          USING  IF-CHOCO001             
008640*                                                                 
008650        WHEN  -40                                                 
008660*--<     ƒJ[ƒ\ƒ‹éŒ¾   >                                         
008670           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008680           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008690           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008700           MOVE  "THREE"              TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008710           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008720           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008730           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008740           CALL  CLOCO001          USING  IF-CHOCO001             
008750*                                                                 
008760        WHEN  -50                                                 
008770*--<    Œ‹‡ƒe[ƒuƒ‹“Çž  >                                       
008780           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008790           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008800           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008810           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008820           MOVE  "READ"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008830           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008840           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008850           CALL  CLOCO001          USING  IF-CHOCO001             
008860*                                                                 
008870        WHEN  -60                                                 
008880*--<    €–Ú–¼Ì’Šoˆ—  >                                       
008890           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008900           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008910           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008920           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008930           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008940           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008950           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008960           CALL  CLOCO001          USING  IF-CHOCO001             
008970*                                                                 
008980        WHEN  -70                                                 
008990*--<    ÂŒ î•ñ‚c‚a’Šoˆ—  >                                   
009000           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009010           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009020           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009030           MOVE  "M01SAJ"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009040           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009050           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009060           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009070           CALL  CLOCO001          USING  IF-CHOCO001             
009080*                                                                 
009090        WHEN  -80                                                 
009100*--<    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒW  >                     
009110           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009120           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009130           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009140           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009150           MOVE  "EDIT"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
009160           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009170           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009180           CALL  CLOCO001          USING  IF-CHOCO001             
009190*                                                                 
009200        WHEN  -90                                                 
009210*--<    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Úo—Íˆ—  >                 
009220           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009230           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009240           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009250           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009260           MOVE  "OUTPUT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009270           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009280           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009290           CALL  CLOCO001          USING  IF-CHOCO001             
009300*                                                                 
009310        WHEN  OTHER                                               
009320           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009330     END-EVALUATE.                                                
009340*                                                                 
009350     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
009360        PERFORM  ‚c‚aƒNƒ[ƒY                                     
009370*                                                                 
009380        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
009390*                                                                 
009400*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
009410        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
009420*                                                                 
009430        EXIT  PROGRAM                                             
009440     END-IF.                                                      
009450*                                                                 
009460 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
009470     EXIT.                                                        
009480                                                                  
