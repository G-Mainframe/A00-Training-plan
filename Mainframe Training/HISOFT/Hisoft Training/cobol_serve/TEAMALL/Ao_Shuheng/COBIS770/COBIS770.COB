000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : Ž‘ŽYî•ñˆÚs(SUMMIT)                   *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS770                               *
000050*      3. ˆ—ŠT—v      : Ž‘ŽYî•ñ‚ð‡ŽŸ“Ç‚Ýž‚Þ,Ž‘ŽY–¾×‚Ì“à—e  *
000060*                       ‚©‚çŽ‘ŽYî•ñ‚É‘Î‚µ‚ÄŠÖ˜A€–Ú‚ðXV‚·‚é,Œ»*
000070*	                      sDB‚æ‚èÚÍÞÙ±¯ÌßŽ‘ŽYî•ñÃ°ÌÞÙ‚ðì¬‚·‚é. *
000080*                                                                *
000090*      4. ì¬ŽÒ        : ÂiP                                 *
000100*      5. ì¬“ú        : 2005.04.01                             *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000150******************************************************************
000160 IDENTIFICATION                       DIVISION.                   
000170*                                                                 
000180 PROGRAM-ID.                          COBIS770.                   
000190******************************************************************
000200*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000210******************************************************************
000220 ENVIRONMENT                          DIVISION.                   
000230******************************************************************
000240*    ‚h‚m‚o‚t‚s|‚n‚t‚s‚o‚t‚s      ‚r‚d‚b‚s‚h‚n‚m                *
000250******************************************************************
000260 INPUT-OUTPUT                         SECTION.                    
000270 FILE-CONTROL.                                                    
000280*                                                                 
000290     SELECT         “ü—Íƒtƒ@ƒCƒ‹      ASSIGN    TO   U01          
000300     FILE STATUS    IS     ‚v|ó‘Ô                               
000310     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000320******************************************************************
000330*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000340******************************************************************
000350 DATA                                 DIVISION.                   
000360******************************************************************
000370*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000380******************************************************************
000390 FILE                                 SECTION.                    
000400 FD  “ü—Íƒtƒ@ƒCƒ‹                                                 
000410     LABEL     RECORD     IS          STANDARD                    
000420     BLOCK     CONTAINS   0           RECORDS.                    
000430*                                                                 
000440 01  “ü—Í|ƒŒƒR[ƒh.                                              
000450     COPY  CPBIS165 REPLACING  ==()==  BY  ==“ü—Í|==.            
000460******************************************************************
000470*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000480******************************************************************
000490  WORKING-STORAGE                     SECTION.                    
000500*----------------------------------------------------------------*
000510*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000520*----------------------------------------------------------------*
000530     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS770.PCO".

       01  SQ0002 GLOBAL.
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
      -    "—‰ïŒvQ‘OŒŽ–˜ž‹pŠz—ÝŒv=:b37,ŠÇ—‰ïŒvQŒ»Ý•ë‰¿=:b38,ŠÇ—‰ï
      -    "ŒvQ“–ŒŽ".

           02  FILLER PIC X(160) VALUE "–˜ž‹pŠz—ÝŒv=:b34,ŠÇ—‰ïŒvQ“–Šú
      -    "ž‹pŠz=:b39,Å–±QŠ„‘ž‹p=:b40,Å–±QŠ„‘ž‹p”ï=:b41,Å–±Q
      -    "“Á•Êž‹p—¦•ªŽq=:b42,Å–±Q“Á•Êž‹p—¦•ª•ê=:b43,Å–±Q“Á•Êž‹p
      -    "”ï=:b44,".

           02  FILLER PIC X(160) VALUE "Å–±Q‘OŠú––ŽÀŽ{Šz•ë‰¿=:b45,Å–±
      -    "Q‘OŠúŽÀŽ{Šz—ÝŒv=:b46,Å–±Q‘OŠúŒJ‰z’´‰ßŠz=:b47,Å–±Q‘OŠúž
      -    "‹p•s‘«Šz=:b48,Å–±Q“–Šúž‹pŒÀ“xŠz=:b49,Å–±Q“–Šúž‹pŽÀŽ{Šz
      -    "=:b50,Å".

           02  FILLER PIC X(160) VALUE "–±Q“–Šúž‹pŽÀŽ{Šz—ÝŒv=:b50,Å–±
      -    "Q“–Šúž‹p•s‘«Šz=:b51,Å–±Q“–Šúž‹p’´‰ßŠz=:b52,Å–±Q“–Šúž
      -    "‹p‚Ö‚ÌU‘ÖŠz=:b53,Å–±Q“–Šú––ŽÀŽ{Šz•ë‰¿=:b54,Å–±Q‘OŠú–––@
      -     "’è•ë‰¿=:".

           02  FILLER PIC X(89) VALUE "b55,Å–±Q“–Šú–––@’è•ë‰¿=:b56 whe
      -    "re (ƒL[î•ñQŒ_–ñ”Ô†=:b57 and ƒL[î•ñQ•¨Œ”Ô†=:b58)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +288165.


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


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(121) VALUE "select ƒL[î•ñQŒ_–ñ”Ô†  ,ƒL[
      -    "î•ñQ•¨Œ”Ô†  ,•¨ŒQ•¨ŒŽæ“¾‰¿Šz  ,•¨Œˆ•ªQ”„”pƒtƒ‰ƒO  
      -    " from D921SIJ_TBL            ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +210.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +214.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +121.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +273.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +297.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +113.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +99.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +378.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +144.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +1688.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +637.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +403.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +868.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +418.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +880.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +433.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +900.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000540*--< ’†ŠÔ[ƒR[ƒh >                                               
000550 01 ‚v‚r|’†ŠÔ[ƒR[ƒh•Ï”.                                       
000560    03  ‚v‚r|Œ_–ñ”Ô†                PIC  X(10).                 
000570    03  ‚v‚r|•¨Œ”Ô†                PIC  9(04).                
000580    03  ‚v‚r|‰ð–ñ“ú                  PIC  X(07).                 
000590    03  ‚v‚r|‰ð–ñ‹æ•ª                PIC  X(01).                 
000600    03  ‚v‚r|ŒÀ“xŠz                  PIC  9(13).                 
000610    03  ‚v‚r|Å–@“–Šú––•ë‰¿          PIC  9(13).                 
000620    03  ‚v‚r|¢‹I                    PIC  9(02).                 
000630    03  ‚v‚r|Ž–ŒÌ“ú|¢‹I            PIC  9(02).                 
000640*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000650     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000660*                                                                 
000670*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000680     
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
000690*                                                                 
000700*--< V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹ >                                     
000710     
      *    EXEC  SQL  INCLUDE  IKOTBL010.CBL         END-EXEC.
000720*                                                                 
000730*--< Ž‘ŽYî•ñƒe[ƒuƒ‹ >                                           
000010************************************************
000020* V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹(IKOTBL010)
000030************************************************
000040 01  ‚h‚j‚n‚O‚P‚O|Œ_–ñ”Ô† PIC  X(010).
000050 01  ‚h‚j‚n‚O‚P‚O|•¨Œ”Ô† PIC S9(004) COMP-3.
000060 01  ‚h‚j‚n‚O‚P‚O|‰ð–ñ“ú PIC  X(007).
000070 01  ‚h‚j‚n‚O‚P‚O|¼—ï‰ð–ñ“ú PIC  X(008).
000080 01  ‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô† PIC S9(004) COMP-3.
000090 01  ‚h‚j‚n‚O‚P‚O|‚h‚m‹æ•ª PIC  X(001).
000740     
      *    EXEC  SQL  INCLUDE  D921SIJ.CBL      END-EXEC.
000750*                                                                 
000010*****************************************************************
000020*   Ž‘ŽYî•ñƒe[ƒuƒ‹(D921SIJ_TBL)
000030*****************************************************************
000040 01  Ž‘ŽYî•ñƒe[ƒuƒ‹.
000050     03  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô†
000060                               PIC  X(010).
000070     03  ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñŽí—Þ
000080                               PIC  X(003).
000090     03  ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô†
000100                               PIC S9(004) PACKED-DECIMAL.
000110     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ÄƒŠ[ƒX‰ñ”
000120                               PIC S9(002) PACKED-DECIMAL.
000130     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŽåŒ_–ñ‹æ•ª
000140                               PIC  X(001).
000150     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñ‹æ•ª
000160                               PIC  X(001).
000170     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|‹¦’²‹æ•ª
000180                               PIC  X(001).
000190     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñŠJŽn“ú
000200                               PIC  X(008).
000210     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñI—¹“ú
000220                               PIC  X(008).
000230     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŠúŠÔ
000240                               PIC S9(003) PACKED-DECIMAL.
000250     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ˆø“n”NŒŽ“ú
000260                               PIC  X(008).
000270     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûˆ—”NŒŽ
000280                               PIC  X(006).
000290     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñˆ—”NŒŽ
000300                               PIC  X(006).
000310     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|¬–ñ”NŒŽ“ú
000320                               PIC  X(008).
000330     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûŽæÁ”NŒŽ“ú
000340                               PIC  X(008).
000350     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûŽæÁˆ—”NŒŽ
000360                               PIC  X(006).
000370     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒŸŽûŽæÁƒGƒ“ƒgƒŠ“ú
000380                               PIC  X(008).
000390     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|’S“–•”‰ÛƒR[ƒh
000400                               PIC  X(004).
000410     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|’S“–ŽÒƒR[ƒh
000420                               PIC  X(008).
000430     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŽæˆøæƒR[ƒh
000440                               PIC  X(009).
000450     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|Œ_–ñæƒR[ƒh
000460                               PIC  X(005).
000470     03  ‚c‚X‚Q‚P|Œ_–ñ“à—e|ŒÚ‹q‹æ•ª
000480                               PIC  X(002).
000490     03  ‚c‚X‚Q‚P|ÂŒ |Š¨’èˆ—ƒR[ƒh
000500                               PIC S9(002) PACKED-DECIMAL.
000510     03  ‚c‚X‚Q‚P|•¨Œ|Žæ“¾”NŒŽ“ú
000520                               PIC  X(008).
000530     03  ‚c‚X‚Q‚P|•¨Œ|ˆÚ“®”NŒŽ“ú
000540                               PIC  X(008).
000550     03  ‚c‚X‚Q‚P|•¨Œ|ó‘Ôƒtƒ‰ƒO
000560                               PIC  X(001).
000570     03  ‚c‚X‚Q‚P|•¨Œ|ˆÚ“®——R
000580                               PIC  X(002).
000590     03  ‚c‚X‚Q‚P|•¨Œ|•¨Œˆ•ª˜A”Ô
000600                               PIC S9(003) PACKED-DECIMAL.
000610     03  ‚c‚X‚Q‚P|•¨Œ|Žæ“¾‰¿Šz
000620                               PIC S9(013) PACKED-DECIMAL.
000630     03  ‚c‚X‚Q‚P|•¨Œ|ŽæÁŽæ“¾‰¿Šz
000640                               PIC S9(013) PACKED-DECIMAL.
000650     03  ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
000660                               PIC S9(013) PACKED-DECIMAL.
000670     03  ‚c‚X‚Q‚P|•¨Œ|Žc‰¿‹æ•ª
000680                               PIC  X(001).
000690     03  ‚c‚X‚Q‚P|•¨Œ|Œ_–ñŽc‰¿Ý’èŠz
000700                               PIC S9(013) PACKED-DECIMAL.
000710     03  ‚c‚X‚Q‚P|•¨Œ|‘¼ŽÐw“üŠz
000720                               PIC S9(013) PACKED-DECIMAL.
000730     03  ‚c‚X‚Q‚P|•¨Œ|‘¼ŽÐŽc‰¿Ý’èŠz
000740                               PIC S9(013) PACKED-DECIMAL.
000750     03  ‚c‚X‚Q‚P|•¨Œ|’èŠz|ŒŽŠzž‹p”ï
000760                               PIC S9(013) PACKED-DECIMAL.
000770     03  ‚c‚X‚Q‚P|•¨Œ|’èŠz|ŒŽŠzž‹p”ï’[”
000780                               PIC S9(013) PACKED-DECIMAL.
000790     03  ‚c‚X‚Q‚P|•¨Œ|•¨ŒƒŠ[ƒX—¿
000800                               PIC S9(013) PACKED-DECIMAL.
000810     03  ‚c‚X‚Q‚P|•¨Œ|”—Ê  PIC S9(005) PACKED-DECIMAL.
000820     03  ‚c‚X‚Q‚P|•¨Œ|Ž‘ŽYŽí—Þ
000830                               PIC  X(007).
000840     03  ‚c‚X‚Q‚P|•¨Œ|‘Ï—p”N”
000850                               PIC S9(002) PACKED-DECIMAL.
000860     03  ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽí—Þ
000870                               PIC  X(002).
000880     03  ‚c‚X‚Q‚P|•¨Œ|Ž©‘¼ŽÐ‹æ•ª
000890                               PIC  X(001).
000900     03  ‚c‚X‚Q‚P|•¨Œ|ƒ\ƒtƒg‹æ•ª
000910                               PIC  X(001).
000920     03  ‚c‚X‚Q‚P|•¨Œ|­ŠzŽ‘ŽY‹æ•ª
000930                               PIC  X(001).
000940     03  ‚c‚X‚Q‚P|•¨Œ|’†ŒÃŽ‘ŽY‹æ•ª
000950                               PIC  X(001).
000960     03  ‚c‚X‚Q‚P|•¨Œ|‰ïŽÐž‹p‹æ•ª
000970                               PIC  X(001).
000980     03  ‚c‚X‚Q‚P|•¨Œ|ŒÅ’èŽ‘ŽYÅ‹æ•ª
000990                               PIC  X(001).
001000     03  ‚c‚X‚Q‚P|•¨Œ|ŠCŠOÝ’uêŠ‹æ•ª
001010                               PIC  X(001).
001020     03  ‚c‚X‚Q‚P|•¨Œ|‹ŒŒ_–ñ”Ô†
001030                               PIC  X(010).
001040     03  ‚c‚X‚Q‚P|•¨Œ|‹Œ•¨Œ”Ô†
001050                               PIC S9(004) PACKED-DECIMAL.
001060     03  ‚c‚X‚Q‚P|•¨Œ|•ªŠ„”NŒŽ“ú
001070                               PIC  X(008).
001080     03  ‚c‚X‚Q‚P|•¨Œ|•ªŠ„Œ³•¨Œ”Ô†
001090                               PIC S9(004) PACKED-DECIMAL.
001100     03  ‚c‚X‚Q‚P|•¨Œ|•¨Œ–¼Ì
001110                               PIC  X(060).
001120     03  ‚c‚X‚Q‚P|•¨Œ|‚eŒ^–¼
001130                               PIC  X(025).
001140     03  ‚c‚X‚Q‚P|•¨Œ|ƒfƒB[ƒ‰Žæˆøæ
001150                               PIC  X(009).
001160     03  ‚c‚X‚Q‚P|•¨Œ|ƒfƒB[ƒ‰ƒR[ƒh
001170                               PIC  X(005).
001180     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ\¿ƒtƒ‰ƒO
001190                               PIC  X(001).
001200     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñƒtƒ‰ƒO
001210                               PIC  X(001).
001220     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ”NŒŽ“ú
001230                               PIC  X(008).
001240     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñˆ—”NŒŽ
001250                               PIC  X(006).
001260     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñŽæÁˆ—”NŒŽ
001270                               PIC  X(006).
001280     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ——R
001290                               PIC  X(002).
001300     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñ‹æ•ª
001310                               PIC  X(001).
001320     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñŒŽ”
001330                               PIC S9(003) PACKED-DECIMAL.
001340     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|‰ð–ñŽæÁƒtƒ‰ƒO
001350                               PIC  X(001).
001360     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|ŽæÁ‰ð–ñ“ú
001370                               PIC  X(008).
001380     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|–ž—¹ˆ—”NŒŽ
001390                               PIC  X(006).
001400     03  ‚c‚X‚Q‚P|‰ð–ñ–ž—¹|–ž—¹ŽæÁˆ—”NŒŽ
001410                               PIC  X(006).
001420     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO
001430                               PIC  X(001).
001440     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|•¨Œˆ•ª‹æ•ª
001450                               PIC  X(001).
001460     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|\¿ó‘Ôƒtƒ‰ƒO
001470                               PIC  X(001).
001480     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|•¨Œˆ•ª\¿˜A”Ô
001490                               PIC S9(002) PACKED-DECIMAL.
001500     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|ˆ•ªæŽæˆøæƒR[ƒh
001510                               PIC  X(009).
001520     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|ˆ•ªæƒR[ƒh
001530                               PIC  X(005).
001540     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”p”NŒŽ“ú
001550                               PIC  X(008).
001560     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pˆ—”NŒŽ
001570                               PIC  X(006).
001580     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pŒŽ”
001590                               PIC S9(003) PACKED-DECIMAL.
001600     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”p——R
001610                               PIC  X(002).
001620     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pŽæÁ‹æ•ª
001630                               PIC  X(001).
001640     03  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pŽæÁˆ—”NŒŽ
001650                               PIC  X(006).
001660     03  ‚c‚X‚Q‚P|³Œp|³Œpƒtƒ‰ƒO
001670                               PIC  X(001).
001680     03  ‚c‚X‚Q‚P|³Œp|³Œp“ñŽŸÏƒtƒ‰ƒO
001690                               PIC  X(001).
001700     03  ‚c‚X‚Q‚P|³Œp|³ŒpŒ³Œ_–ñ”Ô†
001710                               PIC  X(010).
001720     03  ‚c‚X‚Q‚P|³Œp|³ŒpŒ³•¨Œ”Ô†
001730                               PIC S9(004) PACKED-DECIMAL.
001740     03  ‚c‚X‚Q‚P|³Œp|³Œpˆ—”NŒŽ
001750                               PIC  X(006).
001760     03  ‚c‚X‚Q‚P|³Œp|³Œp“ú
001770                               PIC  X(008).
001780     03  ‚c‚X‚Q‚P|³Œp|³ŒpŽž•ë‰¿
001790                               PIC S9(013) PACKED-DECIMAL.
001800     03  ‚c‚X‚Q‚P|³Œp|³ŒpŽžž‹p—ÝŒvŠz
001810                               PIC S9(013) PACKED-DECIMAL.
001820     03  ‚c‚X‚Q‚P|³Œp|³ŒpŽæÁ”NŒŽ“ú
001830                               PIC  X(008).
001840     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª
001850                               PIC  X(001).
001860     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú
001870                               PIC  X(008).
001880     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú”
001890                               PIC S9(003) PACKED-DECIMAL.
001900     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú
001910                               PIC  X(008).
001920     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿
001930                               PIC S9(013) PACKED-DECIMAL.
001940     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ—L–³
001950                               PIC  X(001).
001960     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú
001970                               PIC  X(008).
001980     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘±
001990                               PIC  X(001).
002000     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦
002010                               PIC S9(002)V9(007) PACKED-DECIMAL.
002020     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši
002030                               PIC S9(013) PACKED-DECIMAL.
002040     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿
002050                               PIC S9(013) PACKED-DECIMAL.
002060     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô†
002070                               PIC  X(011).
002080     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦
002090                               PIC S9(002) PACKED-DECIMAL.
002100     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz
002110                               PIC S9(013) PACKED-DECIMAL.
002120     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi
002130                               PIC  X(080).
002140     03  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|”…ž•ÛŒ¯‹æ•ª
002150                               PIC  X(001).
002160     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‹æ•ª
002170                               PIC  X(001).
002180     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯‰ïŽÐ‹æ•ª
002190                               PIC  X(004).
002200     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh
002210                               PIC  X(001).
002220     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh
002230                               PIC  X(002).
002240     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú
002250                               PIC  X(008).
002260     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”Ô†
002270                               PIC S9(003) PACKED-DECIMAL.
002280     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿
002290                               PIC S9(013) PACKED-DECIMAL.
002300     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|•„†
002310                               PIC  X(005).
002320     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|Œ_–ñ‘Šz
002330                               PIC S9(013) PACKED-DECIMAL.
002340     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|Tœ‚·‚×‚«‹àŠz
002350                               PIC S9(013) PACKED-DECIMAL.
002360     03  ‚c‚X‚Q‚P|M—p•ÛŒ¯|ˆÈ~‰ñŽûƒTƒCƒg
002370                               PIC S9(002) PACKED-DECIMAL.
002380     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|Žc‘¶—¦
002390                               PIC S9(002)V9(007) PACKED-DECIMAL.
002400     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh
002410                               PIC  X(011).
002420     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh
002430                               PIC  X(006).
002440     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|ŒÅ’èŽ‘ŽYÅ—¦
002450                               PIC S9(002)V9(007) PACKED-DECIMAL.
002460     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘ÎÛŽæ“¾‰¿Šz
002470                               PIC S9(013) PACKED-DECIMAL.
002480     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz
002490                               PIC S9(013) PACKED-DECIMAL.
002500     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz
002510                               PIC S9(013) PACKED-DECIMAL.
002520     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿
002530                               PIC S9(013) PACKED-DECIMAL.
002540     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz
002550                               PIC S9(013) PACKED-DECIMAL.
002560     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿
002570                               PIC S9(013) PACKED-DECIMAL.
002580     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|Žc‘¶“ž’Bƒtƒ‰ƒO
002590                               PIC  X(001).
002600     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|Žc‘¶“ž’B”NŒŽ
002610                               PIC  X(006).
002620     03  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|\ƒtƒ‰ƒO
002630                               PIC  X(001).
002640     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽó‘Ôƒtƒ‰ƒO
002650                               PIC  X(001).
002660     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽŒŸŽûˆ—”NŒŽ
002670                               PIC  X(006).
002680     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽŒ_–ñŠJŽn“ú
002690                               PIC  X(008).
002700     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽÄƒŠ[ƒX‰ñ”
002710                               PIC S9(002) PACKED-DECIMAL.
002720     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ‰ð–ñ“ú
002730                               PIC  X(008).
002740     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ‰ð–ñ”NŒŽ
002750                               PIC  X(006).
002760     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ”„”p“ú
002770                               PIC  X(008).
002780     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ”„”p”NŒŽ
002790                               PIC  X(006).
002800     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽ”„”p——R
002810                               PIC  X(002).
002820     03  ‚c‚X‚Q‚P|‘OŒŽ|ŽæÁ‰ð–ñ——R
002830                               PIC  X(002).
002840     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŠú‰ð–ñ”NŒŽ“ú
002850                               PIC  X(008).
002860     03  ‚c‚X‚Q‚P|‘OŒŽ|‘k‹yˆ—‹æ•ª
002870                               PIC  X(001).
002880     03  ‚c‚X‚Q‚P|‘OŒŽ|‘k‹yˆ—”NŒŽ
002890                               PIC  X(006).
002900     03  ‚c‚X‚Q‚P|‘OŒŽ|‘OŒŽŒo‰ßŒŽ”
002910                               PIC S9(003) PACKED-DECIMAL.
002920     03  ‚c‚X‚Q‚P|‹¤’Ê|Šú––”NŒŽ
002930                               PIC  X(006).
002940     03  ‚c‚X‚Q‚P|‹¤’Ê|ŠúŽñ”NŒŽ
002950                               PIC  X(006).
002960     03  ‚c‚X‚Q‚P|‹¤’Ê|ŒŽŽŸ”NŒŽ
002970                               PIC  X(006).
002980     03  ‚c‚X‚Q‚P|‹¤’Ê|’Ç‰ÁŒ¸­ƒtƒ‰ƒO
002990                               PIC  X(001).
003000     03  ‚c‚X‚Q‚P|‹¤’Ê|Žæ“¾”N“x
003010                               PIC  X(004).
003020     03  ‚c‚X‚Q‚P|‹¤’Ê|ž‹pŒŽ”
003030                               PIC S9(003) PACKED-DECIMAL.
003040     03  ‚c‚X‚Q‚P|‹¤’Ê|“–ŒŽ–˜ž‹pŒo‰ßŒŽ”
003050                               PIC S9(003) PACKED-DECIMAL.
003060     03  ‚c‚X‚Q‚P|‹¤’Ê|“–Šúž‹pŒŽ”
003070                               PIC S9(013) PACKED-DECIMAL.
003080     03  ‚c‚X‚Q‚P|‹¤’Ê|ˆ—‹æ•ª
003090                               PIC  X(001).
003100     03  ‚c‚X‚Q‚P|‹¤’Ê|“–ŒŽž‹p‘ÎÛƒtƒ‰ƒO
003110                               PIC  X(001).
003120     03  ‚c‚X‚Q‚P|‹¤’Ê|’è—¦ž‹p’²®‰Â”\ƒtƒ‰ƒO
003130                               PIC  X(001).
003140     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~ƒtƒ‰ƒO
003150                               PIC  X(001).
003160     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú
003170                               PIC  X(008).
003180     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿
003190                               PIC S9(013) PACKED-DECIMAL.
003200     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv
003210                               PIC S9(013) PACKED-DECIMAL.
003220     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹pŽc‰¿Ý’èŠz
003230                               PIC S9(013) PACKED-DECIMAL.
003240     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽž‹pŠz
003250                               PIC S9(013) PACKED-DECIMAL.
003260     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv
003270                               PIC S9(013) PACKED-DECIMAL.
003280     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿
003290                               PIC S9(013) PACKED-DECIMAL.
003300     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿
003310                               PIC S9(013) PACKED-DECIMAL.
003320     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽ–˜ž‹pŠz—ÝŒv
003330                               PIC S9(013) PACKED-DECIMAL.
003340     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–ŒŽž‹pŠz
003350                               PIC S9(013) PACKED-DECIMAL.
003360     03  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz
003370                               PIC S9(013) PACKED-DECIMAL.
003380     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿
003390                               PIC S9(013) PACKED-DECIMAL.
003400     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv
003410                               PIC S9(013) PACKED-DECIMAL.
003420     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽž‹pŠz
003430                               PIC S9(013) PACKED-DECIMAL.
003440     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŒŽ–˜ž‹pŠz—ÝŒv
003450                               PIC S9(013) PACKED-DECIMAL.
003460     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿
003470                               PIC S9(013) PACKED-DECIMAL.
003480     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv
003490                               PIC S9(013) PACKED-DECIMAL.
003500     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽž‹pŠz
003510                               PIC S9(013) PACKED-DECIMAL.
003520     03  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–Šúž‹pŠz
003530                               PIC S9(013) PACKED-DECIMAL.
003540     03  ‚c‚X‚Q‚P|Å–±|ž‹p—¦
003550                               PIC S9(002)V9(007) PACKED-DECIMAL.
003560     03  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p
003570                               PIC  X(002).
003580     03  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p—¦
003590                               PIC S9(002)V9(007) PACKED-DECIMAL.
003600     03  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï
003610                               PIC S9(013) PACKED-DECIMAL.
003620     03  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq
003630                               PIC S9(002) PACKED-DECIMAL.
003640     03  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê
003650                               PIC S9(003) PACKED-DECIMAL.
003660     03  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï
003670                               PIC S9(013) PACKED-DECIMAL.
003680     03  ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿
003690                               PIC S9(013) PACKED-DECIMAL.
003700     03  ‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv
003710                               PIC S9(013) PACKED-DECIMAL.
003720     03  ‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz
003730                               PIC S9(013) PACKED-DECIMAL.
003740     03  ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz
003750                               PIC S9(013) PACKED-DECIMAL.
003760     03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz
003770                               PIC S9(013) PACKED-DECIMAL.
003780     03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz
003790                               PIC S9(013) PACKED-DECIMAL.
003800     03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv
003810                               PIC S9(013) PACKED-DECIMAL.
003820     03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz
003830                               PIC S9(013) PACKED-DECIMAL.
003840     03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz
003850                               PIC S9(013) PACKED-DECIMAL.
003860     03  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz
003870                               PIC S9(013) PACKED-DECIMAL.
003880     03  ‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿
003890                               PIC S9(013) PACKED-DECIMAL.
003900     03  ‚c‚X‚Q‚P|Å–±|\Žc‘¶“ž’Bƒtƒ‰ƒO
003910                               PIC  X(001).
003920     03  ‚c‚X‚Q‚P|Å–±|Å–±\Žc‘¶“ž’B”NŒŽ
003930                               PIC  X(006).
003940     03  ‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿
003950                               PIC S9(013) PACKED-DECIMAL.
003960     03  ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿
003970                               PIC S9(013) PACKED-DECIMAL.
003980     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“o˜^”NŒŽ“ú
003990                               PIC  X(008).
004000     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“o˜^ŽžŠÔ
004010                               PIC  X(008).
004020     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“o˜^’S“–ŽÒ
004030                               PIC  X(008).
004040     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|XV”NŒŽ“ú
004050                               PIC  X(008).
004060     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|XVŽžŠÔ
004070                               PIC  X(008).
004080     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|XVŽÒ
004090                               PIC  X(008).
004100     03  ‚c‚X‚Q‚P|ŠÇ—î•ñ|“ü—Í’S“–ŽÒƒR[ƒh
004110                               PIC  X(008).
000760     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000770*----------------------------------------------------------------*
000780*   ì‹Æ—Ìˆæ’è‹`                                                 *
000790*----------------------------------------------------------------*
000800 01  ‚v‚n‚q‚j|ƒGƒŠƒA.     					
000810*--< ƒGƒ‰[ƒR[ƒh >                                               
000820     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000830*                                                                 
000840*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
000850     03  ƒtƒ@ƒCƒ‹ó‘Ô.                                            
000860        05 ‚v|ó‘Ô                   PIC  X(02).                 
000870*					         	         	
000880*--< Œ”ƒGƒŠƒA >                                                 
000890     03  Œ”ƒGƒŠƒA.                                              
000900         05  ‚v|“ü—Í|Œ”‚P         PIC  9(09).                 
000910         05  ‚v|“ü—Í|Œ”‚Q         PIC  9(09).                 
000920         05  ‚v|XV|Œ”           PIC  9(09).                 
000930*                                                                 
000940*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000950     03  ƒtƒ‰ƒO|ƒGƒŠƒA.                                          
000960         05  ‚v|I—¹|ƒtƒ‰ƒO‚P       PIC  X(01).                 
000970         05  ‚v|I—¹|ƒtƒ‰ƒO‚Q       PIC  X(01).                 
000980         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000990*                                                                 
001000*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
001010     03  ‚v|“K—p“ú                   PIC  X(08).                 
001020*----------------------------------------------------------------*
001030*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001040*----------------------------------------------------------------*
001050 01  CALL-AREA.                                                   
001060*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001070     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001080     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001090*----------------------------------------------------------------*
001100*    ‚b‚n‚o‚x—Ìˆæ                                                *
001110*----------------------------------------------------------------*
001120*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001130 01  IF-CHOCO001.                                                 
001140     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001150*                                                                 
001160*----------------------------------------------------------------*
001170*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001180*----------------------------------------------------------------*
001190 01  PARA-AREA.                                                   
001200     COPY CPBCO001.                                               
001210*----------------------------------------------------------------*
001220*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001230*----------------------------------------------------------------*
001240 CONSTANT                             SECTION.                    
001250 01  ’è”—Ìˆæ.                                                    
001260     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS770".
001270     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001280                                      VALUE  "Ž‘ŽYî•ñˆÚs ".     
001290     03  ’è”|‚r‚p‚k‚n‚j             PIC  9(04)  VALUE  ZERO.    
001300     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC  9(04)  VALUE  0100.    
001310     03  ’è”|³íó‘Ô               PIC  9(04)  VALUE  ZERO.    
001320     03  ’è”|ˆÙíó‘Ô               PIC  9(04)  VALUE  0009.    
001330******************************************************************
001340*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001350******************************************************************
001360 PROCEDURE                            DIVISION.                   
001370*                                                                 
001380     PERFORM   ‰Šúˆ—.                                          
001390*                                                                 
001400     PERFORM   Žåˆ—     UNTIL  (‚v|I—¹|ƒtƒ‰ƒO‚P = "Y")       
001410                          AND    (‚v|I—¹|ƒtƒ‰ƒO‚Q = "Y").      
001420*                                                                 
001430     PERFORM   I—¹ˆ—.                                          
001440*                                                                 
001450     STOP RUN.                                                    
001460*                                                                 
001470******************************************************************
001480*    ‰Šúˆ—                                                    *
001490******************************************************************
001500 ‰Šúˆ—                             SECTION.                    
001510 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001520*                                                                 
001530*----------------------------------------------------------------*
001540*    ŠJŽnƒƒbƒZ[ƒWo—Í                                          *
001550*----------------------------------------------------------------*
001560     INITIALIZE                       IF-CHOCO001.                
001570     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001580     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001590     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001600     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001610     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001620     CALL  CLOCO001                USING  IF-CHOCO001.            
001630*                                                                 
001640*----------------------------------------------------------------*
001650*    ì‹Æ—Ìˆæ‚Ì‰Šú’lÝ’è                                        *
001660*----------------------------------------------------------------*
001670     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001680     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001690*                                                                 
001700*----------------------------------------------------------------*
001710*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001720*----------------------------------------------------------------*
001730     PERFORM  ‚n‚q‚`‚b‚k‚dÚ‘±.                                   
001740*----------------------------------------------------------------*
001750*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                            *
001760*----------------------------------------------------------------*
001770     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
001780*----------------------------------------------------------------*
001790*    Ž‘ŽYî•ñ“Çž’è‹`                                            *
001800*----------------------------------------------------------------*
001810     PERFORM  Ž‘ŽYî•ñ“Çž’è‹`.                                   
001820*----------------------------------------------------------------*
001830*   Ž‘ŽYî•ñ“Çži‚PŒ–Új                                       *
001840*----------------------------------------------------------------*
001850     PERFORM   Ž‘ŽYî•ñ“Çžˆ—.                                  
001860*----------------------------------------------------------------*
001870*   Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çži‚PŒ–Új                               *
001880*----------------------------------------------------------------*
001890     PERFORM   Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—.                          
001900*                                                                 
001910 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001920     EXIT.                                                        
001930******************************************************************
001940*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001950******************************************************************
001960 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001970 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001980*                                                                 
001990*--< ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“ŒÄ‚Ño‚µ >                     
002000     CALL  COBCO001                USING  PARA-AREA.              
002010*                                                                 
002020     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002030     MOVE  PARA-USERNAME              TO  USERNAME.               
002040     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002050*                                                                 
002060*----------------------------------------------------------------*
002070*    ŠJŽnÚ‘±                                                    *
002080*----------------------------------------------------------------*
002090     IF  DB-STRING  =  SPACE                                      
002100        
      *       EXEC  SQL                                                 
002110*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002120*       END-EXEC 
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
002130     ELSE                                                         
002140        
      *       EXEC  SQL                                                 
002150*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002160*            USING  :DB-STRING                                    
002170*       END-EXEC 
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
002180     END-IF.                                                      
002190*                                                                 
002200*----------------------------------------------------------------*
002210*    Ú‘±ó‘Ô”»’è                                                *
002220*----------------------------------------------------------------*
002230      EVALUATE  SQLCODE                                           
002240        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
002250           CONTINUE                                               
002260        WHEN   OTHER                                              
002270*--<       Ú‘±ƒGƒ‰[ >                                           
002280           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002290           PERFORM  ƒGƒ‰[ˆ—                                    
002300     END-EVALUATE.                                                
002310*                                                                 
002320 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002330     EXIT.                                                        
002340******************************************************************
002350*  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                              *
002360******************************************************************
002370 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
002380 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
002390*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
002400     OPEN  INPUT   “ü—Íƒtƒ@ƒCƒ‹.                                  
002410*                                                                 
002420*----------------------------------------------------------------*
002430*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
002440*----------------------------------------------------------------*
002450     EVALUATE  ‚v|ó‘Ô                                           
002460        WHEN   ZERO                                               
002470           CONTINUE                                               
002480        WHEN  OTHER                                               
002490*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
002500           MOVE     -20                TO  ‚v|ƒGƒ‰[ƒR[ƒh       
002510           PERFORM  ƒGƒ‰[ˆ—                                    
002520     END-EVALUATE.                                                
002530*                                                                 
002540 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
002550     EXIT.                                                        
002560******************************************************************
002570*    Ž‘ŽYî•ñ“Çž’è‹`                                            *
002580******************************************************************
002590 Ž‘ŽYî•ñ“Çž’è‹`                     SECTION.                    
002600 Ž‘ŽYî•ñ“Çž’è‹`|‚r‚s‚`‚q‚s.                                    
002610*                                                                 
002620     
      *    EXEC SQL                                                     
002630*       DECLARE CUR1  CURSOR FOR                                  
002640*          SELECT  ƒL[î•ñQŒ_–ñ”Ô†                             
002650*                 ,ƒL[î•ñQ•¨Œ”Ô†                             
002660*                 ,•¨ŒQ•¨ŒŽæ“¾‰¿Šz                             
002670*                 ,•¨Œˆ•ªQ”„”pƒtƒ‰ƒO                           
002680*           FROM   D921SIJ_TBL                                    
002690*    END-EXEC.
002700*----------------------------------------------------------------*
002710*    Ž‘ŽYî•ñ‚n‚o‚d‚mˆ—                                        *
002720*----------------------------------------------------------------*
002730     
      *    EXEC  SQL                                                    
002740*       OPEN  CUR1                                                
002750*    END-EXEC.
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
002760*----------------------------------------------------------------*
002770*    Ž‘ŽYî•ñ“Çžó‘Ô”»’è                                        *
002780*----------------------------------------------------------------*
002790     EVALUATE  SQLCODE                                            
002800        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002810*--<       ³í >                                                 
002820           CONTINUE                                               
002830        WHEN  OTHER                                               
002840*--<       “ÇžƒGƒ‰[    >                                        
002850           MOVE      -30              TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002860           PERFORM   ƒGƒ‰[ˆ—                                   
002870      END-EVALUATE.                                               
002880*									
002890 Ž‘ŽYî•ñ“Çž’è‹`|‚d‚w‚h‚s.                                      
002900     EXIT.                                                        
002910******************************************************************
002920*  Ž‘ŽYî•ñ“Çžˆ—i‚PŒ–Új                                    *
002930******************************************************************
002940 Ž‘ŽYî•ñ“Çžˆ—            SECTION.                             
002950 Ž‘ŽYî•ñ“Çžˆ—|‚r‚s‚`‚q‚s.                                    
002960*--< Ž‘ŽYî•ñ“Çžˆ— >                                           
002970     
      *    EXEC SQL                                                     
002980*        FETCH  CUR1                                              
002990*           INTO                                                  
003000*                 :‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô†                   
003010*                ,:‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô†                   
003020*                ,:‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz                   
003030*                ,:‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO                 
003040*     END-EXEC.
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
               ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO IN
               Ž‘ŽYî•ñƒe[ƒuƒ‹
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
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
003050*                                                                 
003060*----------------------------------------------------------------*
003070*    Ž‘ŽYî•ñ“Çž‚ðŠm”F                                          *
003080*----------------------------------------------------------------*
003090     EVALUATE   SQLCODE                                           
003100        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
003110*--<       ³í >                                                 
003120           CONTINUE                                               
003130        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
003140*--<       “ÇžI—¹ >                                             
003150           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO‚P      
003160        WHEN   OTHER                                              
003170*--<       “ÇžƒGƒ‰[ >                                           
003180           MOVE     -40               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003190           PERFORM  ƒGƒ‰[ˆ—                                    
003200     END-EVALUATE.                                                
003210*                                                                 
003220 Ž‘ŽYî•ñ“Çžˆ—|‚d‚w‚h‚s.                                      
003230     EXIT.                                                        
003240******************************************************************
003250*  Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—i‚PŒ–Új                            *
003260******************************************************************
003270 Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—            SECTION.                     
003280 Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—|‚r‚s‚`‚q‚s.                            
003290     READ  “ü—Íƒtƒ@ƒCƒ‹                                           
003300        AT END                                                    
003310           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO‚Q      
003320           GO    TO   Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—|‚d‚w‚h‚s          
003330     END-READ.                                                    
003340* *--< Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžó‘Ô”»’è >                             
003350     EVALUATE  ‚v|ó‘Ô                                           
003360        WHEN  ZERO                                                
003370           MOVE  “ü—Í|Œ_–ñ‚m‚n       TO  ‚v‚r|Œ_–ñ”Ô†          
003380           MOVE  “ü—Í|•¨Œ‚m‚n       TO  ‚v‚r|•¨Œ”Ô†          
003390           MOVE  “ü—Í|‚j‚d‚x|‰ð–ñ“ú TO  ‚v‚r|‰ð–ñ“ú            
003400*--<       Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“ü—ÍŒ” >                             
003410           COMPUTE   ‚v|“ü—Í|Œ”‚Q  =  ‚v|“ü—Í|Œ”‚Q + 1    
003420        WHEN  OTHER                                               
003430*--<       Ž•ªƒtƒ@ƒCƒ‹“ÇžƒGƒ‰[ >                               
003440           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003450           PERFORM  ƒGƒ‰[ˆ—                                    
003460     END-EVALUATE.                                                
003470 Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—|‚d‚w‚h‚s.                              
003480     EXIT.                                                        
003490**                                                                
003500******************************************************************
003510*    Žåˆ—                                                      *
003520******************************************************************
003530 Žåˆ—                               SECTION.                    
003540 Žåˆ—|‚r‚s‚`‚q‚s.                                              
003550*                                                                 
003560*----------------------------------------------------------------*
003570*    V•¨Œ”Ô†‚ðŽæ“¾‚·‚é                                        *
003580*----------------------------------------------------------------*
003590     PERFORM  V•¨Œ”Ô†ˆ—.                                     
003600*									
003610     IF   ‚c‚X‚Q‚P|ƒL[î•ñ|Œ_–ñ”Ô† = ‚v‚r|Œ_–ñ”Ô†           
003620     AND  ‚c‚X‚Q‚P|ƒL[î•ñ|•¨Œ”Ô† = ‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô† 
003630         PERFORM  Ž‘ŽYî•ñXV•ÒWˆ—                            
003640         PERFORM  Ž‘ŽYî•ñXV•ÒWˆ—                            
003650     END-IF.                                                      
003660*                                                                 
003670*--<    Ž‘ŽYî•ñŽ‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çž >                            
003680           PERFORM  Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çžˆ—                      
003690           PERFORM  Ž‘ŽYî•ñ“Çžˆ—.                             
003700*                                                                 
003710 Žåˆ—|‚d‚w‚h‚s.                                                
003720     EXIT.                                                        
003730******************************************************************
003740*   V•¨Œ”Ô†ˆ—                                               *
003750******************************************************************
003760 V•¨Œ”Ô†ˆ—                     SECTION.                      
003770 V•¨Œ”Ô†ˆ—|‚r‚s‚`‚q‚s.                                      
003780     
      *    EXEC SQL                                                     
003790*          SELECT  V•¨Œ”Ô†                                     
003800*                  ,•¨Œ”Ô†                      
003801*                  ,Œ_–ñ”Ô†                      
003802*                  ,‰ð–ñ“ú                      
003803*            INTO  :‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô†                      
003804*                  ,:‚h‚j‚n‚O‚P‚O|•¨Œ”Ô†                      
003805*                  ,:‚h‚j‚n‚O‚P‚O|Œ_–ñ”Ô†                      
003806*                  ,:‚h‚j‚n‚O‚P‚O|‰ð–ñ“ú                      
003810*		   FROM  IKOTBL010                                      
003820*		  WHERE  SUBSTR (Œ_–ñ”Ô†,1,9) = :‚v‚r|Œ_–ñ”Ô†        
003830* 	  WHERE  Œ_–ñ”Ô† = :‚v‚r|Œ_–ñ”Ô†                     
003840*		    AND  SUBSTR (•¨Œ”Ô†,2,3) = :‚v‚r|•¨Œ”Ô†        
003850* 	    AND  •¨Œ”Ô† = :‚v‚r|•¨Œ”Ô†        
003851* 	    AND  ‰ð–ñ“ú   = :‚v‚r|‰ð–ñ“ú                       
003860*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
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
               ‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô†
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|Œ_–ñ”Ô† IN
               ‚v‚r|’†ŠÔ[ƒR[ƒh•Ï”
               SQL-SQHSTV(2)
           MOVE 10 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚v‚r|•¨Œ”Ô† IN
               ‚v‚r|’†ŠÔ[ƒR[ƒh•Ï”
               SQL-SQHSTV(3)
           MOVE 4 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|‰ð–ñ“ú IN
               ‚v‚r|’†ŠÔ[ƒR[ƒh•Ï”
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
003870*--<  V•¨Œ”Ô†ˆ—‚ðŠm”F >                                      
003880     EVALUATE   SQLCODE                                           
003890        WHEN    ’è”|‚r‚p‚k‚n‚j                                  
003900*--<       ³í >                                                 
003910            COMPUTE   ‚v|“ü—Í|Œ”‚P  =  ‚v|“ü—Í|Œ”‚P + 1   
003920        WHEN   OTHER                                              
003930*--<      V•¨Œ”Ô†ˆ—ƒGƒ‰[ >                                  
003940           MOVE   ZERO                TO  ‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô†
003952           MOVE     -60               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003960           PERFORM  ƒGƒ‰[ˆ—                                    
003970     END-EVALUATE.                                                
003980*                                                                 
003990*                                                                 
004000 V•¨Œ”Ô†ˆ—|‚d‚w‚h‚s.                                        
004010     EXIT.                                                        
004020******************************************************************
004030*    Ž‘ŽYî•ñXV•ÒWˆ—                                        *
004040******************************************************************
004050 Ž‘ŽYî•ñXV•ÒWˆ—           SECTION.                          
004060 Ž‘ŽYî•ñXV•ÒWˆ—|‚r‚s‚`‚q‚s.                                
004070*--<    No.91 >                                                   
004080     MOVE “ü—Í|•t•Û‹æ•ª|“®ŽY‘‡  TO                            
004090                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª             
004100*--<    No.92 >                                                   
004110     IF “ü—Í|•t•Û“ú|”NŒŽ“ú = ZERO                              
004111        MOVE  ZERO   TO   ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú  
004112     ELSE
004120        IF “ü—Í|•t•Û“ú|¢‹I = '0'                                  
004121              MOVE  '19' TO  ‚v‚r|¢‹I                               
004130        ELSE                                                         
004140              MOVE  '20' TO  ‚v‚r|¢‹I                                
004150        END-IF                                                      
004160        STRING  ‚v‚r|¢‹I , “ü—Í|•t•Û“ú|”NŒŽ“ú                      
004170               DELIMITED  BY  SIZE  INTO  ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú
004171     END-IF.  
004180*--<    No.94 >                                                   
004190     STRING  ‚v‚r|¢‹I , “ü—Í|•t•Û“ú|”NŒŽ“ú                      
004200          DELIMITED  BY  SIZE  INTO                               
004210                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú.      
004220*--<    No.95 >                                                   
004230     MOVE “ü—Í|“®‘•ÛŒ¯—¿          TO                            
004240                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿               
004250*--<    No.96 >                                                   
004260     MOVE “ü—Í|Ž–ŒÌ—L–³‹æ•ª        TO                            
004270                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ—L–³                 
004280*--<    No.97 >                                                   
004290     IF “ü—Í|Ž–ŒÌ“ú|¢‹I = '0'                                    
004300           MOVE  '19' TO  ‚v‚r|Ž–ŒÌ“ú|¢‹I                        
004310     ELSE                                                         
004320           MOVE  '20' TO ‚v‚r|Ž–ŒÌ“ú|¢‹I                         
004330     END-IF.                                                      
004340     STRING  ‚v‚r|Ž–ŒÌ“ú|¢‹I , “ü—Í|Ž–ŒÌ“ú|”NŒŽ“ú              
004350          DELIMITED  BY  SIZE  INTO   ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú. 
004360*--<    No.98 >                                                   
004370     MOVE “ü—Í|•ÛŒ¯V‹KŒp‘±‹æ•ª    TO                            
004380                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘±                 
004390*--<    No.99 >                                                   
004400     MOVE “ü—Í|“®‘•ÛŒ¯—¿—¦        TO                            
004410                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦                 
004420*--<    No.100 >                                                  
004430     MOVE “ü—Í|“®‘•ÛŒ¯‰¿Ši        TO                            
004440                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši                 
004450*--<    No.101 >                                                  
004460     MOVE “ü—Í|“®‘•¥–ß‚µ•ÛŒ¯—¿    TO                            
004470                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿               
004480*--<    No.102 >                                                  
004490     MOVE “ü—Í|“®‘•ÛŒ¯ØŒ””Ô†    TO                            
004500                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô†         
004510*--<    No.103 >                                                  
004520     MOVE “ü—Í|“®‘•ÛŒ¯—¿—¦        TO                            
004530                     ‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦                   
004540*--<    No.104 >                                                  
004550     MOVE “ü—Í|Žc‰¿î•ñ|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz  TO                
004560                    ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz      
004570*--<    No.105 >                                                  
004580     MOVE “ü—Í|Ý’uêŠ–¼ƒJƒi      TO                            
004590                    ‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi            
004600*--<    No.109 >                                                  
004610     MOVE “ü—Í|•ÛŒ¯î•ñ|•ÛŒ¯‰ïŽÐƒR[ƒh  TO                      
004620                    ‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh        
004630*--<    No.110 >                                                  
004640     MOVE “ü—Í|M—p•ÛŒ¯ƒR[ƒh|‹@ŠB‹æ•ª   TO                     
004650                   ‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh           
004660*--<    No.111 >                                                  
004670     MOVE “ü—Í|’Ê’m‘‘—•t“ú      TO                              
004680                   ‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú               
004690*--<    No.113 >                                                  
004700     MOVE “ü—Í|M—p•ÛŒ¯—¿        TO   ‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿ 
004710*--<    No.114 >                                                  
004720     MOVE “ü—Í|•„†ˆê˜A”Ô†      TO   ‚c‚X‚Q‚P|M—p•ÛŒ¯|•„†   
004730*--<    No.119 >                                                  
004740     MOVE “ü—Í|”[•tæƒR[ƒh      TO                              
004750                  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh        
004760*--<    No.120 >                                                  
004770     MOVE “ü—Í|”[•tæƒR[ƒh      TO                              
004780                  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh              
004790*--<    No.123 >                                                  
004800     MOVE “ü—Í|”NÅŠz            TO                              
004810                  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz                    
004820*--<    No.124 >                                                  
004830     MOVE “ü—Í|‘O”N“x•]‰¿Šz      TO                              
004840                  ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz              
004850*--<    No.125 >                                                  
004860     MOVE “ü—Í|‘O”N“x—˜_•ë‰¿    TO                              
004870                 ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿             
004880*--<    No.126 >                                                  
004890     MOVE “ü—Í|“–”N“x•]‰¿Šz      TO                              
004900                 ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz               
004910*--<    No.127 >                                                  
004920     MOVE “ü—Í|“–”N“x—˜_•ë‰¿    TO                              
004930                 ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿             
004940*--<    No.156 >                                                  
004950     IF  “ü—Í|‰ð–ñ‹æ•ª = '0'                                     
004960        MOVE  0                   TO  ‚v‚r|‰ð–ñ‹æ•ª              
004970     ELSE                                                         
004980        MOVE  1                   TO  ‚v‚r|‰ð–ñ‹æ•ª              
004990     END-IF.                                                      
005000*--<    No.157 >                                                  
005010     MOVE “ü—Í|‰ð–ñ“ú            TO                              
005020                 ‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú                   
005030*--<    No.158 >                                                  
005040     MOVE “ü—Í|‰ïŽÐ‘OŠú––•ë‰¿    TO                              
005050                 ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿                   
005060*--<    No.159 >                                                  
005070     COMPUTE ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv                 
005080                                    = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
005090                                  - ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿
005100*--<    No.162 >                                                  
005110     MOVE  “ü—Í|‰ïŽÐŒ»Ý•ë‰¿    TO   ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿
005120     COMPUTE ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv                 
005130                                    = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
005140                                    - ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿
005150*--<    No.164 ‚Æ@No.192 >                                       
005160     IF  ‚c‚X‚Q‚P|•¨Œˆ•ª|”„”pƒtƒ‰ƒO = '1'                     
005170        MOVE  “ü—Í|‰ïŽÐŒ»Ý•ë‰¿    TO                            
005180                                      ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿
005190        MOVE  “ü—Í|Å–@“–Šú––•ë‰¿  TO                            
005200                 ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿                   
005210        COMPUTE   ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz =            
005220                                  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿    
005230                                - ‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿  
005240     ELSE                                                         
005250        MOVE  ZERO   TO   ‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿            
005260        MOVE  ZERO   TO   ‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz      
005270     END-IF.                                                      
005280*--<    No.165 >                                                  
005290     COMPUTE ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv                 
005300                                    = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
005310                                    - ‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿
005320*--<    No.167 >                                                  
005330     MOVE “ü—Í|‰ïŽÐ“–Šúž‹p‚      TO                            
005340                  ‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz                  
005350*--<    No.168 >                                                  
005360     MOVE “ü—Í|‰ïŽÐ—˜_‘OŠú––•ë‰¿  TO                            
005370                  ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿                  
005380*--<    No.169 >                                                  
005390     COMPUTE ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv                 
005400                                  = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz  
005410                                  - ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿
005420*--<    No.171 172 >                                              
005430     MOVE “ü—Í|‰ïŽÐ—˜_“–Šú––•ë‰¿    TO                          
005440                                     ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿ 
005450     COMPUTE ‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv                 
005460                                    = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
005470                                    - ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿
005480*--<    No.173 >                                                  
005490     COMPUTE ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv                 
005500                               = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz     
005510                                    - ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿
005520*--<    No.175 >                                                  
005530     COMPUTE ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽž‹pŠz                       
005540                                  = ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿
005550                                  - ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿  
005560*--<    No.177 >                                                  
005570     MOVE   “ü—Í|Å–@Š„‘‹æ•ª      TO  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p  
005580*--<    No.179 >                                                  
005590     MOVE   “ü—Í|Å–@Š„‘ž‹p”ï    TO  ‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï
005600*--<    No.180 >                                                  
005610     MOVE   “ü—Í|Å–@“Á•Êž‹p—¦|•ªŽq                            
005620                                TO  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq
005630*--<    No.181 >                                                  
005640     MOVE   “ü—Í|Å–@“Á•Êž‹p—¦|•ª•ê                            
005650                                TO  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê
005660*--<    No.182 >                                                  
005670     MOVE   “ü—Í|Å–@“Á•Êž‹p”ï    TO  ‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï
005680*--<    No.183 >                                                  
005690     MOVE   “ü—Í|Å–@‘OŠú––•ë‰¿–@’è TO                           
005700                    ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿              
005710*--<    No.184 >                                                  
005720     COMPUTE ‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv                       
005730                                    = ‚c‚X‚Q‚P|•¨Œ|•¨ŒŽæ“¾‰¿Šz
005740                                - ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿
005750*--<    No.185 >                                                  
005760     MOVE   “ü—Í|Å–@ŒJ‰z’´‰ßŠz    TO                            
005770                  ‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz                  
005780*--<    No.186 187 >                                              
005790     MOVE   “ü—Í|Å–@“–Šú––•ë‰¿    TO  ‚v‚r|Å–@“–Šú––•ë‰¿      
005800     MOVE   “ü—Í|Å–@ž‹pŒÀ“xŠz    TO                            
005810                  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz                  
005820     COMPUTE ‚v‚r|ŒÀ“xŠz      = ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿ 
005830                               - ‚v‚r|Å–@“–Šú––•ë‰¿             
005840     IF  ‚v‚r|ŒÀ“xŠz < ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz            
005850        COMPUTE ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz =                  
005860                                    ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz
005870                                    - ‚v‚r|ŒÀ“xŠz                
005880     ELSE                                                         
005890        MOVE ZERO TO   ‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz             
005900     END-IF.                                                      
005910*--<    No.188 >                                                  
005920     COMPUTE  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv  =               
005930                                 ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿ 
005940                                 - ‚v‚r|Å–@“–Šú––•ë‰¿           
005950*--<    No.189 >                                                  
005960     COMPUTE  ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv                  
005970                                = ‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿
005980                                - ‚v‚r|Å–@“–Šú––•ë‰¿            
005990*--<    No.190 >                                                  
006000     MOVE  “ü—Í|“–Šúž‹p‰ß•s‘«Šz   TO                            
006010                    ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz                
006020     IF  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz < ZERO                    
006030        MOVE  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz                      
006040                                TO  ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz
006050     ELSE                                                         
006060        MOVE  ZERO   TO    ‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz         
006070     END-IF.                                                      
006080*--<    No.191 >                                                  
006090     MOVE  “ü—Í|Å–@ŒJ‰z’´‰ßŠz     TO                            
006100                    ‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz                
006110*--<    No.193 >                                                  
006120     MOVE  “ü—Í|Å–@“–Šú––•ë‰¿     TO                            
006130                    ‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿              
006140*--<    No.196 >                                                  
006150     MOVE  “ü—Í|Å–@‘OŠú––•ë‰¿–@’è TO                            
006160                    ‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿ .              
006170*                                                                 
006180 Ž‘ŽYî•ñXV•ÒWˆ—|‚d‚w‚h‚s.                                  
006190     EXIT.                                                        
006200******************************************************************
006210*    Ž‘ŽYî•ñXVo—Íˆ—                                        *
006220******************************************************************
006230 Ž‘ŽYî•ñXVo—Íˆ—           SECTION.                          
006240 Ž‘ŽYî•ñXVo—Íˆ—|‚r‚s‚`‚q‚s.                                
006250                                                                  
006260     
      *    EXEC SQL                                                     
006270*       UPDATE D921SIJ_TBL                                        
006280*          SET                                                    
006290*--<    No.91 >                                                   
006300*              “®‘•ÛŒ¯Q“®‘•t•Û‹æ•ª                             
006310*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•Û‹æ•ª      
006320*--<    No.92 >                                                   
006330*             ,“®‘•ÛŒ¯Q•t•Û“ú                                   
006340*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û“ú            
006350*--<    No.94 >                                                   
006360*             ,“®‘•ÛŒ¯Q“®‘•t•ÛŠJŽn”NŒŽ“ú                       
006370*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•t•ÛŠJŽn”NŒŽ“ú
006380*--<    No.95 >                                                   
006390*             ,“®‘•ÛŒ¯Q“®‘•ÛŒ¯—¿                               
006400*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯—¿        
006410*--<    No.96 >                                                   
006420*             ,“®‘•ÛŒ¯QŽ–ŒÌ—L–³                                 
006430*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ—L–³          
006440*--<    No.97>                                                    
006450*             ,“®‘•ÛŒ¯QŽ–ŒÌ“ú                                   
006460*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ž–ŒÌ“ú            
006470*--<    No.98 >                                                   
006480*             ,“®‘•ÛŒ¯Q•ÛŒ¯Œp‘±                                 
006490*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯Œp‘±          
006500*--<    No.99 >                                                   
006510*             ,“®‘•ÛŒ¯Q•ÛŒ¯—¿—¦                                 
006520*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯—¿—¦          
006530*--<    No.100 >                                                  
006540*             ,“®‘•ÛŒ¯Q•ÛŒ¯‰¿Ši                                 
006550*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•ÛŒ¯‰¿Ši          
006560*--<    No.101 >                                                  
006570*             ,“®‘•ÛŒ¯Q•Ô–ß•ÛŒ¯—¿                               
006580*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•Ô–ß•ÛŒ¯—¿        
006590*--<    No.102 >                                                  
006600*             ,“®‘•ÛŒ¯Q“®‘•ÛŒ¯ØŒ””Ô†                         
006610*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|“®‘•ÛŒ¯ØŒ””Ô†  
006620*--<    No.103 >                                                  
006630*             ,“®‘•ÛŒ¯Q•t•Û—¦                                   
006640*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|•t•Û—¦            
006650*--<    No.104 >                                                  
006660*             ,“®‘•ÛŒ¯QŒp‘±ƒŠ[ƒXž‹p‘ÎÛŠz                     
006670*                      = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Œp‘±ƒŠ[ƒXž‹p‘ÎÛŠz
006680*--<    No.105 >                                                  
006690*             ,“®‘•ÛŒ¯QÝ’uêŠ–¼ƒJƒi                           
006700*                        = :‚c‚X‚Q‚P|“®‘•ÛŒ¯|Ý’uêŠ–¼ƒJƒi    
006710*--<    No.109 >                                                  
006720*             ,M—p•ÛŒ¯QM—p•ÛŒ¯‰ïŽÐƒR[ƒh                       
006730*                        = :‚c‚X‚Q‚P|M—p•ÛŒ¯|M—p•ÛŒ¯‰ïŽÐƒR[ƒh
006740*--<    No.110 >                                                  
006750*             ,M—p•ÛŒ¯Q‹@ŠB—Þ•ª—ÞƒR[ƒh                         
006760*                        = :‚c‚X‚Q‚P|M—p•ÛŒ¯|‹@ŠB—Þ•ª—ÞƒR[ƒh  
006770*--<    No.111 >                                                  
006780*             ,M—p•ÛŒ¯Q’Ê’m‘”­‘—“ú                             
006790*                        = :‚c‚X‚Q‚P|M—p•ÛŒ¯|’Ê’m‘”­‘—“ú      
006800*--<    No.113 >                                                  
006810*             ,M—p•ÛŒ¯Q•ÛŒ¯—¿                                   
006820*                        = :‚c‚X‚Q‚P|M—p•ÛŒ¯|•ÛŒ¯—¿            
006830*--<    No.114 >                                                  
006840*             ,M—p•ÛŒ¯Q•„†                                     
006850*                        = :‚c‚X‚Q‚P|M—p•ÛŒ¯|•„†              
006860*--<    No.119 >                                                  
006870*            ,ŒÅ’èŽ‘ŽYÅQ‘O”N“x”[•tæƒR[ƒh                      
006880*                    = : ‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x”[•tæƒR[ƒh 
006890*--<    No.120 >                                                  
006900*             ,ŒÅ’èŽ‘ŽYÅQ”[•tæƒR[ƒh                           
006910*                          = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”[•tæƒR[ƒh  
006920*--<    No.123 >                                                  
006930*             ,ŒÅ’èŽ‘ŽYÅQ”NÅŠz                                 
006940*                          = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|”NÅŠz        
006950*--<    No.124 >                                                  
006960*             ,ŒÅ’èŽ‘ŽYÅQ‘O”N“x•]‰¿Šz                           
006970*                          = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x•]‰¿Šz  
006980*--<    No.125 >                                                  
006990*             ,ŒÅ’èŽ‘ŽYÅQ‘O”N“x—˜_•ë‰¿                         
007000*                          = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|‘O”N“x—˜_•ë‰¿
007010*--<    No.126 >                                                  
007020*             ,ŒÅ’èŽ‘ŽYÅQ“–”N“x•]‰¿Šz                           
007030*                          = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x•]‰¿Šz  
007040*--<    No.127 >                                                  
007050*             ,ŒÅ’èŽ‘ŽYÅQ“–”N“x—˜_•ë‰¿                         
007060*                          = :‚c‚X‚Q‚P|ŒÅ’èŽ‘ŽYÅ|“–”N“x—˜_•ë‰¿
007070*--<    No.156 >                                                  
007080*             ,‰ïŽÐ—˜_Qž‹p’âŽ~ƒtƒ‰ƒO                           
007090*                          = :‚v‚r|‰ð–ñ‹æ•ª                      
007100*--<    No.157 >                                                  
007110*             ,‰ïŽÐ—˜_Qž‹p’âŽ~“ú                               
007120*                          = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|ž‹p’âŽ~“ú      
007130*--<    No.158 >                                                  
007140*             ,‰ïŽÐ—˜_Q‘OŠú––•ë‰¿                               
007150*                          = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú––•ë‰¿      
007160*--<    No.159 >                                                  
007170*             ,‰ïŽÐ—˜_Q‘OŠú–˜ž‹pŠz—ÝŒv                         
007180*                          = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŠú–˜ž‹pŠz—ÝŒv
007190*--<    No.162 >                                                  
007200*            ,‰ïŽÐ—˜_Q‘OŒŽ–˜ž‹pŠz—ÝŒv                          
007210*                          = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|‘OŒŽ–˜ž‹pŠz—ÝŒv
007220*--<    No.163 >                                                  
007230*             ,‰ïŽÐ—˜_QŒ»Ý•ë‰¿                                 
007240*                          = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|Œ»Ý•ë‰¿        
007250*--<    No.164 >                                                  
007260*             ,‰ïŽÐ—˜_Qœ‹p•ë‰¿  = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|œ‹p•ë‰¿
007270*--<    No.165 >                                                  
007280*             ,‰ïŽÐ—˜_Q“–ŒŽ–˜ž‹pŠz—ÝŒv                         
007290*                          = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv
007300*--<    No.167 >                                                  
007310*             ,‰ïŽÐ—˜_Q“–Šúž‹pŠz                               
007320*                          = :‚c‚X‚Q‚P|‰ïŽÐ—˜_|“–Šúž‹pŠz      
007330*--<    No.168 >                                                  
007340*             ,ŠÇ—‰ïŒvQ‘OŠú––•ë‰¿                               
007350*                          = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú––•ë‰¿      
007360*--<    No.169 >                                                  
007370*             ,ŠÇ—‰ïŒvQ‘OŠú–˜ž‹pŠz—ÝŒv                         
007380*                          = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv
007390*--<    No.171 >                                                  
007400*             ,ŠÇ—‰ïŒvQ‘OŒŽ–˜ž‹pŠz—ÝŒv                         
007410*                          = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv
007420*--<    No.172 >                                                  
007430*             ,ŠÇ—‰ïŒvQŒ»Ý•ë‰¿  = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|Œ»Ý•ë‰¿
007440*--<    No.173 >                                                  
007450*             ,ŠÇ—‰ïŒvQ“–ŒŽ–˜ž‹pŠz—ÝŒv                         
007460*                          = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv
007470*--<    No.175 >                                                  
007480*             ,ŠÇ—‰ïŒvQ“–Šúž‹pŠz                               
007490*                       = :‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽž‹pŠz         
007500*--<    No.177 >                                                  
007510*             ,Å–±QŠ„‘ž‹p         = :‚c‚X‚Q‚P|Å–±|Š„‘ž‹p 
007520*--<    No.179 >                                                  
007530*             ,Å–±QŠ„‘ž‹p”ï                                   
007540*                          = :‚c‚X‚Q‚P|Å–±|Š„‘ž‹p”ï          
007550*--<    No.180 >                                                  
007560*             ,Å–±Q“Á•Êž‹p—¦•ªŽq                               
007570*                          = :‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ªŽq      
007580*--<    No.181 >                                                  
007590*             ,Å–±Q“Á•Êž‹p—¦•ª•ê                               
007600*                          = :‚c‚X‚Q‚P|Å–±|“Á•Êž‹p—¦•ª•ê      
007610*--<    No.182 >                                                  
007620*             ,Å–±Q“Á•Êž‹p”ï                                   
007630*                          = :‚c‚X‚Q‚P|Å–±|“Á•Êž‹p”ï          
007640*--<    No.183 >                                                  
007650*             ,Å–±Q‘OŠú––ŽÀŽ{Šz•ë‰¿                             
007660*                          = :‚c‚X‚Q‚P|Å–±|‘OŠú––ŽÀŽ{Šz•ë‰¿    
007670*--<    No.184 >                                                  
007680*             ,Å–±Q‘OŠúŽÀŽ{Šz—ÝŒv                               
007690*                           = :‚c‚X‚Q‚P|Å–±|‘OŠúŽÀŽ{Šz—ÝŒv     
007700*--<    No.185 >                                                  
007710*             ,Å–±Q‘OŠúŒJ‰z’´‰ßŠz                               
007720*                          = :‚c‚X‚Q‚P|Å–±|‘OŠúŒJ‰z’´‰ßŠz      
007730*--<    No.186 >                                                  
007740*             ,Å–±Q‘OŠúž‹p•s‘«Šz                               
007750*                           = :‚c‚X‚Q‚P|Å–±|‘OŠúž‹p•s‘«Šz     
007760*--<    No.187 >                                                  
007770*             ,Å–±Q“–Šúž‹pŒÀ“xŠz                               
007780*                          = :‚c‚X‚Q‚P|Å–±|“–Šúž‹pŒÀ“xŠz      
007790*--<    No.188 >                                                  
007800*             ,Å–±Q“–Šúž‹pŽÀŽ{Šz                               
007810*                        = :‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv    
007820*--<    No.189 >                                                  
007830*             ,Å–±Q“–Šúž‹pŽÀŽ{Šz—ÝŒv                           
007840*                          = :‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv  
007850*--<    No.190 >                                                  
007860*             ,Å–±Q“–Šúž‹p•s‘«Šz                               
007870*                             = :‚c‚X‚Q‚P|Å–±|“–Šúž‹p•s‘«Šz   
007880*--<    No.191 >                                                  
007890*             ,Å–±Q“–Šúž‹p’´‰ßŠz                               
007900*                          = :‚c‚X‚Q‚P|Å–±|“–Šúž‹p’´‰ßŠz      
007910*--<    No.192 >                                                  
007920*             ,Å–±Q“–Šúž‹p‚Ö‚ÌU‘ÖŠz                           
007930*                          = :‚c‚X‚Q‚P|Å–±|“–Šúž‹p‚Ö‚ÌU‘ÖŠz  
007940*--<    No.193 >                                                  
007950*             ,Å–±Q“–Šú––ŽÀŽ{Šz•ë‰¿                             
007960*                          = :‚c‚X‚Q‚P|Å–±|“–Šú––ŽÀŽ{Šz•ë‰¿    
007970*--<    No.196 >                                                  
007980*             ,Å–±Q‘OŠú–––@’è•ë‰¿                               
007990*                          = :‚c‚X‚Q‚P|Å–±|‘OŠú–––@’è•ë‰¿      
008000*--<    No.197 >                                                  
008010*             ,Å–±Q“–Šú–––@’è•ë‰¿                               
008020*                          = :‚c‚X‚Q‚P|Å–±|“–Šú–––@’è•ë‰¿      
008030*       WHERE  ƒL[î•ñQŒ_–ñ”Ô†     = :‚v‚r|Œ_–ñ”Ô†           
008040*         AND  ƒL[î•ñQ•¨Œ”Ô†     = :‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô† 
008050*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 144 TO SQL-OFFSET
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
               ‚v‚r|‰ð–ñ‹æ•ª IN
               ‚v‚r|’†ŠÔ[ƒR[ƒh•Ï”
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
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽ–˜ž‹pŠz—ÝŒv IN
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
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|‘OŠú–˜ž‹pŠz—ÝŒv IN
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
               ‚c‚X‚Q‚P|ŠÇ—‰ïŒv|“–ŒŽž‹pŠz IN
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
               ‚c‚X‚Q‚P|Å–±|“–Šúž‹pŽÀŽ{Šz—ÝŒv IN
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
               ‚v‚r|Œ_–ñ”Ô† IN
               ‚v‚r|’†ŠÔ[ƒR[ƒh•Ï”
               SQL-SQHSTV(60)
           MOVE 10 TO SQL-SQHSTL(60)
           MOVE 0 TO SQL-SQHSTS(60)
           MOVE 0 TO SQL-SQINDV(60)
           MOVE 0 TO SQL-SQINDS(60)
           MOVE 0 TO SQL-SQHARM(60)
           CALL "SQLADR" USING
               ‚h‚j‚n‚O‚P‚O|V•¨Œ”Ô†
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
008060*                                                                 
008070*----------------------------------------------------------------*
008080*    Ž‘ŽYî•ñXVˆ—‚ðŠm”F                                      *
008090*----------------------------------------------------------------*
008100         EVALUATE   SQLCODE                                       
008110           WHEN    ’è”|‚r‚p‚k‚n‚j                               
008120*--<          XV¬Œ÷ >                                          
008130              COMPUTE  ‚v|XV|Œ” = ‚v|XV|Œ” + 1        
008140           WHEN    ’è”|‚r‚p‚k‚d‚m‚c                             
008150              CONTINUE                                            
008160           WHEN   OTHER                                           
008170*--<          XVŽ¸”s >                                          
008180              MOVE     -70            TO  ‚v|ƒGƒ‰[ƒR[ƒh        
008190              PERFORM  ƒGƒ‰[ˆ—                                 
008200        END-EVALUATE.                                             
008210                                                                  
008220 Ž‘ŽYî•ñXVo—Íˆ—|‚d‚w‚h‚s.                                  
008230     EXIT.                                                        
008240*                                                                 
008250******************************************************************
008260*    I—¹ˆ—                                                    *
008270******************************************************************
008280 I—¹ˆ—                             SECTION.                    
008290 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
008300*                                                                 
008310*----------------------------------------------------------------*
008320*    ‚c‚aƒNƒ[ƒY                                                *
008330*----------------------------------------------------------------*
008340*--< ƒtƒ@ƒCƒ‹ƒNƒ[ƒY >                                           
008350     CLOSE  “ü—Íƒtƒ@ƒCƒ‹.                                         
008360*                                                                 
008370     PERFORM  ‚c‚aƒNƒ[ƒY.                                   
008380*                                                                 
008390     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
008400*----------------------------------------------------------------*
008410*    I—¹ƒƒbƒZ[ƒWo—Íˆ—                                      *
008420*----------------------------------------------------------------*
008430     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
008440*                                                                 
008450*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
008460     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
008470*                                                                 
008480 I—¹ˆ—|‚d‚w‚h‚s.                                              
008490     EXIT.                                                        
008500******************************************************************
008510*    ‚c‚aƒNƒ[ƒY                                                *
008520******************************************************************
008530 ‚c‚aƒNƒ[ƒY                         SECTION.                    
008540 ‚c‚aƒNƒ[ƒY|‚r‚s‚`‚q‚s.                                        
008550*                                                                 
008560*--< ƒJ[ƒ\ƒ‹‚ÌƒNƒ[ƒY >                                         
008570     
      *    EXEC  SQL                                                    
008580*       CLOSE  CUR1                                               
008590*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 403 TO SQL-OFFSET
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
008600*                                                                 
008610 ‚c‚aƒNƒ[ƒY|‚d‚w‚h‚s.                                          
008620     EXIT.                                                        
008630******************************************************************
008640*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
008650******************************************************************
008660 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
008670 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
008680*                                                                 
008690     
      *    EXEC  SQL                                                    
008700*       COMMIT  WORK  RELEASE                                     
008710*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 418 TO SQL-OFFSET
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
008720*                                                                 
008730     INITIALIZE                       IF-CHOCO001.                
008740     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008750     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008760     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008770     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008780     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008790     CALL  CLOCO001                USING  IF-CHOCO001.            
008800*                                                                 
008810 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
008820     EXIT.                                                        
008830******************************************************************
008840*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
008850******************************************************************
008860 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
008870 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
008880*                                                                 
008890     
      *    EXEC  SQL                                                    
008900*       ROLLBACK WORK  RELEASE                                    
008910*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 433 TO SQL-OFFSET
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
008920*                                                                 
008930     INITIALIZE                       IF-CHOCO001.                
008940     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008950     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008960     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008970     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008980     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
008990     CALL  CLOCO001                USING  IF-CHOCO001.            
009000*                                                                 
009010 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
009020     EXIT.                                                        
009030******************************************************************
009040*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
009050******************************************************************
009060  I—¹ƒƒbƒZ[ƒWo—Í                  SECTION.                    
009070  I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                 
009080*                                                                 
009090*----------------------------------------------------------------*
009100*    V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹“ÇžŒ”                              *
009110*----------------------------------------------------------------*
009120     INITIALIZE                       IF-CHOCO001.                
009130     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009140     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009150     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009160     MOVE  "IKOTBL010"                TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009170     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009180     MOVE  ‚v|“ü—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009190     MOVE  " V•¨Œ”Ô†Ì”Ôƒe[ƒuƒ‹“ÇžŒ”"                      
009200                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009210     CALL  CLOCO001                USING  IF-CHOCO001.            
009220*                                                                 
009230*----------------------------------------------------------------*
009240*    Ž‘ŽY–¾×“Ç“ÇžŒ”                                          *
009250*----------------------------------------------------------------*
009260     INITIALIZE                       IF-CHOCO001.                
009270     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009280     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009290     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009300     MOVE  "CPBIS165"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009310     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009320     MOVE  ‚v|“ü—Í|Œ”‚Q           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009330     MOVE  " Ž‘ŽY–¾×“Ç“ÇžŒ”"      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009340     CALL  CLOCO001                USING  IF-CHOCO001.            
009350*                                                                 
009360*----------------------------------------------------------------*
009370*    Ž‘ŽYî•ñƒe[ƒuƒ‹XVŒ”                                    *
009380*----------------------------------------------------------------*
009390     INITIALIZE                       IF-CHOCO001.                
009400     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009410     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009420     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009430     MOVE  "D921SIJ"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009440     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009450     MOVE  ‚v|XV|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009460     MOVE  "Ž‘ŽYî•ñƒe[ƒuƒ‹XVŒ”"                             
009470                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009480     CALL  CLOCO001                USING  IF-CHOCO001.            
009490*                                                                 
009500*----------------------------------------------------------------*
009510*    I—¹ƒƒbƒZ[ƒW o—Í                                         *
009520*----------------------------------------------------------------*
009530     INITIALIZE                       IF-CHOCO001.                
009540     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009550     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009560     MOVE  ZERO                       TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009570     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009580     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009590     CALL  CLOCO001                USING  IF-CHOCO001.            
009600*                                                                 
009610 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
009620     EXIT.                                                        
009630******************************************************************
009640*    ƒGƒ‰[ˆ—                                                  *
009650******************************************************************
009660 ƒGƒ‰[ˆ—                           SECTION.                    
009670 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
009680*                                                                 
009690     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
009700     INITIALIZE                           IF-CHOCO001.            
009710*                                                                 
009720     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
009730        WHEN  -10                                                 
009740*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
009750           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009760           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009770           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009780           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
009790           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009800           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009810           CALL  CLOCO001          USING  IF-CHOCO001             
009820*                                                                 
009830        WHEN  -20                                                 
009840*--<    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“        >                                 
009850           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009860           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009870           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009880           MOVE  "CPBIS165"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009890           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
009900           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
009910           CALL  CLOCO001          USING  IF-CHOCO001             
009920*                                                                 
009930        WHEN  -30                                                 
009940*--<       Ž‘ŽYî•ñ‚n‚o‚d‚m  >                                    
009950           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009960           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009970           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009980           MOVE  "D921SIJ"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
009990           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010000           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010010           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010020           CALL  CLOCO001          USING  IF-CHOCO001             
010030*                                                                 
010040        WHEN  -40                                                 
010050*--<       Ž‘ŽYî•ñ“Çž   >                                     
010060           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010070           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010080           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010090           MOVE  "D921SIJ"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010100           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
010110           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010120           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010130           CALL  CLOCO001          USING  IF-CHOCO001             
010140*                                                                 
010150        WHEN  -50                                                 
010160*--<       Ž‘ŽY–¾×ƒtƒ@ƒCƒ‹“Çž  >                                
010170           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010180           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010190           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010200           MOVE  "CPBIS165"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010210           MOVE  "READ"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010220           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
010230           CALL  CLOCO001          USING  IF-CHOCO001             
010240*                                                                 
010250        WHEN  -60                                                 
010260*--<       V•¨Œ”Ô†’Šoˆ—  >                                  
010270           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010280           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010290           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010300           MOVE  "IKOTBL010"          TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010310           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
010320           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010330           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010340           CALL  CLOCO001          USING  IF-CHOCO001             
010350           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
010360*                                                                 
010370        WHEN  -70                                                 
010380*--<       Ž‘ŽYî•ñXVˆ—  >                                    
010390           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010400           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010410           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010420           MOVE  "D921SIJ"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010430           MOVE  "UPDATE"              TO  ‹¤‚P|ˆ—Ž¯•Ê         
010440           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010450           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010460           CALL  CLOCO001          USING  IF-CHOCO001             
010470*                                                                 
010480        WHEN  OTHER                                               
010490           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
010500     END-EVALUATE.                                                
010510*                                                                 
010520     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
010530        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
010540*                                                                 
010550        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
010560*                                                                 
010570*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
010580        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
010590*                                                                 
010600        EXIT  PROGRAM                                             
010610     END-IF.                                                      
010620*                                                                 
010630 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
010640     EXIT.                                                        
010650******************************************************************
010660*                  END OF PROGRAM                                *
010670******************************************************************                                                                
