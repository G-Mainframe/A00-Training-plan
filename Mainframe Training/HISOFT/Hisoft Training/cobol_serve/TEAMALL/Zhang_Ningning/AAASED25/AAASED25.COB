000010******************************************************************
000020*      1. ƒvƒƒOƒ‰ƒ€–¼  : ‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬             *
000030*      2. ƒvƒƒOƒ‰ƒ€ID  : AAASED25 		               *
000040*      3. ˆ—ŠT—v      : ‘OŽóî•ñ‚c‚a‚ðƒƒCƒ“‚ÉAƒ}ƒXƒ^‚Æ•\Œ‹‡ *
000050*                         ‚µ‚Ä“Çž‚ÝA‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹ *
000060*                         ‚ðì¬‚·‚é			       *
000070*                                                                *
000080*      4. ì¬ŽÒ        :  ’£”J”J                                *
000090*      5. ì¬“ú        :  2005.03.29                            *
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
000280     SELECT  o—Íƒtƒ@ƒCƒ‹  ASSIGN    TO   U11                     
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
000410*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹                                  *
000420*----------------------------------------------------------------*
000430 FD  o—Íƒtƒ@ƒCƒ‹                                                 
000440     LABEL  RECORD    IS              STANDARD                    
000450     BLOCK  CONTAINS  0               RECORDS.                    
000460*                                                                 
000470 01  o—Í|ƒŒƒR[ƒh.                                              
000480     COPY   CPSCE50  REPLACING      ==()==  BY  ==o—Í|==.       
000490*                                                                 
000500******************************************************************
000510*    ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m              *
000520******************************************************************
000530 WORKING-STORAGE                      SECTION.                    
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
           02  FILLER PIC X(100) VALUE "select D19MSY_TBL.–¼Ì   into :b
      -    "1  from D19MSY_TBL where (ƒR[ƒh‚m‚n=:b2 and SUBSTR(ƒR[ƒh,1
      -    ",1)=:b3)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(122) VALUE "select D19MSY_TBL.–¼Ì   into :b
      -    "1  from D19MSY_TBL where (D19MSY_TBL.ƒR[ƒh‚m‚n=:b2 and SUBS
      -    "TR(D19MSY_TBL.ƒR[ƒh,1,2)=:b3)".

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
      -    " where (((M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO=:b1 and M40M
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
           02     FILLER PIC S9(4) COMP-5 VALUE +254.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +258.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +284.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +364.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +109.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +412.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +236.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +100.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +472.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +263.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +122.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +496.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +290.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +163.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +528.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +333.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +813.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580 01  ‚v‚r|‹Æ–±ŠÇ—‚h‚c               PIC  X(08) VALUE "GYMKNRRC".
000590 01  ‚v‚r|–¼Ì‚P                     PIC  X(60).                 
000600 01  ‚v‚r|–¼Ì‚Q                     PIC  X(60).                 
000610 01  ‚v‚r|ƒR[ƒh‚m‚n‚P               PIC  X(12) VALUE "038".     
000620 01  ‚v‚r|ƒR[ƒh‚m‚n‚Q               PIC  X(12) VALUE "005".     
000630 01  ‚v‚r|ƒŒƒR[ƒh‹æ•ª               PIC  X(01) VALUE "1".       
000640 01  ‚v‚r|‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO PIC  X(01) VALUE "1".       
000650*                                                                 
000660*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000670     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL           END-EXEC.
000680*                                                                 
000690*--< ‘OŽóî•ñ‚c‚a >                                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000700     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL           END-EXEC.
000710*                                                                 
000720*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹ >                                           
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
000730     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL           END-EXEC.
000740*                                                                 
000750*--< Žæˆøæƒ}ƒXƒ^ >                                               
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
000760     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL           END-EXEC.
000770*                                                                 
000780*--< ¿‹æƒ}ƒXƒ^ >                                               
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
000790     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL           END-EXEC.
000800*                                                                 
000810*--< €–Ú–¼Ìƒ}ƒXƒ^ >                                             
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
000820     
      *    EXEC  SQL  INCLUDE  D19MSY.CBL           END-EXEC.
000830*                                                                 
000840*--< ÂŒ î•ñiˆê”Êj‚c‚a >                                       
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
000850     
      *    EXEC  SQL  INCLUDE  M01SAJ.CBL           END-EXEC.
000860*                                                                 
000870*--< ‚n‚q‚`‚b‚k‚d ‚r‚p‚kŽÀsî•ñ (SQLCA) >                        
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
000880     
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
000890*                                                                 
000900     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000910*----------------------------------------------------------------*
000920*    ì‹Æ—Ìˆæ’è‹`                                                *
000930*----------------------------------------------------------------*
000940 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000950*--< ƒGƒ‰[ƒR[ƒh >                                               
000960     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000970*                                                                 
000980*--< o—Í[”»’è—p >                                               
000990     03  ‚v|o—Í”»’è                 PIC 9(01).                  
001000*                                                                 
001010*--< ‚v|ó‘Ô >                                                   
001020     03  ‚v|ó‘Ô                     PIC  X(02).                 
001030*                                                                 
001040*--< Œ”ƒGƒŠƒA >                                                 
001050     03  Œ”ƒGƒŠƒA.                                              
001060          05  ‚v|“ü—Í|Œ”           PIC  9(09).                
001070          05  ‚v|o—Í|Œ”           PIC  9(09).                
001080*                                                                 
001090*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001100     03  ƒtƒ‰ƒO|ƒGƒŠƒA.                                          
001110         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
001120         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
001130*                                                                 
001140*----------------------------------------------------------------*
001150*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001160*----------------------------------------------------------------*
001170 01  CALL-AREA.                                                   
001180*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001190     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001200     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001210*                                                                 
001220*----------------------------------------------------------------*
001230*    ‚b‚n‚o‚x—Ìˆæ                                                *
001240*----------------------------------------------------------------*
001250*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001260 01  IF-CHOCO001.                                                 
001270     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001280*                                                                 
001290*----------------------------------------------------------------*
001300*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001310*----------------------------------------------------------------*
001320 01  PARA-AREA.                                                   
001330     COPY CPBCO001.                                               
001340******************************************************************
001350*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001360******************************************************************
001370 CONSTANT                             SECTION.                    
001380 01  ’è”—Ìˆæ.                                                    
001390     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "AAASED25".
001400     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001410                              VALUE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬".
001420     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001430     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001440     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001450     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001460******************************************************************
001470*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001480******************************************************************
001490 PROCEDURE                            DIVISION.                   
001500*                                                                 
001510     PERFORM  ‰Šúˆ—.                                           
001520*                                                                 
001530     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001540*                                                                 
001550     PERFORM  I—¹ˆ—.                                           
001560*                                                                 
001570     STOP     RUN.                                                
001580*                                                                 
001590******************************************************************
001600*    ‰Šúˆ—                                                    *
001610******************************************************************
001620 ‰Šúˆ—                             SECTION.                    
001630 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001640*                                                                 
001650*----------------------------------------------------------------*
001660*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001670*----------------------------------------------------------------*
001680     INITIALIZE                       IF-CHOCO001.                
001690     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001700     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001710     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001720     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001730     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001740     CALL  CLOCO001                USING  IF-CHOCO001.            
001750*                                                                 
001760*----------------------------------------------------------------*
001770*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001780*----------------------------------------------------------------*
001790     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001800     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001810*                                                                 
001820*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
001830     PERFORM  ‚n‚q‚`‚b‚k‚dÚ‘±.                                   
001840*                                                                 
001850*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž >                                       
001860     PERFORM  ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž.                               
001870*                                                                 
001880*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾ >                                   
001890     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾.                           
001900*                                                                 
001910*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
001920     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
001930*                                                                 
001940*--< Œ‹‡ƒe[ƒ‹“Çž(‚PŒ–Ú) >                                     
001950     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çž.                                   
001960*                                                                 
001970 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001980     EXIT.                                                        
001990*                                                                 
002000******************************************************************
002010*    Žåˆ—                                                      *
002020******************************************************************
002030 Žåˆ—                               SECTION.                    
002040 Žåˆ—|‚r‚s‚`‚q‚s.                                              
002050*                                                                 
002060*--< €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ— >                           
002070     PERFORM  €–Ú–¼Ì’Šoˆ—.                                   
002080*                                                                 
002090*--< ÂŒ î•ñ‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ— >                             
002100     PERFORM  ÂŒ î•ñ‚c‚a’Šoˆ—.                               
002110*                                                                 
002120*--< ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹•ÒWo—Í”»’èˆ— >                 
002130     PERFORM  •ÒWo—Í”»’èˆ—.                                   
002140*                                                                 
002150*--< Œ‹‡ƒe[ƒuÙ“Çži‚QŒ–ÚˆÈ~j >                              
002160     PERFORM  Œ‹‡ƒe[ƒuƒ‹“Çž.                                   
002170*                                                                 
002180 Žåˆ—|‚d‚w‚h‚s.                                                
002190     EXIT.                                                        
002200******************************************************************
002210*    I—¹ˆ—                                                    *
002220******************************************************************
002230 I—¹ˆ—                             SECTION.                    
002240 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
002250*                                                                 
002260     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
002270*                                                                 
002280     CLOSE  o—Íƒtƒ@ƒCƒ‹.                                         
002290*                                                                 
002300     PERFORM  I—¹ƒƒbƒZ[ƒWo—Íˆ—.                             
002310*                                                                 
002320*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
002330     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
002340*                                                                 
002350 I—¹ˆ—|‚d‚w‚h‚s.                                              
002360     EXIT.                                                        
002370******************************************************************
002380*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
002390******************************************************************
002400 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002410 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002420*                                                                 
002430*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002440     CALL  COBCO001                USING  PARA-AREA.              
002450*                                                                 
002460     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002470     MOVE  PARA-USERNAME              TO  USERNAME.               
002480     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002490*                                                                 
002500*----------------------------------------------------------------*
002510*    ŠJŽnÚ‘±                                                    *
002520*----------------------------------------------------------------*
002530     IF  DB-STRING  =  SPACE                                      
002540        
      *       EXEC  SQL                                                 
002550*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002560*       END-EXEC 
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
002570     ELSE                                                         
002580        
      *       EXEC  SQL                                                 
002590*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002600*            USING  :DB-STRING                                    
002610*       END-EXEC 
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
002620     END-IF.                                                      
002630*                                                                 
002640*----------------------------------------------------------------*
002650*    Ú‘±ó‘Ô”»’è                                                *
002660*----------------------------------------------------------------*
002670     EVALUATE  SQLCODE                                            
002680        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002690*--<       Ú‘±³í >                                             
002700           CONTINUE                                               
002710        WHEN  OTHER                                               
002720*--<       Ú‘±ƒGƒ‰[ >                                           
002730           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002740           PERFORM  ƒGƒ‰[ˆ—                                    
002750     END-EVALUATE.                                                
002760*                                                                 
002770 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002780     EXIT.                                                        
002790******************************************************************
002800*     ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                                       *
002810******************************************************************
002820  ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                     SECTION.               
002830  ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                               
002840      
      *     EXEC SQL                                                    
002850*       SELECT  ƒoƒbƒ`—p‹Æ–±”NŒŽ                                  
002860*         INTO :‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ                          
002870*         FROM  D70GYM_TBL                                        
002880*        WHERE  ‹Æ–±ŠÇ—‚h‚c = :‚v‚r|‹Æ–±ŠÇ—‚h‚c                
002890*     END-EXEC.
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
002900*                                                                 
002910*----------------------------------------------------------------*
002920*     ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“ÇžŠm”F                                   *
002930*----------------------------------------------------------------*
002940      EVALUATE  SQLCODE                                           
002950         WHEN  ’è”|‚r‚p‚k‚n‚j                                   
002960*--<        ³í >                                                
002970            DISPLAY "‹Æ–±”NŒŽ  =  " ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ      
002980            CONTINUE                                              
002990         WHEN  OTHER                                              
003000*--<        “ÇžƒGƒ‰[AƒvƒƒOƒ‰ƒ€‚ªˆÙíI—¹ >                    
003010            MOVE      -20              TO  ‚v|ƒGƒ‰[ƒR[ƒh       
003020            PERFORM   ƒGƒ‰[ˆ—                                  
003030      END-EVALUATE.                                               
003040*                                                                 
003050  ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚d‚w‚h‚s.                                 
003060      EXIT.                                                       
003070******************************************************************
003080*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾                                *
003090******************************************************************
003100 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾             SECTION.                    
003110 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾|‚r‚s‚`‚q‚s.                            
003120*                                                                 
003130*----------------------------------------------------------------*
003140*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003150*----------------------------------------------------------------*
003160     
      *    EXEC  SQL                                                    
003170*       DECLARE CUR1  CURSOR FOR                                  
003180*          SELECT   M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                       
003190*                  ,M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª                   
003200*                  ,M40MAB_TBL.ŒÚ‹q‹æ•ª                           
003210*                  ,NVL(D01TRS_TBL.–¼Šñ‚¹ƒR[ƒh,RPAD(' ',40,' ')) 
003220*                  ,M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh                 
003230*                  ,M40MAB_TBL.¿‹æƒR[ƒh                       
003240*                  ,M40MAB_TBL.Œ_–ñ”Ô†                           
003250*                  ,M40MAB_TBL.Œ_–ñŽí—Þ                           
003260*                  ,M40MAB_TBL.’S“–•”‰ÛƒR[ƒh                     
003270*                  ,M40MAB_TBL.ÄƒŠ[ƒX‰ñ”                       
003280*                  ,M40MAB_TBL.[“–ŠJŽn”NŒŽ                       
003290*                  ,M40MAB_TBL.[“–ŒŽ”                           
003300*                  ,M40MAB_TBL.‘O•¥‰ñŽû•û–@                       
003310*                  ,M40MAB_TBL.“ü‹à“ú                             
003320* 		 ,M40MAB_TBL.“ü‹à‹æ•ª                           
003330*                  ,NVL(D01TRS_TBL.Žæˆøæ–¼Ì,RPAD(' ',80,' '))   
003340*                  ,NVL(D02SQS_TBL.¿‹æ–¼Ì,RPAD(' ',80,' '))   
003350*                  ,M40MAB_TBL.‘OŒŽ––Žc‚                         
003360*                  ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz                         
003370*                  ,M40MAB_TBL.“–ŒŽÁ‰»Šz                         
003380*                  ,M40MAB_TBL.“–ŒŽ––Žc‚                         
003390*                  ,M40MAB_TBL.‹¦’²‹æ•ª                           
003400*                  ,M40MAB_TBL.‘OŒŽ––Žc‚‘¼ŽÐ                     
003410*                  ,M40MAB_TBL.“–ŒŽ‰ñŽûŠz‘¼ŽÐ                     
003420*                  ,M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ                     
003430*                  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                 
003440*                  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ               
003450*                  ,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ                     
003460*            FROM  M40MAB_TBL                                     
003470*                 ,D01TRS_TBL                                     
003480*                 ,D02SQS_TBL                                     
003490*           WHERE  M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO =        
003500*                      :‚v‚r|‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO          
003510*             AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh =                
003520*                        D01TRS_TBL.ŽæˆøæƒR[ƒh ( + )            
003530*             AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh =                
003540*                        D02SQS_TBL.ŽæˆøæƒR[ƒh( + )             
003550*             AND  M40MAB_TBL.¿‹æƒR[ƒh =                      
003560*                  D02SQS_TBL.¿‹æƒR[ƒh( + )                   
003570*        ORDER BY  M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª                        
003580*                 ,M40MAB_TBL.Œ_–ñ”Ô†                            
003590*    END-EXEC.
003600*                                                                 
003610*----------------------------------------------------------------*
003620*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003630*----------------------------------------------------------------*
003640     
      *    EXEC  SQL                                                    
003650*       OPEN  CUR1                                                
003660*    END-EXEC.
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
           CALL "SQLADR" USING
               ‚v‚r|‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
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
003670*                                                                 
003680*----------------------------------------------------------------*
003690*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003700*----------------------------------------------------------------*
003710     EVALUATE  SQLCODE                                            
003720        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003730*--<       ³í >                                                 
003740           CONTINUE                                               
003750        WHEN  OTHER                                               
003760*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003770           MOVE -30                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003780           PERFORM  ƒGƒ‰[ˆ—                                    
003790     END-EVALUATE.                                                
003800*                                                                 
003810 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾|‚d‚w‚h‚s.                              
003820     EXIT.                                                        
003830******************************************************************
003840*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                            *
003850******************************************************************
003860 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“             SECTION.                            
003870 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
003880*                                                                 
003890     OPEN  OUTPUT  o—Íƒtƒ@ƒCƒ‹.                                  
003900*                                                                 
003910*----------------------------------------------------------------*
003920*    ‚v|ó‘Ô”»’è                                                *
003930*----------------------------------------------------------------*
003940     EVALUATE  ‚v|ó‘Ô                                           
003950        WHEN  ZERO                                                
003960           CONTINUE                                               
003970        WHEN  OTHER                                               
003980*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
003990           MOVE     -2                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004000           PERFORM  ƒGƒ‰[ˆ—                                    
004010     END-EVALUATE.                                                
004020*                                                                 
004030 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                     
004040     EXIT.                                                        
004050******************************************************************
004060*    Œ‹‡ƒe[ƒuƒ‹“Çž                                            *
004070******************************************************************
004080 Œ‹‡ƒe[ƒuƒ‹“Çž             SECTION.                            
004090 Œ‹‡ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                                    
004100*                                                                 
004110*--< Œ‹‡ƒe[ƒuƒ‹“Çž >                                           
004120     
      *    EXEC SQL                                                     
004130*        FETCH  CUR1                                              
004140*           INTO                                                  
004150*               :‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª                             
004160*              ,:‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª                         
004170*              ,:‚l‚S‚O|ŒÚ‹q‹æ•ª                                 
004180*              ,:‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh                             
004190*              ,:‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh                       
004200*              ,:‚l‚S‚O|¿‹æƒR[ƒh                             
004210*              ,:‚l‚S‚O|Œ_–ñ”Ô†                                 
004220*              ,:‚l‚S‚O|Œ_–ñŽí—Þ                                 
004230*              ,:‚l‚S‚O|’S“–•”‰ÛƒR[ƒh                           
004240*              ,:‚l‚S‚O|ÄƒŠ[ƒX‰ñ”                             
004250*              ,:‚l‚S‚O|[“–ŠJŽn”NŒŽ                             
004260*              ,:‚l‚S‚O|[“–ŒŽ”                                 
004270*              ,:‚l‚S‚O|‘O•¥‰ñŽû•û–@                             
004280*              ,:‚l‚S‚O|“ü‹à“ú                                   
004290*              ,:‚l‚S‚O|“ü‹à‹æ•ª                                 
004300*              ,:‚c‚O‚P|Žæˆøæ–¼Ì                               
004310*              ,:‚c‚O‚Q|¿‹æ–¼Ì                               
004320*              ,:‚l‚S‚O|‘OŒŽ––Žc‚                               
004330*              ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz                               
004340*              ,:‚l‚S‚O|“–ŒŽÁ‰»Šz                               
004350*              ,:‚l‚S‚O|“–ŒŽ––Žc‚                               
004360*              ,:‚l‚S‚O|‹¦’²‹æ•ª                                 
004370*              ,:‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ                           
004380*              ,:‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ                           
004390*              ,:‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ                           
004400*              ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à                       
004410*              ,:‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                     
004420*              ,:‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ                           
004430*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 109 TO SQL-OFFSET
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
004440*                                                                 
004450*----------------------------------------------------------------*
004460*    Œ‹‡ƒe[ƒuƒ‹“Çž‚ðŠm”F                                      *
004470*----------------------------------------------------------------*
004480     EVALUATE   SQLCODE                                           
004490        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004500*--<       ³í >                                                 
004510           COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1       
004520        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
004530*--<       “ÇžI—¹ >                                             
004540           MOVE  "Y"                 TO  ‚v|I—¹|ƒtƒ‰ƒO         
004550        WHEN  OTHER                                               
004560*--<       Œ‹‡ƒe[ƒuƒ‹ƒI[ƒvƒ“Ž¸”sƒvƒƒOƒ‰ƒ€‚ªˆÙíI—¹ >         
004570           MOVE     -40              TO  ‚v|ƒGƒ‰[ƒR[ƒh         
004580           PERFORM  ƒGƒ‰[ˆ—                                    
004590     END-EVALUATE.                                                
004600*                                                                 
004610 Œ‹‡ƒe[ƒuƒ‹“Çž|‚d‚w‚h‚s.                                      
004620     EXIT.                                                        
004630*                                                                 
004640******************************************************************
004650*     €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ—                           *
004660******************************************************************
004670 €–Ú–¼Ì’Šoˆ—                        SECTION.                 
004680 €–Ú–¼Ì’Šoˆ—|‚r‚s‚`‚q‚s.                                    
004690*                                                                 
004700*--< €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ— >                 
004710*                                                                 
004720     
      *    EXEC SQL                                                     
004730*       SELECT  D19MSY_TBL. –¼Ì                                  
004740*         INTO  :‚v‚r|–¼Ì‚P                                     
004750*         FROM  D19MSY_TBL                                        
004760*        WHERE  ƒR[ƒh‚m‚n          =  :‚v‚r|ƒR[ƒh‚m‚n‚P        
004770*          AND  SUBSTR(ƒR[ƒh,1,1)  =  :‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª  
004780*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 236 TO SQL-OFFSET
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
               ‚v‚r|–¼Ì‚P
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
004790*                                                                 
004800*----------------------------------------------------------------*
004810*     ’Šoˆ—‚ðŠm”FŠm”F                                         *
004820*----------------------------------------------------------------*
004830     EVALUATE  SQLCODE                                            
004840        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004850*--<       ³í >                                                 
004860           CONTINUE                                               
004870        WHEN  OTHER                                               
004880*--<       ’ŠoƒGƒ‰[ >                                           
004890           MOVE     SPACE             TO  ‚v‚r|–¼Ì‚P            
004900           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004910           PERFORM  ƒGƒ‰[ˆ—                                    
004920     END-EVALUATE.                                                
004930*                                                                 
004940*--< €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ— >                   
004950*                                                                 
004960     
      *    EXEC SQL                                                     
004970*       SELECT  D19MSY_TBL.–¼Ì                                   
004980*         INTO :‚v‚r|–¼Ì‚Q                                      
004990*         FROM  D19MSY_TBL                                        
005000*        WHERE  D19MSY_TBL.ƒR[ƒh‚m‚n = :‚v‚r|ƒR[ƒh‚m‚n‚Q       
005010*          AND  SUBSTR(D19MSY_TBL.ƒR[ƒh,1,2)                     
005020*                                   =  :‚l‚S‚O|ŒÚ‹q‹æ•ª          
005030*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 263 TO SQL-OFFSET
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
               ‚v‚r|–¼Ì‚Q
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
005040*                                                                 
005050*----------------------------------------------------------------*
005060*     ’Šoˆ—‚ðŠm”F                                             *
005070*----------------------------------------------------------------*
005080     EVALUATE  SQLCODE                                            
005090        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005100*--<       ³í >                                                 
005110           CONTINUE                                               
005120        WHEN  OTHER                                               
005130*--<       ’ŠoƒGƒ‰[ >                                           
005140           MOVE     SPACE              TO  ‚v‚r|–¼Ì‚Q           
005150           MOVE     -50                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
005160           PERFORM  ƒGƒ‰[ˆ—                                    
005170     END-EVALUATE.                                                
005180*                                                                 
005190  €–Ú–¼Ì’Šoˆ—|‚d‚w‚h‚s.                                     
005200      EXIT.                                                       
005210******************************************************************
005220*    ÂŒ î•ñ‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—                              *
005230******************************************************************
005240 ÂŒ î•ñ‚c‚a’Šoˆ—                  SECTION.                   
005250 ÂŒ î•ñ‚c‚a’Šoˆ—|‚r‚s‚`‚q‚s.                                
005260*                                                                 
005270*--< ÂŒ î•ñiˆê”Êj‚c‚a€–ÚŽæ“¾ >                               
005280     
      *    EXEC SQL                                                     
005290*       SELECT  ó‘Ôƒtƒ‰ƒO                                        
005300*              ,ÂŒ Œ_–ñŒ–¼                                      
005310*              ,’S•Û‹æ•ª                                          
005320*         INTO  :‚l‚O‚P|ó‘Ôƒtƒ‰ƒO                               
005330*              ,:‚l‚O‚P|ÂŒ Œ_–ñŒ–¼                             
005340*              ,:‚l‚O‚P|’S•Û‹æ•ª                                 
005350*         FROM  M01SAJ_TBL                                        
005360*       WHERE   ƒŒƒR[ƒh‹æ•ª  = :‚v‚r|ƒŒƒR[ƒh‹æ•ª               
005370*         AND   Œ_–ñ”Ô†      = :‚l‚S‚O|Œ_–ñ”Ô†                 
005380*         AND   ÄƒŠ[ƒX‰ñ”  = :‚l‚S‚O|ÄƒŠ[ƒX‰ñ”             
005390*         AND   Œ_–ñŽí—Þ      = :‚l‚S‚O|Œ_–ñŽí—Þ                 
005400*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 290 TO SQL-OFFSET
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
005410*                                                                 
005420*--< ’Šoˆ—‚ðŠm”F >                                             
005430     EVALUATE  SQLCODE                                            
005440        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005450*--<       ³í >                                                 
005460           CONTINUE                                               
005470        WHEN  OTHER                                               
005480*--<       ’ŠoƒGƒ‰[ >                                           
005490           MOVE     ZERO              TO  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO      
005500           MOVE     SPACE             TO  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼    
005510           MOVE     ZERO              TO  ‚l‚O‚P|’S•Û‹æ•ª        
005520           MOVE      -70              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005530           PERFORM   ƒGƒ‰[ˆ—                                   
005540     END-EVALUATE.                                                
005550*                                                                 
005560  ÂŒ î•ñ‚c‚a’Šoˆ—|‚d‚w‚h‚s.                                 
005570      EXIT.                                                       
005580******************************************************************
005590*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹•ÒWo—Í”»’èˆ—                  *
005600******************************************************************
005610 •ÒWo—Í”»’èˆ—                      SECTION.                   
005620 •ÒWo—Í”»’èˆ—|‚r‚s‚`‚q‚s.                                    
005630*--< o—ÍðŒ”»’è >                                               
005640     IF  ‚l‚O‚P|’S•Û‹æ•ª  NOT =  "1"                             
005650        PERFORM  €–Ú•ÒWo—Íˆ—                                 
005660     END-IF.                                                      
005670*                                                                 
005680 •ÒWo—Í”»’èˆ—|‚d‚w‚h‚s.                                      
005690     EXIT.                                                        
005700******************************************************************
005710*    €–Ú•ÒWo—Íˆ—                                            *
005720******************************************************************
005730 €–Ú•ÒWo—Íˆ—                      SECTION.                   
005740 €–Ú•ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                    
005750*                                                                 
005760     PERFORM  •ÒWˆ—Ž©ŽÐ•ª.                                     
005770*                                                                 
005780*--< •ÒW‘¼ŽÐ•ªðŒ”»’è >                                         
005790     IF  ‚l‚S‚O|‹¦’²‹æ•ª = "2"                                   
005800        PERFORM   •ÒWˆ—‘¼ŽÐ•ª                                  
005810     END-IF.                                                      
005820*                                                                 
005830 €–Ú•ÒWo—Íˆ—|‚d‚w‚h‚s.                                      
005840      EXIT.                                                       
005850*                                                                 
005860******************************************************************
005870*    •ÒWˆ—Ž©ŽÐ•ª                                              *
005880******************************************************************
005890 •ÒWˆ—Ž©ŽÐ•ª               SECTION.                            
005900 •ÒWˆ—Ž©ŽÐ•ª|‚r‚s‚`‚q‚s.                                      
005910     MOVE  SPACE                      TO  o—Í|ƒŒƒR[ƒh.         
005920     INITIALIZE                           o—Í|ƒŒƒR[ƒh.         
005930                                                                  
005940*--< No.01 >                                                      
005950     IF  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO < "3"                                 
005960        MOVE  "3"                     TO  o—Í|Ž©‘¼ŽÐ‹æ•ª        
005970     ELSE                                                         
005980        MOVE  "1"                     TO  o—Í|Ž©‘¼ŽÐ‹æ•ª        
005990     END-IF.                                                      
006000*                                                                 
006010*--< ‹¤’Ê•ÒWˆ— >                                               
006020     PERFORM  ‹¤’Ê•ÒWˆ—.                                       
006030*                                                                 
006040*--< No.23 >                                                      
006050     MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚         TO  o—Í|‘OŒŽ––Žc‚.       
006060*                                                                 
006070*--< No.24 >                                                      
006080     MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz         TO  o—Í|“–ŒŽ“ü‹àŠz.       
006090*                                                                 
006100*--< No.25 >                                                      
006110     MOVE  ‚l‚S‚O|“–ŒŽÁ‰»Šz         TO  o—Í|“–ŒŽÁ‰»Šz.       
006120*                                                                 
006130*--< No.26 >                                                      
006140     MOVE  ‚l‚S‚O|“–ŒŽ––Žc‚         TO  o—Í|“–ŒŽ––Žc‚.       
006150*-----------------------------------------------------------------
006160*     ‹¤’Ê‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—                      
006170*-----------------------------------------------------------------
006180*                                                                 
006190     PERFORM  ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—.                 
006200 •ÒWˆ—Ž©ŽÐ•ª|‚d‚w‚h‚s.                                        
006210     EXIT.                                                        
006220******************************************************************
006230*    •ÒWˆ—‘¼ŽÐ•ª                                              *
006240******************************************************************
006250 •ÒWˆ—‘¼ŽÐ•ª                       SECTION.                    
006260 •ÒWˆ—‘¼ŽÐ•ª|‚r‚s‚`‚q‚s.                                      
006270     MOVE  SPACE                      TO  o—Í|ƒŒƒR[ƒh.         
006280     INITIALIZE                           o—Í|ƒŒƒR[ƒh.         
006290*                                                                 
006300*--<  No.01 >                                                     
006310      IF  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO < "3"                                
006320         MOVE  "4"                    TO  o—Í|Ž©‘¼ŽÐ‹æ•ª        
006330      ELSE                                                        
006340         MOVE  "2"                    TO  o—Í|Ž©‘¼ŽÐ‹æ•ª        
006350      END-IF.                                                     
006360*                                                                 
006370*--<  ‹¤’Ê•ÒWˆ— >                                              
006380      PERFORM  ‹¤’Ê•ÒWˆ—.                                      
006390*                                                                 
006400*--<  No.23 >                                                     
006410      MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ    TO  o—Í|‘OŒŽ––Žc‚        
006420*                                                                 
006430*--<  No.24 >                                                     
006440      MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ    TO  o—Í|“–ŒŽ“ü‹àŠz .      
006450*                                                                 
006460*--<  No.25 >                                                     
006470      COMPUTE   o—Í|“–ŒŽÁ‰»Šz             =                    
006480                ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ       +                    
006490                ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à   +	                
006500                ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ.                     
006510*                                                                 
006520*--< No.26 >                                                      
006530     COMPUTE    o—Í|“–ŒŽ––Žc‚             =                    
006540                ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ       -                    
006550                ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à   -                    
006560                ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ.                     
006570*                                                                 
006580*----------------------------------------------------------------*
006590*    ‹¤’Ê‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—                      *
006600*----------------------------------------------------------------*
006610*                                                                 
006620     PERFORM   ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—.                
006630 •ÒWˆ—‘¼ŽÐ•ª|‚d‚w‚h‚s.                                        
006640     EXIT.                                                        
006650******************************************************************
006660*    ‹¤’Ê•ÒWˆ—                                                *
006670******************************************************************
006680 ‹¤’Ê•ÒWˆ—               SECTION.                              
006690 ‹¤’Ê•ÒWˆ—|‚r‚s‚`‚q‚s.                                        
006700*                                                                 
006710*--<  No.02 >                                                     
006720      MOVE  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª      TO  o—Í|‘OŽó‹æ•ª.         
006730*                                                                 
006740*--<  No.03 >                                                     
006750      MOVE  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª  TO  o—Í|ŽåŒ_–ñ‹æ•ª.       
006760*                                                                 
006770*--<  No.04 >                                                     
006780      MOVE  ‚l‚S‚O|ŒÚ‹q‹æ•ª          TO  o—Í|˜AŒ‹‹æ•ª.         
006790*                                                                 
006800*--<  No.05 >                                                     
006810      MOVE  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh      TO  o—Í|–¼Šñ‚¹ƒR[ƒh.     
006820*                                                                 
006830*--<  No.06 >                                                     
006840      MOVE  ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh                            
006850                                      TO  o—Í|ŽæˆøæƒR[ƒh.     
006860*                                                                 
006870*--<  No.07 >                                                     
006880      MOVE  ‚l‚S‚O|¿‹æƒR[ƒh      TO  o—Í|¿‹æƒR[ƒh.     
006890*                                                                 
006900*--<  No.08 >                                                     
006910      MOVE  ‚l‚S‚O|Œ_–ñ”Ô†          TO  o—Í|Œ_–ñ”Ô†.         
006920*                                                                 
006930*--<  No.09 >                                                     
006940      MOVE  ‚l‚S‚O|Œ_–ñŽí—Þ          TO  o—Í|Œ_–ñŽí—Þ.         
006950*                                                                 
006960*--<  No.10 >                                                     
006970      MOVE  ‚c‚V‚O|‹Æ–±”NŒŽ          TO  o—Í|‹Æ–±”NŒŽ.         
006980*                                                                 
006990*--<  No.11 >                                                     
007000      MOVE  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh    TO  o—Í|’S“–•”‰ÛƒR[ƒh.   
007010*                                                                 
007020*--<  No.12 >                                                     
007030      MOVE  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼      TO  o—Í|Œ_–ñŒ–¼.         
007040*                                                                 
007050*--<  No.13 >                                                     
007060      MOVE  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”      TO  o—Í|ÄƒŠ[ƒX‰ñ”.     
007070*                                                                 
007080*--<  No.14 >                                                     
007090      MOVE  ‚l‚S‚O|[“–ŠJŽn”NŒŽ      TO  o—Í|[“–ŠJŽn”NŒŽ.     
007100*                                                                 
007110*--<  No.15 >                                                     
007120      MOVE  ‚l‚S‚O|[“–ŒŽ”          TO  o—Í|[“–ŒŽ” .        
007130*                                                                 
007140*--<  No.16 >                                                     
007150      MOVE  ‚l‚S‚O|‘O•¥‰ñŽû•û–@      TO  o—Í|‘O•¥‰ñŽû•û–@.     
007160*                                                                 
007170*--<  No.17 >                                                     
007180      MOVE  ‚l‚S‚O|“ü‹à“ú            TO  o—Í|“ü‹à“ú.           
007190*                                                                 
007200*--<  No.18 >                                                     
007210      MOVE  ‚l‚S‚O|“ü‹à‹æ•ª          TO  o—Í|“ü‹à‹æ•ª .        
007220*                                                                 
007230*--<  No.19 >                                                     
007240      MOVE  ‚c‚O‚P|Žæˆøæ–¼Ì        TO  o—Í|Žæˆøæ–¼Ì.       
007250*--<  No.20 >                                                     
007260      MOVE  ‚c‚O‚Q|¿‹æ–¼Ì        TO  o—Í|¿‹æ–¼Ì .      
007270*                                                                 
007280*--<  No.21 >                                                     
007290      MOVE  ‚v‚r|–¼Ì‚P              TO  o—Í|ŽåŒ_–ñ‹æ•ª–¼Ì.   
007300*                                                                 
007310*--<  No.22 >                                                     
007320      MOVE  ‚v‚r|–¼Ì‚Q              TO  o—Í|˜AŒ‹‹æ•ª–¼Ì.     
007330*                                                                 
007340 ‹¤’Ê•ÒWˆ—|‚d‚w‚h‚s.                                          
007350     EXIT.                                                        
007360******************************************************************
007370*    ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—                          *
007380******************************************************************
007390 ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—     SECTION.                  
007400 ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—|‚r‚s‚`‚q‚s.                  
007410*                                                                 
007420     IF     o—Í|‘OŒŽ––Žc‚ = ZERO                               
007430       AND  o—Í|“–ŒŽ“ü‹àŠz = ZERO                               
007440       AND  o—Í|“–ŒŽÁ‰»Šz = ZERO                               
007450	     AND  o—Í|“–ŒŽ––Žc‚ = ZERO                               
007460       CONTINUE                                                   
007470     ELSE                                                         
007480        WRITE  o—Í|ƒŒƒR[ƒh                                     
007490*                                                                 
007500*--< ƒtƒ@ƒCƒ‹o—Í‚Ìó‘Ô”»’è >                                     
007510        EVALUATE ‚v|ó‘Ô                                         
007520           WHEN ZERO                                              
007530*--<          ƒtƒ@ƒCƒ‹o—ÍŒ”‚Ì‰ÁŽZ>                             
007540              COMPUTE  ‚v|o—Í|Œ” =  ‚v|o—Í|Œ” + 1       
007550           WHEN OTHER                                             
007560*--<          ƒtƒ@ƒCƒ‹o—ÍƒGƒ‰[>                                 
007570              MOVE     -6             TO ‚v|ƒGƒ‰[ƒR[ƒh         
007580              PERFORM  ƒGƒ‰[ˆ—                                 
007590        END-EVALUATE                                              
007600     END-IF.                                                      
007610 ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—|‚d‚w‚h‚s.                    
007620      EXIT.                                                       
007630******************************************************************
007640*  I—¹ƒƒbƒZ[ƒWo—Íˆ—                                        *
007650******************************************************************
007660  I—¹ƒƒbƒZ[ƒWo—Íˆ—              SECTION.                    
007670  I—¹ƒƒbƒZ[ƒWo—Íˆ—|‚r‚s‚`‚q‚s.                             
007680*                                                                 
007690*----------------------------------------------------------------*
007700*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
007710*----------------------------------------------------------------*
007720     INITIALIZE                       IF-CHOCO001.                
007730     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007740     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007750     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007760     MOVE  "M40MAB"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007770     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007780     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007790     MOVE  "‘OŽóî•ñƒe[ƒuƒ‹i“ü—Íj" TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007800     CALL  CLOCO001                USING  IF-CHOCO001.            
007810*                                                                 
007820     INITIALIZE                       IF-CHOCO001.                
007830     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007840     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007850     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007860     MOVE  "SFHSED25"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007870     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007880     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007890     MOVE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹"   TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007900     CALL  CLOCO001                USING  IF-CHOCO001.            
007910*                                                                 
007920*----------------------------------------------------------------*
007930*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007940*----------------------------------------------------------------*
007950*                                                                 
007960     INITIALIZE                       IF-CHOCO001.                
007970     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007980     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007990     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008000     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008010     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008020     CALL  CLOCO001                USING  IF-CHOCO001.            
008030*                                                                 
008040 I—¹ƒƒbƒZ[ƒWo—Íˆ—|‚d‚w‚h‚s.                                
008050     EXIT.                                                        
008060******************************************************************
008070*    ‚c‚aƒNƒ[ƒY                                                *
008080******************************************************************
008090  ‚c‚aƒNƒ[ƒYˆ—                 SECTION.                       
008100  ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                   
008110**                                                                
008120*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
008130     
      *    EXEC  SQL                                                    
008140*        CLOSE  CUR1                                              
008150*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 333 TO SQL-OFFSET
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
008160  ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                     
008170     EXIT.                                                        
008180******************************************************************
008190*    ƒGƒ‰[ˆ—                                                  *
008200******************************************************************
008210 ƒGƒ‰[ˆ—                       SECTION.                        
008220 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
008230*                                                                 
008240     MOVE  "Y"                        TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.   
008250     INITIALIZE                           IF-CHOCO001.            
008260*                                                                 
008270     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
008280        WHEN  -2                                                  
008290*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
008300           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008310           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008320           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008330           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008340           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008350           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
008360           MOVE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s"             
008370                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008380           CALL  CLOCO001          USING  IF-CHOCO001             
008390*                                                                 
008400        WHEN  -6                                                  
008410*--<       ƒtƒ@ƒCƒ‹o—ÍƒGƒ‰[ >                                   
008420           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008430           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008440           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008450           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008460           MOVE  "WRITE"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008470           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
008480           MOVE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹o—ÍŽ¸”s"                 
008490                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008500           CALL  CLOCO001          USING  IF-CHOCO001             
008510*                                                                 
008520        WHEN  -10                                                 
008530*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
008540           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008550           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008560           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008570           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
008580           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008590           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008600           CALL  CLOCO001          USING  IF-CHOCO001             
008610*                                                                 
008620        WHEN  -20                                                 
008630*--<       ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“ÇžŽ¸”s >                             
008640           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008650           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008660           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008670           MOVE  "D70GYM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008680           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008690           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008700           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008710           CALL  CLOCO001          USING  IF-CHOCO001             
008720*                                                                 
008730        WHEN  -30                                                 
008740*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
008750           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008760           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008770           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008780           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008790           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008800           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008810           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008820           CALL  CLOCO001          USING  IF-CHOCO001             
008830*                                                                 
008840        WHEN  -40                                                 
008850*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
008860           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008870           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008880           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008890           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008900           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008910           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008920           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008930           CALL  CLOCO001          USING  IF-CHOCO001             
008940*                                                                 
008950        WHEN  -50                                                 
008960*--<       €–Ú–¼Ì’Šoˆ—Ž¸”s >                                 
008970           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008980           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008990           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009000           MOVE  "D19MSY"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009010           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009020           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009030           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009040           CALL  CLOCO001          USING  IF-CHOCO001             
009050           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
009060*                                                                 
009070        WHEN  -70                                                 
009080*--<       ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—Ž¸”s >           
009090           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009100           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009110           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009120           MOVE  "M01SAJ"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009130           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009140           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009150           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009160           CALL  CLOCO001          USING  IF-CHOCO001             
009170           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
009180*                                                                 
009190        WHEN  OTHER                                               
009200           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
009210     END-EVALUATE.                                                
009220*                                                                 
009230     IF  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                             
009240        PERFORM  I—¹ƒƒbƒZ[ƒWo—Íˆ—                           
009250        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
009260        EXIT  PROGRAM                                             
009270     END-IF.                                                      
009280*                                                                 
009290 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
009300      EXIT.                                                       
009310******************************************************************
009320*                  END OF PROGRAM                                *
009330******************************************************************
