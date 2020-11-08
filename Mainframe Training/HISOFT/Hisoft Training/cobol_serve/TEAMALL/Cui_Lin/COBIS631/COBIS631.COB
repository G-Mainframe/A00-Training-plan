000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : ƒtƒ@ƒNƒ^ƒŠƒ“ƒO•ªì¬                   *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS631                               *
000050*      3. ˆ—ŠT—v      : Œ_–ñ”Ô†‚ðKEY‚Æ‚µAƒtƒ@ƒNƒ^ƒŠƒ“ƒO      *
000060*                         (Šî–{î•ñ)‚Æƒtƒ@ƒNƒ^ƒŠƒ“ƒO(ŽèŒ`ÂŒ )   *
000070*                         ‚ÅŒ‹‡ˆ—‚ðs‚¤B                     *
000080*                                                                *
000090*      4. ì¬ŽÒ        : ›Á—Ñ                                   *
000100*      5. ì¬“ú        : 2005.04.02                             *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000150******************************************************************
000160 IDENTIFICATION                        DIVISION.                  
000170*                                                                 
000180 PROGRAM-ID.                           COBIS631.                  
000190******************************************************************
000200*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000210******************************************************************
000220 ENVIRONMENT                           DIVISION.                  
000230******************************************************************
000240*    ‚h‚m‚o‚t‚s|‚n‚t‚s‚o‚t‚s      ‚r‚d‚b‚s‚h‚n‚m                *
000250******************************************************************
000260 INPUT-OUTPUT                          SECTION.                   
000270 FILE-CONTROL.                                                    
000280*                                                                 
000290     SELECT         “ü—Íƒtƒ@ƒCƒ‹       ASSIGN    TO   U05         
000300     FILE STATUS    IS     ƒtƒ@ƒCƒ‹ó‘Ô                           
000310     ORGANIZATION   IS     LINE        SEQUENTIAL.                
000320*                                                                 
000330******************************************************************
000340*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000350******************************************************************
000360 DATA                                  DIVISION.                  
000370******************************************************************
000380*    ‚e‚h‚k‚                            b‚s‚h‚n‚m                *
000390******************************************************************
000400 FILE                                  SECTION.                   
000410*----------------------------------------------------------------*
000420*    “ü—Íƒtƒ@ƒCƒ‹                                                *
000430*----------------------------------------------------------------*
000440 FD  “ü—Íƒtƒ@ƒCƒ‹                                                 
000450     LABEL  RECORD    IS               STANDARD                   
000460     BLOCK  CONTAINS  0                RECORDS.                   
000470*                                                                 
000480 01  “ü—Í|ƒŒƒR[ƒh.                                              
000490     COPY   CISPF001   REPLACING       ==()==  BY  ==“ü—Í|==.    
000500*                                                                 
000510******************************************************************
000520*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000530******************************************************************
000540  WORKING-STORAGE                      SECTION.                   
000550*----------------------------------------------------------------*
000560*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000570*----------------------------------------------------------------*
000580     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS631\CO
      -    "BIS631.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE  "select NVL(IKOTBL001.VŽæˆøæƒR
      -    "[ƒh,RPAD('0',7,'0'))  ,NVL(IKOTBL001.Ž}”Ô,RPAD('0',3,'0')) 
      -    "  into :b1,:b2  from IKOTBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh
      -    "=:b3 and ".

           02  FILLER PIC X(23) VALUE "IKOTBL001.–Ú“I‚b‚c=:b4)".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(160) VALUE  "select NVL(IKOTBL001.VŽæˆøæƒR
      -    "[ƒh,RPAD('0',7,'0'))  ,NVL(IKOTBL001.Ž}”Ô,RPAD('0',3,'0')) 
      -    "  into :b1,:b2  from IKOTBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh
      -    "=:b3 and ".

           02  FILLER PIC X(23) VALUE "IKOTBL001.–Ú“I‚b‚c=:b4)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D642UTG_TBL(‘ã•\Œ_–ñ
      -     "”Ô†,‘©”,ŽæˆøæƒR[ƒh,Œ_–ñæƒR[ƒh,Œ_–ñæ–¼Ì,Œ_–ñæ–¼ÌƒJ
      -    "ƒi,•”“XƒR[ƒh,ŽåŒ_–ñ‹æ•ª,ŽèŒ`ó‘Ô,Žæˆø“ú,“`•[”­s“ú,ŽèŒ`Ží—Þ
      -    ",Šú“úŠî€".

           02  FILLER PIC X(160) VALUE  "“ú,Šú“úƒTƒCƒNƒ‹,‘©‡Œv‹àŠz,ŽèŒ`
      -     "–‡”,Žæ—§‹âsƒR[ƒh,Žx•¥‹âsƒR[ƒh,Œ_–ñ”Ô†‚P,Œ_–ñ”Ô†‚Q,Œ_
      -     "–ñ”Ô†‚R,Œ_–ñ”Ô†‚S,Œ_–ñ”Ô†‚T,Œ_–ñ”Ô†‚U,Œ_–ñ”Ô†‚V,Œ_–ñ”Ô
      -    "†‚W,Œ_–ñ”Ô".

           02  FILLER PIC X(159) VALUE  "†‚X,Œ_–ñ”Ô†‚P‚O,”õl—“,ŽèŒ`“à
      -    "—eŽí•Ê,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,“o˜^’S“–ŽÒ,XV”NŒŽ“ú,XVŽžŠÔ,X
      -    "VŽÒ,“ü—Í’S“–ŽÒƒR[ƒh,”„‹p‘ã‹à‹æ•ª,UolŽæˆøæƒR[ƒh,Uol
      -    "Œ_–ñæƒR".

           02  FILLER PIC X(160) VALUE "[ƒh,Uol–¼Ì,Uol–¼ÌƒJƒi) 
      -    "values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:
      -    "b13,:b14,:b15,:b16,:b17,:b18,:b19,:b20,:b21,:b22,:b23,:b24,:
      -    "b25,:b26".

           02  FILLER PIC X(81) VALUE ",:b27,:b28,:b29,:b30,:b31,:b32,:b
      -    "33,:b34,:b35,:b36,:b37,:b38,:b39,:b40,:b41,:b42)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D645UTT_TBL(‘ã•\Œ_–ñ
      -     "”Ô†,‘©”,˜A”Ô,ŽèŒ`”Ô†,Šú“ú,‹àŠz,UolŽæˆøæƒR[ƒh,Uol
      -     "Œ_–ñæƒR[ƒh,Uol–¼Ì,Uol–¼ÌƒJƒi,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,
      -     "“o˜^’S“–ŽÒ".

           02  FILLER PIC X(144) VALUE ",XV”NŒŽ“ú,XVŽžŠÔ,XVŽÒ,“ü—Í
      -    "’S“–ŽÒƒR[ƒh,ŽèŒ`ó‘Ô) values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:
      -    "b8,:b9,:b10,:b11,:b12,:b13,:b14,:b15,:b16,:b17,:b18)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148386060.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +42.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 42 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 42 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select LTRFCK.Œ_–ñ”Ô†  ,LTRFCK.
      -    "ƒ†[ƒU[ƒR[ƒh  ,NVL(LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš,RPA
      -    "D(' ',1,' '))  ,NVL(LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi,RPAD
      -    "(' ',1,'".

           02  FILLER PIC X(160) VALUE " '))  ,LTRFCK.Ž–‹ÆŠƒR[ƒh  ,LTR
      -    "FCK.ŽÀs“ú  ,NVL(LTRFCT.ŽèŒ`Ží—Þ,0)  ,NVL(LTRFCT.—˜‘§Šú“ú,RP
      -    "AD('0',7,'0'))  ,LTRFCK.Šz–Ê‹àŠz  ,LTRFCK.‹âsƒR[ƒh  ,NVL(L
      -     "TRFCT.Žæ".

           02  FILLER PIC X(159) VALUE "ˆø‹âsƒR[ƒh,RPAD('0',7,'0'))  ,
      -    "LTRFCK.Œ´Â–±ŽÒƒR[ƒh  ,NVL(LTRFCT.Žx•¥l–¼,RPAD(' ',60,' ')
      -    ")  ,NVL(LTRFCT.ŽèŒ`”Ô†,RPAD('0',10,'0'))  ,LTRFCK.Šú“ú  ,LT
      -    "RFCK.Šz".

           02  FILLER PIC X(160) VALUE "–Ê‹àŠz   from LTRFCK ,LTRFCT ,LT
      -    "RTRI where (LTRFCK.Œ_–ñ”Ô†=LTRFCT.Œ_–ñ”Ô†(+) and LTRTRI.Žæ
      -     "ˆøæƒR[ƒh(+)=LTRFCK.ƒ†[ƒU[ƒR[ƒh) order by LTRFCK.Œ_–ñ”Ô
      -    "†       ".

           02  FILLER PIC X(4) VALUE "    ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +253.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +257.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +643.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +318.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +344.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +16.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +161.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +183.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +478.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +192.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +183.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +517.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +223.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +720.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +768.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +42.
           02     FILLER PIC S9(4) COMP-5 VALUE +42.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +406.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +304.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +872.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +18.
           02     FILLER PIC S9(4) COMP-5 VALUE +18.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +493.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +1016.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +508.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +1030.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +523.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +1050.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE         SECTION  END-EXEC.
000590*                                                                 
000600*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000610     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000620*                                                                 
000630*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000640     
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
000650*                                                                 
000660*--< ƒtƒ@ƒNƒ^ƒŠƒ“ƒO(Šî–{î•ñ)ƒe[ƒuƒ‹ >                           
000670     
      *    EXEC  SQL  INCLUDE  LTRFCK.CBL            END-EXEC.
000680*                                                                 
000690*--< ƒtƒ@ƒNƒ^ƒŠƒ“ƒO(ŽèŒ`ÂŒ )ƒe[ƒuƒ‹ >                           
000010************************************************
000020* Ì§¸ÀØÝ¸ÞiŠî–{î•ñj(LTRFCK)
000030************************************************
000040 01  ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô† PIC  X(009).
000050 01  ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh PIC  X(008).
000060 01  ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh PIC  X(008).
000070 01  ‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh PIC S9(004) COMP-3.
000080 01  ‚k‚s‚q‚e‚b‚j|’S“–ŽÒƒR[ƒh PIC S9(004) COMP-3.
000090 01  ‚k‚s‚q‚e‚b‚j|Œ_–ñ“ú PIC  X(007).
000100 01  ‚k‚s‚q‚e‚b‚j|ŽÀs“ú PIC  X(007).
000110 01  ‚k‚s‚q‚e‚b‚j|Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000120 01  ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜ PIC S9(003)V9(8) COMP-3.
000130 01  ‚k‚s‚q‚e‚b‚j|ŒŽ—˜•¡—˜—¦ PIC S9(003)V9(8) COMP-3.
000140 01  ‚k‚s‚q‚e‚b‚j|‘e—˜‰v PIC S9(013) COMP-3.
000150 01  ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz PIC S9(013) COMP-3.
000160 01  ‚k‚s‚q‚e‚b‚j|‹Æ–±‹æ•ª PIC S9(001) COMP-3.
000170 01  ‚k‚s‚q‚e‚b‚j|Šú“ú PIC  X(007).
000180 01  ‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh PIC  X(007).
000190 01  ‚k‚s‚q‚e‚b‚j|ŒûÀ”Ô† PIC  X(007).
000200 01  ‚k‚s‚q‚e‚b‚j|—a‹àŽí—Þ PIC S9(001) COMP-3.
000210 01  ‚k‚s‚q‚e‚b‚j|ˆÄŒ”­¶‹æ•ª PIC  X(001).
000220 01  ‚k‚s‚q‚e‚b‚j|âg‹c‹æ•ª PIC S9(001) COMP-3.
000230 01  ‚k‚s‚q‚e‚b‚j|—˜—¦Šî”ƒR[ƒh PIC S9(001) COMP-3.
000240 01  ‚k‚s‚q‚e‚b‚j|—˜‘§’[”ˆ—ƒR[ƒh PIC S9(001) COMP-3.
000250 01  ‚k‚s‚q‚e‚b‚j|‘OŽæŒãŽæ‹æ•ª PIC S9(001) COMP-3.
000260 01  ‚k‚s‚q‚e‚b‚j|•Ð’[—¼’[‹æ•ª PIC S9(001) COMP-3.
000270 01  ‚k‚s‚q‚e‚b‚j|‹à—˜•Ï“®‹æ•ª PIC S9(001) COMP-3.
000280 01  ‚k‚s‚q‚e‚b‚j|˜A“®‹à—˜‹æ•ª PIC S9(002) COMP-3.
000290 01  ‚k‚s‚q‚e‚b‚j|ƒXƒvƒŒƒbƒh PIC S9(003)V9(8) COMP-3.
000300 01  ‚k‚s‚q‚e‚b‚j|‹x“ú‘Î‰ž‹æ•ª PIC S9(001) COMP-3.
000310 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh PIC  X(008).
000320 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒî•ñ‚P PIC  X(040).
000330 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒî•ñ‚Q PIC  X(040).
000340 01  ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒî•ñ‚R PIC  X(040).
000350 01  ‚k‚s‚q‚e‚b‚j|³”F‚m‚n PIC  X(006).
000360 01  ‚k‚s‚q‚e‚b‚j|Žx•¥³”F“ú PIC  X(007).
000370 01  ‚k‚s‚q‚e‚b‚j|Žx•¥³”Fî•ñ|’S“–ŽÒƒR[ƒh PIC  X(004).
000380 01  ‚k‚s‚q‚e‚b‚j|Žx•¥•û–@ƒR[ƒh PIC S9(002) COMP-3.
000390 01  ‚k‚s‚q‚e‚b‚j|Šú“úŠÇ—ŽÀs“ú PIC  X(007).
000400 01  ‚k‚s‚q‚e‚b‚j|¿‹‚c‚a“o˜^“ú PIC  X(007).
000410 01  ‚k‚s‚q‚e‚b‚j|—\”õ PIC  X(090).
000420 01  ‚k‚s‚q‚e‚b‚j|‹¤’Êî•ñ PIC  X(035).
000700     
      *    EXEC  SQL  INCLUDE  LTRFCT.CBL            END-EXEC.
000710*                                                                 
000720*--< ŽæˆøæiŽæˆøæjƒ}ƒXƒ^>                                      
000010************************************************
000020* Ì§¸ÀØÝ¸ÞiŽèŒ`ÂŒ j(LTRFCT)
000030************************************************
000040 01  ‚k‚s‚q‚e‚b‚s|Œ_–ñ”Ô† PIC  X(009).
000050 01  ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú PIC  X(007).
000060 01  ‚k‚s‚q‚e‚b‚s|‰ñŽû•û–@ PIC S9(001) COMP-3.
000070 01  ‚k‚s‚q‚e‚b‚s|‘ã—‰ñŽû‹æ•ª PIC S9(001) COMP-3.
000080 01  ‚k‚s‚q‚e‚b‚s|ŠúŠÔ“ú” PIC S9(004) COMP-3.
000090 01  ‚k‚s‚q‚e‚b‚s|”ƒŽæ‹àŠz PIC S9(013) COMP-3.
000100 01  ‚k‚s‚q‚e‚b‚s|Š„ˆø—¿ PIC S9(013) COMP-3.
000110 01  ‚k‚s‚q‚e‚b‚s|Š„ˆø—¦ PIC S9(003)V9(8) COMP-3.
000120 01  ‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿ PIC S9(013) COMP-3.
000130 01  ‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿Á”ïÅ“™Šz PIC S9(013) COMP-3.
000140 01  ‚k‚s‚q‚e‚b‚s|”ƒ–ß—\’è“ú PIC  X(007).
000150 01  ‚k‚s‚q‚e‚b‚s|”ƒŽæ‘ã‹àŽx•¥“ú PIC  X(007).
000160 01  ‚k‚s‚q‚e‚b‚s|ÂŒ •\Ž¦ PIC  X(060).
000170 01  ‚k‚s‚q‚e‚b‚s|ŠúŒÀ‘OŒˆÙ“ú PIC  X(007).
000180 01  ‚k‚s‚q‚e‚b‚s|–ß‚µ—˜‘§Šz PIC S9(013) COMP-3.
000190 01  ‚k‚s‚q‚e‚b‚s|–ß‚µ—˜—¦ PIC S9(003)V9(8) COMP-3.
000200 01  ‚k‚s‚q‚e‚b‚s|–ß‚µ“ú” PIC S9(004) COMP-3.
000210 01  ‚k‚s‚q‚e‚b‚s|–ß‚µ—˜‘§‘ŠŽE‹æ•ª PIC S9(001) COMP-3.
000220 01  ‚k‚s‚q‚e‚b‚s|•ÔÏŽè”—¿ PIC S9(013) COMP-3.
000230 01  ‚k‚s‚q‚e‚b‚s|•ÔÏŽè”—¿Á”ïÅ“™Šz PIC S9(013) COMP-3.
000240 01  ‚k‚s‚q‚e‚b‚s|ƒ_ƒ~[‚O‚O‚P PIC  X(040).
000250 01  ‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô† PIC  X(010).
000260 01  ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ PIC S9(001) COMP-3.
000270 01  ‚k‚s‚q‚e‚b‚s|ŽèŒ`— ‘•û–@ PIC S9(001) COMP-3.
000280 01  ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh PIC  X(007).
000290 01  ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼ PIC  X(060).
000300 01  ‚k‚s‚q‚e‚b‚s|Žx•¥êŠ PIC  X(060).
000310 01  ‚k‚s‚q‚e‚b‚s|ƒ_ƒ~[‚O‚O‚Q PIC  X(061).
000730     
      *    EXEC  SQL  INCLUDE  LTRTRI.CBL            END-EXEC.
000740                                                                  
000750*--< ŽóŽæŽèŒ`ƒe[ƒuƒ‹>                                            
000010************************************************
000020* Žæˆøæƒ}ƒXƒ^[iŽæˆøæƒŒƒR[ƒhj(LTRTRI)
000030************************************************
000040 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæƒR[ƒh PIC  X(008).
000050 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ª–¼Šñ‚¹ PIC  X(001).
000060 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ªƒ†[ƒU[ PIC  X(001).
000070 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ª¿‹æ PIC  X(001).
000080 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ªw“üæ PIC  X(001).
000090 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ª•ÛØæ PIC  X(001).
000100 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ªÐ‰îæ PIC  X(001).
000110 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ªˆ´ùæ PIC  X(001).
000120 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ª”„‹pæ PIC  X(001).
000130 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ª‚»‚Ì‘¼ PIC  X(001).
000140 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ªƒOƒ‹[ƒv PIC  X(001).
000150 01  ‚k‚s‚q‚s‚q‚h|–Ú“I‹æ•ªƒ_ƒ~[ PIC  X(004).
000160 01  ‚k‚s‚q‚s‚q‚h|ŠÖ˜AƒR[ƒh–¼Šñ‚¹ƒR[ƒh PIC  X(008).
000170 01  ‚k‚s‚q‚s‚q‚h|ŠÖ˜AƒR[ƒhƒ†[ƒU[ƒR[ƒh PIC  X(008).
000180 01  ‚k‚s‚q‚s‚q‚h|Ž–‹ÆŠƒR[ƒhŽåŠÇ PIC S9(004) COMP-3.
000190 01  ‚k‚s‚q‚s‚q‚h|’S“–ŽÒƒR[ƒh PIC  X(004).
000200 01  ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš PIC  X(040).
000210 01  ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi PIC  X(060).
000220 01  ‚k‚s‚q‚s‚q‚h|‰ïŽÐ•”–å³Ž®–¼Ì—ªŽ®‚PŠ¿Žš PIC  X(040).
000230 01  ‚k‚s‚q‚s‚q‚h|‰ïŽÐ•”–å³Ž®–¼Ì—ªŽ®‚QŠ¿Žš PIC  X(020).
000240 01  ‚k‚s‚q‚s‚q‚h|‰ïŽÐ•”–å³Ž®–¼Ì—ªŽ®ƒJƒi PIC  X(030).
000250 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚PƒT[ƒo[ƒR[ƒh‚P PIC  X(002).
000260 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚PŒÚ‹qƒR[ƒh‚P PIC  X(006).
000270 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚QƒT[ƒo[ƒR[ƒh‚Q PIC  X(002).
000280 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚QŒÚ‹qƒR[ƒh‚Q PIC  X(006).
000290 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚RƒT[ƒo[ƒR[ƒh‚R PIC  X(002).
000300 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚RŒÚ‹qƒR[ƒh‚R PIC  X(006).
000310 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚SƒT[ƒo[ƒR[ƒh‚S PIC  X(002).
000320 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚SŒÚ‹qƒR[ƒh‚S PIC  X(006).
000330 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚TƒT[ƒo[ƒR[ƒh‚T PIC  X(002).
000340 01  ‚k‚s‚q‚s‚q‚h|ŒÚ‹qî•ñ‚TŒÚ‹qƒR[ƒh‚T PIC  X(006).
000350 01  ‚k‚s‚q‚s‚q‚h|“o˜^”NŒŽ”N PIC  X(004).
000360 01  ‚k‚s‚q‚s‚q‚h|“o˜^”NŒŽŒŽ PIC S9(002) COMP-3.
000370 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæZŠî•ñŽs’¬‘ºƒR[ƒh PIC  X(006).
000380 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæZŠî•ñ—X•Ö‚m‚ne PIC  X(003).
000390 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæZŠî•ñ—X•Ö‚m‚nŽq PIC  X(004).
000400 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæZŠî•ñZŠ‚P’¬–¼“™Š¿Žš PIC  X(030).
000410 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæZŠî•ñZŠ‚QŒ¨‘‚«Š¿Žš PIC  X(030).
000420 01  ‚k‚s‚q‚s‚q‚h|ŽæˆøæZŠî•ñZŠƒJƒi PIC  X(050).
000430 01  ‚k‚s‚q‚s‚q‚h|“]ƒŠ[ƒXƒR[ƒh PIC  X(002).
000440 01  ‚k‚s‚q‚s‚q‚h|ŒÜ\‰¹‡ƒ\[ƒg‚j‚d‚xˆÊ’u‹æ•ª PIC  X(001).
000450 01  ‚k‚s‚q‚s‚q‚h|ŒÜ\‰¹‡ƒ\[ƒg‚j‚d‚x‰ïŽÐ‹æ•ª PIC  X(006).
000460 01  ‚k‚s‚q‚s‚q‚h|ŒÜ\‰¹‡ƒ\[ƒg‚j‚d‚xƒ†[ƒU–¼ PIC  X(025).
000470 01  ‚k‚s‚q‚s‚q‚h|ƒOƒ‹[ƒvƒR[ƒh PIC  X(008).
000480 01  ‚k‚s‚q‚s‚q‚h|ƒ_ƒ~[‚O‚O‚P PIC  X(018).
000490 01  ‚k‚s‚q‚s‚q‚h|‹¤’Êî•ñ‚b‚o‚c‚j‚x‚n‚s‚t PIC  X(035).
000500 01  ‚k‚s‚q‚s‚q‚h|‹ÆŽíƒR[ƒh PIC  X(002).
000510 01  ‚k‚s‚q‚s‚q‚h|‘åŠé‹ÆƒR[ƒh PIC  X(001).
000520 01  ‚k‚s‚q‚s‚q‚h|ƒNƒ‰ƒX PIC  X(002).
000530 01  ‚k‚s‚q‚s‚q‚h|Ý—§“ú¢‹I PIC  X(001).
000540 01  ‚k‚s‚q‚s‚q‚h|Ý—§“úÝ—§“ú PIC  X(006).
000550 01  ‚k‚s‚q‚s‚q‚h|ŒˆŽZ“ú PIC S9(002) COMP-3.
000560 01  ‚k‚s‚q‚s‚q‚h|ãê”ñãê‹æ•ª PIC  X(001).
000570 01  ‚k‚s‚q‚s‚q‚h|“d˜b”Ô† PIC  X(015).
000580 01  ‚k‚s‚q‚s‚q‚h|Ž‘–{‹à PIC S9(013) COMP-3.
000590 01  ‚k‚s‚q‚s‚q‚h|—^MŒÀ“x’PˆÊ•S–œ PIC S9(006) COMP-3.
000600 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑŒˆŽZŠú PIC S9(003) COMP-3.
000610 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑŒˆŽZ”N“x¢‹I PIC  X(001).
000620 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑŒˆŽZ”N“x PIC  X(004).
000630 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑ”„ã PIC S9(013) COMP-3.
000640 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑŒoí—˜‰v PIC S9(013) COMP-3.
000650 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑ“–Šú—˜‰v PIC S9(013) COMP-3.
000660 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘O”N“x‹ÆÑ\Š“¾ PIC S9(013) COMP-3.
000670 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑŒˆŽZŠú PIC S9(003) COMP-3.
000680 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑŒˆŽZ”N“x¢‹I PIC  X(001).
000690 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑŒˆŽZ”N“x PIC  X(004).
000700 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑ”„ã PIC S9(013) COMP-3.
000710 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑŒoí—˜‰v PIC S9(013) COMP-3.
000720 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑ“–Šú—˜‰v PIC S9(013) COMP-3.
000730 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OX”N“x‹ÆÑ\Š“¾ PIC S9(013) COMP-3.
000740 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑŒˆŽZŠú PIC S9(003) COMP-3.
000750 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑŒˆŽZ”N“x¢‹I PIC  X(001).
000760 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑŒˆŽZ”N“x PIC  X(004).
000770 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑ”„ã PIC S9(013) COMP-3.
000780 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑŒoí—˜‰v PIC S9(013) COMP-3.
000790 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑ“–Šú—˜‰v PIC S9(013) COMP-3.
000800 01  ‚k‚s‚q‚s‚q‚h|‹ÆÑ‘OXX”N“x‹ÆÑ\Š“¾ PIC S9(013) COMP-3.
000810 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñ’é‘ƒf[ƒ^ƒoƒ“ƒNƒR[ƒh 
000820                                       PIC S9(009) COMP-3.
000830 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñ’·‹âƒR[ƒh PIC S9(005) COMP-3.
000840 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñ“Œ‹â–¼•ëƒR[ƒh PIC S9(006) COMP-3.
000850 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñ“Œ‹âŽæˆøæ PIC S9(003) COMP-3.
000860 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñ“Œ‹âŽæˆøæƒR[ƒh PIC S9(008) COMP-3.
000870 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñŠi•tŠi•t‚¯‚P PIC  X(002).
000880 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñŠi•tŠi•t‚¯‚Q PIC  X(001).
000890 01  ‚k‚s‚q‚s‚q‚h|ŠO•”î•ñî•ñŒðŠ·’Ê’m‹æ•ª PIC  X(001).
000760     
      *    EXEC  SQL  INCLUDE  D642UTG.CBL           END-EXEC.
000770                                                                  
000780*--< ŽóŽæŽèŒ`“WŠJƒe[ƒuƒ‹>                                        
      *****************************************************************
      *   ŽóŽæŽèŒ`(D642UTG_TBL)
      *****************************************************************
       01  ŽóŽæŽèŒ`.
           03  ‚c‚U‚S‚Q|‘ã•\Œ_–ñ”Ô†
                                     PIC  X(010).
           03  ‚c‚U‚S‚Q|‘©”        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚U‚S‚Q|ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚U‚S‚Q|Œ_–ñæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚U‚S‚Q|Œ_–ñæ–¼Ì  PIC  X(040).
           03  ‚c‚U‚S‚Q|Œ_–ñæ–¼ÌƒJƒi
                                     PIC  X(040).
           03  ‚c‚U‚S‚Q|•”“XƒR[ƒh  PIC  X(004).
           03  ‚c‚U‚S‚Q|ŽåŒ_–ñ‹æ•ª  PIC  X(001).
           03  ‚c‚U‚S‚Q|ŽèŒ`ó‘Ô    PIC  X(001).
           03  ‚c‚U‚S‚Q|Žæˆø“ú      PIC  X(008).
           03  ‚c‚U‚S‚Q|“`•[”­s“ú  PIC  X(008).
           03  ‚c‚U‚S‚Q|ŽèŒ`Ží—Þ    PIC  X(001).
           03  ‚c‚U‚S‚Q|Šú“úŠî€“ú  PIC  X(008).
           03  ‚c‚U‚S‚Q|Šú“úƒTƒCƒNƒ‹
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚U‚S‚Q|‘©‡Œv‹àŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚U‚S‚Q|ŽèŒ`–‡”    PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚U‚S‚Q|Žæ—§‹âsƒR[ƒh
                                     PIC  X(007).
           03  ‚c‚U‚S‚Q|Žx•¥‹âsƒR[ƒh
                                     PIC  X(007).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚Q  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚R  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚S  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚T  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚U  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚V  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚W  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚X  PIC  X(010).
           03  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P‚O
                                     PIC  X(010).
           03  ‚c‚U‚S‚Q|”õl—“      PIC  X(040).
           03  ‚c‚U‚S‚Q|ŽèŒ`“à—eŽí•Ê
                                     PIC  X(001).
           03  ‚c‚U‚S‚Q|“o˜^”NŒŽ“ú  PIC  X(008).
           03  ‚c‚U‚S‚Q|“o˜^ŽžŠÔ    PIC  X(008).
           03  ‚c‚U‚S‚Q|“o˜^’S“–ŽÒ  PIC  X(008).
           03  ‚c‚U‚S‚Q|XV”NŒŽ“ú  PIC  X(008).
           03  ‚c‚U‚S‚Q|XVŽžŠÔ    PIC  X(008).
           03  ‚c‚U‚S‚Q|XVŽÒ      PIC  X(008).
           03  ‚c‚U‚S‚Q|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚U‚S‚Q|”„‹p‘ã‹à‹æ•ª
                                     PIC  X(001).
           03  ‚c‚U‚S‚Q|UolŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚U‚S‚Q|UolŒ_–ñæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚U‚S‚Q|Uol–¼Ì  PIC  X(040).
           03  ‚c‚U‚S‚Q|Uol–¼ÌƒJƒi
                                     PIC  X(040).
000790     
      *    EXEC  SQL  INCLUDE  D645UTT.CBL           END-EXEC.
000800                                                                  
000810*--< •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001)>                                     
      *****************************************************************
      *   ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)
      *****************************************************************
       01  ŽóŽæŽèŒ`“WŠJ.
           03  ‚c‚U‚S‚T|‘ã•\Œ_–ñ”Ô†
                                     PIC  X(010).
           03  ‚c‚U‚S‚T|‘©”        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚U‚S‚T|˜A”Ô        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚U‚S‚T|ŽèŒ`”Ô†    PIC  X(010).
           03  ‚c‚U‚S‚T|Šú“ú        PIC  X(008).
           03  ‚c‚U‚S‚T|‹àŠz        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚U‚S‚T|UolŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚U‚S‚T|UolŒ_–ñæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚U‚S‚T|Uol–¼Ì  PIC  X(040).
           03  ‚c‚U‚S‚T|Uol–¼ÌƒJƒi
                                     PIC  X(040).
           03  ‚c‚U‚S‚T|“o˜^”NŒŽ“ú  PIC  X(008).
           03  ‚c‚U‚S‚T|“o˜^ŽžŠÔ    PIC  X(008).
           03  ‚c‚U‚S‚T|“o˜^’S“–ŽÒ  PIC  X(008).
           03  ‚c‚U‚S‚T|XV”NŒŽ“ú  PIC  X(008).
           03  ‚c‚U‚S‚T|XVŽžŠÔ    PIC  X(008).
           03  ‚c‚U‚S‚T|XVŽÒ      PIC  X(008).
           03  ‚c‚U‚S‚T|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚U‚S‚T|ŽèŒ`ó‘Ô    PIC  X(001).
000820     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
000830                                                                  
000840*--< Šî€“K—p“úƒtƒ@ƒCƒ‹(CISPF001) >                               
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
000850 01  ‚v‚r|Šî€“ú                      PIC  X(05).                
000860                                                                  
000870*--< •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001)>                                     
000880 01  ‚v‚r|ŽæˆøæƒR[ƒh                PIC  X(08).                
000890 01  ‚v‚r|–Ú“I‚b‚c                    PIC  X(01)   VALUE '2'.    
000900                                                                  
000910 01  ‚v‚r|VŽæˆøæƒR[ƒh              PIC  X(09).                
000920 01  ‚v‚r|Œ_–ñæƒR[ƒh                PIC  X(05).                
000930 01  ‚v‚r|UolŽæˆøæƒR[ƒh          PIC  X(09).                
000940 01  ‚v‚r|UolŒ_–ñæƒR[ƒh          PIC  X(05).                
000950*                                                                 
000960     
      *    EXEC  SQL  END  DECLARE           SECTION  END-EXEC.
000970*                                                                 
000980*----------------------------------------------------------------*
000990*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
001000*----------------------------------------------------------------*
001010 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
001020*--< ƒGƒ‰[”»’è—p >                                               
001030     03  ‚v|ƒGƒ‰[ƒR[ƒh              PIC S9(04).                
001040*                                                                 
001050*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
001060     03  ƒtƒ@ƒCƒ‹ó‘Ô                  PIC  X(02).                
001070                                                                  
001080*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001090     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
001100         05  ‚v|I—¹|ƒtƒ‰ƒO          PIC  X(01).                
001110         05  ‚v|I—¹|ƒtƒ‰ƒO‚P        PIC  X(01).                
001120         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO      PIC  X(01).                
001130*                                                                 
001140*--< Œ”ƒGƒŠƒA >                                                 
001150     03  Œ”ƒGƒŠƒA.                                              
001160         05  ‚v|“ü—Í|Œ”‚P          PIC  9(09).                
001170         05  ‚v|“ü—Í|Œ”‚Q          PIC  9(09).                
001180         05  ‚v|o—Í|Œ”‚P          PIC  9(09).                
001190         05  ‚v|o—Í|Œ”‚Q          PIC  9(09).                
001200*                                                                 
001210*                                                                 
001220*--< ‹¤’Êî•ñ >                                                   
001230 01  ‚v|‹¤’Êî•ñ.                                                
001240     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
001250         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
001260         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
001270     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
001280     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
001290*                                                                 
001300*----------------------------------------------------------------*
001310*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001320*----------------------------------------------------------------*
001330 01  CALL-AREA.                                                   
001340*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001350     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001360     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001370*                                                                 
001380*----------------------------------------------------------------*
001390*    ‚b‚n‚o‚x—Ìˆæ                                                *
001400*----------------------------------------------------------------*
001410*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001420 01  IF-CHOCO001.                                                 
001430     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001440*                                                                 
001450*----------------------------------------------------------------*
001460*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001470*----------------------------------------------------------------*
001480 01  PARA-AREA.                                                   
001490     COPY CPBCO001.                                               
001500******************************************************************
001510*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001520******************************************************************
001530 CONSTANT                              SECTION.                   
001540 01  ’è”—Ìˆæ.                                                    
001550     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS631".
001560     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001570                                    VALUE  "ƒtƒ@ƒNƒ^ƒŠƒ“ƒO•ªì¬".
001580     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001590     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001600     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001610     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001620******************************************************************
001630*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001640******************************************************************
001650 PROCEDURE                            DIVISION.                   
001660*                                                                 
001670     PERFORM  ‰Šúˆ—.                                           
001680*                                                                 
001690     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001700*                                                                 
001710     PERFORM  I—¹ˆ—.                                           
001720*                                                                 
001730     STOP     RUN.                                                
001740*                                                                 
001750******************************************************************
001760*    ‰Šúˆ—                                                    *
001770******************************************************************
001780 ‰Šúˆ—                             SECTION.                    
001790 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001800*                                                                 
001810*----------------------------------------------------------------*
001820*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001830*----------------------------------------------------------------*
001840     INITIALIZE                       IF-CHOCO001.                
001850     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001860     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001870     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001880     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001890     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001900     CALL  CLOCO001                USING  IF-CHOCO001.            
001910*                                                                 
001920*----------------------------------------------------------------*
001930*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001940*----------------------------------------------------------------*
001950     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001960     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001970*                                                                 
001980*                                                                 
001990*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
002000     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
002010*                                                                 
002020*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
002030     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
002040*                                                                 
002050*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
002060     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
002070*                                                                 
002080*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
002090     OPEN  INPUT  “ü—Íƒtƒ@ƒCƒ‹.                                   
002100*                                                                 
002110*----------------------------------------------------------------*
002120*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
002130*----------------------------------------------------------------*
002140     EVALUATE  ƒtƒ@ƒCƒ‹ó‘Ô                                       
002150        WHEN  ZERO                                                
002160           CONTINUE                                               
002170        WHEN  OTHER                                               
002180*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
002190           MOVE     -5                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002200           PERFORM  ƒGƒ‰[”»’èˆ—                                
002210     END-EVALUATE.                                                
002220                                                                  
002230*----------------------------------------------------------------*
002240*    Šî€“K—p“ú“Çžˆ—(‚PŒ–Ú)                                  *
002250*----------------------------------------------------------------*
002260     PERFORM   Šî€“ú“Çžˆ—.                                    
002270                                                                  
002280*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
002290     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
002300*                                                                 
002310*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
002320     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
002330*                                                                 
002340 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002350     EXIT.                                                        
002360******************************************************************
002370*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
002380******************************************************************
002390 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002400 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002410*                                                                 
002420*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002430     CALL  COBCO001                USING  PARA-AREA.              
002440*                                                                 
002450     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002460     MOVE  PARA-USERNAME              TO  USERNAME.               
002470     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002480*                                                                 
002490*----------------------------------------------------------------*
002500*    ŠJŽnÚ‘±                                                    *
002510*----------------------------------------------------------------*
002520     IF    DB-STRING  =  SPACE                                    
002530        
      *       EXEC SQL                                                  
002540*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002550*       END-EXEC 
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
002560     ELSE                                                         
002570        
      *       EXEC SQL                                                  
002580*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002590*            USING  :DB-STRING                                    
002600*       END-EXEC 
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
002610     END-IF.                                                      
002620*                                                                 
002630*----------------------------------------------------------------*
002640*    Ú‘±Šm”F                                                    *
002650*----------------------------------------------------------------*
002660     EVALUATE  SQLCODE                                            
002670        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002680           CONTINUE                                               
002690        WHEN   OTHER                                              
002700*--<       Ú‘±ƒGƒ‰[ >                                           
002710           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002720           PERFORM  ƒGƒ‰[”»’èˆ—                                
002730     END-EVALUATE.                                                
002740*                                                                 
002750 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002760     EXIT.                                                        
002770******************************************************************
002780*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002790******************************************************************
002800 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002810 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002820*                                                                 
002830*----------------------------------------------------------------*
002840*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002850*----------------------------------------------------------------*
002860     
      *    EXEC SQL                                                     
002870*       DECLARE CUR1  CURSOR FOR                                  
002880*         SELECT   LTRFCK.Œ_–ñ”Ô†                                
002890*                 ,LTRFCK.ƒ†[ƒU[ƒR[ƒh                          
002900*                 ,NVL(LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš        
002910*                                             ,RPAD(' ',1,' '))   
002920*                 ,NVL(LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi        
002930*                                             ,RPAD(' ',1,' '))   
002940*                 ,LTRFCK.Ž–‹ÆŠƒR[ƒh                            
002950*                 ,LTRFCK.ŽÀs“ú                                  
002960*                 ,NVL(LTRFCT.ŽèŒ`Ží—Þ,0)                         
002970*                 ,NVL(LTRFCT.—˜‘§Šú“ú,RPAD('0',7,'0'))           
002980*                 ,LTRFCK.Šz–Ê‹àŠz                                
002990*                 ,LTRFCK.‹âsƒR[ƒh                              
003000*                 ,NVL(LTRFCT.Žæˆø‹âsƒR[ƒh,RPAD('0',7,'0'))     
003010*                 ,LTRFCK.Œ´Â–±ŽÒƒR[ƒh                          
003020*                 ,NVL(LTRFCT.Žx•¥l–¼,RPAD(' ',60,' '))          
003030*                 ,NVL(LTRFCT.ŽèŒ`”Ô†,RPAD('0',10,'0'))          
003040*                 ,LTRFCK.Šú“ú                                    
003050*                 ,LTRFCK.Šz–Ê‹àŠz                                
003060*                                                                 
003070*           FROM  LTRFCK                                          
003080*                ,LTRFCT                                          
003090*                ,LTRTRI                                          
003100*          WHERE  LTRFCK.Œ_–ñ”Ô†   =    LTRFCT.Œ_–ñ”Ô†(+)       
003110*            AND  LTRTRI.ŽæˆøæƒR[ƒh(+) = LTRFCK.ƒ†[ƒU[ƒR[ƒh  
003120*       ORDER BY  LTRFCK.Œ_–ñ”Ô†                                 
003130*    END-EXEC.
003140                                                                  
003150*----------------------------------------------------------------*
003160*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003170*----------------------------------------------------------------*
003180     
      *    EXEC  SQL                                                    
003190*       OPEN  CUR1                                                
003200*    END-EXEC.
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
003210*                                                                 
003220*----------------------------------------------------------------*
003230*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003240*----------------------------------------------------------------*
003250     EVALUATE  SQLCODE                                            
003260        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003270*--<       ³í >                                                 
003280           CONTINUE                                               
003290        WHEN  OTHER                                               
003300*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003310           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003320           PERFORM  ƒGƒ‰[”»’èˆ—                                
003330     END-EVALUATE.                                                
003340*                                                                 
003350 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
003360     EXIT.                                                        
003370******************************************************************
003380*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
003390******************************************************************
003400 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
003410 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
003420*                                                                 
003430*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
003440     
      *    EXEC SQL                                                     
003450*        FETCH  CUR1                                              
003460*         INTO  :‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†                           
003470*              ,:‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh                     
003480*              ,:‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš       
003490*              ,:‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi       
003500*              ,:‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh                       
003510*              ,:‚k‚s‚q‚e‚b‚j|ŽÀs“ú                             
003520*              ,:‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ                           
003530*              ,:‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú                           
003540*              ,:‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz                           
003550*              ,:‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh                         
003560*              ,:‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh                     
003570*              ,:‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh                     
003580*              ,:‚k‚s‚q‚e‚b‚s|Žx•¥l–¼                           
003590*              ,:‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†                           
003600*              ,:‚k‚s‚q‚e‚b‚j|Šú“ú                               
003610*              ,:‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz                           
003620*                                                                 
003630*    END-EXEC.
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
               ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†
               SQL-SQHSTV(1)
           MOVE 9 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš
               SQL-SQHSTV(3)
           MOVE 40 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi
               SQL-SQHSTV(4)
           MOVE 60 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh
               SQL-SQHSTV(5)
           MOVE 3 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ŽÀs“ú
               SQL-SQHSTV(6)
           MOVE 7 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ
               SQL-SQHSTV(7)
           MOVE 1 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú
               SQL-SQHSTV(8)
           MOVE 7 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh
               SQL-SQHSTV(11)
           MOVE 7 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh
               SQL-SQHSTV(12)
           MOVE 8 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼
               SQL-SQHSTV(13)
           MOVE 60 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†
               SQL-SQHSTV(14)
           MOVE 10 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Šú“ú
               SQL-SQHSTV(15)
           MOVE 7 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz
               SQL-SQHSTV(16)
           MOVE 7 TO SQL-SQHSTL(16)
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
003640*                                                                 
003650*----------------------------------------------------------------*
003660*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
003670*----------------------------------------------------------------*
003680     EVALUATE   SQLCODE                                           
003690        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003700*--<       ³í >                                                 
003710*                                                                 
003720           COMPUTE  ‚v|“ü—Í|Œ”‚P  =  ‚v|“ü—Í|Œ”‚P  +  1   
003730        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
003740*--<       “ÇžI—¹ >                                             
003750           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
003760        WHEN   OTHER                                              
003770*--<       “ÇžƒGƒ‰[ >                                           
003780           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003790           PERFORM  ƒGƒ‰[”»’èˆ—                                
003800     END-EVALUATE.                                                
003810*                                                                 
003820 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003830     EXIT.                                                        
003840                                                                  
003850******************************************************************
003860*    Šî€“K—p“ú“Çžˆ—        (CISPF001)                        *
003870******************************************************************
003880 Šî€“ú“Çžˆ—                       SECTION.                    
003890 Šî€“ú“Çžˆ—|‚r‚s‚`‚q‚s.                                      
003900*--<    Šî€“ú“Çž >                                              
003910        READ  “ü—Íƒtƒ@ƒCƒ‹                                        
003920           AT  END                                                
003930*--<          “ÇžI—¹ >                                          
003940              MOVE  "Y"               TO  ‚v|I—¹|ƒtƒ‰ƒO‚P      
003950              GO  TO  Šî€“ú“Çžˆ—|‚d‚w‚h‚s                    
003960           NOT  AT  END                                           
003970              COMPUTE  ‚v|“ü—Í|Œ”‚Q  =  ‚v|“ü—Í|Œ”‚Q + 1  
003980        END-READ.                                                 
003990*                                                                 
004000*----------------------------------------------------------------*
004010*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
004020*----------------------------------------------------------------*
004030     EVALUATE  ƒtƒ@ƒCƒ‹ó‘Ô                                       
004040        WHEN  ZERO                                                
004050*--<       Šî€“úˆ—>                                            
004060           IF “ü—Í|Šî€“ú(1:2) = "19"                            
004070             MOVE  "0"                TO  ‚v‚r|Šî€“ú(1:1)       
004080           ELSE                                                   
004090             IF “ü—Í|Šî€“ú(1:2) = "20"                          
004100               MOVE  "1"              TO  ‚v‚r|Šî€“ú(1:1)       
004110             END-IF                                               
004120           END-IF                                                 
004130           MOVE  “ü—Í|Šî€“ú(3:4)    TO  ‚v‚r|Šî€“ú(2:4)       
004140        WHEN  OTHER                                               
004150*--<       “Ç‚Ýž‚ÝƒGƒ‰[ >                                       
004160           MOVE     ZERO              TO  ‚v‚r|Šî€“ú            
004170           MOVE     -8                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004180           PERFORM  ƒGƒ‰[”»’èˆ—                                
004190     END-EVALUATE.                                                
004200*                                                                 
004210 Šî€“ú“Çžˆ—|‚d‚w‚h‚s.                                        
004220     EXIT.                                                        
004230                                                                  
004240******************************************************************
004250*    Žåˆ—                                                      *
004260******************************************************************
004270 Žåˆ—                               SECTION.                    
004280 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004290*                                                                 
004300     PERFORM  —˜‘§Šú“úˆ—.                                       
004310     PERFORM  VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ—.               
004320     PERFORM  UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh.             
004330     PERFORM  •ÏŠ·Šú“úˆ—.                                       
004340     PERFORM  •ÒWo—Íˆ—.                                       
004350*                                                                 
004360     PERFORM  o—Íˆ—.                                           
004370                                                                  
004380*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
004390     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
004400*                                                                 
004410*                                                                 
004420 Žåˆ—|‚d‚w‚h‚s.                                                
004430     EXIT.                                                        
004440                                                                  
004450******************************************************************
004460*    —˜‘§Šú“úˆ—*                                                
004470******************************************************************
004480                                                                  
004490 —˜‘§Šú“úˆ—                         SECTION.                    
004500 —˜‘§Šú“úˆ—|‚r‚s‚`‚q‚s.                                        
004510*                                                                 
004520*--< —˜‘§Šú“úˆ— >                                               
004530     IF ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú(1:5)   NOT <  ‚v‚r|Šî€“ú         
004540       CONTINUE                                                   
004550     ELSE                                                         
004560       MOVE  ZERO   TO       ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ               
004570       MOVE  ZERO   TO       ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú               
004580       MOVE  ZERO   TO       ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh         
004590       MOVE  SPACE  TO       ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼               
004600       MOVE  ZERO   TO       ‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†               
004610     END-IF.                                                      
004620                                                                  
004630 —˜‘§Šú“úˆ—|‚d‚w‚h‚s.                                          
004640     EXIT.                                                        
004650******************************************************************
004660*    •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001) VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ—*
004670******************************************************************
004680                                                                  
004690 VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ—  SECTION.                   
004700 VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ—|‚r‚s‚`‚q‚s.                
004710*                                                                 
004720     MOVE  SPACE                       TO  ‚v‚r|VŽæˆøæƒR[ƒh.  
004730     INITIALIZE                            ‚v‚r|VŽæˆøæƒR[ƒh.  
004740     MOVE  SPACE                       TO  ‚v‚r|Œ_–ñæƒR[ƒh.    
004750     INITIALIZE                            ‚v‚r|Œ_–ñæƒR[ƒh.    
004760                                                                  
004770*--< VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ— >                       
004780     
      *    EXEC SQL                                                     
004790*          SELECT  NVL(IKOTBL001.VŽæˆøæƒR[ƒh,RPAD('0',7,'0'))  
004800*                 ,NVL(IKOTBL001.Ž}”Ô,RPAD('0',3,'0'))            
004810*            INTO  :‚v‚r|VŽæˆøæƒR[ƒh                          
004820*                 ,:‚v‚r|Œ_–ñæƒR[ƒh                            
004830*            FROM  IKOTBL001                                      
004840*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh                         
004850*                                =  :‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh 
004860*             AND  IKOTBL001.–Ú“I‚b‚c                             
004870*                             =  :‚v‚r|–Ú“I‚b‚c                  
004880*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 161 TO SQL-OFFSET
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
               ‚v‚r|VŽæˆøæƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 9 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|Œ_–ñæƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 5 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|–Ú“I‚b‚c
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
004890                                                                  
004900*--<       SQLCODE”»’èˆ— >                                      
004910     EVALUATE  SQLCODE                                            
004920        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004930*--<       ³í >                                                 
004940           CONTINUE                                               
004950        WHEN  OTHER                                               
004960*--<       ‚s‚`‚a‚k‚d  ‚r‚d‚k‚d‚b‚s  ƒGƒ‰[ >                     
004970           MOVE -50                    TO  ‚v|ƒGƒ‰[ƒR[ƒh       
004980           PERFORM  ƒGƒ‰[”»’èˆ—                                
004990     END-EVALUATE.                                                
005000                                                                  
005010 VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ—|‚d‚w‚h‚s.                  
005020     EXIT.                                                        
005030                                                                  
005040******************************************************************
005050*   •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001)UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh*
005060******************************************************************
005070                                                                  
005080 UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh     SECTION.              
005090 UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh|‚r‚s‚`‚q‚s.              
005100*                                                                 
005110     MOVE  SPACE                    TO  ‚v‚r|UolŽæˆøæƒR[ƒh. 
005120     INITIALIZE                         ‚v‚r|UolŽæˆøæƒR[ƒh. 
005130     MOVE  SPACE                    TO  ‚v‚r|UolŒ_–ñæƒR[ƒh. 
005140     INITIALIZE                         ‚v‚r|UolŒ_–ñæƒR[ƒh. 
005150                                                                  
005160*--< UolŒ_–ñæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh’Šoˆ— >             
005170     
      *    EXEC SQL                                                     
005180*          SELECT  NVL(IKOTBL001.VŽæˆøæƒR[ƒh,RPAD('0',7,'0'))  
005190*                 ,NVL(IKOTBL001.Ž}”Ô,RPAD('0',3,'0'))            
005200*            INTO  :‚v‚r|UolŽæˆøæƒR[ƒh                      
005210*                 ,:‚v‚r|UolŒ_–ñæƒR[ƒh                      
005220*            FROM  IKOTBL001                                      
005230*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh                         
005240*                                =  :‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh 
005250*             AND  IKOTBL001.–Ú“I‚b‚c                             
005260*                             =  :‚v‚r|–Ú“I‚b‚c                  
005270*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 192 TO SQL-OFFSET
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
               ‚v‚r|UolŽæˆøæƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 9 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|UolŒ_–ñæƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 5 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|–Ú“I‚b‚c
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
005280                                                                  
005290*--<       SQLCODE”»’èˆ— >                                      
005300     EVALUATE  SQLCODE                                            
005310        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005320*--<       ³í >                                                 
005330           CONTINUE                                               
005340        WHEN  OTHER                                               
005350*--<       ‚s‚`‚a‚k‚d  ‚r‚d‚k‚d‚b‚s  ƒGƒ‰[ >                     
005360           MOVE -60                    TO  ‚v|ƒGƒ‰[ƒR[ƒh       
005370           PERFORM  ƒGƒ‰[”»’èˆ—                                
005380     END-EVALUATE.                                                
005390                                                                  
005400 UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh|‚d‚w‚h‚s.                
005410     EXIT.                                                        
005420                                                                  
005430******************************************************************
005440*    •ÏŠ·Šú“úˆ—*                                                
005450******************************************************************
005460                                                                  
005470 •ÏŠ·Šú“úˆ—                          SECTION.                   
005480 •ÏŠ·Šú“úˆ—|‚r‚s‚`‚q‚s.                                        
005490*                                                                 
005500*--< ‚k‚s‚q‚e‚b‚j|ŽÀs“úˆ— >                                   
005510     IF ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(1:1) = "0"                           
005520       MOVE "19"                       TO  ‚c‚U‚S‚Q|Žæˆø“ú(1:2)  
005530       MOVE ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(2:6)                             
005540                                       TO  ‚c‚U‚S‚Q|Žæˆø“ú(3:6)  
005550       MOVE "19"                       TO                         
005560                                       ‚c‚U‚S‚Q|“`•[”­s“ú(1:2)  
005570       MOVE ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(2:6)  TO                         
005580                                       ‚c‚U‚S‚Q|“`•[”­s“ú(3:6)  
005590     ELSE                                                         
005600       IF ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(1:1) = "1"                         
005610         MOVE "20"                     TO  ‚c‚U‚S‚Q|Žæˆø“ú(1:2)  
005620         MOVE ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(2:6)                           
005630                                       TO ‚c‚U‚S‚Q|Žæˆø“ú(3:6)   
005640         MOVE "20"                     TO                         
005650                                       ‚c‚U‚S‚Q|“`•[”­s“ú(1:2)  
005660         MOVE ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(2:6)                           
005670                                       TO                         
005680                                       ‚c‚U‚S‚Q|“`•[”­s“ú(3:6)  
005690       END-IF                                                     
005700     END-IF.                                                      
005710                                                                  
005720*--< ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú >                                     
005730     IF ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú(1:1) = "0"                         
005740       MOVE "19"                       TO                         
005750                                       ‚c‚U‚S‚Q|Šú“úŠî€“ú(1:2)  
005760       MOVE ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(2:6)  TO                         
005770                                       ‚c‚U‚S‚Q|Šú“úŠî€“ú(3:6)  
005780     ELSE                                                         
005790       IF ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú(1:1) = "1"                       
005800         MOVE "20"                     TO                         
005810                                       ‚c‚U‚S‚Q|Šú“úŠî€“ú(1:2)  
005820         MOVE ‚k‚s‚q‚e‚b‚j|ŽÀs“ú(2:6)                           
005830                                       TO                         
005840                                       ‚c‚U‚S‚Q|Šú“úŠî€“ú(3:6)  
005850       END-IF                                                     
005860     END-IF.                                                      
005870                                                                  
005880*--< ‚k‚s‚q‚e‚b‚j|Šú“ú >                                         
005890     IF ‚k‚s‚q‚e‚b‚j|Šú“ú(1:1) = "0"                             
005900       MOVE "19"                       TO  ‚c‚U‚S‚T|Šú“ú(1:2)    
005910       MOVE ‚k‚s‚q‚e‚b‚j|Šú“ú(2:6)    TO  ‚c‚U‚S‚T|Šú“ú(3:6)    
005920     ELSE                                                         
005930       IF ‚k‚s‚q‚e‚b‚j|Šú“ú(1:1) = "1"                           
005940         MOVE "20"                     TO  ‚c‚U‚S‚T|Šú“ú(1:2)    
005950         MOVE ‚k‚s‚q‚e‚b‚j|Šú“ú(2:6)  TO  ‚c‚U‚S‚T|Šú“ú(3:6)    
005960       END-IF                                                     
005970     END-IF.                                                      
005980                                                                  
005990 •ÏŠ·Šú“úˆ—|‚d‚w‚h‚s.                                          
006000     EXIT.                                                        
006010                                                                  
006020******************************************************************
006030*     •ÒWo—Íˆ—                                               *
006040******************************************************************
006050 •ÒWo—Íˆ—                          SECTION.                   
006060 •ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                        
006070*                                                                 
006080                                                                  
006090*----------------------------------------------------------------*
006100*       €–Ú•ÒWˆ—  ŽóŽæŽèŒ`(D642UTG_TBL)                      *
006110*----------------------------------------------------------------*
006120*--<    No.01 >                                                   
006130        MOVE  ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†  TO  ‚c‚U‚S‚Q|‘ã•\Œ_–ñ”Ô†. 
006140*--<    No.02 >                                                   
006150        MOVE  1                       TO  ‚c‚U‚S‚Q|‘©”.         
006160*--<    No.03 >                                                   
006170        MOVE  ‚v‚r|VŽæˆøæƒR[ƒh    TO  ‚c‚U‚S‚Q|ŽæˆøæƒR[ƒh. 
006180*--<    No.04 >                                                   
006190        MOVE  ‚v‚r|Œ_–ñæƒR[ƒh      TO  ‚c‚U‚S‚Q|Œ_–ñæƒR[ƒh. 
006200*--<    No.05 >                                                   
006210        MOVE  ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš          
006220                                      TO  ‚c‚U‚S‚Q|Œ_–ñæ–¼Ì.   
006230*--<    No.06 >                                                   
006240        MOVE  ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi          
006250                                      TO                          
006260                                        ‚c‚U‚S‚Q|Œ_–ñæ–¼ÌƒJƒi. 
006270*--<    No.07 >                                                   
006280        MOVE  ‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh                          
006290                                      TO  ‚c‚U‚S‚Q|•”“XƒR[ƒh.   
006300*--<    No.8 >                                                    
006310        MOVE  "8"                     TO  ‚c‚U‚S‚Q|ŽåŒ_–ñ‹æ•ª.   
006320*--<    No.9 >                                                    
006330        MOVE  "0"                     TO  ‚c‚U‚S‚Q|ŽèŒ`ó‘Ô.     
006340*--<    No.12 >                                                   
006350        MOVE  ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ  TO  ‚c‚U‚S‚Q|ŽèŒ`Ží—Þ.     
006360*--<    No.14 >                                                   
006370        MOVE  1                       TO  ‚c‚U‚S‚Q|Šú“úƒTƒCƒNƒ‹. 
006380*--<    No.15 >                                                   
006390        MOVE  ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz  TO  ‚c‚U‚S‚Q|‘©‡Œv‹àŠz.   
006400*--<    No.16 >                                                   
006410        MOVE  1                       TO  ‚c‚U‚S‚Q|ŽèŒ`–‡”.     
006420                                                                  
006430*--<    No.17 >                                                   
006440        MOVE  ‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh                            
006450                                      TO                          
006460                                       ‚c‚U‚S‚Q|Žæ—§‹âsƒR[ƒh.  
006470*--<    No.18 >                                                   
006480        MOVE  ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh                        
006490                                      TO                          
006500                                       ‚c‚U‚S‚Q|Žx•¥‹âsƒR[ƒh.  
006510*--<    No.19 >                                                   
006520        MOVE  ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†  TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P.   
006530*--<    No.20 >                                                   
006540        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚Q.   
006550*--<    No.21 >                                                   
006560        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚R.   
006570*--<    No.22 >                                                   
006580        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚S.   
006590*--<    No.23 >                                                   
006600        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚T.   
006610*--<    No.24 >                                                   
006620        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚U.   
006630*--<    No.25 >                                                   
006640        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚V.   
006650*--<    No.26 >                                                   
006660        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚W.   
006670*--<    No.27 >                                                   
006680        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚X.   
006690*--<    No.28 >                                                   
006700        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P‚O. 
006710*--<    No.29 >                                                   
006720        MOVE  SPACE                   TO  ‚c‚U‚S‚Q|”õl—“.       
006730*--<    No.30 >                                                   
006740        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|ŽèŒ`“à—eŽí•Ê. 
006750*--<    No.31 >                                                   
006760        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t        TO  ‚c‚U‚S‚Q|“o˜^”NŒŽ“ú.   
006770*--<    No.92 >                                                   
006780        MOVE  ‚v|ƒVƒXƒeƒ€Žž        TO  ‚c‚U‚S‚Q|“o˜^ŽžŠÔ.     
006790*--<    No.33 >                                                   
006800        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚U‚S‚Q|“o˜^’S“–ŽÒ.   
006810*--<    No.34 >                                                   
006820        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t        TO  ‚c‚U‚S‚Q|XV”NŒŽ“ú.   
006830*--<    No.35 >                                                   
006840        MOVE  ‚v|ƒVƒXƒeƒ€Žž        TO  ‚c‚U‚S‚Q|XVŽžŠÔ.     
006850*--<    No.36 >                                                   
006860        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚U‚S‚Q|XVŽÒ.       
006870*--<    No.37 >                                                   
006880        MOVE  ‚v|’S“–ŽÒ              TO                          
006890                                      ‚c‚U‚S‚Q|“ü—Í’S“–ŽÒƒR[ƒh. 
006900*--<    No.38>                                                    
006910        MOVE  ZERO                    TO  ‚c‚U‚S‚Q|”„‹p‘ã‹à‹æ•ª. 
006920*--<    No.39 >                                                   
006930        MOVE  ‚v‚r|UolŽæˆøæƒR[ƒh                            
006940                                      TO                          
006950                                    ‚c‚U‚S‚Q|UolŽæˆøæƒR[ƒh. 
006960*--<    No.40 >                                                   
006970        MOVE  ‚v‚r|UolŒ_–ñæƒR[ƒh                            
006980                                      TO                          
006990                                    ‚c‚U‚S‚Q|UolŒ_–ñæƒR[ƒh. 
007000*--<    No.41 >                                                   
007010        MOVE  ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼  TO  ‚c‚U‚S‚Q|Uol–¼Ì.   
007020*--<    No.42 >                                                   
007030        MOVE  SPACE                   TO                          
007040                                      ‚c‚U‚S‚Q|Uol–¼ÌƒJƒi.   
007050                                                                  
007060*----------------------------------------------------------------*
007070*       €–Ú•ÒWˆ—  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)                  *
007080*----------------------------------------------------------------*
007090*--<    No.01 >                                                   
007100        MOVE   ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†                             
007110                                      TO   ‚c‚U‚S‚T|‘ã•\Œ_–ñ”Ô†.
007120*--<    No.02 >                                                   
007130        MOVE   1                                                  
007140                                      TO   ‚c‚U‚S‚T|‘©”.        
007150*--<    No.03 >                                                   
007160        MOVE   1                                                  
007170                                      TO   ‚c‚U‚S‚T|˜A”Ô.        
007180*--<    No.04 >                                                   
007190        MOVE   ‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†                             
007200                                      TO   ‚c‚U‚S‚T|ŽèŒ`”Ô†.    
007210*--<    No.05 >                                                   
007220                                                                  
007230*--<    No.06 >                                                   
007240        MOVE   ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz                             
007250                                      TO   ‚c‚U‚S‚T|‹àŠz.        
007260*--<    No.07 >                                                   
007270        MOVE   ‚v‚r|UolŽæˆøæƒR[ƒh                           
007280                                      TO                          
007290                                    ‚c‚U‚S‚T|UolŽæˆøæƒR[ƒh. 
007300*--<    No.08 >                                                   
007310        MOVE   ‚v‚r|UolŒ_–ñæƒR[ƒh                           
007320                                      TO                          
007330                                    ‚c‚U‚S‚T|UolŒ_–ñæƒR[ƒh. 
007340*--<    No.09 >                                                   
007350        MOVE   ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼ TO   ‚c‚U‚S‚T|Uol–¼Ì.  
007360*--<    No.10 >                                                   
007370        MOVE   SPACE                  TO                          
007380                                      ‚c‚U‚S‚T|Uol–¼ÌƒJƒi.   
007390*--<    No.11 >                                                   
007400        MOVE   ‚v|ƒVƒXƒeƒ€“ú•t       TO   ‚c‚U‚S‚T|“o˜^”NŒŽ“ú.  
007410*--<    No.12 >                                                   
007420        MOVE   ‚v|ƒVƒXƒeƒ€Žž       TO   ‚c‚U‚S‚T|“o˜^ŽžŠÔ.    
007430*--<    No.13 >                                                   
007440        MOVE   ‚v|’S“–ŽÒ             TO   ‚c‚U‚S‚T|“o˜^’S“–ŽÒ.  
007450*--<    No.14 >                                                   
007460        MOVE   ‚v|ƒVƒXƒeƒ€“ú•t       TO   ‚c‚U‚S‚T|XV”NŒŽ“ú.  
007470*--<    No.15 >                                                   
007480        MOVE   ‚v|ƒVƒXƒeƒ€Žž       TO   ‚c‚U‚S‚T|XVŽžŠÔ.    
007490*--<    No.16 >                                                   
007500        MOVE   ‚v|’S“–ŽÒ             TO   ‚c‚U‚S‚T|XVŽÒ.      
007510*--<    No.17 >                                                   
007520        MOVE   ‚v|’S“–ŽÒ             TO                          
007530                                     ‚c‚U‚S‚T|“ü—Í’S“–ŽÒƒR[ƒh.  
007540*--<    No.18 >                                                   
007550        MOVE   ZERO                   TO   ‚c‚U‚S‚T|ŽèŒ`ó‘Ô.    
007560                                                                  
007570 •ÒWo—Íˆ—|‚d‚w‚h‚s.                                          
007580     EXIT.                                                        
007590******************************************************************
007600*    o—Íˆ—                                                    *
007610******************************************************************
007620 o—Íˆ—                             SECTION.                    
007630 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
007640*                                                                 
007650*----------------------------------------------------------------*
007660*       €–Úˆ—  ŽóŽæŽèŒ`(D642UTG_TBL)                          *
007670*----------------------------------------------------------------*
007680       
      *      EXEC  SQL                                                  
007690*       INSERT  INTO  D642UTG_TBL                                 
007700*          (  ‘ã•\Œ_–ñ”Ô†                                        
007710*            ,‘©”                                                
007720*            ,ŽæˆøæƒR[ƒh                                        
007730*            ,Œ_–ñæƒR[ƒh                                        
007740*            ,Œ_–ñæ–¼Ì                                          
007750*            ,Œ_–ñæ–¼ÌƒJƒi                                      
007760*            ,•”“XƒR[ƒh                                          
007770*            ,ŽåŒ_–ñ‹æ•ª                                          
007780*            ,ŽèŒ`ó‘Ô                                            
007790*            ,Žæˆø“ú                                              
007800*            ,“`•[”­s“ú                                          
007810*            ,ŽèŒ`Ží—Þ                                            
007820*            ,Šú“úŠî€“ú                                          
007830*            ,Šú“úƒTƒCƒNƒ‹                                        
007840*            ,‘©‡Œv‹àŠz                                          
007850*            ,ŽèŒ`–‡”                                            
007860*            ,Žæ—§‹âsƒR[ƒh                                      
007870*            ,Žx•¥‹âsƒR[ƒh                                      
007880*            ,Œ_–ñ”Ô†‚P                                          
007890*            ,Œ_–ñ”Ô†‚Q                                          
007900*            ,Œ_–ñ”Ô†‚R                                          
007910*            ,Œ_–ñ”Ô†‚S                                          
007920*            ,Œ_–ñ”Ô†‚T                                          
007930*            ,Œ_–ñ”Ô†‚U                                          
007940*            ,Œ_–ñ”Ô†‚V                                          
007950*            ,Œ_–ñ”Ô†‚W                                          
007960*            ,Œ_–ñ”Ô†‚X                                          
007970*            ,Œ_–ñ”Ô†‚P‚O                                        
007980*            ,”õl—“                                              
007990*            ,ŽèŒ`“à—eŽí•Ê                                        
008000*            ,“o˜^”NŒŽ“ú                                          
008010*            ,“o˜^ŽžŠÔ                                            
008020*            ,“o˜^’S“–ŽÒ                                          
008030*            ,XV”NŒŽ“ú                                          
008040*            ,XVŽžŠÔ                                            
008050*            ,XVŽÒ                                              
008060*            ,“ü—Í’S“–ŽÒƒR[ƒh                                    
008070*            ,”„‹p‘ã‹à‹æ•ª                                        
008080*            ,UolŽæˆøæƒR[ƒh                                  
008090*            ,UolŒ_–ñæƒR[ƒh                                  
008100*            ,Uol–¼Ì                                          
008110*            ,Uol–¼ÌƒJƒi)                                     
008120*      VALUES                                                     
008130*          (  :‚c‚U‚S‚Q|‘ã•\Œ_–ñ”Ô†                             
008140*            ,:‚c‚U‚S‚Q|‘©”                                     
008150*            ,:‚c‚U‚S‚Q|ŽæˆøæƒR[ƒh                             
008160*            ,:‚c‚U‚S‚Q|Œ_–ñæƒR[ƒh                             
008170*            ,:‚c‚U‚S‚Q|Œ_–ñæ–¼Ì                               
008180*            ,:‚c‚U‚S‚Q|Œ_–ñæ–¼ÌƒJƒi                           
008190*            ,:‚c‚U‚S‚Q|•”“XƒR[ƒh                               
008200*            ,:‚c‚U‚S‚Q|ŽåŒ_–ñ‹æ•ª                               
008210*            ,:‚c‚U‚S‚Q|ŽèŒ`ó‘Ô                                 
008220*            ,:‚c‚U‚S‚Q|Žæˆø“ú                                   
008230*            ,:‚c‚U‚S‚Q|“`•[”­s“ú                               
008240*            ,:‚c‚U‚S‚Q|ŽèŒ`Ží—Þ                                 
008250*            ,:‚c‚U‚S‚Q|Šú“úŠî€“ú                               
008260*            ,:‚c‚U‚S‚Q|Šú“úƒTƒCƒNƒ‹                             
008270*            ,:‚c‚U‚S‚Q|‘©‡Œv‹àŠz                               
008280*            ,:‚c‚U‚S‚Q|ŽèŒ`–‡”                                 
008290*            ,:‚c‚U‚S‚Q|Žæ—§‹âsƒR[ƒh                           
008300*            ,:‚c‚U‚S‚Q|Žx•¥‹âsƒR[ƒh                           
008310*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P                               
008320*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚Q                               
008330*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚R                               
008340*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚S                               
008350*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚T                               
008360*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚U                               
008370*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚V                               
008380*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚W                               
008390*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚X                               
008400*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P‚O                             
008410*            ,:‚c‚U‚S‚Q|”õl—“                                   
008420*            ,:‚c‚U‚S‚Q|ŽèŒ`“à—eŽí•Ê                             
008430*            ,:‚c‚U‚S‚Q|“o˜^”NŒŽ“ú                               
008440*            ,:‚c‚U‚S‚Q|“o˜^ŽžŠÔ                                 
008450*            ,:‚c‚U‚S‚Q|“o˜^’S“–ŽÒ                               
008460*            ,:‚c‚U‚S‚Q|XV”NŒŽ“ú                               
008470*            ,:‚c‚U‚S‚Q|XVŽžŠÔ                                 
008480*            ,:‚c‚U‚S‚Q|XVŽÒ                                   
008490*            ,:‚c‚U‚S‚Q|“ü—Í’S“–ŽÒƒR[ƒh                         
008500*            ,:‚c‚U‚S‚Q|”„‹p‘ã‹à‹æ•ª                             
008510*            ,:‚c‚U‚S‚Q|UolŽæˆøæƒR[ƒh                       
008520*            ,:‚c‚U‚S‚Q|UolŒ_–ñæƒR[ƒh                       
008530*            ,:‚c‚U‚S‚Q|Uol–¼Ì                               
008540*            ,:‚c‚U‚S‚Q|Uol–¼ÌƒJƒi)                          
008550*    END-EXEC.
             CALL "SQLADR" USING SQ0004 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 223 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|‘ã•\Œ_–ñ”Ô† IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|‘©” IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|ŽæˆøæƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(3)
             MOVE 9 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñæƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(4)
             MOVE 5 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñæ–¼Ì IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(5)
             MOVE 40 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñæ–¼ÌƒJƒi IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(6)
             MOVE 40 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|•”“XƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(7)
             MOVE 4 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|ŽåŒ_–ñ‹æ•ª IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(8)
             MOVE 1 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|ŽèŒ`ó‘Ô IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(9)
             MOVE 1 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Žæˆø“ú IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(10)
             MOVE 8 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|“`•[”­s“ú IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(11)
             MOVE 8 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|ŽèŒ`Ží—Þ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(12)
             MOVE 1 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Šú“úŠî€“ú IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Šú“úƒTƒCƒNƒ‹ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(14)
             MOVE 2 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|‘©‡Œv‹àŠz IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(15)
             MOVE 7 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|ŽèŒ`–‡” IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(16)
             MOVE 3 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Žæ—§‹âsƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(17)
             MOVE 7 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Žx•¥‹âsƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(18)
             MOVE 7 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(19)
             MOVE 10 TO SQL-SQHSTL(19)
             MOVE 0 TO SQL-SQHSTS(19)
             MOVE 0 TO SQL-SQINDV(19)
             MOVE 0 TO SQL-SQINDS(19)
             MOVE 0 TO SQL-SQHARM(19)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚Q IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(20)
             MOVE 10 TO SQL-SQHSTL(20)
             MOVE 0 TO SQL-SQHSTS(20)
             MOVE 0 TO SQL-SQINDV(20)
             MOVE 0 TO SQL-SQINDS(20)
             MOVE 0 TO SQL-SQHARM(20)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚R IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(21)
             MOVE 10 TO SQL-SQHSTL(21)
             MOVE 0 TO SQL-SQHSTS(21)
             MOVE 0 TO SQL-SQINDV(21)
             MOVE 0 TO SQL-SQINDS(21)
             MOVE 0 TO SQL-SQHARM(21)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚S IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(22)
             MOVE 10 TO SQL-SQHSTL(22)
             MOVE 0 TO SQL-SQHSTS(22)
             MOVE 0 TO SQL-SQINDV(22)
             MOVE 0 TO SQL-SQINDS(22)
             MOVE 0 TO SQL-SQHARM(22)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚T IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(23)
             MOVE 10 TO SQL-SQHSTL(23)
             MOVE 0 TO SQL-SQHSTS(23)
             MOVE 0 TO SQL-SQINDV(23)
             MOVE 0 TO SQL-SQINDS(23)
             MOVE 0 TO SQL-SQHARM(23)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚U IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(24)
             MOVE 10 TO SQL-SQHSTL(24)
             MOVE 0 TO SQL-SQHSTS(24)
             MOVE 0 TO SQL-SQINDV(24)
             MOVE 0 TO SQL-SQINDS(24)
             MOVE 0 TO SQL-SQHARM(24)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚V IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(25)
             MOVE 10 TO SQL-SQHSTL(25)
             MOVE 0 TO SQL-SQHSTS(25)
             MOVE 0 TO SQL-SQINDV(25)
             MOVE 0 TO SQL-SQINDS(25)
             MOVE 0 TO SQL-SQHARM(25)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚W IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(26)
             MOVE 10 TO SQL-SQHSTL(26)
             MOVE 0 TO SQL-SQHSTS(26)
             MOVE 0 TO SQL-SQINDV(26)
             MOVE 0 TO SQL-SQINDS(26)
             MOVE 0 TO SQL-SQHARM(26)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚X IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(27)
             MOVE 10 TO SQL-SQHSTL(27)
             MOVE 0 TO SQL-SQHSTS(27)
             MOVE 0 TO SQL-SQINDV(27)
             MOVE 0 TO SQL-SQINDS(27)
             MOVE 0 TO SQL-SQHARM(27)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P‚O IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(28)
             MOVE 10 TO SQL-SQHSTL(28)
             MOVE 0 TO SQL-SQHSTS(28)
             MOVE 0 TO SQL-SQINDV(28)
             MOVE 0 TO SQL-SQINDS(28)
             MOVE 0 TO SQL-SQHARM(28)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|”õl—“ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(29)
             MOVE 40 TO SQL-SQHSTL(29)
             MOVE 0 TO SQL-SQHSTS(29)
             MOVE 0 TO SQL-SQINDV(29)
             MOVE 0 TO SQL-SQINDS(29)
             MOVE 0 TO SQL-SQHARM(29)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|ŽèŒ`“à—eŽí•Ê IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(30)
             MOVE 1 TO SQL-SQHSTL(30)
             MOVE 0 TO SQL-SQHSTS(30)
             MOVE 0 TO SQL-SQINDV(30)
             MOVE 0 TO SQL-SQINDS(30)
             MOVE 0 TO SQL-SQHARM(30)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|“o˜^”NŒŽ“ú IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(31)
             MOVE 8 TO SQL-SQHSTL(31)
             MOVE 0 TO SQL-SQHSTS(31)
             MOVE 0 TO SQL-SQINDV(31)
             MOVE 0 TO SQL-SQINDS(31)
             MOVE 0 TO SQL-SQHARM(31)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|“o˜^ŽžŠÔ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(32)
             MOVE 8 TO SQL-SQHSTL(32)
             MOVE 0 TO SQL-SQHSTS(32)
             MOVE 0 TO SQL-SQINDV(32)
             MOVE 0 TO SQL-SQINDS(32)
             MOVE 0 TO SQL-SQHARM(32)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|“o˜^’S“–ŽÒ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(33)
             MOVE 8 TO SQL-SQHSTL(33)
             MOVE 0 TO SQL-SQHSTS(33)
             MOVE 0 TO SQL-SQINDV(33)
             MOVE 0 TO SQL-SQINDS(33)
             MOVE 0 TO SQL-SQHARM(33)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|XV”NŒŽ“ú IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(34)
             MOVE 8 TO SQL-SQHSTL(34)
             MOVE 0 TO SQL-SQHSTS(34)
             MOVE 0 TO SQL-SQINDV(34)
             MOVE 0 TO SQL-SQINDS(34)
             MOVE 0 TO SQL-SQHARM(34)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|XVŽžŠÔ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(35)
             MOVE 8 TO SQL-SQHSTL(35)
             MOVE 0 TO SQL-SQHSTS(35)
             MOVE 0 TO SQL-SQINDV(35)
             MOVE 0 TO SQL-SQINDS(35)
             MOVE 0 TO SQL-SQHARM(35)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|XVŽÒ IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(36)
             MOVE 8 TO SQL-SQHSTL(36)
             MOVE 0 TO SQL-SQHSTS(36)
             MOVE 0 TO SQL-SQINDV(36)
             MOVE 0 TO SQL-SQINDS(36)
             MOVE 0 TO SQL-SQHARM(36)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|“ü—Í’S“–ŽÒƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(37)
             MOVE 8 TO SQL-SQHSTL(37)
             MOVE 0 TO SQL-SQHSTS(37)
             MOVE 0 TO SQL-SQINDV(37)
             MOVE 0 TO SQL-SQINDS(37)
             MOVE 0 TO SQL-SQHARM(37)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|”„‹p‘ã‹à‹æ•ª IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(38)
             MOVE 1 TO SQL-SQHSTL(38)
             MOVE 0 TO SQL-SQHSTS(38)
             MOVE 0 TO SQL-SQINDV(38)
             MOVE 0 TO SQL-SQINDS(38)
             MOVE 0 TO SQL-SQHARM(38)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|UolŽæˆøæƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(39)
             MOVE 9 TO SQL-SQHSTL(39)
             MOVE 0 TO SQL-SQHSTS(39)
             MOVE 0 TO SQL-SQINDV(39)
             MOVE 0 TO SQL-SQINDS(39)
             MOVE 0 TO SQL-SQHARM(39)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|UolŒ_–ñæƒR[ƒh IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(40)
             MOVE 5 TO SQL-SQHSTL(40)
             MOVE 0 TO SQL-SQHSTS(40)
             MOVE 0 TO SQL-SQINDV(40)
             MOVE 0 TO SQL-SQINDS(40)
             MOVE 0 TO SQL-SQHARM(40)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Uol–¼Ì IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(41)
             MOVE 40 TO SQL-SQHSTL(41)
             MOVE 0 TO SQL-SQHSTS(41)
             MOVE 0 TO SQL-SQINDV(41)
             MOVE 0 TO SQL-SQINDS(41)
             MOVE 0 TO SQL-SQHARM(41)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚Q|Uol–¼ÌƒJƒi IN
                 ŽóŽæŽèŒ`
                 SQL-SQHSTV(42)
             MOVE 40 TO SQL-SQHSTL(42)
             MOVE 0 TO SQL-SQHSTS(42)
             MOVE 0 TO SQL-SQINDV(42)
             MOVE 0 TO SQL-SQINDS(42)
             MOVE 0 TO SQL-SQHARM(42)
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
008560*----------------------------------------------------------------*
008570*    ’Ç‰Áˆ—‚ðŠm”FŽóŽæŽèŒ`(D642UTG_TBL)                         *
008580*----------------------------------------------------------------*
008590     EVALUATE  SQLCODE                                            
008600        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
008610*--<       ’Ç‰Á¬Œ÷ >                                             
008620           COMPUTE  ‚v|o—Í|Œ”‚P  =  ‚v|o—Í|Œ”‚P  +  1   
008630        WHEN   OTHER                                              
008640*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
008650           MOVE     -40               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
008660           PERFORM  ƒGƒ‰[”»’èˆ—                                
008670     END-EVALUATE.                                                
008680*----------------------------------------------------------------*
008690*       €–Úˆ—  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)                      *
008700*----------------------------------------------------------------*
008710*                                                                 
008720       
      *      EXEC  SQL                                                  
008730*       INSERT  INTO  D645UTT_TBL                                 
008740*          (  ‘ã•\Œ_–ñ”Ô†                                        
008750*            ,‘©”                                                
008760*            ,˜A”Ô                                                
008770*            ,ŽèŒ`”Ô†                                            
008780*            ,Šú“ú                                                
008790*            ,‹àŠz                                                
008800*            ,UolŽæˆøæƒR[ƒh                                  
008810*            ,UolŒ_–ñæƒR[ƒh                                  
008820*            ,Uol–¼Ì                                          
008830*            ,Uol–¼ÌƒJƒi                                      
008840*            ,“o˜^”NŒŽ“ú                                          
008850*            ,“o˜^ŽžŠÔ                                            
008860*            ,“o˜^’S“–ŽÒ                                          
008870*            ,XV”NŒŽ“ú                                          
008880*            ,XVŽžŠÔ                                            
008890*            ,XVŽÒ                                              
008900*            ,“ü—Í’S“–ŽÒƒR[ƒh                                    
008910*            ,ŽèŒ`ó‘Ô)                                           
008920*      VALUES                                                     
008930*          (  :‚c‚U‚S‚T|‘ã•\Œ_–ñ”Ô†                             
008940*            ,:‚c‚U‚S‚T|‘©”                                     
008950*            ,:‚c‚U‚S‚T|˜A”Ô                                     
008960*            ,:‚c‚U‚S‚T|ŽèŒ`”Ô†                                 
008970*            ,:‚c‚U‚S‚T|Šú“ú                                     
008980*            ,:‚c‚U‚S‚T|‹àŠz                                     
008990*            ,:‚c‚U‚S‚T|UolŽæˆøæƒR[ƒh                       
009000*            ,:‚c‚U‚S‚T|UolŒ_–ñæƒR[ƒh                       
009010*            ,:‚c‚U‚S‚T|Uol–¼Ì                               
009020*            ,:‚c‚U‚S‚T|Uol–¼ÌƒJƒi                           
009030*            ,:‚c‚U‚S‚T|“o˜^”NŒŽ“ú                               
009040*            ,:‚c‚U‚S‚T|“o˜^ŽžŠÔ                                 
009050*            ,:‚c‚U‚S‚T|“o˜^’S“–ŽÒ                               
009060*            ,:‚c‚U‚S‚T|XV”NŒŽ“ú                               
009070*            ,:‚c‚U‚S‚T|XVŽžŠÔ                                 
009080*            ,:‚c‚U‚S‚T|XVŽÒ                                   
009090*            ,:‚c‚U‚S‚T|“ü—Í’S“–ŽÒƒR[ƒh                         
009100*            ,:‚c‚U‚S‚T|ŽèŒ`ó‘Ô)                                
009110*    END-EXEC.
             CALL "SQLADR" USING SQ0005 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 406 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|‘ã•\Œ_–ñ”Ô† IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|‘©” IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|˜A”Ô IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(3)
             MOVE 2 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|ŽèŒ`”Ô† IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(4)
             MOVE 10 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|Šú“ú IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(5)
             MOVE 8 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|‹àŠz IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(6)
             MOVE 7 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|UolŽæˆøæƒR[ƒh IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(7)
             MOVE 9 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|UolŒ_–ñæƒR[ƒh IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(8)
             MOVE 5 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|Uol–¼Ì IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(9)
             MOVE 40 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|Uol–¼ÌƒJƒi IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(10)
             MOVE 40 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|“o˜^”NŒŽ“ú IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(11)
             MOVE 8 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|“o˜^ŽžŠÔ IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(12)
             MOVE 8 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|“o˜^’S“–ŽÒ IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|XV”NŒŽ“ú IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(14)
             MOVE 8 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|XVŽžŠÔ IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(15)
             MOVE 8 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|XVŽÒ IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(16)
             MOVE 8 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|“ü—Í’S“–ŽÒƒR[ƒh IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(17)
             MOVE 8 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 ‚c‚U‚S‚T|ŽèŒ`ó‘Ô IN
                 ŽóŽæŽèŒ`“WŠJ
                 SQL-SQHSTV(18)
             MOVE 1 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
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
009120*                                                                 
009130*----------------------------------------------------------------*
009140*    ’Ç‰Áˆ—‚ðŠm”F  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)                   *
009150*----------------------------------------------------------------*
009160     EVALUATE  SQLCODE                                            
009170        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
009180*--<       ’Ç‰Á¬Œ÷ >                                             
009190           COMPUTE  ‚v|o—Í|Œ”‚Q  =  ‚v|o—Í|Œ”‚Q  +  1   
009200        WHEN   OTHER                                              
009210*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
009220           MOVE     -45               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
009230           PERFORM  ƒGƒ‰[”»’èˆ—                                
009240     END-EVALUATE.                                                
009250*                                                                 
009260 o—Íˆ—|‚d‚w‚h‚s.                                              
009270     EXIT.                                                        
009280******************************************************************
009290*    I—¹ˆ—                                                    *
009300******************************************************************
009310 I—¹ˆ—                             SECTION.                    
009320 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
009330*                                                                 
009340     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
009350*                                                                 
009360     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
009370*                                                                 
009380     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
009390*                                                                 
009400*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
009410     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
009420*                                                                 
009430 I—¹ˆ—|‚d‚w‚h‚s.                                              
009440     EXIT.                                                        
009450******************************************************************
009460*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
009470******************************************************************
009480 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
009490 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
009500*                                                                 
009510*----------------------------------------------------------------*
009520*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
009530*----------------------------------------------------------------*
009540     INITIALIZE                       IF-CHOCO001.                
009550     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009560     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009570     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009580     MOVE  "LTRFCK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009590     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009600     MOVE  ‚v|“ü—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009610     MOVE  "ƒtƒ@ƒNƒ^ƒŠƒ“ƒOŠî–{“ÇžŒ”"                           
009620                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009630     CALL  CLOCO001                USING  IF-CHOCO001.            
009640                                                                  
009650     INITIALIZE                       IF-CHOCO001.                
009660     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009670     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009680     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009690     MOVE  "CISPF001"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009700     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009710     MOVE  ‚v|“ü—Í|Œ”‚Q           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009720     MOVE  "Šî€“K—p“ú“ÇžŒ”"       TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009730     CALL  CLOCO001                USING  IF-CHOCO001.            
009740                                                                  
009750*                                                                 
009760     INITIALIZE                       IF-CHOCO001.                
009770     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009780     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009790     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009800     MOVE  "D642UTG"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009810     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009820     MOVE  ‚v|o—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009830     MOVE  "ŽóŽæŽèŒ`o—ÍŒ”"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009840     CALL  CLOCO001                USING  IF-CHOCO001.            
009850                                                                  
009860     INITIALIZE                       IF-CHOCO001.                
009870     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009880     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009890     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009900     MOVE  "D645UTG"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009910     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009920     MOVE  ‚v|o—Í|Œ”‚Q           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009930     MOVE  "ŽóŽæŽèŒ`“WŠJo—ÍŒ”"     TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009940     CALL  CLOCO001                USING  IF-CHOCO001.            
009950*                                                                 
009960*----------------------------------------------------------------*
009970*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
009980*----------------------------------------------------------------*
009990     INITIALIZE                       IF-CHOCO001.                
010000     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010010     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010020     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010030     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010040     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010050     CALL  CLOCO001                USING  IF-CHOCO001.            
010060*                                                                 
010070 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
010080     EXIT.                                                        
010090******************************************************************
010100*    ‚c‚aƒNƒ[ƒY                                                *
010110******************************************************************
010120 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
010130 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
010140*                                                                 
010150*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
010160     
      *    EXEC SQL                                                     
010170*       CLOSE  CUR1                                               
010180*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 493 TO SQL-OFFSET
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
010190*                                                                 
010200*--< ƒtƒ@ƒCƒ‹ƒNƒ[ƒY >                                           
010210     CLOSE  “ü—Íƒtƒ@ƒCƒ‹.                                         
010220 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
010230     EXIT.                                                        
010240******************************************************************
010250*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
010260******************************************************************
010270 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
010280 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
010290*                                                                 
010300     
      *    EXEC  SQL                                                    
010310*       COMMIT  WORK  RELEASE                                     
010320*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 508 TO SQL-OFFSET
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
010330*                                                                 
010340     INITIALIZE                       IF-CHOCO001.                
010350     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010360     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010370     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010380     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010390     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010400     CALL  CLOCO001                USING  IF-CHOCO001.            
010410*                                                                 
010420 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
010430     EXIT.                                                        
010440******************************************************************
010450*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
010460******************************************************************
010470 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
010480 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
010490*                                                                 
010500     
      *    EXEC  SQL                                                    
010510*       ROLLBACK WORK  RELEASE                                    
010520*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 523 TO SQL-OFFSET
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
010530*                                                                 
010540     INITIALIZE                       IF-CHOCO001.                
010550     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
010560     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
010570     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
010580     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
010590     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010600     CALL  CLOCO001                USING  IF-CHOCO001.            
010610*                                                                 
010620 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
010630     EXIT.                                                        
010640******************************************************************
010650*    ƒGƒ‰[ˆ—                                                  *
010660******************************************************************
010670 ƒGƒ‰[”»’èˆ—                       SECTION.                    
010680 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
010690*                                                                 
010700     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
010710     INITIALIZE                           IF-CHOCO001.            
010720*                                                                 
010730     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
010740                                                                  
010750        WHEN  -5                                                  
010760*--<       Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                     
010770           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010780           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010790           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010800           MOVE  "CISPF001"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010810           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010820           MOVE  ƒtƒ@ƒCƒ‹ó‘Ô         TO  ‹¤‚P|ƒf[ƒ^“à—e        
010830           MOVE  "Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰["               
010840                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010850           CALL  CLOCO001          USING  IF-CHOCO001             
010860                                                                  
010870        WHEN  -8                                                  
010880*--<       Šî€“ú“Ç‚Ýž‚Ýƒtƒ@ƒCƒ‹ƒGƒ‰[ >                         
010890           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010900           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010910           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010920           MOVE  "CISPF001"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010930           MOVE  "READ"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010940           MOVE  ƒtƒ@ƒCƒ‹ó‘Ô         TO  ‹¤‚P|ƒf[ƒ^“à—e        
010950           MOVE  "Šî€“úƒtƒ@ƒCƒ‹“Ç‚Ýž‚ÝƒGƒ‰["                   
010960                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010970           CALL  CLOCO001          USING  IF-CHOCO001             
010980                                                                  
010990        WHEN  -10                                                 
011000*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
011010           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011020           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011030           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011040           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
011050           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011060           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011070           CALL  CLOCO001          USING  IF-CHOCO001             
011080*                                                                 
011090        WHEN  -20                                                 
011100*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
011110           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011120           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011130           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011140           MOVE  "LTRFCK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011150           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
011160           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011170           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011180           CALL  CLOCO001          USING  IF-CHOCO001             
011190*                                                                 
011200        WHEN  -30                                                 
011210*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
011220           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011230           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011240           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011250           MOVE  "LTRFCK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011260           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
011270           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011280           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011290           CALL  CLOCO001          USING  IF-CHOCO001             
011300*                                                                 
011310        WHEN  -40                                                 
011320*--<       ’Ç‰Áˆ—‚ðŠm”FŽóŽæŽèŒ`(D642UTG_TBL)Ž¸”s >              
011330           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011340           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011350           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011360           MOVE  "D642UTG"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011370           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
011380           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011390           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011400           CALL  CLOCO001          USING  IF-CHOCO001             
011410                                                                  
011420        WHEN  -45                                                 
011430*--<       ’Ç‰Áˆ—‚ðŠm”F  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)Ž¸”s >        
011440           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011450           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011460           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011470           MOVE  "D645UTG"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011480           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
011490           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011500           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011510           CALL  CLOCO001          USING  IF-CHOCO001             
011520                                                                  
011530        WHEN  -50                                                 
011540*--<       VŽæˆøæƒR[ƒh˜aŒ_–ñæƒR[ƒh’Šoˆ— >                 
011550           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011560           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011570           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011580           MOVE  "IKOTBL001"          TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011590           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
011600           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011610           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011620           CALL  CLOCO001          USING  IF-CHOCO001             
011630           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011640                                                                  
011650        WHEN  -60                                                 
011660*--<       UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh >               
011670           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
011680           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
011690           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
011700           MOVE  "IKOTBL001"          TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011710           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
011720           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
011730           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011740           CALL  CLOCO001          USING  IF-CHOCO001             
011750           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011760*                                                                 
011770        WHEN  OTHER                                               
011780           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO    
011790     END-EVALUATE.                                                
011800*                                                                 
011810     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
011820        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
011830*                                                                 
011840        PERFORM  ‚c‚aƒNƒ[ƒYˆ—                                 
011850                                                                  
011860        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
011870*                                                                 
011880*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
011890        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
011900*                                                                 
011910        EXIT  PROGRAM                                             
011920     END-IF.                                                      
011930*                                                                 
011940 ƒGƒ‰[”»’èˆ—|‚d‚w‚h‚s.                                        
011950     EXIT.                                                        
011960******************************************************************
011970*                  END OF PROGRAM                                *
011980******************************************************************
