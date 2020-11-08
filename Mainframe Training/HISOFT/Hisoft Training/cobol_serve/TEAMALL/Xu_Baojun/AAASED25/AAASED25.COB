000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : •Ï‘¥•¥ˆÚsˆ—                         *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : AAASE25                                *
000050*      3. ˆ—ŠT—v      : ˆÚsŒãiƒŒƒxƒ‹ƒAƒbƒvj‚ÌÂŒ “WŠJ‚æ‚èA *
000060*                         •Ï‘¥•¥‚c‚a‚ðì¬‚·‚éB                 *
000070*                                                                *
000080*      4. ì¬ŽÒ        : ™•óŒN                                 *
000090*      5. ì¬“ú        : 2005.3.25                              *
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
000230*    INPUT-OUTPUT                     SECTION                    *
000240******************************************************************
000250 INPUT-OUTPUT                          SECTION.                   
000260*                                                                 
000270 FILE-CONTROL.                                                    
000280     SELECT  oƒJƒtƒ@ƒCƒ‹       ASSIGN     TO       U11           
000290     FILE    STATUS         IS         ‚v|ó‘Ô                   
000300     ORGANIZATION           IS         LINE        SEQUENTIAL.    
000310******************************************************************
000320*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000330******************************************************************
000340 DATA                                 DIVISION.                   
000350******************************************************************
000360*            oƒJƒtƒ@ƒCƒ‹                                        *
000370******************************************************************
000380 FILE                                 SECTION.                    
000390 FD  oƒJƒtƒ@ƒCƒ‹                                                 
000400     LABEL     RECORD     IS          STANDARD                    
000410     BLOCK     CONTAINS   0           RECORDS.                    
000420*                                                                 
000430 01  oƒJ[ƒŒƒR[ƒh.                                              
000440     COPY   CPSCE50   REPLACING   ==()==  BY  ==oƒJ[==.         
000450******************************************************************
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
           02  FILLER PIC X(74) VALUE "select ƒoƒbƒ`—p‹Æ–±”NŒŽ   into :b
      -    "1  from D70GYM_TBL where ‹Æ–±ŠÇ—‚h‚c=:b2".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(122) VALUE "select D19MSY_TBL.–¼Ì   into :b
      -    "1  from D19MSY_TBL where (D19MSY_TBL.ƒR[ƒh‚m‚n=:b2 and SUBS
      -    "TR(D19MSY_TBL.ƒR[ƒh,1,1)=:b3)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(122) VALUE "select D19MSY_TBL.–¼Ì   into :b
      -    "1  from D19MSY_TBL where (D19MSY_TBL.ƒR[ƒh‚m‚n=:b2 and SUBS
      -    "TR(D19MSY_TBL.ƒR[ƒh,1,2)=:b3)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "select ó‘Ôƒtƒ‰ƒO  ,ÂŒ Œ_–ñŒ–¼
      -    "  ,’S•Û‹æ•ª   into :b1,:b2,:b3  from M01SAJ_TBL where (((M01
      -    "SAJ_TBL.ƒŒƒR[ƒh‹æ•ª='1' and M01SAJ_TBL.Œ_–ñ”Ô†=:b4) and M0
      -    "1SAJ_TBL".

           02  FILLER PIC X(47) VALUE ".ÄƒŠ[ƒX‰ñ”=:b5) and M01SAJ_TBL
      -    ".Œ_–ñŽí—Þ=:b6)".

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
      -    "MAB_TBL.“–ŒŽ––Žc‚  ,M40MAB_TBL.‘OŒŽ––Žc‚‘¼ŽÐ  ,M40MAB_TBL.
      -    "“–ŒŽ‰ñŽû".

           02  FILLER PIC X(160) VALUE "Šz‘¼ŽÐ  ,M40MAB_TBL.‹¦’²‹æ•ª  ,M
      -    "40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ  ,M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ  ,M40MA
      -    "B_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à  ,M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ  
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
           02     FILLER PIC S9(4) COMP-5 VALUE +211.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +239.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +315.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +232.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +122.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +449.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +122.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +477.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +207.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +505.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +325.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +758.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000530*                                                                 
000540 01    ‚v‚r|–¼Ì‚P            PIC     X(60).                     
000550 01    ‚v‚r|–¼Ì‚Q            PIC     X(60).                     
000560 01    ‚v‚r|‹Æ–±ŠÇ—‚h‚c      PIC     X(08)  VALUES  'GYMKNRRC'. 
000570 01    ‚v‚r|ƒR[ƒh‚m‚n‚O‚O‚T  PIC     X(12)  VALUES  '005'.      
000580 01    ‚v‚r|ƒR[ƒh‚m‚n‚O‚R‚W  PIC     X(12)  VALUES  '038'.      
000590*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000600     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000610*                                                                 
000620*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000630     
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
000640*                                                                 
000650*--< ‘OŽóî•ñ‚c‚a>                                                
000660     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL            END-EXEC.
000670*                                                                 
000680*--<‹Æ–±ŠÇ—ƒe[ƒuƒ‹ >                                            
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
000690     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL            END-EXEC.
000700*                                                                 
000710*--<Žæˆøæƒ}ƒXƒ^ >                                                
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
000720     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL            END-EXEC.
000730*--<¿‹æƒ}ƒXƒ^>                                                 
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
000740     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL            END-EXEC.
000750*--<€–Ú–¼Ìƒ}ƒXƒ^>                                               
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
000770*--<ÂŒ î•ñiˆê”Êj‚c‚a>					        
000780								        
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
000810                                                                  
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
000820     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000830*                                                                 
000840*----------------------------------------------------------------*
000850*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000860*----------------------------------------------------------------*
000870 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000880*--< ƒGƒ‰[”»’è—p >                                               
000890     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000900     03  ‚v|ó‘Ô                     PIC X(02).                  
000910*                                                                 
000920*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000930     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000940         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
000950         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000960*                                                                 
000970*--< Œ”ƒGƒŠƒA >                                                 
000980     03  Œ”ƒGƒŠƒA.                                              
000990         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
001000         05  ‚v|o—Í|Œ”           PIC  9(09).                 
001010*                                                                 
001020                                                                  
001030*                                                                 
001040*----------------------------------------------------------------*
001050*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001060*----------------------------------------------------------------*
001070 01  CALL-AREA.                                                   
001080*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001090     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001100     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001110*                                                                 
001120*----------------------------------------------------------------*
001130*    ‚b‚n‚o‚x—Ìˆæ                                                *
001140*----------------------------------------------------------------*
001150*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001160 01  IF-CHOCO001.                                                 
001170     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001180*                                                                 
001190*----------------------------------------------------------------*
001200*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001210*----------------------------------------------------------------*
001220 01  PARA-AREA.                                                   
001230     COPY CPBCO001.                                               
001240******************************************************************
001250*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001260******************************************************************
001270 CONSTANT                             SECTION.                    
001280 01  ’è”—Ìˆæ.                                                    
001290     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "AAASED25".
001300     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001310                             VALUE  "‘OŽó‹àŽó•¥Žc‚ƒtƒ@ƒCƒ‹ì¬". 
001320     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001330     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001340     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001350     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001360                                                                  
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
001640     MOVE  "ƒvƒƒOƒ‰ƒ€ˆ—ŠJŽnƒƒbƒZ[ƒW"				
001650                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001660     CALL  CLOCO001                USING  IF-CHOCO001.            
001670*                                                                 
001680*----------------------------------------------------------------*
001690*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001700*----------------------------------------------------------------*
001710     MOVE                SPACE        TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001720     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001730*                                                                 
001740*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
001750     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001760*                                                                 
001770*--< ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž >                                       
001780     PERFORM  ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž.		                
001790*                                                                 
001800*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾ >                                   
001810     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾.                           
001820*                                                                 
001830*--<ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“>                                             
001840     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
001850*--<Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž>                                     
001860     PERFORM   Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                          
001870*                                                                 
001880 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001890     EXIT.                                                        
001900******************************************************************
001910*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001920******************************************************************
001930 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001940 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001950*                                                                 
001960*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
001970     CALL  COBCO001                USING  PARA-AREA.              
001980*                                                                 
001990     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002000     MOVE  PARA-USERNAME              TO  USERNAME.               
002010     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002020*                                                                 
002030*----------------------------------------------------------------*
002040*    ŠJŽnÚ‘±                                                    *
002050*----------------------------------------------------------------*
002060     IF    DB-STRING  =  SPACE                                    
002070        
      *       EXEC SQL                                                  
002080*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002090*       END-EXEC 
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
002100     ELSE                                                         
002110        
      *       EXEC SQL                                                  
002120*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002130*            USING  :DB-STRING                                    
002140*       END-EXEC 
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
002150     END-IF.                                                      
002160*                                                                 
002170*----------------------------------------------------------------*
002180*    Ú‘±Šm”F                                                    *
002190*----------------------------------------------------------------*
002200     EVALUATE  SQLCODE                                            
002210        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002220           CONTINUE                                               
002230        WHEN   OTHER                                              
002240*--<       Ú‘±ƒGƒ‰[ >                                           
002250           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002260           PERFORM  ƒGƒ‰[”»’èˆ—                                
002270     END-EVALUATE.                                                
002280*                                                                 
002290 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002300     EXIT.                                                        
002310******************************************************************
002320*        ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž.                                   *
002330******************************************************************
002340 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž                 SECTION.                    
002350 ‹Æ–±ŠÇ—ƒe[ƒuƒ‹“Çž|‚r‚s‚`‚q‚s.                                
002360*----------------------------------------------------------------*
002370*    ƒoƒbƒ`—p‹Æ–±”NŒŽSELECTˆ—                                  *
002380*----------------------------------------------------------------*
002390     
      *    EXEC SQL                                                     
002400*       SELECT  ƒoƒbƒ`—p‹Æ–±”NŒŽ                                  
002410*       INTO :‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ                            
002420*       FROM  D70GYM_TBL                                          
002430*      WHERE  ‹Æ–±ŠÇ—‚h‚c  = :‚v‚r|‹Æ–±ŠÇ—‚h‚c                 
002440*    END-EXEC.
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
002450*----------------------------------------------------------------*
002460*   ‹Æ–±”NŒŽ Šm”F                                                *
002470*---------------------------------------------------------------- 
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
002630 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾             SECTION.                    
002640 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾|‚r‚s‚`‚q‚s.                            
002650*                                                                 
002660*----------------------------------------------------------------*
002670*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002680*----------------------------------------------------------------*
002690     
      *    EXEC SQL                                                     
002700*       DECLARE  CUR1  CURSOR FOR                                 
002710*          SELECT   M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª,                      
002720*                   M40MAB_TBL.Œo——pŽåŒ_–ñ‹æ•ª,	                
002730*                   M40MAB_TBL.ŒÚ‹q‹æ•ª,   		      	
002740*                   NVL(D01TRS_TBL.–¼Šñ‚¹ƒR[ƒh,RPAD(' ',40,' ')),
002750* 		  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh,	        
002760*                   M40MAB_TBL.¿‹æƒR[ƒh,                      
002770*                   M40MAB_TBL.Œ_–ñ”Ô†,                          
002780* 		  M40MAB_TBL.Œ_–ñŽí—Þ,                          
002790*                   M40MAB_TBL.’S“–•”‰ÛƒR[ƒh,                    
002800*                   M40MAB_TBL.ÄƒŠ[ƒX‰ñ”,			
002810*                   M40MAB_TBL.[“–ŠJŽn”NŒŽ,			
002820*                   M40MAB_TBL.[“–ŒŽ”,		        	
002830*                   M40MAB_TBL.‘O•¥‰ñŽû•û–@,		        
002840*                   M40MAB_TBL.“ü‹à“ú,				
002850*                   M40MAB_TBL.“ü‹à‹æ•ª,				
002860*                   NVL(D01TRS_TBL.Žæˆøæ–¼Ì,RPAD(' ',80,' ')),  
002870*                   NVL(D02SQS_TBL.¿‹æ–¼Ì,RPAD(' ',80,' ')),  
002880*                   M40MAB_TBL.‘OŒŽ––Žc‚,			
002890*                   M40MAB_TBL.“–ŒŽ‰ñŽûŠz,			
002900*                   M40MAB_TBL.“–ŒŽÁ‰»Šz,			
002910*                   M40MAB_TBL.“–ŒŽ––Žc‚,                        
002920*                   M40MAB_TBL.‘OŒŽ––Žc‚‘¼ŽÐ,                    
002930*                   M40MAB_TBL.“–ŒŽ‰ñŽûŠz‘¼ŽÐ,                    
002940*                   M40MAB_TBL.‹¦’²‹æ•ª,                          
002950*                   M40MAB_TBL.“–ŒŽÁ‰»Šz‘¼ŽÐ,                    
002960*                   M40MAB_TBL.“–ŒŽ––Žc‚‘¼ŽÐ,                    
002970*		          M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à,                
002980*                   M40MAB_TBL.“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ               
002990*             FROM  M40MAB_TBL,D01TRS_TBL,D02SQS_TBL              
003000*            WHERE  M40MAB_TBL.‘OŽó‹àŽó•¥Žc‚•\‘ÎÛƒtƒ‰ƒO  =  '1' 
003010*              AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh    =            
003020*                   D01TRS_TBL.ŽæˆøæƒR[ƒh ( + )	 		
003030* 	     AND  M40MAB_TBL.¿‹æŽæˆøæƒR[ƒh    =            
003040*                   D02SQS_TBL.ŽæˆøæƒR[ƒh ( + )		        
003050*              AND  M40MAB_TBL.¿‹æƒR[ƒh	  =             
003060*                   D02SQS_TBL.¿‹æƒR[ƒh ( + )			
003070*         ORDER BY   M40MAB_TBL.ƒŒƒR[ƒh‹æ•ª			
003080*                   ,M40MAB_TBL.Œ_–ñ”Ô†				
003090*                                                                 
003100*    END-EXEC.
003110*                                                                 
003120*----------------------------------------------------------------*
003130*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003140*----------------------------------------------------------------*
003150     
      *    EXEC SQL                                                     
003160*       OPEN  CUR1                                                
003170*    END-EXEC.
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
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003210*----------------------------------------------------------------*
003220     EVALUATE  SQLCODE                                            
003230        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003240*--<       ³í >                                                 
003250           CONTINUE                                               
003260        WHEN  OTHER                                               
003270*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003280           MOVE -30                  TO  ‚v|ƒGƒ‰[ƒR[ƒh         
003290           PERFORM  ƒGƒ‰[”»’èˆ—                                
003300     END-EVALUATE.                                                
003310*                                                                 
003320 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾|‚d‚w‚h‚s.                              
003330     EXIT.                                                        
003340* *************************************************************** 
003350*                   ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                           * 
003360***************************************************************** 
003370 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
003380 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
003390     OPEN  OUTPUT  oƒJƒtƒ@ƒCƒ‹.                                  
003400*----------------------------------------------------------------*
003410*   ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“‚n‚o‚d‚mŠm”F                                 *
003420*----------------------------------------------------------------*
003430     EVALUATE   ‚v|ó‘Ô                                          
003440        WHEN  ZERO                                                
003450*--<       ³í >                                                 
003460           CONTINUE                                               
003470        WHEN  OTHER                                               
003480*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003490           MOVE          -40          TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003500           PERFORM  ƒGƒ‰[”»’èˆ—                                
003510     END-EVALUATE.                                                
003520 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
003530     EXIT.                                                        
003540                                                                  
003550******************************************************************
003560*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
003570******************************************************************
003580 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
003590 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
003600*                                                                 
003610*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
003620     
      *    EXEC SQL                                                     
003630*        FETCH  CUR1                                              
003640*         INTO :‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª,                             
003650*              :‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª,	                        
003660*              :‚l‚S‚O|ŒÚ‹q‹æ•ª,   		            	
003670*              :‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh,		         	
003680* 	     :‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh,	        	
003690*              :‚l‚S‚O|¿‹æƒR[ƒh,                             
003700*              :‚l‚S‚O|Œ_–ñ”Ô†,                                 
003710* 	     :‚l‚S‚O|Œ_–ñŽí—Þ,                                 
003720*              :‚l‚S‚O|’S“–•”‰ÛƒR[ƒh,				
003730*              :‚l‚S‚O|ÄƒŠ[ƒX‰ñ”,				
003740*              :‚l‚S‚O|[“–ŠJŽn”NŒŽ,		        	
003750*              :‚l‚S‚O|[“–ŒŽ”,					
003760*              :‚l‚S‚O|‘O•¥‰ñŽû•û–@,			        
003770*              :‚l‚S‚O|“ü‹à“ú,					
003780*              :‚l‚S‚O|“ü‹à‹æ•ª,					
003790*              :‚c‚O‚P|Žæˆøæ–¼Ì,                               
003800* 	     :‚c‚O‚Q|¿‹æ–¼Ì,		                
003810*              :‚l‚S‚O|‘OŒŽ––Žc‚,				
003820*              :‚l‚S‚O|“–ŒŽ‰ñŽûŠz,				
003830*              :‚l‚S‚O|“–ŒŽÁ‰»Šz,				
003840*              :‚l‚S‚O|“–ŒŽ––Žc‚,                               
003850*              :‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ,                           
003860*              :‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ,                           
003870*              :‚l‚S‚O|‹¦’²‹æ•ª,                                 
003880*              :‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ,                           
003890*              :‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ,                           
003900*		     :‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à,                       
003910*              :‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ                      
003920*    END-EXEC.
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
               ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ
               SQL-SQHSTV(22)
           MOVE 7 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚l‚S‚O|‹¦’²‹æ•ª
               SQL-SQHSTV(24)
           MOVE 1 TO SQL-SQHSTL(24)
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
               ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à
               SQL-SQHSTV(27)
           MOVE 7 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ
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
003930                                                                  
003940                                                                  
003950*----------------------------------------------------------------*
003960*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
003970*----------------------------------------------------------------*
003980     EVALUATE   SQLCODE                                           
003990        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004000*--<       ³í >                                                 
004010               COMPUTE ‚v|“ü—Í|Œ” = ‚v|“ü—Í|Œ” + 1        
004020        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
004030*--<       “ÇžI—¹ >                                             
004040           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
004050        WHEN   OTHER                                              
004060*--<       “ÇžƒGƒ‰[ >                                           
004070           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004080           PERFORM  ƒGƒ‰[”»’èˆ—                                
004090     END-EVALUATE.                                                
004100*                                                                 
004110 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
004120     EXIT.                                                        
004130******************************************************************
004140*    Žåˆ—                                                      *
004150******************************************************************
004160 Žåˆ—                               SECTION.                    
004170 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004180*--<€–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼‚Ì’Šoˆ—>                     
004190     PERFORM  €–Ú–¼Ì‚Ì’Šoˆ—.			                
004200                                                                  
004210*                                                                 
004220*--<ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ— >                      
004230     PERFORM  ÂŒ î•ñ‚Ì’Šoˆ—.                                 
004240                                                                  
004250                                                                  
004260*--<‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Í”»’èˆ—>                       
004270     PERFORM  ‘OŽó‹ào—Í”»’èˆ—.                                 
004280                                                                  
004290*--<Œ‹‡ƒe[ƒuƒ‹“Çži‚QŒ–ÚˆÈ~j>                               
004300	   PERFORM   Œ‹‡ƒe[ƒuƒ‹“Çž‚QŒ–ÚˆÈ~.                        
004310*                                                                 
004320 Žåˆ—|‚d‚w‚h‚s.                                                
004330     EXIT.                                                        
004340                                                                  
004350******************************************************************
004360*    €–Ú–¼Ìƒ}ƒXƒ^‚æ‚è€–Ú‚Ì’Šoˆ—                            *
004370***************************************************************** 
004380 €–Ú–¼Ì‚Ì’Šoˆ—                        SECTION.               
004390 €–Ú–¼Ì‚Ì’Šoˆ—|‚r‚s‚`‚q‚s.                                  
004400     PERFORM  €–Ú–¼ÌŽåŒ_–ñ‹æ•ª–¼‚Ì’Šo.                         
004410     PERFORM  €–Ú–¼ÌŒÚ‹q‹æ•ª–¼Ì‚Ì’Šo.		                
004420 €–Ú–¼Ì‚Ì’Šoˆ—|‚d‚w‚h‚s.                                    
004430     EXIT.                                                        
004440******************************************************************
004450* €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼‚Ì’Šoˆ—.                      *
004460****************************************************************  
004470 €–Ú–¼ÌŽåŒ_–ñ‹æ•ª–¼‚Ì’Šo             SECTION.                  
004480 €–Ú–¼ÌŽåŒ_–ñ‹æ•ª–¼‚Ì’Šo|‚r‚s‚`‚q‚s.                          
004490      
      *     EXEC SQL                                                    
004500*        SELECT  D19MSY_TBL.–¼Ì                                  
004510*         INTO :‚v‚r|–¼Ì‚P                                      
004520*         FROM  D19MSY_TBL                                        
004530*         WHERE  D19MSY_TBL.ƒR[ƒh‚m‚n = :‚v‚r|ƒR[ƒh‚m‚n‚O‚R‚W  
004540*          AND  SUBSTR(D19MSY_TBL.ƒR[ƒh ,1,1) =                  
004550*              :‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª                          
004560*     END-EXEC.
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
                ‚v‚r|–¼Ì‚P
                SQL-SQHSTV(1)
            MOVE 60 TO SQL-SQHSTL(1)
            MOVE 0 TO SQL-SQHSTS(1)
            MOVE 0 TO SQL-SQINDV(1)
            MOVE 0 TO SQL-SQINDS(1)
            MOVE 0 TO SQL-SQHARM(1)
            CALL "SQLADR" USING
                ‚v‚r|ƒR[ƒh‚m‚n‚O‚R‚W
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
004570* ---------------------------------------------------------------*
004580*   €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼‚Ì’Šoˆ— Šm”F                 
004590*---------------------------------------------------------------- 
004600     EVALUATE  SQLCODE                                            
004610        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004620*--<       ³í >                                                 
004630           CONTINUE                                               
004640        WHEN  OTHER                                               
004650*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
004660           MOVE -60                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004670           PERFORM  ƒGƒ‰[”»’èˆ—                                
004680           MOVE SPACE TO  ‚v‚r|–¼Ì‚P                            
004690     END-EVALUATE.                                                
004700 €–Ú–¼ÌŽåŒ_–ñ‹æ•ª–¼‚Ì’Šo|‚d‚w‚h‚s.                            
004710     EXIT.                                                        
004720******************************************************************
004730* €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—.                      *
004740****************************************************************  
004750 €–Ú–¼ÌŒÚ‹q‹æ•ª–¼Ì‚Ì’Šo   SECTION.                            
004760 €–Ú–¼ÌŒÚ‹q‹æ•ª–¼Ì‚Ì’Šo|‚r‚s‚`‚q‚s.                          
004770       
      *      EXEC SQL                                                   
004780*        SELECT  D19MSY_TBL.–¼Ì                                  
004790*         INTO :‚v‚r|–¼Ì‚Q                                      
004800*         FROM  D19MSY_TBL                                        
004810*         WHERE  D19MSY_TBL.ƒR[ƒh‚m‚n = :‚v‚r|ƒR[ƒh‚m‚n‚O‚O‚T  
004820*          AND  SUBSTR(D19MSY_TBL.ƒR[ƒh ,1,2) =                  
004830*              :‚l‚S‚O|ŒÚ‹q‹æ•ª                                  
004840*     END-EXEC.
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
                 ‚v‚r|–¼Ì‚Q
                 SQL-SQHSTV(1)
             MOVE 60 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚v‚r|ƒR[ƒh‚m‚n‚O‚O‚T
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
004850*----------------------------------------------------------------*
004860*   €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ— Šm”F                 
004870*---------------------------------------------------------------- 
004880     EVALUATE  SQLCODE                                            
004890        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004900*--<       ³í >                                                 
004910           CONTINUE                                               
004920        WHEN  OTHER                                               
004930*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
004940           MOVE -90                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004950           PERFORM  ƒGƒ‰[”»’èˆ—                                
004960           MOVE SPACE TO  ‚v‚r|–¼Ì‚Q                            
004970     END-EVALUATE.                                                
004980 €–Ú–¼ÌŒÚ‹q‹æ•ª–¼Ì‚Ì’Šo|‚d‚w‚h‚s.                            
004990     EXIT.                                                        
005000******************************************************************
005010*  ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—                        *
005020***************************************************************** 
005030 ÂŒ î•ñ‚Ì’Šoˆ—                   SECTION.                    
005040 ÂŒ î•ñ‚Ì’Šoˆ—|‚r‚s‚`‚q‚s.                                  
005050     
      *    EXEC SQL                                                     
005060*     SELECT  ó‘Ôƒtƒ‰ƒO,ÂŒ Œ_–ñŒ–¼ ,                           
005070*              ’S•Û‹æ•ª                                           
005080*       INTO  :‚l‚O‚P|ó‘Ôƒtƒ‰ƒO,                                
005090*             :‚l‚O‚P|ÂŒ Œ_–ñŒ–¼,                              
005100*             :‚l‚O‚P|’S•Û‹æ•ª                                   
005110*       FROM  M01SAJ_TBL                                          
005120*      WHERE   M01SAJ_TBL.ƒŒƒR[ƒh‹æ•ª = '1'		        
005130*        AND   M01SAJ_TBL.Œ_–ñ”Ô† = :‚l‚S‚O|Œ_–ñ”Ô†            
005140*        AND   M01SAJ_TBL.ÄƒŠ[ƒX‰ñ” =                          
005150*                             :‚l‚S‚O|ÄƒŠ[ƒX‰ñ”               
005160*        AND   M01SAJ_TBL.Œ_–ñŽí—Þ = :‚l‚S‚O|Œ_–ñŽí—Þ            
005170*                                                                 
005180*                                                                 
005190*    END-EXEC.
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
               ‚l‚S‚O|Œ_–ñ”Ô†
               SQL-SQHSTV(4)
           MOVE 15 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚l‚S‚O|Œ_–ñŽí—Þ
               SQL-SQHSTV(6)
           MOVE 3 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
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
005200*----------------------------------------------------------------*
005210*   ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—                       *
005220*---------------------------------------------------------------- 
005230     EVALUATE  SQLCODE                                            
005240        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005250*--<       ³í >                                                 
005260           CONTINUE                                               
005270        WHEN  OTHER                                               
005280*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
005290           MOVE -70                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005300           PERFORM  ƒGƒ‰[”»’èˆ—                                
005310           MOVE    ZERO      TO    ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO             
005320           MOVE    SPACE     TO    ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼           
005330           MOVE    ZERO      TO    ‚l‚O‚P|’S•Û‹æ•ª               
005340     END-EVALUATE.                                                
005350 ÂŒ î•ñ‚Ì’Šoˆ—|‚d‚w‚h‚s.                                    
005360     EXIT.                                                        
005370                                                                  
005380******************************************************************
005390*         ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Í”»’èˆ—	               *
005400***************************************************************** 
005410 ‘OŽó‹ào—Í”»’èˆ—                     SECTION.                  
005420 ‘OŽó‹ào—Í”»’èˆ—|‚r‚s‚`‚q‚s.                                  
005430     IF  ‚l‚O‚P|’S•Û‹æ•ª	NOT = '1'                               
005440*--<‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWAo—Íˆ—>                 
005450         PERFORM  ‘OŽó‹àŽó•ÒWo—Íˆ—                            
005460    	 							
005470	   END-IF.   							
005480 ‘OŽó‹ào—Í”»’èˆ—|‚d‚w‚h‚s.                                    
005490     EXIT.                                                        
005500******************************************************************
005510*      ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWAo—Íˆ—	       *
005520****************************************************************  
005530 ‘OŽó‹àŽó•ÒWo—Íˆ—               	SECTION.                
005540 ‘OŽó‹àŽó•ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                
005550*--<‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—iŽ©ŽÐ•ª).>             
005560     PERFORM  ‘OŽó‹à•ÒWˆ—Ž©ŽÐ•ª.                               
005570                                                                  
005580*--<‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—iŽ©ŽÐ•ªj.>                
005590     PERFORM  ‘OŽó‹ào—Íˆ—Ž©ŽÐ•ª.                               
005600                                                                  
005610*--< ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—i‘¼ŽÐ•ªj.>           
005620      IF ‚l‚S‚O|‹¦’²‹æ•ª  = '2'                                  
005630            PERFORM  ‘OŽó‹à•ÒWˆ—‘¼ŽÐ•ª                         
005640*--< ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—i‘¼ŽÐ•ªj.>               
005650	          PERFORM  ‘OŽó‹ào—Íˆ—‘¼ŽÐ•ª                         
005660      END-IF.                                                     
005670                                                                  
005680 ‘OŽó‹àŽó•ÒWo—Íˆ—|‚d‚w‚h‚s.                                  
005690     EXIT.                                                        
005700******************************************************************
005710*       ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—iŽ©ŽÐ•ªj	       *
005720***************************************************************** 
005730 ‘OŽó‹à•ÒWˆ—Ž©ŽÐ•ª	                  SECTION.              
005740 ‘OŽó‹à•ÒWˆ—Ž©ŽÐ•ª|‚r‚s‚`‚q‚s.                                
005750 	   IF  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO  < '3'                                
005760         MOVE '3' TO oƒJ[Ž©‘¼ŽÐ‹æ•ª                             
005770     ELSE                                                         
005780         MOVE '1' TO oƒJ[Ž©‘¼ŽÐ‹æ•ª        			
005790	   END-IF.                                                      
005800     PERFORM   •”•ªoƒJ.						
005810                                                                  
005820     MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚	     TO    oƒJ[‘OŒŽ––Žc‚.	
005830     MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz	     TO	   oƒJ[“–ŒŽ“ü‹àŠz.	
005840     MOVE  ‚l‚S‚O|“–ŒŽÁ‰»Šz	     TO    oƒJ[“–ŒŽÁ‰»Šz.	
005850     MOVE  ‚l‚S‚O|“–ŒŽ––Žc‚	     TO    oƒJ[“–ŒŽ––Žc‚.	
005860 ‘OŽó‹à•ÒWˆ—Ž©ŽÐ•ª|‚d‚w‚h‚s.                                  
005870     EXIT.                                                        
005880******************************************************************
005890*                oƒJ                                 	       *
005900****************************************************************  
005910 •”•ªoƒJ	                              SECTION.                  
005920 •”•ªoƒJ|‚r‚s‚`‚q‚s.                                            
005930 	   MOVE  ‚l‚S‚O|ƒŒƒR[ƒh‹æ•ª        TO    oƒJ[‘OŽó‹æ•ª.      
005940     MOVE  ‚l‚S‚O|Œo——pŽåŒ_–ñ‹æ•ª    TO    oƒJ[ŽåŒ_–ñ‹æ•ª.  	
005950     MOVE  ‚l‚S‚O|ŒÚ‹q‹æ•ª  	     TO	   oƒJ[˜AŒ‹‹æ•ª.      
005960     MOVE  ‚c‚O‚P|–¼Šñ‚¹ƒR[ƒh	     TO    oƒJ[–¼Šñ‚¹ƒR[ƒh. 	
005970	   MOVE	 ‚l‚S‚O|¿‹æŽæˆøæƒR[ƒh  TO    oƒJ[ŽæˆøæƒR[ƒh.	
005980     MOVE  ‚l‚S‚O|¿‹æƒR[ƒh        TO    oƒJ[¿‹æƒR[ƒh.  
005990     MOVE  ‚l‚S‚O|Œ_–ñ”Ô†            TO    oƒJ[Œ_–ñ”Ô†.      
006000	   MOVE	 ‚l‚S‚O|Œ_–ñŽí—Þ            TO    oƒJ[Œ_–ñŽí—Þ.      
006010     MOVE  ‚c‚V‚O|ƒoƒbƒ`—p‹Æ–±”NŒŽ    TO    oƒJ[‹Æ–±”NŒŽ.      
006020     MOVE  ‚l‚S‚O|’S“–•”‰ÛƒR[ƒh      TO    oƒJ[’S“–•”‰ÛƒR[ƒh.
006030     MOVE  ‚l‚O‚P|ÂŒ Œ_–ñŒ–¼	     TO    oƒJ[Œ_–ñŒ–¼.	
006040     MOVE  ‚l‚S‚O|ÄƒŠ[ƒX‰ñ”	     TO    oƒJ[ÄƒŠ[ƒX‰ñ”.	
006050     MOVE  ‚l‚S‚O|[“–ŠJŽn”NŒŽ	     TO	   oƒJ[[“–ŠJŽn”NŒŽ.  
006060     MOVE  ‚l‚S‚O|[“–ŒŽ”	     TO    oƒJ[[“–ŒŽ”.	
006070     MOVE  ‚l‚S‚O|‘O•¥‰ñŽû•û–@	     TO    oƒJ[‘O•¥‰ñŽû•û–@.	
006080     MOVE  ‚l‚S‚O|“ü‹à“ú		     TO    oƒJ[“ü‹à“ú.	
006090     MOVE  ‚l‚S‚O|“ü‹à‹æ•ª	     TO    oƒJ[“ü‹à‹æ•ª.	
006100     MOVE  ‚c‚O‚P|Žæˆøæ–¼Ì          TO    oƒJ[Žæˆøæ–¼Ì.    
006110	   MOVE	 ‚c‚O‚Q|¿‹æ–¼Ì	     TO    oƒJ[¿‹æ–¼Ì.    
006120	   MOVE  ‚v‚r|–¼Ì‚P                TO    oƒJ[ŽåŒ_–ñ‹æ•ª–¼Ì.
006130     MOVE  ‚v‚r|–¼Ì‚Q                TO    oƒJ[˜AŒ‹‹æ•ª–¼Ì.  
006140 •”•ªoƒJ|‚d‚w‚h‚s.                                              
006150     EXIT.                                                        
006160                                                                  
006170******************************************************************
006180*      ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—iŽ©ŽÐ•ªj	       *
006190****************************************************************  
006200 ‘OŽó‹ào—Íˆ—Ž©ŽÐ•ª	             SECTION.                   
006210 ‘OŽó‹ào—Íˆ—Ž©ŽÐ•ª|‚r‚s‚`‚q‚s.                                
006220 	   IF  oƒJ[‘OŒŽ––Žc‚	 NOT =  0    OR                         
006230         oƒJ[“–ŒŽ“ü‹àŠz	 NOT =  0    OR                         
006240         oƒJ[“–ŒŽÁ‰»Šz	 NOT =  0    OR                         
006250         oƒJ[“–ŒŽ––Žc‚	 NOT =  0                               
006260         PERFORM   o—Íˆ—                                       
006270      END-IF.                                                     
006280            				                        
006290 ‘OŽó‹ào—Íˆ—Ž©ŽÐ•ª|‚d‚w‚h‚s.                                  
006300     EXIT.                                                        
006310******************************************************************
006320*     o—Íˆ—	                                               *
006330***************************************************************** 
006340 o—Íˆ—                                  	SECTION.        
006350 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
006360*                                                                 
006370     WRITE  oƒJ[ƒŒƒR[ƒh.                                       
006380*                                                                 
006390*--< o—Íˆ—‚Ìó‘Ô”»’è >                                         
006400     EVALUATE  ‚v|ó‘Ô                                           
006410        WHEN  ZERO                                                
006420*--<       o—Íˆ—‚Ì‰ÁŽZ >                                       
006430           COMPUTE   ‚v|o—Í|Œ”  =  ‚v|o—Í|Œ”  + 1       
006440        WHEN  OTHER                                               
006450*--<       ƒtƒ@ƒCƒ‹o—ÍƒGƒ‰[ >                                   
006460           MOVE     -80                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
006470           PERFORM  ƒGƒ‰[”»’èˆ—                                
006480     END-EVALUATE.                                                
006490 o—Íˆ—|‚d‚w‚h‚s.                                              
006500     EXIT.                                                        
006510******************************************************************
006520*      ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹€–Ú•ÒWˆ—i‘¼ŽÐ•ªj	        
006530***************************************************************** 
006540 ‘OŽó‹à•ÒWˆ—‘¼ŽÐ•ª                    SECTION.                 
006550 ‘OŽó‹à•ÒWˆ—‘¼ŽÐ•ª|‚r‚s‚`‚q‚s.                                
006560                                                                  
006570        PERFORM   €–Ú•ÒWˆ—‘¼ŽÐ•ª.                             
006580     		                                                
006590 ‘OŽó‹à•ÒWˆ—‘¼ŽÐ•ª|‚d‚w‚h‚s.                                  
006600      EXIT.                                                       
006610                                                                  
006620******************************************************************
006630*           €–Ú•ÒWˆ—‘¼ŽÐ•ª                                    
006640***************************************************************** 
006650 €–Ú•ÒWˆ—‘¼ŽÐ•ª                     SECTION.                  
006660 €–Ú•ÒWˆ—‘¼ŽÐ•ª|‚r‚s‚`‚q‚s.                                  
006670       IF  ‚l‚O‚P|ó‘Ôƒtƒ‰ƒO  < '3'                              
006680         MOVE '4' TO oƒJ[Ž©‘¼ŽÐ‹æ•ª                             
006690       ELSE                                                       
006700         MOVE '2' TO oƒJ[Ž©‘¼ŽÐ‹æ•ª     		        
006710	     END-IF.                                                    
006720       PERFORM   •”•ªoƒJ.                                        
006730	     MOVE  ‚l‚S‚O|‘OŒŽ––Žc‚‘¼ŽÐ	 TO                     
006740                                           oƒJ[‘OŒŽ––Žc‚.	
006750       MOVE  ‚l‚S‚O|“–ŒŽ‰ñŽûŠz‘¼ŽÐ	 TO                     
006760                                           oƒJ[“–ŒŽ“ü‹àŠz.      
006770       INITIALIZE                  oƒJ[“–ŒŽÁ‰»Šz.              
006780       MOVE    ZERO      TO        oƒJ[“–ŒŽÁ‰»Šz.              
006790       INITIALIZE                  oƒJ[“–ŒŽ––Žc‚.              
006800       MOVE    ZERO      TO        oƒJ[“–ŒŽ––Žc‚.              
006810       COMPUTE  oƒJ[“–ŒŽÁ‰»Šz = ‚l‚S‚O|“–ŒŽÁ‰»Šz‘¼ŽÐ   +	
006820                                 ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à +	
006830                                 ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ.	
006840		                                                        
006850       COMPUTE  oƒJ[“–ŒŽ––Žc‚ = ‚l‚S‚O|“–ŒŽ––Žc‚‘¼ŽÐ   -     
006860                                  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ª—¿‹à  -	
006870                                  ‚l‚S‚O|“–ŒŽ‘¼ŽÐ‰ð–ñ•ªÁ”ïÅ.   
006880 €–Ú•ÒWˆ—‘¼ŽÐ•ª|‚d‚w‚h‚s.                                    
006890      EXIT.                                                       
006900******************************************************************
006910*   ‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—i‘¼ŽÐ•ªj.                *
006920***************************************************************** 
006930 ‘OŽó‹ào—Íˆ—‘¼ŽÐ•ª                        SECTION.             
006940 ‘OŽó‹ào—Íˆ—‘¼ŽÐ•ª|‚r‚s‚`‚q‚s.                                
006950      IF  oƒJ[‘OŒŽ––Žc‚         NOT =  0    OR                 
006960          oƒJ[“–ŒŽ“ü‹àŠz	 NOT =  0    OR                 
006970          oƒJ[“–ŒŽÁ‰»Šz	 NOT =  0    OR                 
006980          oƒJ[“–ŒŽ––Žc‚	 NOT =  0                       
006990         PERFORM   o—Íˆ—                                       
007000      END-IF.                                                     
007010 ‘OŽó‹ào—Íˆ—‘¼ŽÐ•ª|‚d‚w‚h‚s.                                  
007020      EXIT.                                                       
007030******************************************************************
007040*   Œ‹‡ƒe[ƒuƒ‹“Çži‚QŒ–ÚˆÈ~                                 *
007050******************************************************************
007060 Œ‹‡ƒe[ƒuƒ‹“Çž‚QŒ–ÚˆÈ~             SECTION.                  
007070 Œ‹‡ƒe[ƒuƒ‹“Çž‚QŒ–ÚˆÈ~|‚r‚s‚`‚q‚s.                          
007080      PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                          
007090 Œ‹‡ƒe[ƒuƒ‹“Çž‚QŒ–ÚˆÈ~|‚d‚w‚h‚s.                            
007100     EXIT.                                                        
007110******************************************************************
007120*    I—¹ˆ—                                                    *
007130******************************************************************
007140 I—¹ˆ—                             SECTION.                    
007150 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
007160*                                                                 
007170     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
007180*                                                                 
007190     PERFORM  ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—.				
007200                                                                  
007210     PERFORM  Œ”ƒƒbƒZ[ƒWo—Í.					
007220                                                                  
007230*                                                                 
007240     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
007250*                                                                 
007260*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
007270     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
007280*                                                                 
007290 I—¹ˆ—|‚d‚w‚h‚s.                                              
007300     EXIT.                                                        
007310******************************************************************
007320*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007330******************************************************************
007340 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
007350 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
007360*                                                                 
007370*----------------------------------------------------------------*
007380*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007390*----------------------------------------------------------------*
007400     INITIALIZE                       IF-CHOCO001.                
007410     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007420     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007430     MOVE  "ZERO"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007440     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007450     MOVE  "ƒvƒƒOƒ‰ƒ€ˆ—I—¹ƒƒbƒZ[ƒW"				
007460                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007470     CALL  CLOCO001                USING  IF-CHOCO001.            
007480*                                                                 
007490 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
007500     EXIT.                                                        
007510******************************************************************
007520*    ‚c‚aƒNƒ[ƒY                                                *
007530******************************************************************
007540 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
007550 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
007560*                                                                 
007570*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
007580     
      *    EXEC SQL                                                     
007590*       CLOSE  CUR1                                               
007600*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 325 TO SQL-OFFSET
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
007610*                                                                 
007620 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
007630     EXIT.                                                        
007640******************************************************************
007650*       ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—.                                    *
007660******************************************************************
007670 ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—                   SECTION.                  
007680 ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                
007690      CLOSE  oƒJƒtƒ@ƒCƒ‹.                                        
007700                                                                  
007710 ƒtƒ@ƒCƒ‹ƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                  
007720     EXIT.                                                        
007730******************************************************************
007740*       Œ”ƒƒbƒZ[ƒWo—Í.                                 *     
007750******************************************************************
007760 Œ”ƒƒbƒZ[ƒWo—Í                   SECTION.                    
007770 Œ”ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
007780*----------------------------------------------------------------*
007790*    Œ”ƒƒbƒZ[ƒW“ü—Íˆ—                                      *
007800*----------------------------------------------------------------*
007810     INITIALIZE                       IF-CHOCO001.                
007820     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007830     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007840     MOVE  "ZERO"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.    
007850     MOVE  "M40MAB"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007860     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007870     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007880     MOVE  "‘OŽóî•ñŒ‹‡‚c‚a“ü—ÍŒ”"                             
007890                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007900     CALL  CLOCO001                  USING  IF-CHOCO001.          
007910*----------------------------------------------------------------*
007920*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
007930*----------------------------------------------------------------*
007940     INITIALIZE                       IF-CHOCO001.                
007950     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007960     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007970     MOVE  "ZERO"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.    
007980     MOVE  "SFHSED25"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007990     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008000     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
008010     MOVE  "‘OŽó‹àŽó•¥Žc‚’†ŠÔo—ÍŒ”"                           
008020                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008030     CALL  CLOCO001                USING  IF-CHOCO001.            
008040 Œ”ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
008050     EXIT.                                                        
008060                                                                  
008070******************************************************************
008080*    ƒGƒ‰[ˆ—                                                  *
008090******************************************************************
008100 ƒGƒ‰[”»’èˆ—                       SECTION.                    
008110 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
008120*                                                                 
008130     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
008140     INITIALIZE                           IF-CHOCO001.            
008150*                                                                 
008160     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
008170        WHEN  -10                                                 
008180*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
008190           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008200           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008210           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008220           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
008230           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008240           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008250           CALL  CLOCO001          USING  IF-CHOCO001             
008260*                                                                 
008270                                                                  
008280                                                                  
008290        WHEN  -20                                                 
008300*--<’Šo‹Æ–±ŠÇ—ƒe[ƒuƒ‹“ÇžŽ¸”s >                                
008310           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008320           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008330           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008340           MOVE  "D70GYM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008350           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008360           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008370           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008380           CALL  CLOCO001          USING  IF-CHOCO001             
008390*                                                                 
008400        WHEN  -30                                                 
008410*--<     Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾Ž¸”s >                           
008420           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008430           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008440           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008450           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008460           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008470           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008480           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008490           CALL  CLOCO001          USING  IF-CHOCO001             
008500*                                                                 
008510        WHEN  -40                                                 
008520*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s >                                 
008530           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008540           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008550           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008560           MOVE  "SHFSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008570           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008580           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008590           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008600           CALL  CLOCO001          USING  IF-CHOCO001             
008610*                                                                 
008620        WHEN  -50                                                 
008630*--<      Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                  
008640           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008650           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008660           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008670           MOVE  "M40MAB"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008680           MOVE  "FETCH"             TO  ‹¤‚P|ˆ—Ž¯•Ê           
008690           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008700           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008710           CALL  CLOCO001          USING  IF-CHOCO001             
008720*                                                                 
008730         WHEN  -60                                                
008740*--<     €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŽåŒ_–ñ‹æ•ª–¼Ì‚Ì’Šoˆ—Ž¸”s >         
008750           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008760           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008770           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008780           MOVE  "D19MSY"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008790           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008800           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008810           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008820           CALL  CLOCO001          USING  IF-CHOCO001             
008830           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
008840                                                                  
008850*                                                                 
008860         WHEN  -70                                                
008870*--<    ÂŒ î•ñiˆê”Êj‚c‚a‚æ‚è€–Ú‚Ì’Šoˆ—Ž¸”s >              
008880           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008890           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008900           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008910           MOVE  "M01SAJ"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008920           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008930           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008940           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008950           CALL  CLOCO001          USING  IF-CHOCO001             
008960           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
008970         WHEN  -80                                                
008980*--<‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—iŽ©ŽÐ•ª)Ž¸”s >             
008990           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009000           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009010           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009020           MOVE  "SFHSED25"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009030           MOVE  "WRITE"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
009040           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
009050           MOVE  "‘OŽó‹àŽó•¥Žc‚’†ŠÔƒtƒ@ƒCƒ‹o—Íˆ—Ž¸”s"         
009060                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009070           CALL  CLOCO001          USING  IF-CHOCO001             
009080                                                                  
009090         WHEN  -90                                                
009100*--<        €–Ú–¼Ìƒ}ƒXƒ^‚æ‚èŒÚ‹q‹æ•ª–¼Ì‚Ì’Šoˆ—Ž¸”s >        
009110           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009120           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009130           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009140           MOVE  "D19MSY"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009150           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
009160           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009170           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009180           CALL  CLOCO001          USING  IF-CHOCO001             
009190           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
009200                                                                  
009210        WHEN  OTHER                                               
009220           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
009230     END-EVALUATE.                                                
009240*                                                                 
009250     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
009260*        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                            
009270*                                                                 
009280        PERFORM  Œ”ƒƒbƒZ[ƒWo—Í				
009290        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
009300*                                                                 
009310*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
009320        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
009330*                                                                 
009340        EXIT  PROGRAM                                             
009350     END-IF.                                                      
009360*                                                                 
009370 ƒGƒ‰[”»’èˆ—|‚d‚w‚h‚s.                                        
009380     EXIT.                                                        
009390******************************************************************
009400*                  END OF PROGRAM                                *
009410******************************************************************
