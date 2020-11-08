000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼    FŽ‘ŽYî•ñˆÚs<SUMMIT>                 *
000040*      2. ƒvƒƒOƒ‰ƒ€ID    FCOBIS770                             *
000050*      3. ˆ—ŠT—v        FŽ‘ŽY–¾×AV•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹‚æ‚è *
000060*                           Ž‘ŽYî•ñƒe[ƒuƒ‹‚ðXV‚·‚é           *
000070*      4. ì¬ŽÒ          F—«  œv                               *
000080*      5. ì¬“ú          F2005.04.05                           *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS770.                   
000170******************************************************************
000180*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    ‚h‚m‚o‚t‚s|‚n‚t‚s‚o‚t‚s      ‚r‚d‚b‚s‚h‚n‚m                *
000230******************************************************************
000240 INPUT-OUTPUT                         SECTION.                    
000250 FILE-CONTROL.                                                    
000260*                                                                 
000270     SELECT         “ü—Íƒtƒ@ƒCƒ‹      ASSIGN    TO   U01          
000280     FILE   STATUS    IS     ‚v|ó‘Ô                             
000290     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000300*                                                                 
000310******************************************************************
000320*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000330******************************************************************
000340 DATA                                 DIVISION.                   
000350******************************************************************
000360*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000370******************************************************************
000380 FILE                                 SECTION.                    
000390*----------------------------------------------------------------*
000400*    “ü—Íƒtƒ@ƒCƒ‹                                                *
000410*----------------------------------------------------------------*
000420 FD  “ü—Íƒtƒ@ƒCƒ‹                                                 
000430     LABEL  RECORD    IS              STANDARD                    
000440     BLOCK  CONTAINS  0               RECORDS.                    
000450*                                                                 
000460 01  “ü—Í|ƒŒƒR[ƒh.                                              
000470     COPY   CPBIS165   REPLACING      ==()==  BY  ==“ü—Í|==.     
000480*                                                                 
000490******************************************************************
000500*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000510******************************************************************
000520 WORKING-STORAGE                      SECTION.                    
000530*----------------------------------------------------------------*
000540*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000550*----------------------------------------------------------------*
000560     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS770\CO
      -    "BIS770.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(99) VALUE "select V•¨Œ”Ô†   into :b1  fro
      -     "m IKOTBL010 where ((Œ_–ñ”Ô†=:b2 and •¨Œ”Ô†=:b3) and ‰ð–ñ
      -    "“ú=:b4)".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(159) VALUE "update D921SIJ_TBL  set “®‘•ÛŒ¯
      -    "Q“®‘•t•Û‹æ•ª=:b1,“®‘•ÛŒ¯Q•t•Û“ú=:b2,“®‘•ÛŒ¯Q“®‘•t•ÛŠJ
      -    "Žn”NŒŽ“ú=:b3,“®‘•ÛŒ¯Q“®‘•ÛŒ¯—¿=:b4,“®‘•ÛŒ¯QŽ–ŒÌ—L–³=:b5
      -     ",“®‘•Û".

           02  FILLER PIC X(160) VALUE  "Œ¯QŽ–ŒÌ“ú=:b6,“®‘•ÛŒ¯Q•ÛŒ¯Œp
      -     "‘±=:b7,“®‘•ÛŒ¯Q•ÛŒ¯—¿—¦=:b8,“®‘•ÛŒ¯Q•ÛŒ¯‰¿Ši=:b9,“®‘•Û
      -    "Œ¯Q•Ô–ß•ÛŒ¯—¿=:b10,“®‘•ÛŒ¯Q“®‘•ÛŒ¯ØŒ””Ô†=:b11,“®‘•ÛŒ¯
      -    "Q•t•Û—¦=:".

           02  FILLER PIC X(160) VALUE "b12,“®‘•ÛŒ¯QŒp‘±ƒŠ[ƒXž‹p‘ÎÛ
      -    "Šz=:b13,“®‘•ÛŒ¯QÝ’uêŠ–¼ƒJƒi=:b14,M—p•ÛŒ¯QM—p•ÛŒ¯‰ïŽÐ
      -    "ƒR[ƒh=:b15,M—p•ÛŒ¯Q‹@ŠB—Þ•ª—ÞƒR[ƒh=:b16,M—p•ÛŒ¯Q’Ê’m‘
      -    "”­‘—“ú=:".

           02  FILLER PIC X(160) VALUE "b17,M—p•ÛŒ¯Q•ÛŒ¯—¿=:b18,M—p•Û
      -    "Œ¯Q•„†=:b19,ŒÅ’èŽ‘ŽYÅQ‘O”N“x”[•tæƒR[ƒh=:b20,ŒÅ’èŽ‘ŽYÅ
      -    "Q”[•tæƒR[ƒh=:b21,ŒÅ’èŽ‘ŽYÅQ”NÅŠz=:b22,ŒÅ’èŽ‘ŽYÅQ‘O”N
      -    "“x•]‰¿Šz".

           02  FILLER PIC X(160) VALUE "=:b23,ŒÅ’èŽ‘ŽYÅQ‘O”N“x—˜_•ë‰¿
      -    "=:b24,ŒÅ’èŽ‘ŽYÅQ“–”N“x•]‰¿Šz=:b25,ŒÅ’èŽ‘ŽYÅQ“–”N“x—˜_•ë
      -    "‰¿=:b26,‰ïŽÐ—˜_Qž‹p’âŽ~ƒtƒ‰ƒO=:b27,‰ïŽÐ—˜_Qž‹p’âŽ~“ú=:
      -    "b28,‰ïŽÐ".

           02  FILLER PIC X(160) VALUE "—˜_Q‘OŠú––•ë‰¿=:b29,‰ïŽÐ—˜_Q
      -    "‘OŠú–˜ž‹pŠz—ÝŒv=:b30,‰ïŽÐ—˜_Q‘OŒŽ–˜ž‹pŠz—ÝŒv=:b31,‰ïŽÐ—
      -    "˜_QŒ»Ý•ë‰¿=:b32,‰ïŽÐ—˜_Qœ‹p•ë‰¿=:b33,‰ïŽÐ—˜_Q“–ŒŽ–˜ž
      -    "‹pŠz—ÝŒv".

           02  FILLER PIC X(160) VALUE "=:b34,‰ïŽÐ—˜_Q“–Šúž‹pŠz=:b35,
      -    "ŠÇ—‰ïŒvQ‘OŠú––•ë‰¿=:b36,ŠÇ—‰ïŒvQ‘OŠú–˜ž‹pŠz—ÝŒv=:b37,ŠÇ
      -    "—‰ïŒvQ‘OŒŽ–˜ž‹pŠz—ÝŒv=:b38,ŠÇ—‰ïŒvQŒ»Ý•ë‰¿=:b39,ŠÇ—‰ï
      -    "ŒvQ“–ŒŽ".

           02  FILLER PIC X(160) VALUE "–˜ž‹pŠz—ÝŒv=:b40,ŠÇ—‰ïŒvQ“–Šú
      -    "ž‹pŠz=:b41,Å–±QŠ„‘ž‹p=:b42,Å–±QŠ„‘ž‹p”ï=:b43,Å–±Q
      -    "“Á•Êž‹p—¦•ªŽq=:b44,Å–±Q“Á•Êž‹p—¦•ª•ê=:b45,Å–±Q“Á•Êž‹p
      -    "”ï=:b46,".

           02  FILLER PIC X(160) VALUE "Å–±Q‘OŠú––ŽÀŽ{Šz•ë‰¿=:b47,Å–±
      -    "Q‘OŠúŽÀŽ{Šz—ÝŒv=:b48,Å–±Q‘OŠúŒJ‰z’´‰ßŠz=:b49,Å–±Q‘OŠúž
      -    "‹p•s‘«Šz=:b50,Å–±Q“–Šúž‹pŒÀ“xŠz=:b51,Å–±Q“–Šúž‹pŽÀŽ{Šz
      -    "=:b52,Å".

           02  FILLER PIC X(160) VALUE "–±Q“–Šúž‹pŽÀŽ{Šz—ÝŒv=:b53,Å–±
      -    "Q“–Šúž‹p•s‘«Šz=:b54,Å–±Q“–Šúž‹p’´‰ßŠz=:b55,Å–±Q“–Šúž
      -    "‹p‚Ö‚ÌU‘ÖŠz=:b56,Å–±Q“–Šú––ŽÀŽ{Šz•ë‰¿=:b57,Å–±Q‘OŠú–––@
      -     "’è•ë‰¿=:".

           02  FILLER PIC X(89) VALUE "b58,Å–±Q“–Šú–––@’è•ë‰¿=:b59 whe
      -    "re (ƒL[î•ñQŒ_–ñ”Ô†=:b60 and ƒL[î•ñQ•¨Œ”Ô†=:b61)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148295772.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +61.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 61 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(159) VALUE  "select D921SIJ_TBL.ƒL[î•ñQŒ_
      -    "–ñ”Ô†  ,D921SIJ_TBL.ƒL[î•ñQ•¨Œ”Ô†  ,D921SIJ_TBL.•¨ŒQ
      -    "•¨ŒŽæ“¾‰¿Šz  ,D921SIJ_TBL.‰ïŽÐ—˜_QŒ»Ý•ë‰¿  ,D921SIJ_TBL.
      -     "Å–±Q“–".

           02  FILLER PIC X(160) VALUE "Šú–––@’è•ë‰¿   from D921SIJ_TBL 
      -    "where (D921SIJ_TBL.ƒL[î•ñQŒ_–ñ”Ô†>'0' and D921SIJ_TBL.ƒL
      -     "[î•ñQ•¨Œ”Ô†>'0') order by D921SIJ_TBL.ƒL[î•ñQŒ_–ñ”Ô
      -    "†,D921SI".

           02  FILLER PIC X(35) VALUE "J_TBL.ƒL[î•ñQ•¨Œ”Ô†         
      -    "  ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +227.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +231.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +99.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +310.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +98.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +354.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +361.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +113.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +388.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +148.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +1688.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +813.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +61.
           02     FILLER PIC S9(4) COMP-5 VALUE +61.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +407.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +945.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +422.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +958.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +437.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +979.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000570*                                                                 
000580*--< ƒe[ƒuƒ‹‹¤’Ê•Ï” >                                           
000590 01  ‚v‚r|•¨Œ”Ô†                   PIC  9(04).                 
000600 01  ‚v‚r|‰ð–ñ“ú                     PIC  X(07).                 
000610 01  ‚v‚r|¢‹I‚P                     PIC  X(02).                 
000620*                                                                 
000630*--< ƒL[ƒGƒŠƒA >                                                 
000640 01  ‚j‚d‚x|ƒGƒŠƒA.                                              
000650     03  ‚m‚d‚vƒL[.                                              
000660         05  ‚v‚r|‚m|Œ_–ñ”Ô†       PIC  X(10).                 
000670         05  ‚v‚r|‚m|V•¨Œ”Ô†     PIC S9(04) COMP-3.          
000680     03  ‚n‚k‚cƒL[.                                              
000690         05  ‚v‚r|‚n|Œ_–ñ”Ô†       PIC  X(10).                 
000700         05  ‚v‚r|‚n|V•¨Œ”Ô†     PIC S9(04) COMP-3.          
000710*                                                                 
000720*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000730     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000740*	                                                            
000750*--< V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹ >                                     
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000760     
      *    EXEC  SQL  INCLUDE  IKOTBL010.CBL         END-EXEC.
000770*                                                                 
000780*--< Ž‘ŽYî•ñƒe[ƒuƒ‹ >                                           
000010************************************************
000020* V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹(IKOTBL010)
000030************************************************
000040 01  ‚h‚j‚n‚O‚P‚O|Œ_–ñ”Ô† PIC  X(010).
000050 01  ‚h‚j‚n‚O‚P‚O|•¨Œ”Ô† PIC S9(004) COMP-3.
000060 01  ‚h‚j‚n‚O‚P‚O|‰ð–ñ“ú PIC  X(007).
000070 01  ‚h‚j‚n‚O‚P‚O|¼—ï‰ð–ñ“ú PIC  X(008).
000080 01  ‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô† PIC S9(004) COMP-3.
000090 01  ‚h‚j‚n‚O‚P‚O|‚h‚m‹æ•ª PIC  X(001).
000790     
      *    EXEC  SQL  INCLUDE  D921SIJ.CBL           END-EXEC.
000800*                                                                 
000810*--< ‚n‚q‚`‚b‚k‚d ‚r‚p‚kŽÀsî•ñ (SQLCA) >                        
      *****************************************************************
      *   Ž‘ŽYî•ñƒe[ƒuƒ‹(D921SIJ_TBL)
      *****************************************************************
       01  Ž‘ŽYî•ñƒe[ƒuƒ‹.
           03  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô†
                                     PIC  X(010).
           03  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñŽí—Þ
                                     PIC  X(003).
           03  ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô†
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ÄƒŠ[ƒX‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŽåŒ_–ñ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|‹¦’²‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñŠJŽn“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñI—¹“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŠúŠÔ
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ˆø“n”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|¬–ñ”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûŽæÁ”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|’S“–•”‰ÛƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒÚ‹q‹æ•ª
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|ÂŒ |Š¨’èˆ—ƒR[ƒh
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|Žæ“¾”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|•¨Œ|ˆÚ“®”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|•¨Œ|ó‘Ôƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|ˆÚ“®——R
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|•¨Œ|•¨Œˆ•ª˜A”Ô
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|Žæ“¾‰¿Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|ŽæÁŽæ“¾‰¿Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|Žc‰¿‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|Œ_–ñŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|‘¼ŽÐw“üŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|‘¼ŽÐŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|’èŠz|ŒŽŠzž‹p”ï
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|’èŠz|ŒŽŠzž‹p”ï’[”
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|•¨ŒƒŠ[ƒX—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|”—Ê  PIC S9(005) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|Ž‘ŽYŽí—Þ
                                     PIC  X(007).
           03  ‚c‚X‚Q‚P|•¨Œ|‘Ï—p”N”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽí—Þ
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|•¨Œ|Ž©‘¼ŽÐ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|ƒ\ƒtƒg‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|­ŠzŽ‘ŽY‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|’†ŒÃŽ‘ŽY‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|‰ïŽÐž‹p‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|ŒÅ’èŽ‘ŽYÅ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|ŠCŠOÝ’uêŠ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œ|‹ŒŒ_–ñ”Ô†
                                     PIC  X(010).
           03  ‚c‚X‚Q‚P|•¨Œ|‹Œ•¨Œ”Ô†
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|•ªŠ„”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|•¨Œ|•ªŠ„Œ³•¨Œ”Ô†
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œ|•¨Œ–¼Ì
                                     PIC  X(060).
           03  ‚c‚X‚Q‚P|•¨Œ|‚eŒ^–¼
                                     PIC  X(025).
           03  ‚c‚X‚Q‚P|•¨Œ|ƒfƒB[ƒ‰Žæˆøæ
                                     PIC  X(009).
           03  ‚c‚X‚Q‚P|•¨Œ|ƒfƒB[ƒ‰ƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ——R
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñŒŽ”
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñŽæÁƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|ŽæÁ‰ð–ñ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|–ž—¹ˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|–ž—¹ŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|•¨Œˆ•ª‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|\¿ó‘Ôƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|•¨Œˆ•ª\¿˜A”Ô
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|ˆ•ªæŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|ˆ•ªæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”p”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pŒŽ”
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”p——R
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pŽæÁ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|³Œp|³Œpƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|³Œp|³Œp“ñŽŸÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|³Œp|³ŒpŒ³Œ_–ñ”Ô†
                                     PIC  X(010).
           03  ‚c‚X‚Q‚P|³Œp|³ŒpŒ³•¨Œ”Ô†
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|³Œp|³Œpˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|³Œp|³Œp“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|³Œp|³ŒpŽž•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|³Œp|³ŒpŽžž‹p—ÝŒvŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|³Œp|³ŒpŽæÁ”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú”
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ—L–³
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘±
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô†
                                     PIC  X(011).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi
                                     PIC  X(080).
           03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|”…ž•ÛŒ¯‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯‰ïŽÐ‹æ•ª
                                     PIC  X(004).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”Ô†
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|•„†
                                     PIC  X(005).
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|Œ_–ñ‘Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|Tœ‚·‚×‚«‹àŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|ˆÈ~‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|Žc‘¶—¦
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh
                                     PIC  X(011).
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|ŒÅ’èŽ‘ŽYÅ—¦
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘ÎÛŽæ“¾‰¿Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|Žc‘¶“ž’Bƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|Žc‘¶“ž’B”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|\ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽó‘Ôƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽŒŸŽûˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽŒ_–ñŠJŽn“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽÄƒŠ[ƒX‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ‰ð–ñ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ‰ð–ñ”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ”„”p“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ”„”p”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ”„”p——R
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|‘OŒŽ|ŽæÁ‰ð–ñ——R
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŠú‰ð–ñ”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘k‹yˆ—‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘k‹yˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽŒo‰ßŒŽ”
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‹¤’Ê|Šú––”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‹¤’Ê|ŠúŽñ”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‹¤’Ê|ŒŽŽŸ”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|‹¤’Ê|’Ç‰ÁŒ¸­ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‹¤’Ê|Žæ“¾”N“x
                                     PIC  X(004).
           03  ‚c‚X‚Q‚P|‹¤’Ê|ž‹pŒŽ”
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‹¤’Ê|“–ŒŽ–˜ž‹pŒo‰ßŒŽ”
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‹¤’Ê|“–Šúž‹pŒŽ”
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‹¤’Ê|ˆ—‹æ•ª
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‹¤’Ê|“–ŒŽž‹p‘ÎÛƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‹¤’Ê|’è—¦ž‹p’²®‰Â”\ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹pŽc‰¿Ý’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽž‹pŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽ–˜ž‹pŠz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽž‹pŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽž‹pŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽ–˜ž‹pŠz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽž‹pŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–Šúž‹pŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|ž‹p—¦
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p
                                     PIC  X(002).
           03  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p—¦
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê
                                     PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|\Žc‘¶“ž’Bƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚X‚Q‚P|Å–±|Å–±\Žc‘¶“ž’B”NŒŽ
                                     PIC  X(006).
           03  ‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“o˜^”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“o˜^ŽžŠÔ
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“o˜^’S“–ŽÒ
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|XV”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|XVŽžŠÔ
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|XVŽÒ
                                     PIC  X(008).
           03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
000820     
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
000830*                                                                 
000840*                                                                 
000850     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000860*                                                                 
000870*----------------------------------------------------------------*
000880*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000890*----------------------------------------------------------------*
000900 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000910*                                                                 
000920*--< ƒGƒ‰[”»’è—p >                                               
000930     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000940*                                                                 
000950*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
000960     03  ‚v|ó‘ÔƒGƒŠƒA.                                          
000970         05  ‚v|ó‘Ô                 PIC  X(02).                 
000980*                                                                 
000990*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001000     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
001010         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
001020         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
001030*                                                                 
001040*--< Œ”ƒGƒŠƒA >                                                 
001050     03  Œ”ƒGƒŠƒA.                                              
001060         05  ‚v|“ü—Í|Œ”‚P         PIC  9(09).                 
001070         05  ‚v|“ü—Í|Œ”‚Q         PIC  9(09).                 
001080         05  ‚v|XV|Œ”           PIC  9(09).                 
001090*                                                                 
001100*--< ‹¤’Êî•ñ >                                                   
001110 01  ‚v|‹¤’Êî•ñ.                                                
001120     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
001130         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
001140         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
001150     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
001160     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
001170*                                                                 
001180*----------------------------------------------------------------*
001190*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001200*----------------------------------------------------------------*
001210 01  CALL-AREA.                                                   
001220*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001230     03  CLOCO001                     PIC X(08) VALUE "CLOCO001". 
001240     03  COBCO001                     PIC X(08) VALUE "COBCO001". 
001250*                                                                 
001260*----------------------------------------------------------------*
001270*    ‚b‚n‚o‚x—Ìˆæ                                                *
001280*----------------------------------------------------------------*
001290*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001300 01  IF-CHOCO001.                                                 
001310     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001320*                                                                 
001330*----------------------------------------------------------------*
001340*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001350*----------------------------------------------------------------*
001360 01  PARA-AREA.                                                   
001370     COPY CPBCO001.                                               
001380******************************************************************
001390*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001400******************************************************************
001410 CONSTANT                             SECTION.                    
001420 01  ’è”—Ìˆæ.                                                    
001430     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC X(08) VALUE "COBIS770". 
001440     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC X(80)                   
001450                                    VALUE  "Ž‘ŽYî•ñˆÚs<SUMMIT>".
001460     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001470     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001480     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001490     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001500******************************************************************
001510*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001520******************************************************************
001530 PROCEDURE                            DIVISION.                   
001540*                                                                 
001550     PERFORM  ‰Šúˆ—.                                           
001560*                                                                 
001570     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001580*                                                                 
001590     PERFORM  I—¹ˆ—.                                           
001600*                                                                 
001610     STOP     RUN.                                                
001620*                                                                 
001630******************************************************************
001640*    ‰Šúˆ—                                        <1.0>       *
001650******************************************************************
001660 ‰Šúˆ—                             SECTION.                    
001670 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001680*----------------------------------------------------------------*
001690*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                          <1.1>       *
001700*----------------------------------------------------------------*
001710     INITIALIZE                       IF-CHOCO001.                
001720     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001730     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001740     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001750     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001760     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001770     CALL  CLOCO001                USING  IF-CHOCO001.            
001780*                                                                 
001790*----------------------------------------------------------------*
001800*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                            <1.2>       *
001810*----------------------------------------------------------------*
001820     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001830     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001840*                                                                 
001850*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001860     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001870*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001880     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001890*                                                                 
001900*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
001910     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001920*                                                                 
001930*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
001940     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
001950*                                                                 
001960*--< ƒtƒ@ƒCƒ‹“Çžˆ— >                                           
001970     PERFORM  ƒtƒ@ƒCƒ‹“Çžˆ—.                                   
001980*                                                                 
001990*--< V•¨Œ”Ô†Ì”Ô >                                             
002000     PERFORM  V•¨Œ”Ô†Ì”Ô.                                     
002010*                                                                 
002020*--< ƒJ[ƒ\ƒ‹éŒ¾ >                                               
002030     PERFORM  ƒJ[ƒ\ƒ‹éŒ¾.                                       
002040*                                                                 
002050*--< ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž>                                        
002060     PERFORM  ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                               
002070*                                                                 
002080 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002090*                                                                 
002100******************************************************************
002110*    ‚n‚q‚`‚b‚k‚dÚ‘±                                <1.3>       *
002120******************************************************************
002130 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002140 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002150*                                                                 
002160*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002170     CALL  COBCO001                USING  PARA-AREA.              
002180*                                                                 
002190     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002200     MOVE  PARA-USERNAME              TO  USERNAME.               
002210     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002220*                                                                 
002230*----------------------------------------------------------------*
002240*    ŠJŽnÚ‘±                                                    *
002250*----------------------------------------------------------------*
002260     IF    DB-STRING  =  SPACE                                    
002270        
      *       EXEC SQL                                                  
002280*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002290*       END-EXEC 
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
002300     ELSE                                                         
002310        
      *       EXEC SQL                                                  
002320*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002330*            USING  :DB-STRING                                    
002340*       END-EXEC 
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
002350     END-IF.                                                      
002360*                                                                 
002370*----------------------------------------------------------------*
002380*    Ú‘±Šm”F                                                    *
002390*----------------------------------------------------------------*
002400     EVALUATE  SQLCODE                                            
002410        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002420           CONTINUE                                               
002430        WHEN   OTHER                                              
002440*--<       Ú‘±ƒGƒ‰[ >                                           
002450           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002460           PERFORM  ƒGƒ‰[ˆ—                                    
002470     END-EVALUATE.                                                
002480*                                                                 
002490 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002500     EXIT.                                                        
002510******************************************************************
002520*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                <1.4>       *
002530******************************************************************
002540*                                                                 
002550 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
002560 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
002570*                                                                 
002580     OPEN  INPUT   “ü—Íƒtƒ@ƒCƒ‹.                                  
002590*                                                                 
002600*----------------------------------------------------------------*
002610*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
002620*----------------------------------------------------------------*
002630     EVALUATE  ‚v|ó‘Ô                                           
002640        WHEN  ZERO                                                
002650           CONTINUE                                               
002660        WHEN  OTHER                                               
002670*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
002680           MOVE     -20                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
002690           PERFORM  ƒGƒ‰[ˆ—                                    
002700     END-EVALUATE.                                                
002710 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
002720     EXIT.                                                        
002730*                                                                 
002740******************************************************************
002750*    ƒtƒ@ƒCƒ‹“Çžˆ—                                <1.5>       *
002760******************************************************************
002770 ƒtƒ@ƒCƒ‹“Çžˆ—                 SECTION.                        
002780 ƒtƒ@ƒCƒ‹“Çžˆ—|‚r‚s‚`‚q‚s.                                    
002790*                                                                 
002800     READ  “ü—Íƒtƒ@ƒCƒ‹                                           
002810        AT END                                                    
002820           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
002830           MOVE  HIGH-VALUE           TO  ‚v‚r|‚m|Œ_–ñ”Ô†      
002840           GO  TO  ƒtƒ@ƒCƒ‹“Çžˆ—|‚d‚w‚h‚s                     
002850     END-READ.                                                    
002860*                                                                 
002870*--< ƒtƒ@ƒCƒ‹“Çžó‘Ô”»’è >                                       
002880     EVALUATE  ‚v|ó‘Ô                                           
002890        WHEN  ZERO                                                
002900*--<       ƒtƒ@ƒCƒ‹ƒ}ƒbƒ`ƒ“ƒOƒL[‚ÌƒZƒbƒg >                       
002910           MOVE  “ü—Í|Œ_–ñ‚m‚n       TO  ‚v‚r|‚m|Œ_–ñ”Ô†      
002920           MOVE  “ü—Í|•¨Œ‚m‚n       TO  ‚v‚r|•¨Œ”Ô†          
002930           MOVE  “ü—Í|‚j‚d‚x|‰ð–ñ“ú TO  ‚v‚r|‰ð–ñ“ú            
002940*--<       ƒtƒ@ƒCƒ‹“ü—ÍŒ”‚Ì‰ÁŽZ >                               
002950           COMPUTE   ‚v|“ü—Í|Œ”‚P =  ‚v|“ü—Í|Œ”‚P + 1     
002960        WHEN  OTHER                                               
002970*--<       ƒtƒ@ƒCƒ‹“ÇžƒGƒ‰[ >                                   
002980           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002990           PERFORM  ƒGƒ‰[ˆ—                                    
003000     END-EVALUATE.                                                
003010*                                                                 
003020 ƒtƒ@ƒCƒ‹“Çžˆ—|‚d‚w‚h‚s.                                      
003030     EXIT.                                                        
003040******************************************************************
003050*   V•¨Œ”Ô†Ì”Ô                                   <1.6>       *
003060******************************************************************
003070 V•¨Œ”Ô†Ì”Ô                       SECTION.                    
003080 V•¨Œ”Ô†Ì”Ô|‚r‚s‚`‚q‚s.                                      
003090*                                                                 
003100     
      *    EXEC  SQL                                                    
003110*       SELECT  V•¨Œ”Ô†                                        
003120*         INTO :‚v‚r|‚m|V•¨Œ”Ô†                              
003130*         FROM  IKOTBL010                                         
003140*        WHERE  Œ_–ñ”Ô† = :‚v‚r|‚m|Œ_–ñ”Ô†                    
003150*          AND  •¨Œ”Ô† = :‚v‚r|•¨Œ”Ô†                        
003160*          AND  ‰ð–ñ“ú = :‚v‚r|‰ð–ñ“ú                        
003170*    END-EXEC.
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
               ‚v‚r|‚m|V•¨Œ”Ô† IN
               ‚m‚d‚vƒL[ IN
               ‚j‚d‚x|ƒGƒŠƒA
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|‚m|Œ_–ñ”Ô† IN
               ‚m‚d‚vƒL[ IN
               ‚j‚d‚x|ƒGƒŠƒA
               SQL-SQHSTV(2)
           MOVE 10 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚v‚r|•¨Œ”Ô†
               SQL-SQHSTV(3)
           MOVE 4 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|‰ð–ñ“ú
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
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
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    V•¨Œ”Ô†Ì”Ô“ÇžŠm”F                                      *
003210*----------------------------------------------------------------*
003220     EVALUATE  SQLCODE                                            
003230        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003240*--<       V•¨Œ”Ô†Ì”ÔŒ”‚Ì‰ÁŽZ >                             
003250           COMPUTE   ‚v|“ü—Í|Œ”‚Q =  ‚v|“ü—Í|Œ”‚Q + 1     
003260        WHEN  OTHER                                               
003270*--<       V•¨Œ”Ô†Ì”ÔƒGƒ‰[ >                                 
003280           MOVE      -40              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003290           PERFORM   ƒGƒ‰[ˆ—                                   
003300     END-EVALUATE.                                                
003310*                                                                 
003320 V•¨Œ”Ô†Ì”Ô|‚d‚w‚h‚s.                                        
003330     EXIT.                                                        
003340*                                                                 
003350******************************************************************
003360*    ƒJ[ƒ\ƒ‹éŒ¾                                    <1.7>       *
003370******************************************************************
003380 ƒJ[ƒ\ƒ‹éŒ¾                         SECTION.                    
003390 ƒJ[ƒ\ƒ‹éŒ¾|‚r‚s‚`‚q‚s.                                        
003400*                                                                 
003410*----------------------------------------------------------------*
003420*    ƒJ[ƒ\ƒ‹éŒ¾                                                 
003430*----------------------------------------------------------------*
003440     
      *    EXEC  SQL                                                    
003450*       DECLARE CUR1  CURSOR FOR                                  
003460*          SELECT  D921SIJ_TBL.ƒL[î•ñQŒ_–ñ”Ô†                 
003470*                 ,D921SIJ_TBL.ƒL[î•ñQ•¨Œ”Ô†                 
003480*                 ,D921SIJ_TBL.•¨ŒQ•¨ŒŽæ“¾‰¿Šz                 
003490*                 ,D921SIJ_TBL.‰ïŽÐ—˜_QŒ»Ý•ë‰¿                 
003500* 	        ,D921SIJ_TBL.Å–±Q“–Šú–––@’è•ë‰¿               
003510*            FROM  D921SIJ_TBL                                    
003520*           WHERE  D921SIJ_TBL.ƒL[î•ñQŒ_–ñ”Ô† > '0'           
003530*             AND  D921SIJ_TBL.ƒL[î•ñQ•¨Œ”Ô† > '0'           
003540*        ORDER BY  D921SIJ_TBL.ƒL[î•ñQŒ_–ñ”Ô†                 
003550*                 ,D921SIJ_TBL.ƒL[î•ñQ•¨Œ”Ô†                 
003560*    END-EXEC.
003570*                                                                 
003580*----------------------------------------------------------------*
003590*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003600*----------------------------------------------------------------*
003610     
      *    EXEC  SQL                                                    
003620*       OPEN  CUR1                                                
003630*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 98 TO SQL-OFFSET
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
003640*                                                                 
003650*----------------------------------------------------------------*
003660*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003670*----------------------------------------------------------------*
003680     EVALUATE  SQLCODE                                            
003690        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003700*--<       ³í >                                                 
003710           CONTINUE                                               
003720        WHEN  OTHER                                               
003730*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003740           MOVE -50                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003750           PERFORM  ƒGƒ‰[ˆ—                                    
003760     END-EVALUATE.                                                
003770*                                                                 
003780 ƒJ[ƒ\ƒ‹éŒ¾|‚d‚w‚h‚s.                                          
003790     EXIT.                                                        
003800*                                                                 
003810******************************************************************
003820*    ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                        <1.8>           *
003830******************************************************************
003840 ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                        
003850 ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                                
003860*                                                                 
003870*--< ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                       
003880     
      *    EXEC SQL                                                     
003890*        FETCH  CUR1                                              
003900*         INTO  :‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô†                     
003910*              ,:‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô†                     
003920*              ,:‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz                     
003930*              ,:‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿                     
003940* 	     ,:‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿                   
003950*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 113 TO SQL-OFFSET
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
               ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô† IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô† IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(2)
           MOVE 3 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
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
003960*----------------------------------------------------------------*
003970*    ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                                  *
003980*----------------------------------------------------------------*
003990     EVALUATE   SQLCODE                                           
004000        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004010*--<       ³í >                                                 
004020           CONTINUE                                               
004030        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
004040*--<       “ÇžI—¹ >                                             
004050           PERFORM  ƒtƒ@ƒCƒ‹“Çžˆ—                              
004060        WHEN   OTHER                                              
004070*--<       “ÇžƒGƒ‰[ >                                           
004080           MOVE     -60               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004090           PERFORM  ƒGƒ‰[ˆ—                                    
004100           PERFORM  ƒtƒ@ƒCƒ‹“Çžˆ—                              
004110     END-EVALUATE.                                                
004120*                                                                 
004130 ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                                  
004140     EXIT.                                                        
004150*                                                                 
004160******************************************************************
004170*    Žåˆ—                                          <2.0>       *
004180******************************************************************
004190 Žåˆ—                               SECTION.                    
004200 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004210*                                                                 
004220     EVALUATE  TRUE                                               
004230        WHEN  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô† < ‚v‚r|‚m|Œ_–ñ”Ô†   
004240	         PERFORM  ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                      
004250        WHEN  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô† > ‚v‚r|‚m|Œ_–ñ”Ô†   
004260*--<       Ž‘ŽY–¾×‚Ì‚Ý‚Ìê‡>                                    
004270           IF  ‚v‚r|‚m|Œ_–ñ”Ô† NOT = ‚v‚r|‚n|Œ_–ñ”Ô†        
004280           DISPLAY  "Ž‘ŽYî•ñ‚È‚µi‘S‚ÄŽ‘ŽY–¾×‚Ì€–ÚjF" ,      
004290	                  "Œ_–ñ”Ô†" , ‚v‚r|‚m|Œ_–ñ”Ô†,            
004300                    "•¨Œ”Ô†" , ‚v‚r|•¨Œ”Ô†,                
004310	                  "‰ð–ñ“ú" , ‚v‚r|‰ð–ñ“ú                     
004320           END-IF                                                 
004330           PERFORM  ƒtƒ@ƒCƒ‹“Çžˆ—                              
004340        WHEN  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô† = ‚v‚r|‚m|Œ_–ñ”Ô†   
004350           PERFORM  Ž‘ŽYî•ñ‚Æƒ}ƒbƒ`ƒ“ƒO                          
004370           PERFORM  ƒtƒ@ƒCƒ‹“Çžˆ—                              
004380           PERFORM  V•¨Œ”Ô†Ì”Ô                                
004400	         PERFORM  ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                          
004410     END-EVALUATE.                                                
004420*                                                                 
004430 Žåˆ—|‚d‚w‚h‚s.                                                
004440     EXIT.                                                        
004450*                                                                 
004460******************************************************************
004470*    Ž‘ŽYî•ñ‚Æƒ}ƒbƒ`ƒ“ƒO                                        *
004480******************************************************************
004490 Ž‘ŽYî•ñ‚Æƒ}ƒbƒ`ƒ“ƒO                 SECTION.                    
004500 Ž‘ŽYî•ñ‚Æƒ}ƒbƒ`ƒ“ƒO|‚r‚s‚`‚q‚s.                                
004510*                                                                 
004520 	   EVALUATE  TRUE                                           
004530        WHEN  ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô† < ‚v‚r|‚m|V•¨Œ”Ô† 
004540           PERFORM  ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                          
004550        WHEN  ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô† > ‚v‚r|‚m|V•¨Œ”Ô† 
004560	         PERFORM  ƒtƒ@ƒCƒ‹“Çžˆ—                          
004570        WHEN  ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô† = ‚v‚r|‚m|V•¨Œ”Ô† 
004580           PERFORM  Ž‘ŽYî•ñ‚ÌƒŒƒR[ƒh‚ð“Ç‚Ýž‚Þ                  
004590           PERFORM  Ž‘ŽYî•ñŠÖ˜A€–ÚXV                          
004600     END-EVALUATE.                                                
004610*                                                                 
004620 Ž‘ŽYî•ñ‚Æƒ}ƒbƒ`ƒ“ƒO|‚d‚w‚h‚s.                                  
004630     EXIT.                                                        
004640******************************************************************
004650*    Ž‘ŽYî•ñ‚ÌƒŒƒR[ƒh‚ð“Ç‚Ýž‚Þ                                *
004660******************************************************************
004670 Ž‘ŽYî•ñ‚ÌƒŒƒR[ƒh‚ð“Ç‚Ýž‚Þ         SECTION.                    
004680 Ž‘ŽYî•ñ‚ÌƒŒƒR[ƒh‚ð“Ç‚Ýž‚Þ|‚r‚s‚`‚q‚s.                        
004690*                                                                 
004700*--< NO.91>                                                       
004710     MOVE  “ü—Í|•t•Û‹æ•ª|“®ŽY‘‡   TO                          
004720                               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª.  
004730*                                                                 
004740*--< NO.92>                                                       
004750     STRING  ‚v|¢‹I , “ü—Í|•t•Û“ú|”NŒŽ“ú                      
004760        DELIMITED  BY  SIZE INTO  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú.     
004770*                                                                 
004780*--< NO.94>                                                       
004790     PERFORM  ‚m‚n‚X‚SˆÚsˆ—.                                   
004800*                                                                 
004810*--< NO.95>                                                       
004820     MOVE  “ü—Í|“®‘•ÛŒ¯—¿           TO                          
004830                                   ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿.
004840*                                                                 
004850*--< NO.96>                                                       
004860     MOVE  “ü—Í|Ž–ŒÌ—L–³‹æ•ª         TO                          
004870                                       ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú.
004880*                                                                 
004890*--< NO.97>                                                       
004900     STRING  ‚v|¢‹I , “ü—Í|Ž–ŒÌ“ú|”NŒŽ“ú                      
004910        DELIMITED  BY  SIZE  INTO  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú.    
004920*                                                                 
004930*--< NO.98>                                                       
004940     MOVE  “ü—Í|•ÛŒ¯V‹KŒp‘±‹æ•ª     TO                          
004950                                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘±.
004960*                                                                 
004970*--< NO.99>                                                       
004980     MOVE  “ü—Í|“®‘•ÛŒ¯—¿—¦         TO                          
004990                                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦.
005000*                                                                 
005010*--< NO.100>                                                      
005020     MOVE  “ü—Í|“®‘•ÛŒ¯‰¿Ši         TO                          
005030                                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši.
005040*                                                                 
005050*--< NO.101>                                                      
005060     MOVE  “ü—Í|“®‘•¥–ß‚µ•ÛŒ¯—¿     TO                          
005070                                   ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿.
005080*                                                                 
005090*--< NO.102>                                                      
005100     MOVE  “ü—Í|“®‘•ÛŒ¯ØŒ””Ô†     TO                          
005110                             ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô†.
005120*                                                                 
005130*--< NO.103>                                                      
005140     MOVE  “ü—Í|“®‘•ÛŒ¯—¿—¦         TO                          
005150                                       ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦.
005160*                                                                 
005170*--< NO.104>                                                      
005180     MOVE  “ü—Í|Žc‰¿î•ñ|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz      TO           
005190                         ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz.
005200*                                                                 
005210*--< NO.105>                                                      
005220     MOVE  “ü—Í|Ý’uêŠ–¼ƒJƒi                      TO           
005230                               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi.
005240*                                                                 
005250*--< NO.109>                                                      
005260     MOVE  “ü—Í|•ÛŒ¯î•ñ|•ÛŒ¯‰ïŽÐƒR[ƒh            TO           
005270                           ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh.
005280*                                                                 
005290*--< NO.110>                                                      
005300     MOVE  “ü—Í|M—p•ÛŒ¯ƒR[ƒh|‹@ŠB‹æ•ª            TO           
005310                             ‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh.
005320*                                                                 
005330*--< NO.111>                                                      
005340     STRING  ‚v|¢‹I , “ü—Í|’Ê’m‘‘—•t“ú|”NŒŽ“ú                
005350        DELIMITED  BY  SIZE  INTO                                 
005360                               ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú.  
005370*                                                                 
005380*--< NO.113>                                                      
005390     MOVE  “ü—Í|M—p•ÛŒ¯—¿           TO                          
005400                                       ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿.
005410*                                                                 
005420*--< NO.114>                                                      
005430     MOVE  “ü—Í|•„†ˆê˜A”Ô†         TO ‚c‚X‚Q‚P|M—p•ÛŒ¯|•„†.
005440*                                                                 
005450*--< NO.119>                                                      
005460     MOVE  “ü—Í|”[•tæƒR[ƒh         TO                          
005470                         ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh.
005480*                                                                 
005490*--< NO.120>                                                      
005500     MOVE  “ü—Í|”[•tæƒR[ƒh         TO                          
005510                               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh.
005520*                                                                 
005530*--< NO.123>                                                      
005540     MOVE  “ü—Í|”NÅŠz               TO                          
005550                                     ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz.
005560*                                                                 
005570     MOVE  “ü—Í|‘O”N“x•]‰¿Šz         TO                          
005580                               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz.
005590*                                                                 
005600*--< NO.125>                                                      
005610     MOVE  “ü—Í|‘O”N“x—˜_•ë‰¿       TO                          
005620                             ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿.
005630*                                                                 
005640*--< NO.126>                                                      
005650     MOVE  “ü—Í|“–”N“x•]‰¿Šz         TO                          
005660                               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz.
005670*                                                                 
005680*--< NO.127>                                                      
005690     MOVE  “ü—Í|“–”N“x—˜_•ë‰¿       TO                          
005700                             ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿.
005710*                                                                 
005720*--< NO.156>                                                      
005730     PERFORM  ‚m‚n‚P‚T‚UˆÚsˆ—.                                 
005740*                                                                 
005750*--< NO.157>                                                      
005760     PERFORM  ‚m‚n‚P‚T‚VˆÚsˆ—.                                 
005770*                                                                 
005780*--< NO.158>                                                      
005790     MOVE  “ü—Í|‰ïŽÐ‘OŠú––•ë‰¿       TO                          
005800                                   ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿.
005810*                                                                 
005820*--< NO.159>                                                      
005830     COMPUTE  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv =              
005840              ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|‰ïŽÐ‘OŠú––•ë‰¿.
005850*                                                                 
005860*--< NO.162>                                                      
005870     COMPUTE  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv =              
005880                ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|‰ïŽÐŒ»Ý•ë‰¿.
005890*                                                                 
005900*--< NO.163>                                                      
005910     MOVE  “ü—Í|‰ïŽÐŒ»Ý•ë‰¿         TO                          
005920                                     ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿.
005930*                                                                 
005940*--< NO.164>                                                      
005950     PERFORM  ‚m‚n‚P‚U‚SˆÚsˆ—.                                 
005960*                                                                 
005970*--< NO.165>                                                      
005980     COMPUTE  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽ–˜ž‹pŠz—ÝŒv =              
005990                ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|‰ïŽÐŒ»Ý•ë‰¿.
006000*                                                                 
006010*--< NO.167>                                                      
006020     MOVE  “ü—Í|‰ïŽÐ“–Šúž‹p‚       TO                          
006030                                   ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz.
006040*                                                                 
006050*--< NO.168>                                                      
006060     MOVE  “ü—Í|‰ïŽÐ—˜_‘OŠú––•ë‰¿   TO                          
006070                                   ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿.
006080*                                                                 
006090*--< NO.169>                                                      
006100     COMPUTE  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv =              
006110          ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|‰ïŽÐ—˜_‘OŠú––•ë‰¿.
006120*                                                                 
006130*--< NO.171>                                                      
006140     COMPUTE  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽ–˜ž‹pŠz—ÝŒv =              
006150          ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|‰ïŽÐ—˜_“–Šú––•ë‰¿.
006160*                                                                 
006170*--< NO.172>                                                      
006180     MOVE  “ü—Í|‰ïŽÐ—˜_“–Šú––•ë‰¿   TO                          
006190                                     ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿.
006200*                                                                 
006210*--< NO.173>                                                      
006220     COMPUTE  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv =              
006230          ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|‰ïŽÐ—˜_“–Šú––•ë‰¿.
006240*                                                                 
006250*--< NO.175>                                                      
006260     COMPUTE  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–Šúž‹pŠz =                    
006270              “ü—Í|‰ïŽÐ—˜_‘OŠú––•ë‰¿ - “ü—Í|‰ïŽÐ—˜_“–Šú––•ë‰¿.
006280*                                                                 
006290*--< NO.177>                                                      
006300     MOVE  “ü—Í|Å–@Š„‘‹æ•ª         TO ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p.
006310*                                                                 
006320*--< NO.179>                                                      
006330     MOVE  “ü—Í|Å–@Š„‘ž‹p”ï       TO                          
006340                                       ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï.
006350*                                                                 
006360*--< NO.180>                                                      
006370     MOVE  “ü—Í|Å–@“Á•Êž‹p—¦|•ªŽq TO                          
006380                                   ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq.
006390*                                                                 
006400*--< NO.181>                                                      
006410     MOVE  “ü—Í|Å–@“Á•Êž‹p—¦|•ª•ê TO                          
006420                                   ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê.
006430*                                                                 
006440*--< NO.182>                                                      
006450     MOVE  “ü—Í|Å–@“Á•Êž‹p”ï       TO                          
006460                                       ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï.
006470*                                                                 
006480*--< NO.183>                                                      
006490     MOVE  “ü—Í|Å–@‘OŠú––•ë‰¿–@’è   TO                          
006500                                 ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿.
006510*                                                                 
006520*--< NO.184>                                                      
006530     COMPUTE  ‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv =                    
006540          ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz - “ü—Í|Å–@‘OŠú––•ë‰¿–@’è.
006550*                                                                 
006560*--< NO.185>                                                      
006570     MOVE  “ü—Í|Å–@ŒJ‰z’´‰ßŠz       TO                          
006580                                   ‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz.
006590*                                                                 
006600*--< NO.186>                                                      
006610     PERFORM  ‚m‚n‚P‚W‚UˆÚsˆ—.                                 
006620*                                                                 
006630*--< NO.187>                                                      
006640     MOVE  “ü—Í|Å–@ž‹pŒÀ“xŠz       TO                          
006650                                   ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz.
006660*                                                                 
006670*--< NO.188>                                                      
006680     COMPUTE  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz =                    
006690                  “ü—Í|Å–@‘OŠú––•ë‰¿–@’è - “ü—Í|Å–@“–Šú––•ë‰¿.
006700*                                                                 
006710*--< NO.189>                                                      
006720     COMPUTE  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv =                
006730                  “ü—Í|Å–@‘OŠú––•ë‰¿–@’è - “ü—Í|Å–@“–Šú––•ë‰¿.
006740*                                                                 
006750*--< NO.190>                                                      
006760     PERFORM  ‚m‚n‚P‚X‚OˆÚsˆ—.                                 
006770*                                                                 
006780*--< NO.191>                                                      
006790     MOVE  “ü—Í|Å–@ŒJ‰z’´‰ßŠz       TO                          
006800                                   ‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz.
006810*                                                                 
006820*--< NO.192>                                                      
006830     PERFORM  ‚m‚n‚P‚X‚QˆÚsˆ—.                                 
006840*                                                                 
006850*--< NO.193>                                                      
006860     MOVE  “ü—Í|Å–@“–Šú––•ë‰¿       TO                          
006870                                 ‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿.
006880*                                                                 
006890*--< NO.196>                                                      
006900     MOVE  “ü—Í|Å–@‘OŠú––•ë‰¿–@’è   TO                          
006910                                   ‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿.
006920*                                                                 
006930*--< NO.197>                                                      
006940     MOVE  “ü—Í|Å–@“–Šú––•ë‰¿       TO                          
006950                                   ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿.
006960*                                                                 
006970 Ž‘ŽYî•ñ‚ÌƒŒƒR[ƒh‚ð“Ç‚Ýž‚Þ|‚d‚w‚h‚s.                          
006980     EXIT.                                                        
006990*                                                                 
007000******************************************************************
007010*    ‚m‚nD‚X‚SˆÚsˆ—                                          *
007020******************************************************************
007030 ‚m‚n‚X‚SˆÚsˆ—                     SECTION.                    
007040 ‚m‚n‚X‚SˆÚsˆ—|‚r‚s‚`‚q‚s.                                    
007050     IF  “ü—Í|•t•Û“ú|¢‹I = "0"                                 
007060         MOVE  "19"  TO  ‚v‚r|¢‹I‚P                             
007070     ELSE                                                         
007080        IF  “ü—Í|•t•Û“ú|¢‹I = "1"                              
007090           MOVE  "20"  TO  ‚v‚r|¢‹I‚P                           
007100        END-IF                                                    
007110     END-IF.                                                      
007120     STRING  ‚v‚r|¢‹I‚P , “ü—Í|•t•Û“ú|”NŒŽ“ú                  
007130        DELIMITED  BY  SIZE INTO                                  
007140                           ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú.
007150 ‚m‚n‚X‚SˆÚsˆ—|‚d‚w‚h‚s.                                      
007160     EXIT.                                                        
007170*                                                                 
007180******************************************************************
007190*    ‚m‚nD‚P‚T‚UˆÚsˆ—                                        *
007200******************************************************************
007210 ‚m‚n‚P‚T‚UˆÚsˆ—                   SECTION.                    
007220 ‚m‚n‚P‚T‚UˆÚsˆ—|‚r‚s‚`‚q‚s.                                  
007230     IF  “ü—Í|‰ð–ñ‹æ•ª = "0"                                     
007240        MOVE  "0"  TO  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~ƒtƒ‰ƒO         
007250     ELSE                                                         
007260        MOVE  "1"  TO  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~ƒtƒ‰ƒO         
007270     END-IF.                                                      
007280 ‚m‚n‚P‚T‚UˆÚsˆ—|‚d‚w‚h‚s.                                    
007290     EXIT.                                                        
007300*                                                                 
007310******************************************************************
007320*    ‚m‚nD‚P‚T‚VˆÚsˆ—                                        *
007330******************************************************************
007340 ‚m‚n‚P‚T‚VˆÚsˆ—                   SECTION.                    
007350 ‚m‚n‚P‚T‚VˆÚsˆ—|‚r‚s‚`‚q‚s.                                  
007360     IF  “ü—Í|‰ð–ñ“ú|¢‹I = "0"                                 
007370        MOVE  "19"  TO  ‚v‚r|¢‹I‚P                              
007380     ELSE                                                         
007390        IF  “ü—Í|‰ð–ñ“ú|¢‹I = "1"                              
007400           MOVE  "20"  TO  ‚v‚r|¢‹I‚P                           
007410        END-IF                                                    
007420     END-IF.                                                      
007430     STRING  ‚v‚r|¢‹I‚P , “ü—Í|‰ð–ñ“ú|”NŒŽ“ú                  
007440        DELIMITED  BY  SIZE INTO                                  
007450                                 ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú.  
007460 ‚m‚n‚P‚T‚VˆÚsˆ—|‚d‚w‚h‚s.                                    
007470     EXIT.                                                        
007480*                                                                 
007490******************************************************************
007500*    ‚m‚nD‚P‚U‚SˆÚsˆ—                                        *
007510******************************************************************
007520 ‚m‚n‚P‚U‚SˆÚsˆ—                   SECTION.                    
007530 ‚m‚n‚P‚U‚SˆÚsˆ—|‚r‚s‚`‚q‚s.                                  
007540     IF  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO = "1"                     
007550        MOVE  “ü—Í|‰ïŽÐŒ»Ý•ë‰¿      TO                          
007560                                    ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿  
007570     ELSE                                                         
007580        MOVE  ZERO  TO  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿              
007590     END-IF.                                                      
007600 ‚m‚n‚P‚U‚SˆÚsˆ—|‚d‚w‚h‚s.                                    
007610     EXIT.                                                        
007620*                                                                 
007630******************************************************************
007640*    ‚m‚nD‚P‚W‚UˆÚsˆ—                                        *
007650******************************************************************
007660 ‚m‚n‚P‚W‚UˆÚsˆ—                   SECTION.                    
007670 ‚m‚n‚P‚W‚UˆÚsˆ—|‚r‚s‚`‚q‚s.                                  
007680     IF  (“ü—Í|Å–@‘OŠú––•ë‰¿–@’è - “ü—Í|Å–@“–Šú––•ë‰¿) <      
007690                                            “ü—Í|Å–@ž‹pŒÀ“xŠz  
007700         COMPUTE  ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz =                
007710                                         “ü—Í|Å–@ž‹pŒÀ“xŠz -   
007720				     (“ü—Í|Å–@‘OŠú––•ë‰¿–@’è -          
007730                                            “ü—Í|Å–@“–Šú––•ë‰¿) 
007740     ELSE                                                         
007750         MOVE  ZERO  TO  ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz           
007760     END-IF.                                                      
007770 ‚m‚n‚P‚W‚UˆÚsˆ—|‚d‚w‚h‚s.                                    
007780     EXIT.                                                        
007790*                                                                 
007800******************************************************************
007810*    ‚m‚nD‚P‚X‚OˆÚsˆ—                                        *
007820******************************************************************
007830 ‚m‚n‚P‚X‚OˆÚsˆ—                   SECTION.                    
007840 ‚m‚n‚P‚X‚OˆÚsˆ—|‚r‚s‚`‚q‚s.                                  
007850     IF  “ü—Í|“–Šúž‹p‰ß•s‘«Šz < ZERO                            
007860        MOVE  “ü—Í|“–Šúž‹p‰ß•s‘«Šz  TO                          
007870                                  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz  
007880     ELSE                                                         
007890        MOVE  ZERO  TO  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz            
007900     END-IF.                                                      
007910 ‚m‚n‚P‚X‚OˆÚsˆ—|‚d‚w‚h‚s.                                    
007920     EXIT.                                                        
007930*                                                                 
007940******************************************************************
007950*    ‚m‚nD‚P‚X‚QˆÚsˆ—                                        *
007960******************************************************************
007970 ‚m‚n‚P‚X‚QˆÚsˆ—                   SECTION.                    
007980 ‚m‚n‚P‚X‚QˆÚsˆ—|‚r‚s‚`‚q‚s.                                  
007990     IF  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO = "1"                     
008000        COMPUTE  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz =             
008010                                   ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿ - 
008020			          ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿        
008030     ELSE                                                         
008040        MOVE  ZERO  TO  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz        
008050     END-IF.                                                      
008060 ‚m‚n‚P‚X‚QˆÚsˆ—|‚d‚w‚h‚s.                                    
008070     EXIT.                                                        
008080*                                                                 
008090******************************************************************
008100*Ž‘ŽYî•ñ‚ÉŠÖ˜A€–Ú‚ðXV‚·‚é                                    *
008110******************************************************************
008120 Ž‘ŽYî•ñŠÖ˜A€–ÚXV                 SECTION.                    
008130 Ž‘ŽYî•ñŠÖ˜A€–ÚXV|‚r‚s‚`‚q‚s.                                
008140*                                                                 
008150     
      *    EXEC SQL                                                     
008160*     UPDATE  D921SIJ_TBL                                         
008170*        SET                                                      
008180*       “®‘•ÛŒ¯Q“®‘•t•Û‹æ•ª = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª
008190*      ,“®‘•ÛŒ¯Q•t•Û“ú = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú            
008200*      ,“®‘•ÛŒ¯Q“®‘•t•ÛŠJŽn”NŒŽ“ú =                            
008210*                          :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú
008220*      ,“®‘•ÛŒ¯Q“®‘•ÛŒ¯—¿ = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿    
008230*      ,“®‘•ÛŒ¯QŽ–ŒÌ—L–³ = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ—L–³        
008240*      ,“®‘•ÛŒ¯QŽ–ŒÌ“ú = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú            
008250*      ,“®‘•ÛŒ¯Q•ÛŒ¯Œp‘± = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘±        
008260*      ,“®‘•ÛŒ¯Q•ÛŒ¯—¿—¦ = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦        
008270*      ,“®‘•ÛŒ¯Q•ÛŒ¯‰¿Ši = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši        
008280*      ,“®‘•ÛŒ¯Q•Ô–ß•ÛŒ¯—¿ = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿    
008290*      ,“®‘•ÛŒ¯Q“®‘•ÛŒ¯ØŒ””Ô† =                              
008300*                            :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô†
008310*      ,“®‘•ÛŒ¯Q•t•Û—¦ = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦            
008320*      ,“®‘•ÛŒ¯QŒp‘±ƒŠ[ƒXž‹p‘ÎÛŠz =                          
008330*                        :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz
008340*      ,“®‘•ÛŒ¯QÝ’uêŠ–¼ƒJƒi =                                
008350*                              :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi
008360*      ,M—p•ÛŒ¯QM—p•ÛŒ¯‰ïŽÐƒR[ƒh =                            
008370*                          :‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh
008380*      ,M—p•ÛŒ¯Q‹@ŠB—Þ•ª—ÞƒR[ƒh =                              
008390*                          :‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh  
008400*      ,M—p•ÛŒ¯Q’Ê’m‘”­‘—“ú = :‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú
008410*      ,M—p•ÛŒ¯Q•ÛŒ¯—¿ = :‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿            
008420*      ,M—p•ÛŒ¯Q•„† = :‚c‚X‚Q‚P|M—p•ÛŒ¯|•„†                
008430*      ,ŒÅ’èŽ‘ŽYÅQ‘O”N“x”[•tæƒR[ƒh =                          
008440*                        :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh
008450*      ,ŒÅ’èŽ‘ŽYÅQ”[•tæƒR[ƒh =                                
008460*                              :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh
008470*      ,ŒÅ’èŽ‘ŽYÅQ”NÅŠz = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz        
008480*      ,ŒÅ’èŽ‘ŽYÅQ‘O”N“x•]‰¿Šz =                                
008490*                              :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz
008500*      ,ŒÅ’èŽ‘ŽYÅQ‘O”N“x—˜_•ë‰¿ =                              
008510*                            :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿
008520*      ,ŒÅ’èŽ‘ŽYÅQ“–”N“x•]‰¿Šz =                                
008530*                              :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz
008540*      ,ŒÅ’èŽ‘ŽYÅQ“–”N“x—˜_•ë‰¿ =                              
008550*                            :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿
008560*      ,‰ïŽÐ—˜_Qž‹p’âŽ~ƒtƒ‰ƒO =                                
008570*                              :‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~ƒtƒ‰ƒO
008580*      ,‰ïŽÐ—˜_Qž‹p’âŽ~“ú = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú    
008590*      ,‰ïŽÐ—˜_Q‘OŠú––•ë‰¿ = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿    
008600*      ,‰ïŽÐ—˜_Q‘OŠú–˜ž‹pŠz—ÝŒv =                              
008610*                            :‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv
008620*      ,‰ïŽÐ—˜_Q‘OŒŽ–˜ž‹pŠz—ÝŒv =                              
008630*                            :‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv
008640*      ,‰ïŽÐ—˜_QŒ»Ý•ë‰¿ = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿        
008650*      ,‰ïŽÐ—˜_Qœ‹p•ë‰¿ = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿        
008660*      ,‰ïŽÐ—˜_Q“–ŒŽ–˜ž‹pŠz—ÝŒv =                              
008670*                            :‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽ–˜ž‹pŠz—ÝŒv
008680*      ,‰ïŽÐ—˜_Q“–Šúž‹pŠz = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz    
008690*      ,ŠÇ—‰ïŒvQ‘OŠú––•ë‰¿ = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿    
008700*      ,ŠÇ—‰ïŒvQ‘OŠú–˜ž‹pŠz—ÝŒv =                              
008710*                            :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv
008720*      ,ŠÇ—‰ïŒvQ‘OŒŽ–˜ž‹pŠz—ÝŒv =                              
008730*                            :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽ–˜ž‹pŠz—ÝŒv
008740*      ,ŠÇ—‰ïŒvQŒ»Ý•ë‰¿ = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿        
008750*      ,ŠÇ—‰ïŒvQ“–ŒŽ–˜ž‹pŠz—ÝŒv =                              
008760*                            :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv
008770*      ,ŠÇ—‰ïŒvQ“–Šúž‹pŠz = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–Šúž‹pŠz    
008780*      ,Å–±QŠ„‘ž‹p = :‚c‚X‚Q‚P|Å–±|Š„‘ž‹p                
008790*      ,Å–±QŠ„‘ž‹p”ï = :‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï            
008800*      ,Å–±Q“Á•Êž‹p—¦•ªŽq = :‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq    
008810*      ,Å–±Q“Á•Êž‹p—¦•ª•ê = :‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê    
008820*      ,Å–±Q“Á•Êž‹p”ï = :‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï            
008830*      ,Å–±Q‘OŠú––ŽÀŽ{Šz•ë‰¿ = :‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿
008840*      ,Å–±Q‘OŠúŽÀŽ{Šz—ÝŒv = :‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv    
008850*      ,Å–±Q‘OŠúŒJ‰z’´‰ßŠz = :‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz    
008860*      ,Å–±Q‘OŠúž‹p•s‘«Šz = :‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz    
008870*      ,Å–±Q“–Šúž‹pŒÀ“xŠz = :‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz    
008880*      ,Å–±Q“–Šúž‹pŽÀŽ{Šz = :‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz    
008890*      ,Å–±Q“–Šúž‹pŽÀŽ{Šz—ÝŒv =                                
008900*                              :‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv
008910*      ,Å–±Q“–Šúž‹p•s‘«Šz = :‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz    
008920*      ,Å–±Q“–Šúž‹p’´‰ßŠz = :‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz    
008930*      ,Å–±Q“–Šúž‹p‚Ö‚ÌU‘ÖŠz =                                
008940*                              :‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz
008950*      ,Å–±Q“–Šú––ŽÀŽ{Šz•ë‰¿ = :‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿
008960*      ,Å–±Q‘OŠú–––@’è•ë‰¿ = :‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿    
008970*      ,Å–±Q“–Šú–––@’è•ë‰¿ = :‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿    
008980*    WHERE  ƒL[î•ñQŒ_–ñ”Ô† = :‚v‚r|‚m|Œ_–ñ”Ô†              
008990*      AND  ƒL[î•ñQ•¨Œ”Ô† = :‚v‚r|‚m|V•¨Œ”Ô†        
009000*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 148 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ—L–³ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(6)
           MOVE 8 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘± IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(7)
           MOVE 1 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(8)
           MOVE 5 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô† IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(11)
           MOVE 11 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(14)
           MOVE 80 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(16)
           MOVE 2 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|M—p•ÛŒ¯|•„† IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(19)
           MOVE 5 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(20)
           MOVE 11 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(21)
           MOVE 6 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(22)
           MOVE 7 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~ƒtƒ‰ƒO IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(27)
           MOVE 1 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(28)
           MOVE 8 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(29)
           MOVE 7 TO SQL-SQHSTL(29)
           MOVE 0 TO SQL-SQHSTS(29)
           MOVE 0 TO SQL-SQINDV(29)
           MOVE 0 TO SQL-SQINDS(29)
           MOVE 0 TO SQL-SQHARM(29)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(30)
           MOVE 7 TO SQL-SQHSTL(30)
           MOVE 0 TO SQL-SQHSTS(30)
           MOVE 0 TO SQL-SQINDV(30)
           MOVE 0 TO SQL-SQINDS(30)
           MOVE 0 TO SQL-SQHARM(30)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(31)
           MOVE 7 TO SQL-SQHSTL(31)
           MOVE 0 TO SQL-SQHSTS(31)
           MOVE 0 TO SQL-SQINDV(31)
           MOVE 0 TO SQL-SQINDS(31)
           MOVE 0 TO SQL-SQHARM(31)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(32)
           MOVE 7 TO SQL-SQHSTL(32)
           MOVE 0 TO SQL-SQHSTS(32)
           MOVE 0 TO SQL-SQINDV(32)
           MOVE 0 TO SQL-SQINDS(32)
           MOVE 0 TO SQL-SQHARM(32)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(33)
           MOVE 7 TO SQL-SQHSTL(33)
           MOVE 0 TO SQL-SQHSTS(33)
           MOVE 0 TO SQL-SQINDV(33)
           MOVE 0 TO SQL-SQINDS(33)
           MOVE 0 TO SQL-SQHARM(33)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽ–˜ž‹pŠz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(34)
           MOVE 7 TO SQL-SQHSTL(34)
           MOVE 0 TO SQL-SQHSTS(34)
           MOVE 0 TO SQL-SQINDV(34)
           MOVE 0 TO SQL-SQINDS(34)
           MOVE 0 TO SQL-SQHARM(34)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(35)
           MOVE 7 TO SQL-SQHSTL(35)
           MOVE 0 TO SQL-SQHSTS(35)
           MOVE 0 TO SQL-SQINDV(35)
           MOVE 0 TO SQL-SQINDS(35)
           MOVE 0 TO SQL-SQHARM(35)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(36)
           MOVE 7 TO SQL-SQHSTL(36)
           MOVE 0 TO SQL-SQHSTS(36)
           MOVE 0 TO SQL-SQINDV(36)
           MOVE 0 TO SQL-SQINDS(36)
           MOVE 0 TO SQL-SQHARM(36)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(37)
           MOVE 7 TO SQL-SQHSTL(37)
           MOVE 0 TO SQL-SQHSTS(37)
           MOVE 0 TO SQL-SQINDV(37)
           MOVE 0 TO SQL-SQINDS(37)
           MOVE 0 TO SQL-SQHARM(37)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽ–˜ž‹pŠz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(38)
           MOVE 7 TO SQL-SQHSTL(38)
           MOVE 0 TO SQL-SQHSTS(38)
           MOVE 0 TO SQL-SQINDV(38)
           MOVE 0 TO SQL-SQINDS(38)
           MOVE 0 TO SQL-SQHARM(38)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(39)
           MOVE 7 TO SQL-SQHSTL(39)
           MOVE 0 TO SQL-SQHSTS(39)
           MOVE 0 TO SQL-SQINDV(39)
           MOVE 0 TO SQL-SQINDS(39)
           MOVE 0 TO SQL-SQHARM(39)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(40)
           MOVE 7 TO SQL-SQHSTL(40)
           MOVE 0 TO SQL-SQHSTS(40)
           MOVE 0 TO SQL-SQINDV(40)
           MOVE 0 TO SQL-SQINDS(40)
           MOVE 0 TO SQL-SQHARM(40)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–Šúž‹pŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(41)
           MOVE 7 TO SQL-SQHSTL(41)
           MOVE 0 TO SQL-SQHSTS(41)
           MOVE 0 TO SQL-SQINDV(41)
           MOVE 0 TO SQL-SQINDS(41)
           MOVE 0 TO SQL-SQHARM(41)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(42)
           MOVE 2 TO SQL-SQHSTL(42)
           MOVE 0 TO SQL-SQHSTS(42)
           MOVE 0 TO SQL-SQINDV(42)
           MOVE 0 TO SQL-SQINDS(42)
           MOVE 0 TO SQL-SQHARM(42)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(43)
           MOVE 7 TO SQL-SQHSTL(43)
           MOVE 0 TO SQL-SQHSTS(43)
           MOVE 0 TO SQL-SQINDV(43)
           MOVE 0 TO SQL-SQINDS(43)
           MOVE 0 TO SQL-SQHARM(43)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(44)
           MOVE 2 TO SQL-SQHSTL(44)
           MOVE 0 TO SQL-SQHSTS(44)
           MOVE 0 TO SQL-SQINDV(44)
           MOVE 0 TO SQL-SQINDS(44)
           MOVE 0 TO SQL-SQHARM(44)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(45)
           MOVE 2 TO SQL-SQHSTL(45)
           MOVE 0 TO SQL-SQHSTS(45)
           MOVE 0 TO SQL-SQINDV(45)
           MOVE 0 TO SQL-SQINDS(45)
           MOVE 0 TO SQL-SQHARM(45)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(46)
           MOVE 7 TO SQL-SQHSTL(46)
           MOVE 0 TO SQL-SQHSTS(46)
           MOVE 0 TO SQL-SQINDV(46)
           MOVE 0 TO SQL-SQINDS(46)
           MOVE 0 TO SQL-SQHARM(46)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(47)
           MOVE 7 TO SQL-SQHSTL(47)
           MOVE 0 TO SQL-SQHSTS(47)
           MOVE 0 TO SQL-SQINDV(47)
           MOVE 0 TO SQL-SQINDS(47)
           MOVE 0 TO SQL-SQHARM(47)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(48)
           MOVE 7 TO SQL-SQHSTL(48)
           MOVE 0 TO SQL-SQHSTS(48)
           MOVE 0 TO SQL-SQINDV(48)
           MOVE 0 TO SQL-SQINDS(48)
           MOVE 0 TO SQL-SQHARM(48)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(49)
           MOVE 7 TO SQL-SQHSTL(49)
           MOVE 0 TO SQL-SQHSTS(49)
           MOVE 0 TO SQL-SQINDV(49)
           MOVE 0 TO SQL-SQINDS(49)
           MOVE 0 TO SQL-SQHARM(49)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(50)
           MOVE 7 TO SQL-SQHSTL(50)
           MOVE 0 TO SQL-SQHSTS(50)
           MOVE 0 TO SQL-SQINDV(50)
           MOVE 0 TO SQL-SQINDS(50)
           MOVE 0 TO SQL-SQHARM(50)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(51)
           MOVE 7 TO SQL-SQHSTL(51)
           MOVE 0 TO SQL-SQHSTS(51)
           MOVE 0 TO SQL-SQINDV(51)
           MOVE 0 TO SQL-SQINDS(51)
           MOVE 0 TO SQL-SQHARM(51)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(52)
           MOVE 7 TO SQL-SQHSTL(52)
           MOVE 0 TO SQL-SQHSTS(52)
           MOVE 0 TO SQL-SQINDV(52)
           MOVE 0 TO SQL-SQINDS(52)
           MOVE 0 TO SQL-SQHARM(52)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(53)
           MOVE 7 TO SQL-SQHSTL(53)
           MOVE 0 TO SQL-SQHSTS(53)
           MOVE 0 TO SQL-SQINDV(53)
           MOVE 0 TO SQL-SQINDS(53)
           MOVE 0 TO SQL-SQHARM(53)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(54)
           MOVE 7 TO SQL-SQHSTL(54)
           MOVE 0 TO SQL-SQHSTS(54)
           MOVE 0 TO SQL-SQINDV(54)
           MOVE 0 TO SQL-SQINDS(54)
           MOVE 0 TO SQL-SQHARM(54)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(55)
           MOVE 7 TO SQL-SQHSTL(55)
           MOVE 0 TO SQL-SQHSTS(55)
           MOVE 0 TO SQL-SQINDV(55)
           MOVE 0 TO SQL-SQINDS(55)
           MOVE 0 TO SQL-SQHARM(55)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(56)
           MOVE 7 TO SQL-SQHSTL(56)
           MOVE 0 TO SQL-SQHSTS(56)
           MOVE 0 TO SQL-SQINDV(56)
           MOVE 0 TO SQL-SQINDS(56)
           MOVE 0 TO SQL-SQHARM(56)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(57)
           MOVE 7 TO SQL-SQHSTL(57)
           MOVE 0 TO SQL-SQHSTS(57)
           MOVE 0 TO SQL-SQINDV(57)
           MOVE 0 TO SQL-SQINDS(57)
           MOVE 0 TO SQL-SQHARM(57)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(58)
           MOVE 7 TO SQL-SQHSTL(58)
           MOVE 0 TO SQL-SQHSTS(58)
           MOVE 0 TO SQL-SQINDV(58)
           MOVE 0 TO SQL-SQINDS(58)
           MOVE 0 TO SQL-SQHARM(58)
           CALL "SQLADR" USING
               ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿ IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(59)
           MOVE 7 TO SQL-SQHSTL(59)
           MOVE 0 TO SQL-SQHSTS(59)
           MOVE 0 TO SQL-SQINDV(59)
           MOVE 0 TO SQL-SQINDS(59)
           MOVE 0 TO SQL-SQHARM(59)
           CALL "SQLADR" USING
               ‚v‚r|‚m|Œ_–ñ”Ô† IN
               ‚m‚d‚vƒL[ IN
               ‚j‚d‚x|ƒGƒŠƒA
               SQL-SQHSTV(60)
           MOVE 10 TO SQL-SQHSTL(60)
           MOVE 0 TO SQL-SQHSTS(60)
           MOVE 0 TO SQL-SQINDV(60)
           MOVE 0 TO SQL-SQINDS(60)
           MOVE 0 TO SQL-SQHARM(60)
           CALL "SQLADR" USING
               ‚v‚r|‚m|V•¨Œ”Ô† IN
               ‚m‚d‚vƒL[ IN
               ‚j‚d‚x|ƒGƒŠƒA
               SQL-SQHSTV(61)
           MOVE 3 TO SQL-SQHSTL(61)
           MOVE 0 TO SQL-SQHSTS(61)
           MOVE 0 TO SQL-SQINDV(61)
           MOVE 0 TO SQL-SQINDS(61)
           MOVE 0 TO SQL-SQHARM(61)
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
009010*                                                                 
009020     EVALUATE  SQLCODE                                            
009030        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
009040*--<       Ž‘ŽYî•ñŠÖ˜A€–ÚXV³í >                             
009050           COMPUTE  ‚v|XV|Œ” = ‚v|XV|Œ” + 1           
009060        WHEN  OTHER                                               
009070*--<       Ž‘ŽYî•ñŠÖ˜A€–ÚXVƒ‰[ >                             
009080           MOVE -70                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
009090           PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                          
009100           PERFORM  ƒGƒ‰[ˆ—                                    
009110     END-EVALUATE.                                                
009120*                                                                 
009130 Ž‘ŽYî•ñŠÖ˜A€–ÚXV|‚d‚w‚h‚s.                                  
009140     EXIT.                                                        
009150*                                                                 
009160******************************************************************
009170*    I—¹ˆ—                                        <3.0>       *
009180******************************************************************
009190 I—¹ˆ—                             SECTION.                    
009200 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
009210*                                                                 
009220*----------------------------------------------------------------*
009230*    ƒtƒ@ƒCƒ‹ƒNƒ[ƒY                                <3.1>       *
009240*----------------------------------------------------------------*
009250     CLOSE  “ü—Íƒtƒ@ƒCƒ‹.                                         
009260*                                                                 
009270     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
009280*                                                                 
009290     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
009300*                                                                 
009310     PERFORM  Œ”ƒƒbƒZ[ƒWo—Í.                                 
009320*                                                                 
009330     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
009340*                                                                 
009350*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
009360     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
009370*                                                                 
009380 I—¹ˆ—|‚d‚w‚h‚s.                                              
009390     EXIT.                                                        
009400******************************************************************
009410*    ‚c‚aƒNƒ[ƒY                                    <3.2>       *
009420******************************************************************
009430 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
009440 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
009450*                                                                 
009460*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
009470     
      *    EXEC SQL                                                     
009480*       CLOSE  CUR1                                               
009490*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 407 TO SQL-OFFSET
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
009500                                                                  
009510 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
009520     EXIT.                                                        
009530                                                                  
009540******************************************************************
009550*    ‚c‚aƒRƒ~ƒbƒgˆ—                                <3.3>       *
009560******************************************************************
009570 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
009580 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
009590*                                                                 
009600     
      *    EXEC  SQL                                                    
009610*       COMMIT  WORK  RELEASE                                     
009620*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 422 TO SQL-OFFSET
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
009630*                                                                 
009640     INITIALIZE                       IF-CHOCO001.                
009650     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009660     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009670     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009680     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009690     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009700     CALL  CLOCO001                USING  IF-CHOCO001.            
009710*                                                                 
009720 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
009730     EXIT.                                                        
009740*                                                                 
009750******************************************************************
009760*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
009770******************************************************************
009780 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
009790 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
009800*                                                                 
009810     
      *    EXEC  SQL                                                    
009820*       ROLLBACK WORK  RELEASE                                    
009830*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 437 TO SQL-OFFSET
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
009840*                                                                 
009850     INITIALIZE                       IF-CHOCO001.                
009860     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009870     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009880     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009890     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009900     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009910     CALL  CLOCO001                USING  IF-CHOCO001.            
009920*                                                                 
009930 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
009940     EXIT.                                                        
009950*                                                                 
009960******************************************************************
009970*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                          <3.4>       *
009980******************************************************************
009990 Œ”ƒƒbƒZ[ƒWo—Í                   SECTION.                    
010000 Œ”ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
010010*                                                                 
010020     INITIALIZE                       IF-CHOCO001.                
010030     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010040     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010050     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010060     MOVE  "IKOTBL010"                TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
010070     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010080     MOVE  ‚v|“ü—Í|Œ”‚Q           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
010090     MOVE  "V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹“ÇžŒ”"                       
010100                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010110     CALL  CLOCO001                USING  IF-CHOCO001.            
010120*                                                                 
010130     INITIALIZE                       IF-CHOCO001.                
010140     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010150     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010160     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010170     MOVE  "FFUIS772"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
010180     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010190     MOVE  ‚v|“ü—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
010200     MOVE  "Ž‘ŽY–¾×“Ç“ÇžŒ”"       TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010210     CALL  CLOCO001                USING  IF-CHOCO001.            
010220*                                                                 
010230     INITIALIZE                       IF-CHOCO001.                
010240     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010250     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010260     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010270     MOVE  "D921SIJ"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
010280     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010290     MOVE  ‚v|XV|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
010300     MOVE  "Ž‘ŽYî•ñƒe[ƒuƒ‹XVŒ”" TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010310     CALL  CLOCO001                USING  IF-CHOCO001.            
010320*                                                                 
010330 Œ”ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
010340     EXIT.                                                        
010350*                                                                 
010360******************************************************************
010370*    I—¹ƒƒbƒZ[ƒWo—Í                              <3.5>       *
010380******************************************************************
010390 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
010400 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
010410*                                                                 
010420     INITIALIZE                       IF-CHOCO001.                
010430     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010440     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010450     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010460     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010470     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010480     CALL  CLOCO001                USING  IF-CHOCO001.            
010490*                                                                 
010500 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
010510     EXIT.                                                        
010520*                                                                 
010530******************************************************************
010540*    ƒGƒ‰[ˆ—                                          <4.0>   *
010550******************************************************************
010560 ƒGƒ‰[ˆ—                           SECTION.                    
010570 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
010580*                                                                 
010590     MOVE  "Y"                        TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.   
010600     INITIALIZE                       IF-CHOCO001.                
010610*                                                                 
010620     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
010630        WHEN  -10                                                 
010640*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
010650           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010660           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010670           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010680           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
010690           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010700           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010710           CALL  CLOCO001          USING  IF-CHOCO001             
010720*                                                                 
010730        WHEN  -20                                                 
010740*--<       “ü—Íƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                           
010750           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010760           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010770           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010780           MOVE  "FFUIS772"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010790           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010800           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
010810           MOVE  "Ž‘ŽY–¾×(“ü—Í)ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰["           
010820                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010830           CALL  CLOCO001          USING  IF-CHOCO001             
010840*                                                                 
010850        WHEN  -30                                                 
010860*--<       ƒtƒ@ƒCƒ‹“ÇžƒGƒ‰[>                                    
010870           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010880           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010890           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010900           MOVE  "FFUI772"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010910           MOVE  "READ"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010920           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
010930           MOVE  "Ž‘ŽY–¾×(“ü—Í)ƒtƒ@ƒCƒ‹“ÇžƒGƒ‰["               
010940                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010950           CALL  CLOCO001          USING  IF-CHOCO001             
010960*                                                                 
010970        WHEN  -40                                                 
010980*--<       V•¨Œ”Ô†Ì”ÔŽ¸”s >                                   
010990           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011000           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011010           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011020           MOVE  "IKOTBL010"          TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011030           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
011040           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011050           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011060           CALL  CLOCO001          USING  IF-CHOCO001             
011070           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011080*                                                                 
011090        WHEN  -50                                                 
011100*--<       ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                             
011110           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011120           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011130           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011140           MOVE  "D921SIJ"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011150           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
011160           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011170           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011180           CALL  CLOCO001          USING  IF-CHOCO001             
011190*                                                                 
011200        WHEN  -60                                                 
011210*--<       ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“ÇžƒGƒ‰[ >                           
011220           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011230           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011240           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011250           MOVE  "D921SIJ"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011260           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
011270           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011280           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011290           CALL  CLOCO001          USING  IF-CHOCO001             
011300           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011310*                                                                 
011320        WHEN  -70                                                 
011330*--<       Ž‘ŽYî•ñŠÖ˜A€–ÚXVŽ¸”s >                             
011340           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011350           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011360           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011370           MOVE  "D921SIJ"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011380           MOVE  "UPDATE"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
011390           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011400           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011410           CALL  CLOCO001          USING  IF-CHOCO001             
011420           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011430*                                                                 
011440        WHEN  OTHER                                               
011450           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011460     END-EVALUATE.                                                
011470*                                                                 
011480     IF  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                             
011490*----------------------------------------------------------------*
011500*    I—¹ƒƒbƒZ[ƒWo—Íˆ—                                      *
011510*----------------------------------------------------------------*
011520        PERFORM  ‚c‚aƒNƒ[ƒYˆ—                                 
011530*                                                                 
011540        PERFORM  Œ”ƒƒbƒZ[ƒWo—Í                               
011550*                                                                 
011560        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
011570*--<    ƒvƒƒOƒ‰ƒ€ƒŠƒ^[ƒ“ƒR[ƒh >                                
011580        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
011590        EXIT  PROGRAM                                             
011600     END-IF.                                                      
011610*                                                                 
011620 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
011630      EXIT.                                                       
011640******************************************************************
011650*                  END OF PROGRAM                                *
011660******************************************************************
