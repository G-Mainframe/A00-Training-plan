000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼    F‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬           *
000040*      2. ƒvƒƒOƒ‰ƒ€ID    FAAASED25  (’Šo)                     *
000050*      3. ˆ—ŠT—v        F‘OŽóî•ñ‚c‚a‚ðƒƒCƒ“‚ÉA             *
000060*                           ƒ}ƒXƒ^‚Æ•\Œ‹‡‚µ‚Ä“Çž‚ÝA           *
000070*                          ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹‚ðì¬‚·‚éB*
000080*      4. ì¬ŽÒ          F‹IŠâ                                 *
000090*      5. ì¬“ú          F2005.03.25                           *
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
000310*                                                                 
000320******************************************************************
000330*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000340******************************************************************
000350 DATA                                 DIVISION.                   
000360******************************************************************
000370*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000380******************************************************************
000390 FILE                                 SECTION.                    
000400*----------------------------------------------------------------*
000410*    o—Íƒtƒ@ƒCƒ‹                                                *
000420*----------------------------------------------------------------*
000430 FD  o—Íƒtƒ@ƒCƒ‹                                                 
000440     LABEL  RECORD    IS              STANDARD                    
000450     BLOCK  CONTAINS  0               RECORDS.                    
000460*                                                                 
000470 01  o—Í|ƒŒƒR[ƒh.                                              
000480     COPY   CPSCE50   REPLACING      ==()==  BY  ==o—Í|==.      
000490*                                                                 
000500******************************************************************
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
           02  FILLER PIC X(74) VALUE "select ƒoƒbƒ`—p‹Æ–±”NŒŽ   into :b
      -    "1  from D70GYM_TBL where ‹Æ–±ŠÇ—‚h‚c=:b2".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(89) VALUE "select –¼Ì   into :b1  from D19M
      -    "SY_TBL where (ƒR[ƒh‚m‚n=:b2 and SUBSTR(ƒR[ƒh,1,1)=:b3)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(89) VALUE "select –¼Ì   into :b1  from D19M
      -    "SY_TBL where (ƒR[ƒh‚m‚n=:b2 and SUBSTR(ƒR[ƒh,1,2)=:b3)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "select ó‘Ôƒtƒ‰ƒO  ,ÂŒ Œ_–ñŒ–¼
      -     "  ,’S•Û‹æ•ª   into :b1,:b2,:b3  from M01SAJ_TBL where (((ƒŒ
      -     "ƒR[ƒh‹æ•ª=:b4 and Œ_–ñ”Ô†=:b5) and ÄƒŠ[ƒX‰ñ”=:b6) and 
      -    "Œ_–ñŽí—Þ=:".

           02  FILLER PIC X(3) VALUE "b7)".

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
      -    "––Žc‚  ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz  ,M40MAB_TBL.“–ŒŽÁ‰»Šz  ,M40
      -    "MAB_TBL.“–ŒŽ––Žc‚  ,M40MAB_TBL.‹¦’²‹æ•ª  ,M40MAB_TBL.‘OŒŽ––
      -    "Žc‚‘¼ŽÐ".

           02  FILLER PIC X(160) VALUE "  ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz‘¼ŽÐ  ,M
      -    "40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à  ,M
      -    "40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ  ,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ  
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
           02     FILLER PIC S9(4) COMP-5 VALUE +280.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +284.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +74.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +314.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +90.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1127.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +392.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +105.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +439.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +232.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +89.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +514.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +259.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +89.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +547.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +286.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +163.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +580.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +329.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +864.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580 01  €–Ú–¼Ìƒ}ƒXƒ^–¼Ì.                                          
000590*--< €–Ú–¼Ìƒ}ƒXƒ^–¼Ì >                                         
000600	   03  ‚v‚r|–¼Ì‚P                 PIC  X(60).                 
000610	   03  ‚v‚r|–¼Ì‚Q                 PIC  X(60).                 
000620*                                                                 
000630 01 ‚v‚r|‹Æ–±ŠÇ—‚h‚c                PIC X(08)  VALUE 'GYMKNRRC'.
000640 01 ‚v‚r|ƒR[ƒh‚m‚n‚P                PIC X(12)  VALUE '038'.     
000650 01 ‚v‚r|ƒR[ƒh‚m‚n‚Q                PIC X(12)  VALUE '005'.     
000660 01 ‚v‚r|ƒŒƒR[ƒh‹æ•ª                PIC X(01)  VALUE '1'.       
000670*                                                                 
000680*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000690     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000700*                                                                 
000710*--< ‘OŽóî•ñ‚c‚a >                                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000720     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL            END-EXEC.
000730*                                                                 
000740*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹ >                                           
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
000750     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL            END-EXEC.
000760*                                                                 
000770*--< Žæˆøæƒ}ƒXƒ^ >                                               
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
000780     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL            END-EXEC.
000790*                                                                 
000800*--< ¿‹æƒ}ƒXƒ^ >                                               
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
000810     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL            END-EXEC.
000820*                                                                 
000830*--< €–Ú–¼Ìƒ}ƒXƒ^ >                                             
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
000840     
      *    EXEC  SQL  INCLUDE  D19MSY.CBL            END-EXEC.
000850*                                                                 
000860*--< ÂŒ î•ñiˆê”Êj‚c‚a >                                       
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
000870     
      *    EXEC  SQL  INCLUDE  M01SAJ.CBL            END-EXEC.
