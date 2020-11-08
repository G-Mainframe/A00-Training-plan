000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : ƒtƒ@ƒNƒ^ƒŠƒ“ƒO•ªì¬                   *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS631                               *
000050*      3. ˆ—ŠT—v      : Œ_–ñ”Ô†‚ðKEY‚Æ‚µAƒtƒ@ƒNƒ^ƒŠƒ“ƒO      *
000060*                         (Šî–{î•ñ)‚Æƒtƒ@ƒNƒ^ƒŠƒ“ƒO(ŽèŒ`ÂŒ )   *
000070*                         ‚ÅŒ‹‡ˆ—‚ðs‚¤B                     *
000080*                                                                *
000090*      4. ì¬ŽÒ        : ‚ŽçŒR                                 *
000100*      5. ì¬“ú        : 2005.4.5                    @@@        *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000150******************************************************************
000160 IDENTIFICATION                       DIVISION.                   
000170*                                                                 
000180 PROGRAM-ID.                          COBIS631.                   
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
000290     SELECT         “ü—Íƒtƒ@ƒCƒ‹    ASSIGN    TO   U05      
000300     FILE STATUS    IS     ‚v|ó‘Ô                           
000310     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000320*                                                                 
000330******************************************************************
000340*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000350******************************************************************
000360 DATA                                 DIVISION.                   
000370******************************************************************
000380*    ‚e‚h‚k‚d                      ‚r‚d‚b‚s‚h‚n‚m                *
000390******************************************************************
000400 FILE                                 SECTION.                    
000410*----------------------------------------------------------------*
000420*    “ü—Íƒtƒ@ƒCƒ‹                                                *
000430*----------------------------------------------------------------*
000440 FD  “ü—Íƒtƒ@ƒCƒ‹                                                 
000450     LABEL  RECORD    IS              STANDARD                    
000460     BLOCK  CONTAINS  0               RECORDS.                    
000470*                                                                 
000480 01  “ü—ÍƒŒƒR[ƒh.                                              
000490     COPY   CISPF001   REPLACING      ==()==  BY  ==“ü—Í|==.     
000500*                                                                 
000510******************************************************************
000520*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000530******************************************************************
000540  WORKING-STORAGE                     SECTION.                    
000550*----------------------------------------------------------------*
000560*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000570*----------------------------------------------------------------*
000580     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS631\CO
      -    "BIS631.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(141) VALUE "select IKOTBL001.VŽæˆøæƒR[ƒh 
      -    " ,IKOTBL001.Ž}”Ô   into :b1,:b2  from IKOTBL001 where (IKOTB
      -    "L001.ŽæˆøæƒR[ƒh=:b3 and IKOTBL001.–Ú“I‚b‚c=:b4)".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(141) VALUE "select IKOTBL001.VŽæˆøæƒR[ƒh 
      -    " ,IKOTBL001.Ž}”Ô   into :b1,:b2  from IKOTBL001 where (IKOTB
      -    "L001.ŽæˆøæƒR[ƒh=:b3 and IKOTBL001.–Ú“I‚b‚c=:b4)".

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
      -    "ƒ†[ƒU[ƒR[ƒh  ,LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš  ,LTRTR
      -    "I.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi  ,LTRFCK.Ž–‹ÆŠƒR[ƒh  ,LTRFC
      -    "K.ŽÀs“ú".

           02  FILLER PIC X(160) VALUE "  ,LTRFCT.ŽèŒ`Ží—Þ  ,LTRFCT.—˜‘§
      -    "Šú“ú  ,LTRFCK.Šz–Ê‹àŠz  ,LTRFCK.‹âsƒR[ƒh  ,LTRFCT.Žæˆø‹âs
      -    "ƒR[ƒh  ,LTRFCK.Œ´Â–±ŽÒƒR[ƒh  ,LTRFCT.Žx•¥l–¼  ,LTRFCT.Žè
      -    "Œ`”Ô†  ".

           02  FILLER PIC X(160) VALUE ",LTRFCK.Šú“ú   from LTRFCK ,LTRF
      -    "CT ,LTRTRI where (SUBSTR(LTRFCT.—˜‘§Šú“ú,1,5)>:b1 or (SUBSTR
      -     "(LTRFCT.—˜‘§Šú“ú,1,5)=:b1 and LTRFCK.Œ_–ñ”Ô†=LTRFCT.Œ_–ñ”Ô
      -    "†)) orde".

           02  FILLER PIC X(31) VALUE "r by LTRFCK.Œ_–ñ”Ô†           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +252.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +256.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +511.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +319.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +90.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +345.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +165.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +141.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +472.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +196.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +141.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +506.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +227.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +720.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +707.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +410.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +304.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +811.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +497.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +934.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +512.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +946.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +527.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +966.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
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
000850 01   ‚v‚r|Šî€“ú                   PIC  X(05).
000860
000870 01   ‚v‚r|–Ú“I‚b‚c                  PIC  X(01)   VALUE '2'.
000880 
000890*--< •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001)> 
000900* 01   ‚v‚r|ƒe[ƒuƒ‹€–Ú  
000910 01   ‚v‚r|VŽæˆøæƒR[ƒh                PIC  X(09).      
000920 01   ‚v‚r|Ž}”Ô                         PIC  X(05).
000930 01   ‚v‚r|UolŽæˆøæƒR[ƒh	      PIC  X(09).
000940 01   ‚v‚r|UolŒ_–ñæƒR[ƒh	      PIC  X(05).
000950                                                    
000960     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000970*                                                                 
000980*----------------------------------------------------------------*
000990*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
001000*----------------------------------------------------------------*
001010 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
001020*--< ƒGƒ‰[”»’è—p >                                               
001030     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
001040* 
001050*--< ƒtƒ@ƒCƒ‹ó‘Ô >                                               
001060     03  ‚v|ó‘Ô                 PIC  X(02).                 
001070                                                          
001080*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001090     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
001100         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01). 
001110         05  ‚v|I—¹|ƒtƒ‰ƒO‚P       PIC  X(01).                
001120         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
001130*                                                                 
001140*--< Œ”ƒGƒŠƒA >                                                 
001150     03  Œ”ƒGƒŠƒA.                                              
001160         05  ‚v|“ü—Í|Œ”‚P         PIC  9(09).                 
001170         05  ‚v|“ü—Í|Œ”‚Q         PIC  9(09).                 
001180         05  ‚v|o—Í|Œ”           PIC  9(09).                 
001190*                                                                 
001200*                                                                
001210*--< ‹¤’Êî•ñ >                                                   
001220 01  ‚v|‹¤’Êî•ñ.                                                
001230     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
001240         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
001250         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
001260     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
001270     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
001280*                                                                 
001290*----------------------------------------------------------------*
001300*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001310*----------------------------------------------------------------*
001320 01  CALL-AREA.                                                   
001330*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001340     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001350     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001360*                                                                 
001370*----------------------------------------------------------------*
001380*    ‚b‚n‚o‚x—Ìˆæ                                                *
001390*----------------------------------------------------------------*
001400*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001410 01  IF-CHOCO001.                                                 
001420     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001430                                                            
001440*----------------------------------------------------------------*
001450*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001460*----------------------------------------------------------------*
001470 01  PARA-AREA.                                                   
001480     COPY CPBCO001.                                               
001490******************************************************************
001500*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001510******************************************************************
001520 CONSTANT                             SECTION.                    
001530 01  ’è”—Ìˆæ.                                                    
001540     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS631".
001550     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001560                                    VALUE  "ƒtƒ@ƒNƒ^ƒŠƒ“ƒO•ªì¬".        
001570     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001580     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001590     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001600     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001610******************************************************************
001620*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001630******************************************************************
001640 PROCEDURE                            DIVISION.                   
001650*                                                                 
001660     PERFORM  ‰Šúˆ—.                                           
001670*                                                                 
001680     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001690*                                                                 
001700     PERFORM  I—¹ˆ—.                                           
001710*                                                                 
001720     STOP     RUN.                                                
001730*                                                                 
001740******************************************************************
001750*    ‰Šúˆ—                                                    *
001760******************************************************************
001770 ‰Šúˆ—                             SECTION.                    
001780 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001790*                                                                 
001800*----------------------------------------------------------------*
001810*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001820*----------------------------------------------------------------*
001830     INITIALIZE                       IF-CHOCO001.                
001840     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001850     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c        TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001860     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001870     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001880     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼          TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001890     CALL  CLOCO001                USING  IF-CHOCO001.            
001900*                                                                 
001910*----------------------------------------------------------------*
001920*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001930*----------------------------------------------------------------*
001940     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001950     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001960*                                                                          
001970*                                                                 
001980*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001990     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
002000*                                                                 
002010*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
002020     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
002030*                                                                 
002040*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
002050     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
002060*                             
002070*--< ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ >                                           
002080     OPEN  INPUT  “ü—Íƒtƒ@ƒCƒ‹.                                   
002090*                                                                 
002100*----------------------------------------------------------------*
002110*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
002120*----------------------------------------------------------------*
002130     EVALUATE  ‚v|ó‘Ô                                       
002140        WHEN  ZERO                                                
002150           CONTINUE                                               
002160        WHEN  OTHER                                               
002170*--<       ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                               
002180           MOVE     -70                TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002190           PERFORM  ƒGƒ‰[”»’èˆ—                                    
002200     END-EVALUATE.                                                
002210
002220*----------------------------------------------------------------*
002230*    Šî€“K—p“ú“Çžˆ—(‚PŒ–Ú)                                  *
002240*----------------------------------------------------------------*
002250     PERFORM   Šî€“ú“Çžˆ—.                                
002260                              
002270*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
002280     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
002290*                                                                 
002300*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
002310     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
002320*                                                                 
002330 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002340     EXIT.                                                        
002350******************************************************************
002360*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
002370******************************************************************
002380 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002390 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002400*                                                                 
002410*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002420     CALL  COBCO001                USING  PARA-AREA.              
002430*                                                                 
002440     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002450     MOVE  PARA-USERNAME              TO  USERNAME.               
002460     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002470*                                                                 
002480*----------------------------------------------------------------*
002490*    ŠJŽnÚ‘±                                                    *
002500*----------------------------------------------------------------*
002510     IF    DB-STRING  =  SPACE                                    
002520        
      *       EXEC SQL                                                  
002530*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002540*       END-EXEC 
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
002550     ELSE                                                         
002560        
      *       EXEC SQL                                                  
002570*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002580*            USING  :DB-STRING                                    
002590*       END-EXEC 
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
002600     END-IF.                                                      
002610*                                                                 
002620*----------------------------------------------------------------*
002630*    Ú‘±Šm”F                                                    *
002640*----------------------------------------------------------------*
002650     EVALUATE  SQLCODE                                            
002660        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002670           CONTINUE                                               
002680        WHEN   OTHER                                              
002690*--<       Ú‘±ƒGƒ‰[ >                                           
002700           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002710           PERFORM  ƒGƒ‰[”»’èˆ—                                
002720     END-EVALUATE.                                                
002730*                                                                 
002740 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002750     EXIT.                                                        
002760******************************************************************
002770*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002780******************************************************************
002790 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002800 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002810*                                                                 
002820*----------------------------------------------------------------*
002830*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002840*----------------------------------------------------------------*
002850     
      *    EXEC SQL                                                     
002860*       DECLARE CUR1  CURSOR FOR                                  
002870*         SELECT   LTRFCK.Œ_–ñ”Ô†
002880*                 ,LTRFCK.ƒ†[ƒU[ƒR[ƒh
002890*                 ,LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš
002900*                 ,LTRTRI.Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi
002910*                 ,LTRFCK.Ž–‹ÆŠƒR[ƒh
002920*                 ,LTRFCK.ŽÀs“ú
002930*                 ,LTRFCT.ŽèŒ`Ží—Þ
002940*                 ,LTRFCT.—˜‘§Šú“ú
002950*                 ,LTRFCK.Šz–Ê‹àŠz
002960*                 ,LTRFCK.‹âsƒR[ƒh
002970*                 ,LTRFCT.Žæˆø‹âsƒR[ƒh
002980*                 ,LTRFCK.Œ´Â–±ŽÒƒR[ƒh
002990*                 ,LTRFCT.Žx•¥l–¼
003000*                 ,LTRFCT.ŽèŒ`”Ô†
003010*                 ,LTRFCK.Šú“ú
003020*                 
003030
003040*           FROM  LTRFCK                                     
003050*                ,LTRFCT
003060*                ,LTRTRI                                    
003070*          WHERE  SUBSTR(LTRFCT.—˜‘§Šú“ú,1,5) 
003080*                                     >  :‚v‚r|Šî€“ú  
003090*             OR  SUBSTR(LTRFCT.—˜‘§Šú“ú,1,5)
003100*                                     =  :‚v‚r|Šî€“ú                                 
003110*            AND  LTRFCK.Œ_–ñ”Ô†   =    LTRFCT.Œ_–ñ”Ô†
003120*           
003130*       ORDER BY  LTRFCK.Œ_–ñ”Ô†                                                    
003140*    END-EXEC.
003150                                                                 
003160*----------------------------------------------------------------*
003170*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003180*----------------------------------------------------------------*
003190     
      *    EXEC  SQL                                                    
003200*       OPEN  CUR1                                                
003210*    END-EXEC.
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
               ‚v‚r|Šî€“ú
               SQL-SQHSTV(1)
           MOVE 5 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|Šî€“ú
               SQL-SQHSTV(2)
           MOVE 5 TO SQL-SQHSTL(2)
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
003220*                                                                 
003230*----------------------------------------------------------------*
003240*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003250*----------------------------------------------------------------*
003260     EVALUATE  SQLCODE                                            
003270        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003280*--<       ³í >                                                 
003290           CONTINUE                                               
003300        WHEN  OTHER                                               
003310*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003320           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003330           PERFORM  ƒGƒ‰[”»’èˆ—                                
003340     END-EVALUATE.                                                
003350*                                                                 
003360 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
003370     EXIT.                                                        
003380******************************************************************
003390*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
003400******************************************************************
003410 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
003420 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
003430*                                                                 
003440*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
003450     
      *    EXEC SQL                                                     
003460*        FETCH  CUR1                                              
003470*         INTO  :‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†
003480*              ,:‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
003490*              ,:‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš
003500*              ,:‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi
003510*              ,:‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh
003520*              ,:‚k‚s‚q‚e‚b‚j|ŽÀs“ú
003530*              ,:‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ
003540*              ,:‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú
003550*              ,:‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz
003560*              ,:‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh
003570*              ,:‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh
003580*              ,:‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh
003590*              ,:‚k‚s‚q‚e‚b‚s|Žx•¥l–¼
003600*              ,:‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†
003610*              ,:‚k‚s‚q‚e‚b‚j|Šú“ú
003620*              
003630
003640*    END-EXEC.
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
003650*                                                                 
003660*----------------------------------------------------------------*
003670*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
003680*----------------------------------------------------------------*
003690     EVALUATE   SQLCODE                                           
003700        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003710*--<       ³í >                                                           
003720*                                                                 
003730           COMPUTE  ‚v|“ü—Í|Œ”‚P  =  ‚v|“ü—Í|Œ”‚P  +  1       
003740        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
003750*--<       “ÇžI—¹ >                                             
003760           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
003770        WHEN   OTHER                                              
003780*--<       “ÇžƒGƒ‰[ >                                           
003790           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003800           PERFORM  ƒGƒ‰[”»’èˆ—                           
003810     END-EVALUATE.                                                
003820*                                                                 
003830 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003840     EXIT.                                                        
003850
003860******************************************************************
003870*    Šî€“K—p“ú“Çžˆ—        (CISPF001)                        *
003880******************************************************************
003890 Šî€“ú“Çžˆ—                   SECTION.                    
003900 Šî€“ú“Çžˆ—|‚r‚s‚`‚q‚s.                                  
003910*--<    Šî€“ú“Çž >                                          
003920        READ  “ü—Íƒtƒ@ƒCƒ‹                                        
003930           AT  END                                                
003940*--<          “ÇžI—¹ >                                          
003950              MOVE  "Y"               TO  ‚v|I—¹|ƒtƒ‰ƒO‚P      
003960              GO  TO  Šî€“ú“Çžˆ—|‚d‚w‚h‚s                
003970   
003980        END-READ.                                                 
003990*                                                                 
004000*----------------------------------------------------------------*
004010*    ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ó‘Ô”»’è                                    *
004020*----------------------------------------------------------------*
004030     EVALUATE  ‚v|ó‘Ô                                       
004040        WHEN  ZERO 
004050           
004060               IF   “ü—Í|Šî€“ú(1:2) = '19'
004070                      MOVE '0'        TO  ‚v‚r|Šî€“ú(1:1)
004080
004090                      IF “ü—Í|Šî€“ú(1:2) = '20'
004100                            MOVE '1'  TO  ‚v‚r|Šî€“ú(1:1)
004110                      END-IF
004120               ELSE IF “ü—Í|Šî€“ú = ZERO
004130                            MOVE ZERO TO  ‚v‚r|Šî€“ú
004140                    END-IF                              
004150               END-IF 
004160           MOVE  “ü—Í|Šî€“ú(3:4)    TO  ‚v‚r|Šî€“ú(2:4)          
004170           COMPUTE  ‚v|“ü—Í|Œ”‚Q  =  ‚v|“ü—Í|Œ”‚Q + 1
004180
004190        WHEN  OTHER                                               
004200*--<       “Ç‚Ýž‚ÝƒGƒ‰[ >                                       
004210           MOVE     ZERO              TO  ‚v‚r|Šî€“ú              
004220           MOVE     -80               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004230           PERFORM  ƒGƒ‰[”»’èˆ—                                    
004240     END-EVALUATE.                                                
004250*                                                                 
004260 Šî€“ú“Çžˆ—|‚d‚w‚h‚s.                                    
004270     EXIT.                                                        
004280
004290******************************************************************
004300*    Žåˆ—                                                      *
004310******************************************************************
004320 Žåˆ—                               SECTION.                    
004330 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004340*    
004350     PERFORM  €–Ú’Šoˆ—. 
004360
004370     PERFORM  •ÒWo—Íˆ—.                                       
004380* 
004390     PERFORM  o—Íˆ—.                          
004400
004410*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
004420     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
004430*                                                                                             
004440*                                                                 
004450 Žåˆ—|‚d‚w‚h‚s.                                                
004460     EXIT. 
004470*----------------------------------------------------------------*
004480*    €–Ú’Šoˆ—                                  *
004490*----------------------------------------------------------------*
004500 €–Ú’Šoˆ—           SECTION.
004510 €–Ú’Šoˆ—|‚r‚s‚`‚q‚s.
004520*--< ‰Šú‰»ˆ—>    
004530*	   PERFORM  ‰Šú‰»ˆ—
004540
004550*--< VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ— >
004560     PERFORM  VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ—. 
004570
004580*--< UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh >
004590     PERFORM  UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh.
004600
004610 €–Ú’Šoˆ—|‚d‚w‚h‚s. 
004620     EXIT.
004630*----------------------------------------------------------------*
004640*     VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ—                               *
004650*----------------------------------------------------------------*
004660                                                                  
004670 VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ—       SECTION.               
004680 VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ—|‚r‚s‚`‚q‚s.                         
004690*                                                                 
004700
004710*--< VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ— >                     
004720     
      *    EXEC SQL                                                     
004730*          SELECT  IKOTBL001.VŽæˆøæƒR[ƒh 
004740*                 ,IKOTBL001.Ž}”Ô                                 
004750*            INTO  :‚v‚r|VŽæˆøæƒR[ƒh   
004760*                 ,:‚v‚r|Ž}”Ô
004770*            FROM  IKOTBL001                                     
004780*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh 
004790*                                =  :‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh 
004800*             AND  IKOTBL001.–Ú“I‚b‚c                            
004810*                             =  :‚v‚r|–Ú“I‚b‚c                 
004820*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 165 TO SQL-OFFSET
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
               ‚v‚r|Ž}”Ô
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
004830                                                                  
004840*--<       SQLCODE”»’èˆ— >                                      
004850     EVALUATE  SQLCODE                                            
004860        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
004870*--<       ³í >                                                 
004880           CONTINUE                                               
004890        WHEN  OTHER                                               
004900*--<        ƒGƒ‰[ >                     
004910           MOVE -50                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004920           PERFORM  ƒGƒ‰[”»’èˆ—                                
004930     END-EVALUATE.                                                
004940                                                                  
004950 VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ—|‚d‚w‚h‚s.                        
004960     EXIT.                                      
004970
004980*----------------------------------------------------------------*
004990*   •ÏŠ·ƒe[ƒuƒ‹(IKOTBL001)UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh*
005000*----------------------------------------------------------------*
005010                                                                  
005020 UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh        SECTION.           
005030 UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh|‚r‚s‚`‚q‚s.              
005040*                                                                 
005050*--< UolŒ_–ñæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh’Šoˆ— >  
005060     
      *    EXEC SQL                                                     
005070*          SELECT  IKOTBL001.VŽæˆøæƒR[ƒh 
005080*                 ,IKOTBL001.Ž}”Ô                                 
005090*            INTO  :‚v‚r|UolŽæˆøæƒR[ƒh   
005100*                 ,:‚v‚r|UolŒ_–ñæƒR[ƒh
005110*            FROM  IKOTBL001                                     
005120*           WHERE  IKOTBL001.ŽæˆøæƒR[ƒh 
005130*                                =  :‚k‚s‚q‚e‚b‚j|Œ´Â–±ŽÒƒR[ƒh 
005140*             AND  IKOTBL001.–Ú“I‚b‚c                            
005150*                                =  :‚v‚r|–Ú“I‚b‚c               
005160*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 196 TO SQL-OFFSET
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
005170                                                                  
005180*--<       SQLCODE”»’èˆ— >                                      
005190     EVALUATE  SQLCODE                                            
005200        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
005210*--<       ³í >                                                 
005220           CONTINUE                                               
005230        WHEN  OTHER                                               
005240*--<       ƒGƒ‰[ >                     
005250           MOVE -60                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005260           PERFORM  ƒGƒ‰[”»’èˆ—                                
005270     END-EVALUATE.                                                
005280                                                                  
005290 UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh|‚d‚w‚h‚s.                
005300     EXIT.                                      
005310
005320
005330
005340*----------------------------------------------------------------*
005350*     •ÒWo—Íˆ—                                               *
005360*----------------------------------------------------------------*
005370 •ÒWo—Íˆ—                         SECTION.                    
005380 •ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                        
005390*                                                               
005400*----------------------------------------------------------------*
005410*       €–Ú•ÒWˆ—  ŽóŽæŽèŒ`(D642UTG_TBL)                      *
005420*----------------------------------------------------------------*
005430*--<    No.01 >
005440        MOVE  ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†  
005450                                TO  ‚c‚U‚S‚Q|‘ã•\Œ_–ñ”Ô†. 
005460*--<    No.02 >     
005470        MOVE  '1'               TO  ‚c‚U‚S‚Q|‘©”.               
005480*--<    No.03 >  
005490        MOVE  ‚v‚r|VŽæˆøæƒR[ƒh                                     
005500                                TO  ‚c‚U‚S‚Q|ŽæˆøæƒR[ƒh.       
005510*--<    No.04 >  
005520        MOVE  ‚v‚r|Ž}”Ô
005530                                TO  ‚c‚U‚S‚Q|Œ_–ñæƒR[ƒh.       
005540*--<    No.05 >  
005550        MOVE  ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌŠ¿Žš              
005560                                TO  ‚c‚U‚S‚Q|Œ_–ñæ–¼Ì.         
005570*--<    No.06 >  
005580        MOVE  ‚k‚s‚q‚s‚q‚h|Žæˆøæ³Ž®–¼ÌŽæˆøæ–¼ÌƒJƒi               
005590                                TO  ‚c‚U‚S‚Q|Œ_–ñæ–¼ÌƒJƒi.     
005600*--<    No.07 >  
005610        MOVE  ‚k‚s‚q‚e‚b‚j|Ž–‹ÆŠƒR[ƒh                               
005620                                TO  ‚c‚U‚S‚Q|•”“XƒR[ƒh.         
005630*--<    No.8 >  	     
005640        MOVE  '8'               TO  ‚c‚U‚S‚Q|ŽåŒ_–ñ‹æ•ª.         
005650*--<    No.9 > 
005660        MOVE  '0'               TO  ‚c‚U‚S‚Q|ŽèŒ`ó‘Ô.           
005670*--<    No.10 > 
005680        MOVE  ‚k‚s‚q‚e‚b‚j|ŽÀs“ú   
005690                                TO  ‚c‚U‚S‚Q|Žæˆø“ú.             
005700*--<    No.11 > 
005710        MOVE  ‚k‚s‚q‚e‚b‚j|ŽÀs“ú   
005720                                TO  ‚c‚U‚S‚Q|“`•[”­s“ú.         
005730*--<    No.12 > 
005740        MOVE  ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ 
005750                                TO  ‚c‚U‚S‚Q|ŽèŒ`Ží—Þ.           
005760*--<    No.13 > 
005770        MOVE  ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú 
005780                                TO  ‚c‚U‚S‚Q|Šú“úŠî€“ú.         
005790*--<    No.14 > 
005800        MOVE  '1'               TO  ‚c‚U‚S‚Q|Šú“úƒTƒCƒNƒ‹.       
005810*--<    No.15 > 
005820        MOVE  ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz 
005830                                TO  ‚c‚U‚S‚Q|‘©‡Œv‹àŠz.         
005840*--<    No.16 > 
005850        MOVE  '1'               TO  ‚c‚U‚S‚Q|ŽèŒ`–‡”.
005860                   
005870*--<    No.17 > 
005880        MOVE  ‚k‚s‚q‚e‚b‚j|‹âsƒR[ƒh                                 
005890                                TO  ‚c‚U‚S‚Q|Žæ—§‹âsƒR[ƒh.     
005900*--<    No.18 > 
005910        MOVE  ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh                             
005920                                TO  ‚c‚U‚S‚Q|Žx•¥‹âsƒR[ƒh.     
005930*--<    No.19 > 
005940        MOVE  ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô† 
005950                                TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P.         
005960*--<    No.20 > 
005970        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚Q.         
005980*--<    No.21 > 
005990        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚R.         
006000*--<    No.22 > 
006010        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚S.         
006020*--<    No.23 > 
006030        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚T.         
006040*--<    No.24 > 
006050        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚U.         
006060*--<    No.25 > 
006070        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚V.         
006080*--<    No.26 > 
006090        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚W.         
006100*--<    No.27 > 
006110        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚X.         
006120*--<    No.28 > 
006130        MOVE  ZERO              TO  ‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P‚O.       
006140*--<    No.29 > 
006150        MOVE  SPACE             TO  ‚c‚U‚S‚Q|”õl—“.             
006160*--<    No.30 > 
006170        MOVE  ZERO              TO  ‚c‚U‚S‚Q|ŽèŒ`“à—eŽí•Ê.       
006180*--<    No.31 > 
006190        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t  TO  ‚c‚U‚S‚Q|“o˜^”NŒŽ“ú.         
006200*--<    No.92 > 
006210        MOVE  ‚v|ƒVƒXƒeƒ€Žž  TO  ‚c‚U‚S‚Q|“o˜^ŽžŠÔ.           
006220*--<    No.33 > 
006230        MOVE  ‚v|’S“–ŽÒ        TO  ‚c‚U‚S‚Q|“o˜^’S“–ŽÒ.         
006240*--<    No.34 > 
006250        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t  TO  ‚c‚U‚S‚Q|XV”NŒŽ“ú.         
006260*--<    No.35 > 
006270        MOVE  ‚v|ƒVƒXƒeƒ€Žž  TO  ‚c‚U‚S‚Q|XVŽžŠÔ.           
006280*--<    No.36 > 
006290        MOVE  ‚v|’S“–ŽÒ        TO  ‚c‚U‚S‚Q|XVŽÒ.             
006300*--<    No.37 > 
006310        MOVE  ‚v|’S“–ŽÒ        TO  ‚c‚U‚S‚Q|“ü—Í’S“–ŽÒƒR[ƒh.   
006320*--<    No.38> 
006330        MOVE  ZERO              TO  ‚c‚U‚S‚Q|”„‹p‘ã‹à‹æ•ª.       
006340*--<    No.39 > 
006350        MOVE  ‚v‚r|UolŽæˆøæƒR[ƒh                                 
006360                                TO  ‚c‚U‚S‚Q|UolŽæˆøæƒR[ƒh. 
006370*--<    No.40 > 
006380        MOVE  ‚v‚r|UolŒ_–ñæƒR[ƒh                                 
006390                                TO  ‚c‚U‚S‚Q|UolŒ_–ñæƒR[ƒh.
006400*--<    No.41 > 
006410        MOVE  ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼ 
006420                                TO  ‚c‚U‚S‚Q|Uol–¼Ì.         
006430*--<    No.42 > 
006440        MOVE  SPACE             TO  ‚c‚U‚S‚Q|Uol–¼ÌƒJƒi.   
006450
006460        
006470*----------------------------------------------------------------*
006480*       €–Ú•ÒWˆ—  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)                  *
006490*----------------------------------------------------------------*  
006500*--<    No.01 >
006510        MOVE   ‚k‚s‚q‚e‚b‚j|Œ_–ñ”Ô†  
006520                                TO   ‚c‚U‚S‚T|‘ã•\Œ_–ñ”Ô†.         
006530*--<    No.02 >
006540        MOVE   '1'              TO   ‚c‚U‚S‚T|‘©”.                 
006550*--<    No.03 >
006560        MOVE   '1'              TO   ‚c‚U‚S‚T|˜A”Ô.                 
006570*--<    No.04 >
006580        MOVE   ‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†  
006590                                TO   ‚c‚U‚S‚T|ŽèŒ`”Ô†.             
006600*--<    No.05 >
006610        MOVE   ‚k‚s‚q‚e‚b‚j|Šú“ú      
006620                                TO   ‚c‚U‚S‚T|Šú“ú.                 
006630*--<    No.06 >
006640        MOVE   ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz 
006650                                TO   ‚c‚U‚S‚T|‹àŠz.                 
006660*--<    No.07 >
006670        MOVE   ‚v‚r|UolŽæˆøæƒR[ƒh  
006680                                TO   ‚c‚U‚S‚T|UolŽæˆøæƒR[ƒh. 
006690*--<    No.08 >
006700        MOVE   ‚v‚r|UolŒ_–ñæƒR[ƒh 
006710                                TO   ‚c‚U‚S‚T|UolŒ_–ñæƒR[ƒh. 
006720*--<    No.09 >
006730        MOVE   ‚k‚s‚q‚e‚b‚s|Žx•¥l–¼  
006740                                TO   ‚c‚U‚S‚T|Uol–¼Ì.           
006750*--<    No.10 >
006760        MOVE   SPACE            TO   ‚c‚U‚S‚T|Uol–¼ÌƒJƒi.               
006770*--<    No.11 >
006780        MOVE   ‚v|ƒVƒXƒeƒ€“ú•t TO   ‚c‚U‚S‚T|“o˜^”NŒŽ“ú.           
006790*--<    No.12 >
006800        MOVE   ‚v|ƒVƒXƒeƒ€Žž TO   ‚c‚U‚S‚T|“o˜^ŽžŠÔ.                
006810*--<    No.13 >
006820        MOVE   ‚v|’S“–ŽÒ       TO   ‚c‚U‚S‚T|“o˜^’S“–ŽÒ.           
006830*--<    No.14 >
006840        MOVE   ‚v|ƒVƒXƒeƒ€“ú•t TO   ‚c‚U‚S‚T|XV”NŒŽ“ú.           
006850*--<    No.15 >
006860        MOVE   ‚v|ƒVƒXƒeƒ€Žž TO   ‚c‚U‚S‚T|XVŽžŠÔ.             
006870*--<    No.16 >
006880        MOVE   ‚v|’S“–ŽÒ       TO   ‚c‚U‚S‚T|XVŽÒ.               
006890*--<    No.17 >
006900        MOVE   ‚v|’S“–ŽÒ       TO   ‚c‚U‚S‚T|“ü—Í’S“–ŽÒƒR[ƒh.     
006910*--<    No.18 >
006920        MOVE   ZERO             TO   ‚c‚U‚S‚T|ŽèŒ`ó‘Ô.             
006930                                                                             
006940*                                                                           
006950*                                                                 
006960 •ÒWo—Íˆ—|‚d‚w‚h‚s.                                          
006970     EXIT.                                                        
006980******************************************************************
006990*    o—Íˆ—                                                    *
007000******************************************************************
007010 o—Íˆ—                             SECTION.                    
007020 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
007030*                      
007040*----------------------------------------------------------------*
007050*       €–Úˆ—  ŽóŽæŽèŒ`(D642UTG_TBL)                          *
007060*----------------------------------------------------------------*           
007070       
      *      EXEC  SQL                                                  
007080*       INSERT  INTO  D642UTG_TBL                                  
007090*          (  ‘ã•\Œ_–ñ”Ô†
007100*            ,‘©”
007110*            ,ŽæˆøæƒR[ƒh
007120*            ,Œ_–ñæƒR[ƒh
007130*            ,Œ_–ñæ–¼Ì
007140*            ,Œ_–ñæ–¼ÌƒJƒi
007150*            ,•”“XƒR[ƒh
007160*            ,ŽåŒ_–ñ‹æ•ª
007170*            ,ŽèŒ`ó‘Ô
007180*            ,Žæˆø“ú
007190*            ,“`•[”­s“ú
007200*            ,ŽèŒ`Ží—Þ
007210*            ,Šú“úŠî€“ú
007220*            ,Šú“úƒTƒCƒNƒ‹
007230*            ,‘©‡Œv‹àŠz
007240*            ,ŽèŒ`–‡”
007250*            ,Žæ—§‹âsƒR[ƒh
007260*            ,Žx•¥‹âsƒR[ƒh
007270*            ,Œ_–ñ”Ô†‚P
007280*            ,Œ_–ñ”Ô†‚Q
007290*            ,Œ_–ñ”Ô†‚R
007300*            ,Œ_–ñ”Ô†‚S
007310*            ,Œ_–ñ”Ô†‚T
007320*            ,Œ_–ñ”Ô†‚U
007330*            ,Œ_–ñ”Ô†‚V
007340*            ,Œ_–ñ”Ô†‚W
007350*            ,Œ_–ñ”Ô†‚X
007360*            ,Œ_–ñ”Ô†‚P‚O
007370*            ,”õl—“
007380*            ,ŽèŒ`“à—eŽí•Ê
007390*            ,“o˜^”NŒŽ“ú
007400*            ,“o˜^ŽžŠÔ
007410*            ,“o˜^’S“–ŽÒ
007420*            ,XV”NŒŽ“ú
007430*            ,XVŽžŠÔ
007440*            ,XVŽÒ
007450*            ,“ü—Í’S“–ŽÒƒR[ƒh
007460*            ,”„‹p‘ã‹à‹æ•ª
007470*            ,UolŽæˆøæƒR[ƒh
007480*            ,UolŒ_–ñæƒR[ƒh
007490*            ,Uol–¼Ì
007500*            ,Uol–¼ÌƒJƒi)                                          
007510*      VALUES                                                     
007520*          (  :‚c‚U‚S‚Q|‘ã•\Œ_–ñ”Ô†
007530*            ,:‚c‚U‚S‚Q|‘©”
007540*            ,:‚c‚U‚S‚Q|ŽæˆøæƒR[ƒh
007550*            ,:‚c‚U‚S‚Q|Œ_–ñæƒR[ƒh
007560*            ,:‚c‚U‚S‚Q|Œ_–ñæ–¼Ì
007570*            ,:‚c‚U‚S‚Q|Œ_–ñæ–¼ÌƒJƒi
007580*            ,:‚c‚U‚S‚Q|•”“XƒR[ƒh
007590*            ,:‚c‚U‚S‚Q|ŽåŒ_–ñ‹æ•ª
007600*            ,:‚c‚U‚S‚Q|ŽèŒ`ó‘Ô
007610*            ,:‚c‚U‚S‚Q|Žæˆø“ú
007620*            ,:‚c‚U‚S‚Q|“`•[”­s“ú
007630*            ,:‚c‚U‚S‚Q|ŽèŒ`Ží—Þ
007640*            ,:‚c‚U‚S‚Q|Šú“úŠî€“ú
007650*            ,:‚c‚U‚S‚Q|Šú“úƒTƒCƒNƒ‹
007660*            ,:‚c‚U‚S‚Q|‘©‡Œv‹àŠz
007670*            ,:‚c‚U‚S‚Q|ŽèŒ`–‡”
007680*            ,:‚c‚U‚S‚Q|Žæ—§‹âsƒR[ƒh
007690*            ,:‚c‚U‚S‚Q|Žx•¥‹âsƒR[ƒh
007700*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P
007710*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚Q
007720*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚R
007730*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚S
007740*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚T
007750*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚U
007760*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚V
007770*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚W
007780*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚X
007790*            ,:‚c‚U‚S‚Q|Œ_–ñ”Ô†‚P‚O
007800*            ,:‚c‚U‚S‚Q|”õl—“
007810*            ,:‚c‚U‚S‚Q|ŽèŒ`“à—eŽí•Ê
007820*            ,:‚c‚U‚S‚Q|“o˜^”NŒŽ“ú
007830*            ,:‚c‚U‚S‚Q|“o˜^ŽžŠÔ
007840*            ,:‚c‚U‚S‚Q|“o˜^’S“–ŽÒ
007850*            ,:‚c‚U‚S‚Q|XV”NŒŽ“ú
007860*            ,:‚c‚U‚S‚Q|XVŽžŠÔ
007870*            ,:‚c‚U‚S‚Q|XVŽÒ
007880*            ,:‚c‚U‚S‚Q|“ü—Í’S“–ŽÒƒR[ƒh
007890*            ,:‚c‚U‚S‚Q|”„‹p‘ã‹à‹æ•ª
007900*            ,:‚c‚U‚S‚Q|UolŽæˆøæƒR[ƒh
007910*            ,:‚c‚U‚S‚Q|UolŒ_–ñæƒR[ƒh
007920*            ,:‚c‚U‚S‚Q|Uol–¼Ì
007930*            ,:‚c‚U‚S‚Q|Uol–¼ÌƒJƒi)                                 
007940*    END-EXEC.
             CALL "SQLADR" USING SQ0004 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 227 TO SQL-OFFSET
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
007950*----------------------------------------------------------------*
007960*    ’Ç‰Áˆ—‚ðŠm”FŽóŽæŽèŒ`(D642UTG_TBL)                         *
007970*----------------------------------------------------------------*
007980     EVALUATE  SQLCODE                                            
007990        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
008000*--<       ’Ç‰Á¬Œ÷ >                                             
008010           CONTINUE       
008020        WHEN   OTHER                                              
008030*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
008040           MOVE     -40               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
008050           PERFORM  ƒGƒ‰[”»’èˆ—                                
008060     END-EVALUATE.                                                
008070*----------------------------------------------------------------*
008080*       €–Úˆ—  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)                      *
008090*----------------------------------------------------------------*  
008100*                                                                 
008110       
      *      EXEC  SQL                                                  
008120*       INSERT  INTO  D645UTT_TBL                                  
008130*          (  ‘ã•\Œ_–ñ”Ô†      
008140*            ,‘©”              
008150*            ,˜A”Ô              
008160*            ,ŽèŒ`”Ô†          
008170*            ,Šú“ú              
008180*            ,‹àŠz              
008190*            ,UolŽæˆøæƒR[ƒh
008200*            ,UolŒ_–ñæƒR[ƒh
008210*            ,Uol–¼Ì        
008220*            ,Uol–¼ÌƒJƒi    
008230*            ,“o˜^”NŒŽ“ú        
008240*            ,“o˜^ŽžŠÔ          
008250*            ,“o˜^’S“–ŽÒ        
008260*            ,XV”NŒŽ“ú        
008270*            ,XVŽžŠÔ          
008280*            ,XVŽÒ            
008290*            ,“ü—Í’S“–ŽÒƒR[ƒh  
008300*            ,ŽèŒ`ó‘Ô)                                          
008310*      VALUES                                                     
008320*          (  :‚c‚U‚S‚T|‘ã•\Œ_–ñ”Ô†
008330*            ,:‚c‚U‚S‚T|‘©”
008340*            ,:‚c‚U‚S‚T|˜A”Ô
008350*            ,:‚c‚U‚S‚T|ŽèŒ`”Ô†
008360*            ,:‚c‚U‚S‚T|Šú“ú
008370*            ,:‚c‚U‚S‚T|‹àŠz
008380*            ,:‚c‚U‚S‚T|UolŽæˆøæƒR[ƒh
008390*            ,:‚c‚U‚S‚T|UolŒ_–ñæƒR[ƒh
008400*            ,:‚c‚U‚S‚T|Uol–¼Ì
008410*            ,:‚c‚U‚S‚T|Uol–¼ÌƒJƒi
008420*            ,:‚c‚U‚S‚T|“o˜^”NŒŽ“ú
008430*            ,:‚c‚U‚S‚T|“o˜^ŽžŠÔ
008440*            ,:‚c‚U‚S‚T|“o˜^’S“–ŽÒ
008450*            ,:‚c‚U‚S‚T|XV”NŒŽ“ú
008460*            ,:‚c‚U‚S‚T|XVŽžŠÔ
008470*            ,:‚c‚U‚S‚T|XVŽÒ
008480*            ,:‚c‚U‚S‚T|“ü—Í’S“–ŽÒƒR[ƒh
008490*            ,:‚c‚U‚S‚T|ŽèŒ`ó‘Ô)                                 
008500*    END-EXEC.
             CALL "SQLADR" USING SQ0005 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 410 TO SQL-OFFSET
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
008510*                                                                 
008520*----------------------------------------------------------------*
008530*    ’Ç‰Áˆ—‚ðŠm”F  ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)                   *
008540*----------------------------------------------------------------*
008550     EVALUATE  SQLCODE                                            
008560        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
008570*--<       ’Ç‰Á¬Œ÷ >                                             
008580           COMPUTE  ‚v|o—Í|Œ”  =  ‚v|o—Í|Œ”  +  1       
008590        WHEN   OTHER                                              
008600*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
008610           MOVE     -45               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
008620           PERFORM  ƒGƒ‰[”»’èˆ—                                
008630     END-EVALUATE.                                                
008640*                                                                 
008650 o—Íˆ—|‚d‚w‚h‚s.                                              
008660     EXIT.                                                        
008670******************************************************************
008680*    I—¹ˆ—                                                    *
008690******************************************************************
008700 I—¹ˆ—                             SECTION.                    
008710 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
008720*                                                                 
008730     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
008740*                                                                 
008750     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
008760*                                                                 
008770     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
008780*                                                                 
008790*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
008800     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
008810*                                                                 
008820 I—¹ˆ—|‚d‚w‚h‚s.                                              
008830     EXIT.                                                        
008840******************************************************************
008850*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
008860******************************************************************
008870 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
008880 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
008890*                                                                 
008900*----------------------------------------------------------------*
008910*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
008920*----------------------------------------------------------------*
008930     INITIALIZE                       IF-CHOCO001.                
008940     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
008950     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
008960     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
008970     MOVE  "LTRFCK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
008980     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
008990     MOVE  ‚v|“ü—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009000     MOVE  "ƒtƒ@ƒNƒ^ƒŠƒ“ƒO•ªì¬"     TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009010     CALL  CLOCO001                USING  IF-CHOCO001.            
009020*                                                                 
009030     INITIALIZE                       IF-CHOCO001.                
009040     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009050     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009060     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009070     MOVE  "COBIS631"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
009080     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009090     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
009100     MOVE  "ŽóŽæŽèŒ`˜aŽóŽæŽèŒ`“WŠJo—ÍŒ”"       
009110                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009120     CALL  CLOCO001                USING  IF-CHOCO001.            
009130*                                                                 
009140*----------------------------------------------------------------*
009150*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
009160*----------------------------------------------------------------*
009170     INITIALIZE                       IF-CHOCO001.                
009180     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009190     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009200     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009210     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009220     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009230     CALL  CLOCO001                USING  IF-CHOCO001.            
009240*                                                                 
009250 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
009260     EXIT.                                                        
009270******************************************************************
009280*    ‚c‚aƒNƒ[ƒY                                                *
009290******************************************************************
009300 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
009310 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
009320*                                                                 
009330*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
009340     
      *    EXEC SQL                                                     
009350*       CLOSE  CUR1                                               
009360*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 497 TO SQL-OFFSET
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
009370*                                                                 
009380 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
009390     EXIT.                                                        
009400******************************************************************
009410*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
009420******************************************************************
009430 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
009440 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
009450*                                                                 
009460     
      *    EXEC  SQL                                                    
009470*       COMMIT  WORK  RELEASE                                     
009480*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 512 TO SQL-OFFSET
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
009490*                                                                 
009500     INITIALIZE                       IF-CHOCO001.                
009510     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009520     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009530     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009540     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009550     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009560     CALL  CLOCO001                USING  IF-CHOCO001.            
009570*                                                                 
009580 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
009590     EXIT.                                                        
009600******************************************************************
009610*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
009620******************************************************************
009630 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
009640 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
009650*                                                                 
009660     
      *    EXEC  SQL                                                    
009670*       ROLLBACK WORK  RELEASE                                    
009680*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 527 TO SQL-OFFSET
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
009690*                                                                 
009700     INITIALIZE                       IF-CHOCO001.                
009710     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
009720     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
009730     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
009740     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
009750     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
009760     CALL  CLOCO001                USING  IF-CHOCO001.            
009770*                                                                 
009780 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
009790     EXIT.                                                        
009800******************************************************************
009810*    ƒGƒ‰[ˆ—                                                  *
009820******************************************************************
009830 ƒGƒ‰[”»’èˆ—                       SECTION.                    
009840 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
009850*                                                                 
009860     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
009870     INITIALIZE                           IF-CHOCO001.            
009880*                                                                 
009890     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh       
009900              
009910        WHEN  -10                                                 
009920*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
009930           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
009940           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
009950           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
009960           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
009970           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
009980           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
009990           CALL  CLOCO001          USING  IF-CHOCO001             
010000*                                                                 
010010        WHEN  -20                                                 
010020*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
010030           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010040           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010050           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010060           MOVE  "LTRFCK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010070           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010080           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010090           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010100           CALL  CLOCO001          USING  IF-CHOCO001             
010110*                                                                 
010120        WHEN  -30                                                 
010130*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
010140           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010150           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010160           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010170           MOVE  "LTRFCK"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010180           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
010190           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010200           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010210           CALL  CLOCO001          USING  IF-CHOCO001             
010220*                                                                 
010230        WHEN  -40                                                 
010240*--<       ŽóŽæŽèŒ`(D642UTG_TBL)’Ç‰ÁŽ¸”s >                                   
010250           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010260           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010270
010280           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010290           MOVE  "D642UTG"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010300           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
010310           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010320           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010330           CALL  CLOCO001          USING  IF-CHOCO001             
010340
010350        WHEN  -45                                                
010360
010370*--<    ŽóŽæŽèŒ`“WŠJ(D645UTT_TBL)’Ç‰ÁŽ¸”s >                            
010380
010390           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010400           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010410           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010420           MOVE  "D645UTG"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010430           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
010440           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010450           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010460           CALL  CLOCO001          USING  IF-CHOCO001             
010470
010480        WHEN  -50                                                 
010490*--<       VŽæˆøæƒR[ƒh˜aŽ}”Ô’Šoˆ— >                              
010500           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010510           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010520           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010530           MOVE  "IKO001"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010540           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
010550           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010560           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010570           CALL  CLOCO001          USING  IF-CHOCO001    
010580
010590        WHEN  -55                                                 
010600*--<       Œ_–ñæ–¼Ì˜aŒ_–ñæ–¼ÌƒJƒiˆ— >                              
010610           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010620           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010630           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010640           MOVE  "LTRTRI"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010650           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
010660           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010670           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010680           CALL  CLOCO001          USING  IF-CHOCO001 
010690
010700        WHEN  -60                                                 
010710*--<       UolŽæˆøæƒR[ƒh˜aUolŒ_–ñæƒR[ƒh >                      
010720           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010730           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010740           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010750           MOVE  "IKO001"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010760           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
010770           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
010780           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010790           CALL  CLOCO001          USING  IF-CHOCO001     
010800
010810	         WHEN  -70                                                  
010820*--<       Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰[ >                     
010830           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010840           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010850           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010860           MOVE  "CISPF001"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
010870           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
010880           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
010890           MOVE  "Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“ƒGƒ‰["               
010900                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
010910           CALL  CLOCO001          USING  IF-CHOCO001             
010920*           MOVE  "N"                  TO  ˆÙíI—¹|ƒtƒ‰ƒO        
010930
010940        WHEN  -80                                                  
010950*--<       Šî€“ú“Ç‚Ýž‚Ýƒtƒ@ƒCƒ‹ƒGƒ‰[ >                     
010960           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
010970           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c  TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
010980           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
010990           MOVE  "CISPF001"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
011000           MOVE  "READ"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
011010           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
011020           MOVE  "Šî€“úƒtƒ@ƒCƒ‹“Ç‚Ýž‚ÝƒGƒ‰["               
011030                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011040           CALL  CLOCO001          USING  IF-CHOCO001             
011050*           MOVE  "N"                  TO  ˆÙíI—¹|ƒtƒ‰ƒO     
011060
011070*                                                                 
011080        WHEN  OTHER                                               
011090           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
011100     END-EVALUATE.                                                
011110*                                                                 
011120     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
011130        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
011140*                                                                 
011150        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
011160*                                                                 
011170*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
011180        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
011190*                                                                 
011200        EXIT  PROGRAM                                             
011210     END-IF.                                                      
011220*                                                                 
011230 ƒGƒ‰[”»’èˆ—|‚d‚w‚h‚s.                                            
011240     EXIT.                                                        
011250******************************************************************
011260*                  END OF PROGRAM                                *
011270******************************************************************