000880*                                                                 
000890*--< ‚n‚q‚`‚b‚k‚d ‚r‚p‚kŽÀsî•ñ (SQLCA) >                        
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
000900     
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
000910*                                                                 
000920     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000930*                                                                 
000940*----------------------------------------------------------------*
000950*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000960*----------------------------------------------------------------*
000970 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000980*--< ‘¼ŽÐ•ªƒGƒŠƒA >                                               
000990     03  ‘¼ŽÐ•ªƒGƒŠƒA.                                            
001000         05  ‚v|“–ŒŽÁ‰»Šz‚P         PIC S9(13).                 
001010         05  ‚v|“–ŒŽ––Žc‚‚P         PIC S9(13).                 
001020*                                                                 
001030*--< ƒGƒ‰[”»’è—p >                                               
001040     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
001050*                                                                 
001060*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
001070     03  ‚v|ó‘ÔƒGƒŠƒA.                                          
001080         05  ‚v|ó‘Ô                 PIC  X(02).                 
001090*                                                                 
001100*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001110     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
001120         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
001130         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
001140*                                                                 
001150*--< Œ”ƒGƒŠƒA >                                                 
001160     03  Œ”ƒGƒŠƒA.                                              
001170         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
001180         05  ‚v|o—Í|Œ”           PIC  9(09).                 
001190*                                                                 
001200*----------------------------------------------------------------*
001210*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001220*----------------------------------------------------------------*
001230 01  CALL-AREA.                                                   
001240*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001250     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001260     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001270*                                                                 
001280*----------------------------------------------------------------*
001290*    ‚b‚n‚o‚x—Ìˆæ                                                *
001300*----------------------------------------------------------------*
001310*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001320 01  IF-CHOCO001.                                                 
001330     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001340*                                                                 
001350*----------------------------------------------------------------*
001360*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001370*----------------------------------------------------------------*
001380 01  PARA-AREA.                                                   
001390     COPY CPBCO001.                                               
001400******************************************************************
001410*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001420******************************************************************
001430 CONSTANT                             SECTION.                    
001440 01  ’è”—Ìˆæ.                                                    
001450     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "AAASED25".
001460     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001470                             VALUE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬". 
001480     03  ’è”|‚r‚p‚k‚n‚j             PIC  9(04)  VALUE  ZERO.    
001490     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC  9(04)  VALUE  0100.    
001500     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001510     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001520******************************************************************
001530*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001540******************************************************************
001550 PROCEDURE                            DIVISION.                   
001560*                                                                 
001570     PERFORM  ‰Šúˆ—.                                           
001580*                                                                 
001590     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001600*                                                                 
001610     PERFORM  I—¹ˆ—.                                           
001620*                                                                 
001630     STOP     RUN.                                                
001640*                                                                 
001650******************************************************************
001660*    ‰Šúˆ—                                            <1.0>   *
001670******************************************************************
001680 ‰Šúˆ—                             SECTION.                    
001690 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001700*                                                                 
001710*----------------------------------------------------------------*
001720*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                              <1.1>   *
001730*----------------------------------------------------------------*
001740     INITIALIZE                       IF-CHOCO001.                
001750     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001760     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001770     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001780     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001790     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001800     CALL  CLOCO001                USING  IF-CHOCO001.            
001810*                                                                 
001820*----------------------------------------------------------------*
001830*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                <1.2>   *
001840*----------------------------------------------------------------*
001850     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001860     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001870*                                                                 
001880*----------------------------------------------------------------*
001890*    ‚n‚q‚`‚b‚k‚dÚ‘±                                    <1.3>   *
001900*----------------------------------------------------------------*
001910     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001920*                                                                 
001930*----------------------------------------------------------------*
001940*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                <1.4>   *
001950*----------------------------------------------------------------*
001960     PERFORM   ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž.                              
001970*                                                                 
001980*----------------------------------------------------------------*
001990*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                            <1.5>   *
002000*----------------------------------------------------------------*
002010     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾.                           
002020*                                                                 
002030*----------------------------------------------------------------*
002040*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                    <1.6>   *
002050*----------------------------------------------------------------*
002060     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
002070*                                                                 
002080*----------------------------------------------------------------*
002090*    Œ‹‡ƒe[ƒuƒ‹“Çž                                    <1.7>   *
002100*----------------------------------------------------------------*
002110     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çž.                                   
002120*                                                                 
002130 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002140     EXIT.                                                        
002150******************************************************************
002160*    Žåˆ—                                                      *
002170******************************************************************
002180 Žåˆ—                               SECTION.                    
002190 Žåˆ—|‚r‚s‚`‚q‚s.                                              
002200*                                                                 
002210*----------------------------------------------------------------*
002220*    €–Ú–¼Ìƒ}ƒXƒ^’Šoˆ—                              <2.1>   *
002230*----------------------------------------------------------------*
002240     PERFORM  €–Ú–¼Ìƒ}ƒXƒ^’Šoˆ—.                             
002250*                                                                 
002260*----------------------------------------------------------------*
002270*    ÂŒ î•ñ‚c‚a’Šoˆ—                                <2.2>   *
002280*----------------------------------------------------------------*
002290     PERFORM  ÂŒ î•ñ‚c‚a’Šoˆ—.                               
002300*                                                                 
002310*----------------------------------------------------------------*
002320*    ƒtƒ@ƒCƒ‹o—Í”»’è•ÒWo—Íˆ—                        <2.3>   *
002330*----------------------------------------------------------------*
002340     PERFORM  ƒtƒ@ƒCƒ‹o—Í”»’è•ÒWo—Íˆ—.                       
002350*                                                                 
002360*----------------------------------------------------------------*
002370*    Œ‹‡ƒe[ƒuƒ‹“Çži‚QŒ–ÚˆÈ~j                      <2.5>   *
002380*----------------------------------------------------------------*
002390     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çž.                                   
002400*                                                                 
002410                                                                  
002420 Žåˆ—|‚d‚w‚h‚s.                                                
002430     EXIT.                                                        
002440******************************************************************
002450*    I—¹ˆ—                                                    *
002460******************************************************************
002470 I—¹ˆ—                             SECTION.                    
002480 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
002490*                                                                 
002500     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
002510*                                                                 
002520*--< ƒtƒ@ƒCƒ‹ƒNƒ[ƒY >                                           
002530*                                                                 
002540     CLOSE    o—Íƒtƒ@ƒCƒ‹.                                       
002550*                                                                 
002560     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
002570*                                                                 
002580*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
002590     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
002600*                                                                 
002610 I—¹ˆ—|‚d‚w‚h‚s.                                              
002620     EXIT.                                                        
002630******************************************************************
002640*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
002650******************************************************************
002660 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002670 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002680*                                                                 
002690*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002700     CALL  COBCO001                USING  PARA-AREA.              
002710*                                                                 
002720     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002730     MOVE  PARA-USERNAME              TO  USERNAME.               
002740     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002750*                                                                 
002760*----------------------------------------------------------------*
002770*    ŠJŽnÚ‘±                                                    *
002780*----------------------------------------------------------------*
002790     IF    DB-STRING  =  SPACE                                    
002800        
      *       EXEC SQL                                                  
002810*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002820*       END-EXEC 
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
002830     ELSE                                                         
002840        
      *       EXEC SQL                                                  
002850*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002860*            USING  :DB-STRING                                    
002870*       END-EXEC 
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
002880     END-IF.                                                      
002890*                                                                 
002900*----------------------------------------------------------------*
002910*    Ú‘±Šm”F                                                    *
002920*----------------------------------------------------------------*
002930     EVALUATE  SQLCODE                                            
002940        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002950           CONTINUE                                               
002960        WHEN   OTHER                                              
002970*--<       Ú‘±ƒGƒ‰[ >                                           
002980           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002990           PERFORM  ƒGƒ‰[ˆ—                                    
003000     END-EVALUATE.                                                
003010*                                                                 
003020 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
003030     EXIT.                                                        
003040******************************************************************
003050*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                <1.2>   *
003060******************************************************************
003070*                                                                 
003080 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                         SECTION.            
003090 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                                
003100*                                                                 
003110*----------------------------------------------------------------*
003120*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                        *
003130*----------------------------------------------------------------*
003140     
      *    EXEC SQL                                                     
003150*       SELECT  ƒoƒbƒ`—p‹Æ–±”NŒŽ                                  
003160*         INTO :‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ                          
003170*         FROM  D70GYM_TBL                                        
003180*        WHERE  ‹Æ–±ŠÇ—‚h‚c  =  :‚v‚r|‹Æ–±ŠÇ—‚h‚c              
003190*    END-EXEC.
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
               ‚v‚r|‹Æ–±ŠÇ—‚h‚c
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
003200*----------------------------------------------------------------*
003210*    ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“ÇžŠm”F                                    *
003220*----------------------------------------------------------------*
003230     EVALUATE   SQLCODE                                           
003240        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003250*--<       ³í >                                                 
003260           CONTINUE                                               
003270        WHEN   OTHER                                              
003280*--<       ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“ÇžŽ¸”sAƒvƒƒOƒ‰ƒ€‚ªˆÙíI—¹ >       
003290           MOVE      -20              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003300           PERFORM   ƒGƒ‰[ˆ—                                   
003310     END-EVALUATE.                                                
003320*                                                                 
003330 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚d‚w‚h‚s.                                  
003340     EXIT.                                                        
003350******************************************************************
003360*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                            <1.2>   *
003370******************************************************************
003380*                                                                 
003390 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                         SECTION.        
003400 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾|‚r‚s‚`‚q‚s.                            
003410*                                                                 
003420*----------------------------------------------------------------*
003430*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                                    *
003440*----------------------------------------------------------------*
003450     
      *    EXEC  SQL                                                    
003460*       DECLARE   CUR1       CURSOR  FOR                          
003470*          SELECT  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                        
003480*                 ,M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª                    
003490*                 ,M40MAB_TBL.ŒÚ‹q‹æ•ª                            
003500*                 ,NVL(D01TRS_TBL.–¼Šñ‚¹ƒR[ƒh,RPAD(' ',40,' '))  
003510*                 ,M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh                  
003520*                 ,M40MAB_TBL.¿‹æƒR[ƒh                        
003530*                 ,M40MAB_TBL.Œ_–ñ”Ô†                            
003540*                 ,M40MAB_TBL.Œ_–ñŽí—Þ                            
003550*                 ,M40MAB_TBL.’S“–•”‰ÛƒR[ƒh                      
003560*                 ,M40MAB_TBL.ÄƒŠ[ƒX‰ñ”                        
003570*                 ,M40MAB_TBL.[“–ŠJŽn”NŒŽ                        
003580* 		,M40MAB_TBL.[“–ŒŽ”                            
003590* 		,M40MAB_TBL.‘O•¥‰ñŽû•û–@                        
003600* 		,M40MAB_TBL.“ü‹à“ú                              
003610* 		,M40MAB_TBL.“ü‹à‹æ•ª                            
003620*                 ,NVL(D01TRS_TBL.Žæˆøæ–¼Ì,RPAD(' ',80,' '))    
003630*                 ,NVL(D02SQS_TBL.¿‹æ–¼Ì,RPAD(' ',80,' '))    
003640* 		,M40MAB_TBL.‘OŒŽ––Žc‚                          
003650* 		,M40MAB_TBL.“–ŒŽ‰ñŽûŠz                          
003660* 		,M40MAB_TBL.“–ŒŽÁ‰»Šz                          
003670* 		,M40MAB_TBL.“–ŒŽ––Žc‚                          
003680* 		,M40MAB_TBL.‹¦’²‹æ•ª                            
003690* 	        ,M40MAB_TBL.‘OŒŽ––Žc‚‘¼ŽÐ                      
003700* 	        ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz‘¼ŽÐ                      
003710* 	        ,M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ                      
003720* 	        ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                  
003730* 	        ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                
003740* 		,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ                      
003750*            FROM  M40MAB_TBL                                     
003760*                 ,D01TRS_TBL                                     
003770* 		,D02SQS_TBL                                     
003780*           WHERE  M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO = '1'    
003790*             AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh =                
003800* 				D01TRS_TBL.ŽæˆøæƒR[ƒh(+)      
003810* 	    AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh =                
003820* 				D02SQS_TBL.ŽæˆøæƒR[ƒh(+)      
003830* 	    AND  M40MAB_TBL.¿‹æƒR[ƒh =                      
003840* 				D02SQS_TBL.¿‹æƒR[ƒh(+)      
003850*        ORDER BY  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                        
003860*                 ,M40MAB_TBL.Œ_–ñ”Ô†                            
003870*    END-EXEC.
003880*                                                                 
003890*----------------------------------------------------------------*
003900*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“                                *
003910*----------------------------------------------------------------*
003920     
      *    EXEC  SQL                                                    
003930*       OPEN  CUR1                                                
003940*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 90 TO SQL-OFFSET
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
003950*                                                                 
003960*----------------------------------------------------------------*
003970*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“‚ðŠm”F                          *
003980*----------------------------------------------------------------*
003990     EVALUATE   SQLCODE                                           
004000        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004010*--<       ³í >                                                 
004020           CONTINUE                                               
004030        WHEN   OTHER                                              
004040*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
004050           MOVE      -30              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004060           PERFORM   ƒGƒ‰[ˆ—                                   
004070     END-EVALUATE.                                                
004080*                                                                 
004090 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾|‚d‚w‚h‚s.                              
004100     EXIT.                                                        
004110******************************************************************
004120*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                            *
004130******************************************************************
004140 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
004150 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
004160*----------------------------------------------------------------*
004170*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹‚ÌƒI[ƒvƒ“                        *
004180*----------------------------------------------------------------*
004190     OPEN  OUTPUT   o—Íƒtƒ@ƒCƒ‹.                                 
004200*                                                                 
004210*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“‚Ìó‘Ô”»’è >                                 
004220     EVALUATE  ‚v|ó‘Ô                                           
004230        WHEN  ZERO                                                
004240           CONTINUE                                               
004250        WHEN  OTHER                                               
004260*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
004270           MOVE     -90                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
004280           PERFORM  ƒGƒ‰[ˆ—                                    
004290     END-EVALUATE.                                                
004300*                                                                 
004310 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
004320     EXIT.                                                        
004330******************************************************************
004340*    Œ‹‡ƒe[ƒuƒ‹“Çž                              <1.7 AND 2.5> *
004350******************************************************************
004360 Œ‹‡ƒe[ƒuƒ‹“Çž                   SECTION.                      
004370 Œ‹‡ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                                    
004380*                                                                 
004390     
      *    EXEC  SQL                                                    
004400*       FETCH  CUR1                                               
004410*          INTO                                                   
004420*            :‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª                                
004430*           ,:‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª                            
004440*           ,:‚l‚S‚O|ŒÚ‹q‹æ•ª                                    
004450*           ,:‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh                                
004460*           ,:‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh                          
004470*           ,:‚l‚S‚O|¿‹æƒR[ƒh                                
004480*           ,:‚l‚S‚O|Œ_–ñ”Ô†                                    
004490*           ,:‚l‚S‚O|Œ_–ñŽí—Þ                                    
004500*           ,:‚l‚S‚O|’S“–•”‰ÛƒR[ƒh                              
004510* 	  ,:‚l‚S‚O|ÄƒŠ[ƒX‰ñ”                                
004520* 	  ,:‚l‚S‚O|[“–ŠJŽn”NŒŽ                                
004530* 	  ,:‚l‚S‚O|[“–ŒŽ”                                    
004540* 	  ,:‚l‚S‚O|‘O•¥‰ñŽû•û–@                                
004550* 	  ,:‚l‚S‚O|“ü‹à“ú                                      
004560* 	  ,:‚l‚S‚O|“ü‹à‹æ•ª                                    
004570* 	  ,:‚c‚O‚P|Žæˆøæ–¼Ì                                  
004580* 	  ,:‚c‚O‚Q|¿‹æ–¼Ì                                  
004590* 	  ,:‚l‚S‚O|‘OŒŽ––Žc‚                                  
004600* 	  ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz                                  
004610* 	  ,:‚l‚S‚O|“–ŒŽÁ‰»Šz                                  
004620* 	  ,:‚l‚S‚O|“–ŒŽ––Žc‚                                  
004630* 	  ,:‚l‚S‚O|‹¦’²‹æ•ª                                    
004640* 	  ,:‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ                              
004650* 	  ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ                              
004660* 	  ,:‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ                              
004670* 	  ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                          
004680* 	  ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                        
004690* 	  ,:‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ                              
004700*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 105 TO SQL-OFFSET
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
               ‚l‚S‚O|“–ŒŽ‰ñŽûŠz
               SQL-SQHSTV(19)
           MOVE 7 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽÁ‰»Šz
               SQL-SQHSTV(20)
           MOVE 7 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ––Žc‚
               SQL-SQHSTV(21)
           MOVE 7 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               ‚l‚S‚O|‹¦’²‹æ•ª
               SQL-SQHSTV(22)
           MOVE 1 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ
               SQL-SQHSTV(27)
           MOVE 7 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ
               SQL-SQHSTV(28)
           MOVE 7 TO SQL-SQHSTL(28)
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
004710*                                                                 
004720*----------------------------------------------------------------*
004730*    Œ‹‡ƒe[ƒuƒ‹“ÇžŠm”F                                        *
004740*----------------------------------------------------------------*
004750     EVALUATE  SQLCODE                                            
004760        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004770*--<       ³í >                                                 
004780           COMPUTE   ‚v|“ü—Í|Œ” =  ‚v|“ü—Í|Œ” +  1        
004790        WHEN  ’è”|‚r‚p‚k‚d‚m‚c                                  
004800*--<       “ÇžI—¹ >                                             
004810           MOVE      "Y"              TO  ‚v|I—¹|ƒtƒ‰ƒO        
004820        WHEN  OTHER                                               
004830*--<       “ÇžƒGƒ‰[ >                                           
004840           MOVE      -40              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004850           PERFORM   ƒGƒ‰[ˆ—                                   
004860     END-EVALUATE.                                                
004870*                                                                 
004880 Œ‹‡ƒe[ƒuƒ‹“Çž|‚d‚w‚h‚s.                                      
004890     EXIT.                                                        
004900******************************************************************
004910*    €–Ú–¼Ìƒ}ƒXƒ^’Šoˆ—                               <2.1>  *
004920******************************************************************
004930*                                                                 
004940 €–Ú–¼Ìƒ}ƒXƒ^’Šoˆ—                     SECTION.              
004950 €–Ú–¼Ìƒ}ƒXƒ^’Šoˆ—|‚r‚s‚`‚q‚s.                              
004960*                                                                 
004970        PERFORM   ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—.                       
004980*                                                                 
004990        PERFORM   ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—.                         
005000*                                                                 
005010 €–Ú–¼Ìƒ}ƒXƒ^’Šoˆ—|‚d‚w‚h‚s.                                
005020     EXIT.                                                        
005030                                                                  
005040******************************************************************
005050*    ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—                            <2.1.1> *
005060******************************************************************
005070*                                                                 
005080 ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—               SECTION.                  
005090 ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—|‚r‚s‚`‚q‚s.                            
005100*                                                                 
005110*----------------------------------------------------------------*
005120*   ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—                                     *
005130*----------------------------------------------------------------*
005140     
      *    EXEC SQL                                                     
005150*       SELECT  –¼Ì                                              
005160*         INTO :‚v‚r|–¼Ì‚P                                      
005170*         FROM  D19MSY_TBL                                        
005180*       WHERE   ƒR[ƒh‚m‚n  =  :‚v‚r|ƒR[ƒh‚m‚n‚P                
005190*         AND   SUBSTR(ƒR[ƒh,1,1) =  :‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª   
005200*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 232 TO SQL-OFFSET
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
               €–Ú–¼Ìƒ}ƒXƒ^–¼Ì
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|ƒR[ƒh‚m‚n‚P
               SQL-SQHSTV(2)
           MOVE 12 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª
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
005210*----------------------------------------------------------------*
005220*    ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—Šm”F                                *
005230*----------------------------------------------------------------*
005240     EVALUATE   SQLCODE                                           
005250        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
005260*--<       ³í >                                                 
005270           CONTINUE                                               
005280        WHEN   OTHER                                              
005290*--<       ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—Ž¸”s>                          
005300           MOVE      SPACE            TO  ‚v‚r|–¼Ì‚P            
005310           MOVE      -50              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005320           PERFORM   ƒGƒ‰[ˆ—                                   
005330     END-EVALUATE.                                                
005340*                                                                 
005350 ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—|‚d‚w‚h‚s.                              
005360     EXIT.                                                        
005370******************************************************************
005380*    ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—                              <2.1.2> *
005390******************************************************************
005400*                                                                 
005410 ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—               SECTION.                    
005420 ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—|‚r‚s‚`‚q‚s.                              
005430*                                                                 
005440*----------------------------------------------------------------*
005450*   ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—                                       *
005460*----------------------------------------------------------------*
005470     
      *    EXEC SQL                                                     
005480*       SELECT  –¼Ì                                              
005490*         INTO :‚v‚r|–¼Ì‚Q                                      
005500*         FROM  D19MSY_TBL                                        
005510*       WHERE   ƒR[ƒh‚m‚n  =  :‚v‚r|ƒR[ƒh‚m‚n‚Q                
005520*         AND   SUBSTR(ƒR[ƒh,1,2)  =  :‚l‚S‚O|ŒÚ‹q‹æ•ª          
005530*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 259 TO SQL-OFFSET
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
               €–Ú–¼Ìƒ}ƒXƒ^–¼Ì
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|ƒR[ƒh‚m‚n‚Q
               SQL-SQHSTV(2)
           MOVE 12 TO SQL-SQHSTL(2)
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
005540*----------------------------------------------------------------*
005550*    ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—Šm”F                                  *
005560*----------------------------------------------------------------*
005570     EVALUATE   SQLCODE                                           
005580        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
005590*--<       ³í >                                                 
005600           CONTINUE                                               
005610        WHEN   OTHER                                              
005620*--<       ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—Ž¸”s>                            
005630           MOVE      SPACE           TO  ‚v‚r|–¼Ì‚Q             
005640           MOVE      -60             TO  ‚v|ƒGƒ‰[ƒR[ƒh         
005650           PERFORM   ƒGƒ‰[ˆ—                                   
005660     END-EVALUATE.                                                
005670*                                                                 
005680 ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—|‚d‚w‚h‚s.                                
005690     EXIT.                                                        
005700******************************************************************
005710*    ÂŒ î•ñ‚c‚a’Šoˆ—                                <2.2>   *
005720******************************************************************
005730*                                                                 
005740 ÂŒ î•ñ‚c‚a’Šoˆ—               SECTION.                      
005750 ÂŒ î•ñ‚c‚a’Šoˆ—|‚r‚s‚`‚q‚s.                                
005760*                                                                 
005770*----------------------------------------------------------------*
005780*   ÂŒ î•ñ‚c‚a’Šoˆ—                                         *
005790*----------------------------------------------------------------*
005800     
      *    EXEC SQL                                                     
005810*      SELECT  ó‘Ôƒtƒ‰ƒO                                         
005820*             ,ÂŒ Œ_–ñŒ–¼                                       
005830* 	    ,’S•Û‹æ•ª                                           
005840*       INTO   :‚l‚O‚P|ó‘Ôƒtƒ‰ƒO                                
005850*             ,:‚l‚O‚P|ÂŒ Œ_–ñŒ–¼                              
005860* 	    ,:‚l‚O‚P|’S•Û‹æ•ª                                  
005870*        FROM  M01SAJ_TBL                                         
005880*      WHERE   ƒŒƒR[ƒh‹æ•ª = :‚v‚r|ƒŒƒR[ƒh‹æ•ª                 
005890*        AND   Œ_–ñ”Ô† = :‚l‚S‚O|Œ_–ñ”Ô†                       
005900*        AND   ÄƒŠ[ƒX‰ñ” = :‚l‚S‚O|ÄƒŠ[ƒX‰ñ”               
005910*        AND   Œ_–ñŽí—Þ = :‚l‚S‚O|Œ_–ñŽí—Þ                       
005920*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 286 TO SQL-OFFSET
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
               ‚v‚r|ƒŒƒR[ƒh‹æ•ª
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñ”Ô†
               SQL-SQHSTV(5)
           MOVE 15 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(6)
           MOVE 2 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñŽí—Þ
               SQL-SQHSTV(7)
           MOVE 3 TO SQL-SQHSTL(7)
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
005930*----------------------------------------------------------------*
005940*    ÂŒ î•ñ‚c‚a’Šoˆ—Šm”F                                    *
005950*----------------------------------------------------------------*
005960     EVALUATE   SQLCODE                                           
005970        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
005980*--<       ³í >                                                 
005990           CONTINUE                                               
006000        WHEN   OTHER                                              
006010*--<       ÂŒ î•ñ‚c‚a’Šoˆ—Ž¸”s>                              
006020           MOVE      ZERO             TO  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO      
006030           MOVE      SPACE            TO  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼    
006040           MOVE      ZERO             TO  ‚l‚O‚P|’S•Û‹æ•ª        
006050           MOVE      -70              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006060           PERFORM   ƒGƒ‰[ˆ—                                   
006070     END-EVALUATE.                                                
006080*                                                                 
006090 ÂŒ î•ñ‚c‚a’Šoˆ—|‚d‚w‚h‚s.                                  
006100     EXIT.                                                        
006110******************************************************************
006120*    ƒtƒ@ƒCƒ‹o—Í”»’è•ÒWo—Íˆ—                        <2.3>   *
006130******************************************************************
006140 ƒtƒ@ƒCƒ‹o—Í”»’è•ÒWo—Íˆ—      SECTION.                       
006150 ƒtƒ@ƒCƒ‹o—Í”»’è•ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                        
006160*                                                                 
006170	   IF ‚l‚O‚P|’S•Û‹æ•ª NOT = 1                                  
006180		PERFORM ƒtƒ@ƒCƒ‹•ÒWo—Íˆ—                            
006190	   END-IF.                                                      
006200*                                                                 
006210 ƒtƒ@ƒCƒ‹o—Í”»’è•ÒWo—Íˆ—|‚d‚w‚h‚s.                          
006220     EXIT.                                                        
006230******************************************************************
006240*     ƒtƒ@ƒCƒ‹•ÒWo—Íˆ—                               <2.4>   *
006250******************************************************************
006260 ƒtƒ@ƒCƒ‹•ÒWo—Íˆ—                         SECTION.            
006270 ƒtƒ@ƒCƒ‹•ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                
006280*                                                                 
006290	   PERFORM  Ž©ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—.                             
006300*                                                                 
006310	   IF	 o—Í|‘OŒŽ––Žc‚ NOT = ZERO                            
006320	     OR  o—Í|“–ŒŽ“ü‹àŠz NOT = ZERO                            
006330	     OR  o—Í|“–ŒŽÁ‰»Šz NOT = ZERO                            
006340	     OR  o—Í|“–ŒŽ––Žc‚ NOT = ZERO                            
006350	      PERFORM  ƒtƒ@ƒCƒ‹o—Íˆ—                                 
006360	   END-IF.                                                      
006370*                                                                 
006380	   IF ‚l‚S‚O|‹¦’²‹æ•ª = "2"                                    
006390	      PERFORM ‘¼ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—                            
006400	      IF    o—Í|‘OŒŽ––Žc‚ NOT = ZERO                         
006410	        OR  o—Í|“–ŒŽ“ü‹àŠz NOT = ZERO                         
006420	        OR  o—Í|“–ŒŽÁ‰»Šz NOT = ZERO                         
006430	        OR  o—Í|“–ŒŽ––Žc‚ NOT = ZERO                         
006440	         PERFORM  ƒtƒ@ƒCƒ‹o—Íˆ—                              
006450	      END-IF                                                    
006460	   END-IF.                                                      
006470*                                                                 
006480 ƒtƒ@ƒCƒ‹•ÒWo—Íˆ—|‚d‚w‚h‚s.                                  
006490     EXIT.                                                        
006500******************************************************************
006510*     Ž©ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—                             <2.4.1> *
006520******************************************************************
006530 Ž©ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—                         SECTION.          
006540 Ž©ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—|‚r‚s‚`‚q‚s.                              
006550*                                                                 
006560	   PERFORM  Œö‹¤‚Ì€–Ú•ÒWˆ—.                                 
006570*                                                                 
006580*--<    No.01 >                                                   
006590	   IF ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO < "3"                                  
006600		MOVE   "3"                  TO o—Í|Ž©‘¼ŽÐ‹æ•ª         
006610	   ELSE                                                         
006620	        MOVE   "1"                  TO o—Í|Ž©‘¼ŽÐ‹æ•ª         
006630	   END-IF                                                       
006640*                                                                 
006650*--<    No.23 >                                                   
006660     MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚         TO  o—Í|‘OŒŽ––Žc‚        
006670*--<    No.24 >                                                   
006680     MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz         TO  o—Í|“–ŒŽ“ü‹àŠz        
006690*--<    No.25 >                                                   
006700     MOVE  ‚l‚S‚O|“–ŒŽÁ‰»Šz         TO  o—Í|“–ŒŽÁ‰»Šz        
006710*--<    No.26 >                                                   
006720     MOVE  ‚l‚S‚O|“–ŒŽ––Žc‚         TO  o—Í|“–ŒŽ––Žc‚.       
006730*                                                                 
006740 Ž©ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—|‚d‚w‚h‚s.                                
006750     EXIT.                                                        
006760******************************************************************
006770*     ‘¼ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—                             <2.4.3> *
006780******************************************************************
006790 ‘¼ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—                         SECTION.          
006800 ‘¼ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—|‚r‚s‚`‚q‚s.                              
006810*                                                                 
006820	   PERFORM  Œö‹¤‚Ì€–Ú•ÒWˆ—.                                 
006830*                                                                 
006840*--<    No.01 >                                                   
006850	   IF ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO < "3"                                  
006860		MOVE   "4"                  TO o—Í|Ž©‘¼ŽÐ‹æ•ª         
006870	   ELSE                                                         
006880	        MOVE   "2"                  TO o—Í|Ž©‘¼ŽÐ‹æ•ª         
006890	   END-IF                                                       
006900*                                                                 
006910	   COMPUTE   ‚v|“–ŒŽÁ‰»Šz‚P =   ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ +      
006920	                              ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à +      
006930		                      ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ      
006940	   COMPUTE   ‚v|“–ŒŽ––Žc‚‚P =   ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ -      
006950	                              ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à -      
006960		                      ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ      
006970*                                                                 
006980*--<    No.23 >                                                   
006990     MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ     TO  o—Í|‘OŒŽ––Žc‚        
007000*--<    No.24 >                                                   
007010     MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ     TO  o—Í|“–ŒŽ“ü‹àŠz        
007020*--<    No.25 >                                                   
007030     MOVE  ‚v|“–ŒŽÁ‰»Šz‚P           TO  o—Í|“–ŒŽÁ‰»Šz        
007040*--<    No.26 >                                                   
007050     MOVE  ‚v|“–ŒŽ––Žc‚‚P           TO  o—Í|“–ŒŽ––Žc‚.       
007060*                                                                 
007070 ‘¼ŽÐ•ªƒtƒ@ƒCƒ‹•ÒWˆ—|‚d‚w‚h‚s.                                
007080     EXIT.                                                        
007090******************************************************************
007100*    Œö‹¤‚Ì€–Ú•ÒWˆ—                                          *
007110******************************************************************
007120 Œö‹¤‚Ì€–Ú•ÒWˆ—                   SECTION.                    
007130 Œö‹¤‚Ì€–Ú•ÒWˆ—|‚r‚s‚`‚q‚s.                                  
007140*----------------------------------------------------------------*
007150*       ‰Šú‰»ˆ—                                               *
007160*----------------------------------------------------------------*
007170        MOVE  SPACE                   TO  o—Í|ƒŒƒR[ƒh          
007180        INITIALIZE                        o—Í|ƒŒƒR[ƒh          
007190*                                                                 
007200*----------------------------------------------------------------*
007210*       Œö‹¤‚Ì€–Ú•ÒWˆ—                                       *
007220*----------------------------------------------------------------*
007230*                                                                 
007240*--<    No.02 >                                                   
007250        MOVE  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª    TO  o—Í|‘OŽó‹æ•ª          
007260*                                                                 
007270*--<    No.03 >                                                   
007280        MOVE  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª                            
007290					    TO  o—Í|ŽåŒ_–ñ‹æ•ª        
007300                                                                  
007310*--<    No.04 >                                                   
007320        MOVE  ‚l‚S‚O|ŒÚ‹q‹æ•ª        TO  o—Í|˜AŒ‹‹æ•ª          
007330*                                                                 
007340*--<    No.05 >                                                   
007350        MOVE  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh    TO  o—Í|–¼Šñ‚¹ƒR[ƒh      
007360*                                                                 
007370*--<    No.06 >                                                   
007380        MOVE  ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh                          
007390                                      TO  o—Í|ŽæˆøæƒR[ƒh      
007400*                                                                 
007410*--<    No.07 >                                                   
007420        MOVE  ‚l‚S‚O|¿‹æƒR[ƒh    TO  o—Í|¿‹æƒR[ƒh      
007430*                                                                 
007440*--<    No.08 >                                                   
007450        MOVE  ‚l‚S‚O|Œ_–ñ”Ô†        TO  o—Í|Œ_–ñ”Ô†          
007460*                                                                 
007470*--<    No.09 >                                                   
007480        MOVE  ‚l‚S‚O|Œ_–ñŽí—Þ        TO  o—Í|Œ_–ñŽí—Þ          
007490*                                                                 
007500*--<    No.10 >                                                   
007510        MOVE  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ                            
007520					    TO  o—Í|‹Æ–±”NŒŽ          
007530*                                                                 
007540*--<    No.11 >                                                   
007550        MOVE  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh  TO  o—Í|’S“–•”‰ÛƒR[ƒh    
007560*                                                                 
007570*--<    No.12 >                                                   
007580        MOVE  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼    TO  o—Í|Œ_–ñŒ–¼          
007590*                                                                 
007600*--<    No.13 >                                                   
007610        MOVE  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”    TO  o—Í|ÄƒŠ[ƒX‰ñ”      
007620*                                                                 
007630*--<    No.14 >                                                   
007640        MOVE  ‚l‚S‚O|[“–ŠJŽn”NŒŽ    TO  o—Í|[“–ŠJŽn”NŒŽ      
007650*                                                                 
007660*--<    No.15 >                                                   
007670        MOVE  ‚l‚S‚O|[“–ŒŽ”        TO  o—Í|[“–ŒŽ”          
007680*                                                                 
007690*--<    No.16 >                                                   
007700        MOVE  ‚l‚S‚O|‘O•¥‰ñŽû•û–@    TO  o—Í|‘O•¥‰ñŽû•û–@      
007710*                                                                 
007720*--<    No.17 >                                                   
007730        MOVE  ‚l‚S‚O|“ü‹à“ú          TO  o—Í|“ü‹à“ú            
007740*                                                                 
007750*--<    No.18 >                                                   
007760        MOVE  ‚l‚S‚O|“ü‹à‹æ•ª        TO  o—Í|“ü‹à‹æ•ª          
007770*                                                                 
007780*--<    No.19 >                                                   
007790        MOVE  ‚c‚O‚P|Žæˆøæ–¼Ì      TO  o—Í|Žæˆøæ–¼Ì        
007800*                                                                 
007810*--<    No.20 >                                                   
007820        MOVE  ‚c‚O‚Q|¿‹æ–¼Ì      TO  o—Í|¿‹æ–¼Ì        
007830*                                                                 
007840*--<    No.21 >                                                   
007850        MOVE  ‚v‚r|–¼Ì‚P            TO  o—Í|ŽåŒ_–ñ‹æ•ª–¼Ì    
007860*                                                                 
007870*--<    No.22 >                                                   
007880        MOVE  ‚v‚r|–¼Ì‚Q            TO  o—Í|˜AŒ‹‹æ•ª–¼Ì.     
007890*                                                                 
007900 Œö‹¤‚Ì€–Ú•ÒWˆ—|‚d‚w‚h‚s.                                    
007910     EXIT.                                                        
007920******************************************************************
007930*    ƒtƒ@ƒCƒ‹o—Íˆ—                           <2.4.3 AND 2.4.4>*
007940******************************************************************
007950 ƒtƒ@ƒCƒ‹o—Íˆ—                   SECTION.                      
007960 ƒtƒ@ƒCƒ‹o—Íˆ—|‚r‚s‚`‚q‚s.                                    
007970*                                                                 
007980     WRITE  o—Í|ƒŒƒR[ƒh.                                       
007990*                                                                 
008000*--< ƒtƒ@ƒCƒ‹o—Í‚Ìó‘Ô”»’è >                                     
008010     EVALUATE  ‚v|ó‘Ô                                           
008020        WHEN  ZERO                                                
008030*--<       ƒtƒ@ƒCƒ‹o—ÍŒ”‚Ì‰ÁŽZ >                               
008040           COMPUTE  ‚v|o—Í|Œ” =  ‚v|o—Í|Œ” + 1          
008050        WHEN  OTHER                                               
008060*--<       ƒtƒ@ƒCƒ‹o—ÍƒGƒ‰[ >                                   
008070           MOVE     -80               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
008080           PERFORM  ƒGƒ‰[ˆ—                                    
008090     END-EVALUATE.                                                
008100*                                                                 
008110 ƒtƒ@ƒCƒ‹o—Íˆ—|‚d‚w‚h‚s.                                      
008120     EXIT.                                                        
008130******************************************************************
008140*    I—¹ƒƒbƒZ[ƒWo—Í                             <3.3 AND 3.4>*
008150******************************************************************
008160 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
008170 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
008180*                                                                 
008190*----------------------------------------------------------------*
008200*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
008210*----------------------------------------------------------------*
008220     INITIALIZE                       IF-CHOCO001.                
008230     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008240     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008250     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008260     MOVE  "M40MAB"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
008270     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008280     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
008290     MOVE  "‘OŽóî•ñƒe[ƒuƒ‹“ü—ÍŒ”"                             
008300					    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008310     CALL  CLOCO001                   USING  IF-CHOCO001.         
008320*                                                                 
008330     INITIALIZE                       IF-CHOCO001.                
008340     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008350     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008360     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008370     MOVE  "SFHSED25"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
008380     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008390     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
008400     MOVE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹o—ÍŒ”"                       
008410					    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008420     CALL  CLOCO001                   USING  IF-CHOCO001.         
008430*                                                                 
008440*----------------------------------------------------------------*
008450*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
008460*----------------------------------------------------------------*
008470     INITIALIZE                       IF-CHOCO001.                
008480     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008490     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008500     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008510     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008520     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008530     CALL  CLOCO001                   USING  IF-CHOCO001.         
008540*                                                                 
008550 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
008560     EXIT.                                                        
008570******************************************************************
008580*    ‚c‚aƒNƒ[ƒY                                        <3.1>   *
008590******************************************************************
008600 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
008610 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
008620*                                                                 
008630*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
008640     
      *    EXEC SQL                                                     
008650*       CLOSE  CUR1                                               
008660*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 329 TO SQL-OFFSET
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
008670*                                                                 
008680 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
008690     EXIT.                                                        
008700******************************************************************
008710*    ƒGƒ‰[ˆ—                                                  *
008720******************************************************************
008730 ƒGƒ‰[ˆ—                       SECTION.                        
008740 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
008750*                                                                 
008760     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
008770     INITIALIZE                           IF-CHOCO001.            
008780*                                                                 
008790     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
008800        WHEN  -10                                                 
008810*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
008820           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008830           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008840           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008850           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
008860           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008870           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008880           CALL  CLOCO001          USING  IF-CHOCO001             
008890*                                                                 
008900        WHEN  -20                                                 
008910*--<       ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“ÇžŽ¸”s >                             
008920           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008930           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008940           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008950           MOVE  "D70GYM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008960           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008970           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008980           MOVE  SQLERRMC		    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008990           CALL  CLOCO001          USING  IF-CHOCO001             
009000*                                                                 
009010        WHEN  -30                                                 
009020*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
009030           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009040           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009050           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009060           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009070           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
009080           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009090           MOVE  SQLERRMC		    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009100           CALL  CLOCO001          USING  IF-CHOCO001             
009110*                                                                 
009120        WHEN  -40                                                 
009130*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
009140           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009150           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009160           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009170           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009180           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
009190           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009200           MOVE  SQLERRMC		    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009210           CALL  CLOCO001          USING  IF-CHOCO001             
009220*                                                                 
009230        WHEN  -50                                                 
009240*--<       ŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—Ž¸”s >                         
009250           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009260           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009270           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009280           MOVE  "D19MSY"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009290           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009300           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009310           MOVE  SQLERRMC  	    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009320           CALL  CLOCO001          USING  IF-CHOCO001             
009330           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009340*                                                                 
009350        WHEN  -60                                                 
009360*--<       ŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—Ž¸”s >                           
009370           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009380           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009390           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009400           MOVE  "D19MSY"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009410           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009420           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009430           MOVE  SQLERRMC		    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009440           CALL  CLOCO001          USING  IF-CHOCO001             
009450           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009460*                                                                 
009470        WHEN  -70                                                 
009480*--<       ÂŒ î•ñ‚c‚a’Šoˆ—Ž¸”s >                             
009490           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009500           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009510           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009520           MOVE  "M01SAJ"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009530           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009540           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009550           MOVE  SQLERRMC		    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009560           CALL  CLOCO001          USING  IF-CHOCO001             
009570           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009580*                                                                 
009590        WHEN  -80                                                 
009600*--<       ƒtƒ@ƒCƒ‹o—ÍŽ¸”s >                                     
009610           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009620           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009630           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009640           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009650           MOVE  "WRITE"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
009660           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
009670           MOVE  "ƒtƒ@ƒCƒ‹o—ÍŽ¸”s"                               
009680					    TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009690           CALL  CLOCO001          USING  IF-CHOCO001             
009700*                                                                 
009710        WHEN  -90                                                 
009720*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s >                                 
009730           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009740           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009750           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009760           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009770           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
009780           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
009790           MOVE  "ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s"                           
009800                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009810           CALL  CLOCO001          USING  IF-CHOCO001             
009820*                                                                 
009830        WHEN  OTHER                                               
009840           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009850     END-EVALUATE.                                                
009860*                                                                 
009870     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
009880*                                                                 
009890        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
009900*                                                                 
009910*--<    ƒvƒƒOƒ‰ƒ€ƒŠƒ^[ƒ“ƒR[ƒh >                                
009920        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
009930*                                                                 
009940        EXIT  PROGRAM                                             
009950     END-IF.                                                      
009960*                                                                 
009970 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
009980     EXIT.                                                        
009990******************************************************************
010000*                  END OF PROGRAM                                *
010010******************************************************************
