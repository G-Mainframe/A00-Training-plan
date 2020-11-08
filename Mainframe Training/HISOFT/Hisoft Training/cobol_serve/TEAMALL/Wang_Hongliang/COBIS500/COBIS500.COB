000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : Œ_–ñŽèŒ`ÂŒ –¾×ˆÚsˆ—               *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS500                               *
000050*      3. ˆ—ŠT—v      : SUMMITƒtƒ@ƒNƒ^ƒŠƒ“ƒO‚c‚a‚æ‚èAŒ_–ñŽèŒ` *
000060*                         ÂŒ –¾×ƒe[ƒuƒ‹‚ðì¬‚·‚éB           *
000070*      4. ì¬ŽÒ        : ‰¤^—º                                 *
000080*      5. ì¬“ú        : 2005.4.4                               *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS500.                   
000170******************************************************************
000180*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000230******************************************************************
000240 DATA                                 DIVISION.                   
000250******************************************************************
000260*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000270******************************************************************
000280  WORKING-STORAGE                     SECTION.                    
000290*----------------------------------------------------------------*
000300*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000310*----------------------------------------------------------------*
000320     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS500\CO
      -    "BIS500.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(110) VALUE "select VŽæˆøæƒR[ƒh   into :b1
      -    "  from IKOTBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTB
      -    "L001.–Ú“I‚b‚c='2')".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(100) VALUE "select Ž}”Ô   into :b1  from IKO
      -     "TBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTBL001.–Ú“I
      -    "‚b‚c='2')".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(110) VALUE "select VŽæˆøæƒR[ƒh   into :b1
      -    "  from IKOTBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTB
      -    "L001.–Ú“I‚b‚c='3')".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(100) VALUE "select Ž}”Ô   into :b1  from IKO
      -     "TBL001 where (IKOTBL001.ŽæˆøæƒR[ƒh=:b2 and IKOTBL001.–Ú“I
      -    "‚b‚c='3')".

       01  SQ0006 GLOBAL.
           02  FILLER PIC X(159) VALUE "insert into D415UTM_TBL(Œ_–ñ”Ô†
      -    ",–¾×”Ô†,ŽæˆøæƒR[ƒh,Œ_–ñæƒR[ƒh,Šz–Ê‹àŠz,ŽèŒ`Šú“ú,—˜‘§Šú
      -    "“ú,“ú”,Š„ˆø—¦,Š„ˆø—¿,Žæ—§Žè”—¿“™,Žæ—§Žè”—¿“™Á”ïÅŠz,”ƒŽæ
      -    "‘ã‹àŠz,".

           02  FILLER PIC X(160) VALUE  "ŽÐ“à‹à—˜‹æ•ª,ŽÐ“à‹à—˜,ŽÀŽ¿”N—¦,
      -     "‘e—˜,ŽèŒ`”Ô†,ŽèŒ`Ží—Þ,Žx•¥‹âsƒR[ƒh,Žx•¥Žx“XƒR[ƒh,¿‹Žæ
      -    "ˆøæƒR[ƒh,¿‹æƒR[ƒh,ŽÐ“à‹à—˜_ˆê”Ê,‘e—˜_ˆê”Ê,ŠúŒÀ‘OŒˆÙ“ú
      -    ",—¬“®‰»æ,".

           02  FILLER PIC X(160) VALUE "ÂŒ —¬“®‰»æ‹æ•ª,XV”NŒŽ“ú,XV
      -    "ŽžŠÔ,XVŽÒ,“ü—Í’S“–ŽÒƒR[ƒh,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,“o˜^’S“–ŽÒ)
      -    " values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,
      -    ":b13,:b1".

           02  FILLER PIC X(107) VALUE "4,:b15,:b16,:b17,:b18,:b19,:b20,
      -    ":b21,:b22,:b23,:b24,:b25,:b26,:b27,:b28,:b29,:b30,:b31,:b32,
      -    ":b33,:b34,:b35)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148476348.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +35.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 35 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 35 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(159) VALUE "select LTRFCT.Œ_–ñ”Ô†  ,NVL(LTR
      -    "FCK.ƒ†[ƒU[ƒR[ƒh,RPAD('0',8,'0'))  ,NVL(LTRFCK.Šz–Ê‹àŠz,0)
      -    "  ,NVL(LTRFCK.Šú“ú,RPAD('0',7,'0'))  ,LTRFCT.—˜‘§Šú“ú  ,LTRF
      -     "CT.ŠúŠÔ".

           02  FILLER PIC X(160) VALUE "“ú”  ,LTRFCT.Š„ˆø—¦  ,LTRFCT.Š„
      -    "ˆø—¿  ,LTRFCT.ŽóŽæŽè”—¿  ,LTRFCT.ŽóŽæŽè”—¿Á”ïÅ“™Šz  ,LTR
      -    "FCT.”ƒŽæ‹àŠz  ,NVL(LTRFCK.ŽÐ“à‹à—˜,0)  ,NVL(LTRFCK.‘e—˜‰v,0)
      -    "  ,LTRFC".

           02  FILLER PIC X(159) VALUE "T.ŽèŒ`”Ô†  ,LTRFCT.ŽèŒ`Ží—Þ  ,L
      -    "TRFCT.Žæˆø‹âsƒR[ƒh  ,NVL(LTRFCK.¿‹æƒR[ƒh,RPAD('0',8,'0
      -    "'))  ,LTRFCT.ŠúŒÀ‘OŒˆÙ“ú   from LTRFCK ,LTRFCT where LTRFCT
      -    ".Œ_–ñ”Ô".

           02  FILLER PIC X(32) VALUE "†=LTRFCK.Œ_–ñ”Ô†(+)           "
           .

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
           02     FILLER PIC S9(4) COMP-5 VALUE +178.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +182.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +510.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +240.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +266.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +18.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +11.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +169.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +110.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +334.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +192.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +100.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +357.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +215.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +110.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +391.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +238.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +100.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +414.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +261.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +586.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +575.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +35.
           02     FILLER PIC S9(4) COMP-5 VALUE +35.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +416.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +745.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +431.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +757.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +446.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +777.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000330*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000340     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000350*                                                                 
000360*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000370     
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
000380*                                                                 
000390*--< ˆÚsŒã_ÂŒ “WŠJ >                                            
000400     
      *    EXEC  SQL  INCLUDE  LTRFCT.CBL            END-EXEC.
000410*--< •ÏŠ·ƒe[ƒuƒ‹ >                                               
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
000420     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
000430*--< ˆÚsŒã_ÂŒ  >                                                
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
000440     
      *    EXEC  SQL  INCLUDE  LTRFCK.CBL            END-EXEC.
000450*--< •Ï‘¥•¥‚c‚a>                                                  
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
000460     
      *    EXEC  SQL  INCLUDE  D415UTM.CBL           END-EXEC.
000470*                                                                 
      *****************************************************************
      *   Œ_–ñŽèŒ`ÂŒ –¾×(D415UTM_TBL)
      *****************************************************************
       01  Œ_–ñŽèŒ`ÂŒ –¾×.
           03  ‚c‚S‚P‚T|Œ_–ñ”Ô†    PIC  X(010).
           03  ‚c‚S‚P‚T|–¾×”Ô†    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚S‚P‚T|Œ_–ñæƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚S‚P‚T|Šz–Ê‹àŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|ŽèŒ`Šú“ú    PIC  X(008).
           03  ‚c‚S‚P‚T|—˜‘§Šú“ú    PIC  X(008).
           03  ‚c‚S‚P‚T|“ú”        PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|Š„ˆø—¦      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|Š„ˆø—¿      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|Žæ—§Žè”—¿“™
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|Žæ—§Žè”—¿“™Á”ïÅŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|”ƒŽæ‘ã‹àŠz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|ŽÐ“à‹à—˜‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚P‚T|ŽÐ“à‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|ŽÀŽ¿”N—¦    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|‘e—˜        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|ŽèŒ`”Ô†    PIC  X(010).
           03  ‚c‚S‚P‚T|ŽèŒ`Ží—Þ    PIC  X(001).
           03  ‚c‚S‚P‚T|Žx•¥‹âsƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚S‚P‚T|Žx•¥Žx“XƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚S‚P‚T|¿‹ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚S‚P‚T|¿‹æƒR[ƒh
                                     PIC  X(005).
           03  ‚c‚S‚P‚T|ŽÐ“à‹à—˜|ˆê”Ê
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|‘e—˜|ˆê”Ê  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚P‚T|ŠúŒÀ‘OŒˆÙ“ú
                                     PIC  X(008).
           03  ‚c‚S‚P‚T|—¬“®‰»æ    PIC  X(010).
           03  ‚c‚S‚P‚T|ÂŒ —¬“®‰»æ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚P‚T|XV”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚T|XVŽžŠÔ    PIC  X(008).
           03  ‚c‚S‚P‚T|XVŽÒ      PIC  X(008).
           03  ‚c‚S‚P‚T|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚S‚P‚T|“o˜^”NŒŽ“ú  PIC  X(008).
           03  ‚c‚S‚P‚T|“o˜^ŽžŠÔ    PIC  X(008).
           03  ‚c‚S‚P‚T|“o˜^’S“–ŽÒ  PIC  X(008).
000480     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000490*                                                                 
000500*----------------------------------------------------------------*
000510*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000520*----------------------------------------------------------------*
000530 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
000540*--< ƒGƒ‰[”»’è—p >                                               
000550     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000560*                                                                 
000570*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000580     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000590         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
000600         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
000610*                                                                 
000620*--< Œ”ƒGƒŠƒA >                                                 
000630     03  Œ”ƒGƒŠƒA.                                              
000640         05  ‚v|“ü—Í|Œ”‚P           PIC  9(09).               
000650         05  ‚v|“ü—Í|Œ”‚Q           PIC  9(09).               
000660         05  ‚v|o—Í|Œ”             PIC  9(09).               
000670*                                                                 
000680*--< ‹¤’Êî•ñ >                                                   
000690 01  ‚v|‹¤’Êî•ñ.                                                
000700     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
000710         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
000720         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
000730     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
000740     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
000750*                                                                 
000760*----------------------------------------------------------------*
000770*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
000780*----------------------------------------------------------------*
000790 01  CALL-AREA.                                                   
000800*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
000810     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
000820     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
000830*                                                                 
000840*----------------------------------------------------------------*
000850*    ‚b‚n‚o‚x—Ìˆæ                                                *
000860*----------------------------------------------------------------*
000870*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
000880 01  IF-CHOCO001.                                                 
000890     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
000900*                                                                 
000910*----------------------------------------------------------------*
000920*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
000930*----------------------------------------------------------------*
000940 01  PARA-AREA.                                                   
000950     COPY CPBCO001.                                               
000960******************************************************************
000970*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
000980******************************************************************
000990 CONSTANT                             SECTION.                    
001000 01  ’è”—Ìˆæ.                                                    
001010     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS500".
001020     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001030                                    VALUE  "Œ_–ñŽèŒ`ÂŒ –¾×‚c‚a".
001040     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001050     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001060     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001070     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001080******************************************************************
001090*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001100******************************************************************
001110 PROCEDURE                            DIVISION.                   
001120*                                                                 
001130     PERFORM  ‰Šúˆ—.                                           
001140*                                                                 
001150     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001160*                                                                 
001170     PERFORM  I—¹ˆ—.                                           
001180*                                                                 
001190     STOP     RUN.                                                
001200*                                                                 
001210******************************************************************
001220*    ‰Šúˆ—                                                    *
001230******************************************************************
001240 ‰Šúˆ—                             SECTION.                    
001250 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001260*                                                                 
001270*----------------------------------------------------------------*
001280*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001290*----------------------------------------------------------------*
001300     INITIALIZE                       IF-CHOCO001.                
001310     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
001320     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
001330     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
001340     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
001350     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001360     CALL  CLOCO001                USING  IF-CHOCO001.            
001370*                                                                 
001380*----------------------------------------------------------------*
001390*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001400*----------------------------------------------------------------*
001410     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
001420     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
001430*                                                                 
001440*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
001450     ACCEPT  ‚v|”NŒŽ“ú               FROM  DATE.                 
001460*                                                                 
001470*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
001480     ACCEPT  ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.                 
001490*                                                                 
001500*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
001510     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
001520*                                                                 
001530*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
001540     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
001550*                                                                 
001560*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
001570     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
001580*                                                                 
001590 ‰Šúˆ—|‚d‚w‚h‚s.                                              
001600     EXIT.                                                        
001610******************************************************************
001620*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
001630******************************************************************
001640 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
001650 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
001660*                                                                 
001670*--< ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“ŒÄ‚Ño‚µ >                     
001680     CALL  COBCO001                USING  PARA-AREA.              
001690*                                                                 
001700     MOVE  PARA-DBSTRING              TO  DB-STRING.              
001710     MOVE  PARA-USERNAME              TO  USERNAME.               
001720     MOVE  PARA-PASSWORD              TO  PASSWD.                 
001730*                                                                 
001740*----------------------------------------------------------------*
001750*    ŠJŽnÚ‘±                                                    *
001760*----------------------------------------------------------------*
001770     IF  DB-STRING  =  SPACE                                      
001780        
      *       EXEC  SQL                                                 
001790*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
001800*       END-EXEC 
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
001810     ELSE                                                         
001820        
      *       EXEC  SQL                                                 
001830*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
001840*            USING  :DB-STRING                                    
001850*       END-EXEC 
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
001860     END-IF.                                                      
001870*                                                                 
001880*----------------------------------------------------------------*
001890*    Ú‘±ó‘Ô”»’è                                                *
001900*----------------------------------------------------------------*
001910     EVALUATE  SQLCODE                                            
001920        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
001930*--<       Ú‘±³í >                                             
001940           CONTINUE                                               
001950        WHEN  OTHER                                               
001960*--<       Ú‘±ƒGƒ‰[ >                                           
001970           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
001980           PERFORM  ƒGƒ‰[ˆ—                                    
001990     END-EVALUATE.                                                
002000*                                                                 
002010 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002020     EXIT.                                                        
002030******************************************************************
002040*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002050******************************************************************
002060 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002070 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚r‚s‚`‚q‚s.                            
002080*                                                                 
002090*----------------------------------------------------------------*
002100*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002110*----------------------------------------------------------------*
002120     
      *    EXEC SQL                                                     
002130*       DECLARE CUR1  CURSOR FOR                                  
002140*          SELECT  LTRFCT.Œ_–ñ”Ô†                                
002141*                 ,NVL(LTRFCK.ƒ†[ƒU[ƒR[ƒh,RPAD('0',8,'0'))     
002142*                 ,NVL(LTRFCK.Šz–Ê‹àŠz,0)                         
002143*                 ,NVL(LTRFCK.Šú“ú,RPAD('0',7,'0'))               
002170*                 ,LTRFCT.—˜‘§Šú“ú                                
002180*                 ,LTRFCT.ŠúŠÔ“ú”                                
002190*                 ,LTRFCT.Š„ˆø—¦                                  
002200*                 ,LTRFCT.Š„ˆø—¿                                  
002210*                 ,LTRFCT.ŽóŽæŽè”—¿                              
002220*                 ,LTRFCT.ŽóŽæŽè”—¿Á”ïÅ“™Šz                    
002230*                 ,LTRFCT.”ƒŽæ‹àŠz                                
002231*                 ,NVL(LTRFCK.ŽÐ“à‹à—˜,0)                         
002232*                 ,NVL(LTRFCK.‘e—˜‰v,0)                           
002260*                 ,LTRFCT.ŽèŒ`”Ô†                                
002270*                 ,LTRFCT.ŽèŒ`Ží—Þ                                
002280*                 ,LTRFCT.Žæˆø‹âsƒR[ƒh                          
002300*                 ,NVL(LTRFCK.¿‹æƒR[ƒh,RPAD('0',8,'0'))       
002310*                 ,LTRFCT.ŠúŒÀ‘OŒˆÙ“ú                            
002320*            FROM  LTRFCK                                         
002330*                 ,LTRFCT                                         
002340*           WHERE  LTRFCT.Œ_–ñ”Ô†  =  LTRFCK.Œ_–ñ”Ô† ( + )      
002350*    END-EXEC.
002360*                                                                 
002370*----------------------------------------------------------------*
002380*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002390*----------------------------------------------------------------*
002400     
      *    EXEC  SQL                                                    
002410*       OPEN  CUR1                                                
002420*    END-EXEC.
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
002430*                                                                 
002440*----------------------------------------------------------------*
002450*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
002460*----------------------------------------------------------------*
002470     EVALUATE  SQLCODE                                            
002480        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
002490*--<       ³í >                                                 
002500           CONTINUE                                               
002510        WHEN  OTHER                                               
002520*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
002530           MOVE -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002540           PERFORM  ƒGƒ‰[ˆ—                                    
002550     END-EVALUATE.                                                
002560*                                                                 
002570 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`|‚d‚w‚h‚s.                              
002580     EXIT.                                                        
002590******************************************************************
002600*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
002610******************************************************************
002620 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
002630 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                            
002640*                                                                 
002650*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
002660     
      *    EXEC SQL                                                     
002670*        FETCH  CUR1                                              
002680*         INTO  :‚k‚s‚q‚e‚b‚s|Œ_–ñ”Ô†                           
002681*              ,:‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh                     
002690*              ,:‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz                           
002700*              ,:‚k‚s‚q‚e‚b‚j|Šú“ú                               
002710*              ,:‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú                           
002720*              ,:‚k‚s‚q‚e‚b‚s|ŠúŠÔ“ú”                           
002730*              ,:‚k‚s‚q‚e‚b‚s|Š„ˆø—¦                             
002740*              ,:‚k‚s‚q‚e‚b‚s|Š„ˆø—¿                             
002750*              ,:‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿                         
002760*              ,:‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿Á”ïÅ“™Šz               
002770*              ,:‚k‚s‚q‚e‚b‚s|”ƒŽæ‹àŠz                           
002780*              ,:‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜                           
002790*              ,:‚k‚s‚q‚e‚b‚j|‘e—˜‰v                             
002800*              ,:‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†                           
002810*              ,:‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ                           
002820*              ,:‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh                     
002830*              ,:‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh                       
002840*              ,:‚k‚s‚q‚e‚b‚s|ŠúŒÀ‘OŒˆÙ“ú                       
002850*    END-EXEC.
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
               ‚k‚s‚q‚e‚b‚s|Œ_–ñ”Ô†
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
               ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|Šú“ú
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|ŠúŠÔ“ú”
               SQL-SQHSTV(6)
           MOVE 3 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|Š„ˆø—¦
               SQL-SQHSTV(7)
           MOVE 6 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|Š„ˆø—¿
               SQL-SQHSTV(8)
           MOVE 7 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿Á”ïÅ“™Šz
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|”ƒŽæ‹àŠz
               SQL-SQHSTV(11)
           MOVE 7 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜
               SQL-SQHSTV(12)
           MOVE 6 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|‘e—˜‰v
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
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
               ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh
               SQL-SQHSTV(16)
           MOVE 7 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚k‚s‚q‚e‚b‚s|ŠúŒÀ‘OŒˆÙ“ú
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
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
002860*                                                                 
002870*----------------------------------------------------------------*
002880*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
002890*----------------------------------------------------------------*
002900     EVALUATE   SQLCODE                                           
002910        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002920*--<       ³í >                                                 
002930           COMPUTE  ‚v|“ü—Í|Œ”‚P  =  ‚v|“ü—Í|Œ”‚P  +  1   
002940           COMPUTE  ‚v|“ü—Í|Œ”‚Q  =  ‚v|“ü—Í|Œ”‚Q  +  1   
002950        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
002960*--<       “ÇžI—¹ >                                             
002970           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
002980        WHEN   OTHER                                              
002990*--<       “ÇžƒGƒ‰[ >                                           
003000           MOVE     -30               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003010           PERFORM  ƒGƒ‰[ˆ—                                    
003020     END-EVALUATE.                                                
003030*                                                                 
003040 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                              
003050     EXIT.                                                        
003060******************************************************************
003070*    Žåˆ—                                                      *
003080******************************************************************
003090 Žåˆ—                               SECTION.                    
003100 Žåˆ—|‚r‚s‚`‚q‚s.                                              
003110*                                                                 
003120     PERFORM  •ÒWo—Íˆ—.                                       
003130*                                                                 
003140     PERFORM  o—Íˆ—                                            
003150*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
003160     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
003170*                                                                 
003180 Žåˆ—|‚d‚w‚h‚s.                                                
003190     EXIT.                                                        
003200******************************************************************
003210*    €–Ú’Šoˆ—‚P                                              *
003220******************************************************************
003230 €–Ú’Šoˆ—‚P                         SECTION.                  
003240 €–Ú’Šoˆ—|‚r‚s‚`‚q‚s.                                        
003241                                                                  
003242     MOVE  SPACE                      TO                          
003243                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
003244     MOVE  SPACE                      TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
003250*                                                                 
003260*----------------------------------------------------------------*
003270*    VŽæˆøæƒR[ƒh“Çž                                          *
003280*----------------------------------------------------------------*
003290      
      *     EXEC SQL                                                    
003300*        SELECT   VŽæˆøæƒR[ƒh                                  
003310*        INTO    :‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                    
003320*        FROM    IKOTBL001                                        
003340*       WHERE    IKOTBL001.ŽæˆøæƒR[ƒh =                         
003360*                                   :‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh 
003370*         AND    IKOTBL001.–Ú“I‚b‚c = '2'                         
003380*     END-EXEC.
            CALL "SQLADR" USING SQ0002 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 169 TO SQL-OFFSET
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
                ‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
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
003390*----------------------------------------------------------------*
003400*   VŽæˆøæƒR[ƒhŒŸõ‚ðŠm”F                                     *
003410*----------------------------------------------------------------*
003420     EVALUATE   SQLCODE                                           
003430        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003440*--< ³í‚ÌŽž >                                                   
003450           CONTINUE                                               
003460        WHEN   OTHER                                              
003470*--< ‘¶Ý‚µ‚È‚¢ >                                                 
003480           MOVE     SPACE             TO                          
003490                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
003520     END-EVALUATE.                                                
003530*----------------------------------------------------------------*
003540*    Ž}”Ô“Çž                                                    *
003550*----------------------------------------------------------------*
003560      
      *     EXEC SQL                                                    
003570*        SELECT  Ž}”Ô                                             
003580*        INTO   :‚h‚j‚n‚O‚O‚P|Ž}”Ô                               
003590*        FROM   IKOTBL001                                         
003610*       WHERE   IKOTBL001.ŽæˆøæƒR[ƒh =                          
003630*                                    :‚k‚s‚q‚e‚b‚j|ƒ†[ƒU[ƒR[ƒh
003640*         AND   IKOTBL001.–Ú“I‚b‚c = '2'                          
003650*     END-EXEC.
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
                ‚h‚j‚n‚O‚O‚P|Ž}”Ô
                SQL-SQHSTV(1)
            MOVE 3 TO SQL-SQHSTL(1)
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
003660*----------------------------------------------------------------*
003670*   Ž}”ÔŒŸõ‚ðŠm”F                                               *
003680*----------------------------------------------------------------*
003690     EVALUATE   SQLCODE                                           
003700        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
003710*--< ³í‚ÌŽž >                                                   
003720           CONTINUE                                               
003730        WHEN   OTHER                                              
003740*--< ‘¶Ý‚µ‚È‚¢ >                                                 
003750           MOVE     SPACE             TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
003780     END-EVALUATE.                                                
003790  €–Ú’Šoˆ—‚P|‚d‚w‚h‚s.                                       
003800     EXIT.                                                        
003810******************************************************************
003820*    €–Ú’Šoˆ—‚Q                                              *
003830******************************************************************
003840 €–Ú’Šoˆ—‚Q                         SECTION.                  
003850 €–Ú’Šoˆ—|‚r‚s‚`‚q‚s.                                        
003851                                                                  
003852     MOVE  SPACE                      TO                          
003853                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
003854     MOVE  SPACE                      TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
003855                                                                  
003860*----------------------------------------------------------------*
003870*    VŽæˆøæƒR[ƒh“Çž                                          *
003880*----------------------------------------------------------------*
003890      
      *     EXEC SQL                                                    
003900*        SELECT  VŽæˆøæƒR[ƒh                                   
003910*        INTO    :‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                    
003920*        FROM    IKOTBL001                                        
003930*        WHERE   IKOTBL001.ŽæˆøæƒR[ƒh =                         
003950*                                      :‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
003970*         AND    IKOTBL001.–Ú“I‚b‚c = '3'                         
003980*     END-EXEC.
            CALL "SQLADR" USING SQ0004 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 215 TO SQL-OFFSET
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
                ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
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
003990*----------------------------------------------------------------*
004000*    VŽæˆøæƒR[ƒhŒŸõ‚ðŠm”F                                    *
004010*----------------------------------------------------------------*
004020     EVALUATE   SQLCODE                                           
004030        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004040*--< ³í‚ÌŽž >                                                   
004050           CONTINUE                                               
004060        WHEN   OTHER                                              
004070*--< ‘¶Ý‚µ‚È‚¢ >                                                 
004080           MOVE     SPACE             TO                          
004090                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
004100     END-EVALUATE.                                                
004130*----------------------------------------------------------------*
004140*    Ž}”Ô“Çž                                                    *
004150*----------------------------------------------------------------*
004160      
      *     EXEC SQL                                                    
004170*        SELECT  Ž}”Ô                                             
004180*        INTO    :‚h‚j‚n‚O‚O‚P|Ž}”Ô                              
004190*        FROM    IKOTBL001                                        
004200*       WHERE    IKOTBL001.ŽæˆøæƒR[ƒh =                         
004220*                                      :‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
004240*         AND    IKOTBL001.–Ú“I‚b‚c = '3'                         
004250*     END-EXEC.
            CALL "SQLADR" USING SQ0005 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 238 TO SQL-OFFSET
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
                ‚k‚s‚q‚e‚b‚j|¿‹æƒR[ƒh
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
004260*----------------------------------------------------------------*
004270*     Ž}”ÔŒŸõ‚ðŠm”F                                             *
004280*----------------------------------------------------------------*
004290     EVALUATE   SQLCODE                                           
004300        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004310*--< ³í‚ÌŽž >                                                   
004320           CONTINUE                                               
004330        WHEN   OTHER                                              
004340*--< ‘¶Ý‚µ‚È‚¢ >                                                 
004350           MOVE     SPACE             TO   ‚h‚j‚n‚O‚O‚P|Ž}”Ô     
004380     END-EVALUATE.                                                
004390 €–Ú’Šoˆ—‚Q|‚d‚w‚h‚s.                                        
004400     EXIT.                                                        
004410******************************************************************
004420*     •ÒWo—Íˆ—                                               *
004430******************************************************************
004440 •ÒWo—Íˆ—                         SECTION.                    
004450 •ÒWo—Íˆ—|‚r‚s‚`‚q‚s.                                        
004460*----------------------------------------------------------------*
004470*       ‰Šú‰»ˆ—                                               *
004480*----------------------------------------------------------------*
004490        MOVE  SPACE                   TO  Œ_–ñŽèŒ`ÂŒ –¾×        
004500        INITIALIZE                        Œ_–ñŽèŒ`ÂŒ –¾×        
004510*                                                                 
004520*----------------------------------------------------------------*
004530*       €–Ú•ÒWˆ—                                             *
004540*----------------------------------------------------------------*
004550*--<    No.01 >                                                   
004560        MOVE  ‚k‚s‚q‚e‚b‚s|Œ_–ñ”Ô†  TO  ‚c‚S‚P‚T|Œ_–ñ”Ô†.     
004570*                                                                 
004580*--<    No.02 >                                                   
004590        MOVE  ‚v|o—Í|Œ”          TO  ‚c‚S‚P‚T|–¾×”Ô†.     
004600*                                                                 
004610        PERFORM  €–Ú’Šoˆ—‚P.                                  
004620*--<    No.03 >                                                   
004630        MOVE  ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                        
004640                                      TO  ‚c‚S‚P‚T|ŽæˆøæƒR[ƒh. 
004650*                                                                 
004660*--<    No.04 >                                                   
004670        MOVE  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      TO  ‚c‚S‚P‚T|Œ_–ñæƒR[ƒh. 
004680*                                                                 
004690*--<    No.05 >                                                   
004700        MOVE  ‚k‚s‚q‚e‚b‚j|Šz–Ê‹àŠz  TO  ‚c‚S‚P‚T|Šz–Ê‹àŠz.     
004710*                                                                 
004720*--<    No.06 >                                                   
004730        MOVE  ‚k‚s‚q‚e‚b‚j|Šú“ú      TO  ‚c‚S‚P‚T|ŽèŒ`Šú“ú.     
004740*                                                                 
004750*--<    No.07 >                                                   
004760        MOVE  ‚k‚s‚q‚e‚b‚s|—˜‘§Šú“ú  TO  ‚c‚S‚P‚T|—˜‘§Šú“ú.     
004770*                                                                 
004780*--<    No.08 >                                                   
004790        MOVE  ‚k‚s‚q‚e‚b‚s|ŠúŠÔ“ú”  TO  ‚c‚S‚P‚T|“ú”.         
004800*                                                                 
004810*--<    No.09 >                                                   
004820        MOVE  ‚k‚s‚q‚e‚b‚s|Š„ˆø—¦    TO  ‚c‚S‚P‚T|Š„ˆø—¦.       
004830*                                                                 
004840*--<    No.10 >                                                   
004850        MOVE  ‚k‚s‚q‚e‚b‚s|Š„ˆø—¿    TO  ‚c‚S‚P‚T|Š„ˆø—¿.       
004860*                                                                 
004870*--<    No.11 >                                                   
004880        MOVE  ‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿                            
004890                                      TO  ‚c‚S‚P‚T|Žæ—§Žè”—¿“™. 
004900*                                                                 
004910*--<    No.12 >                                                   
004920        MOVE  ‚k‚s‚q‚e‚b‚s|ŽóŽæŽè”—¿Á”ïÅ“™Šz                  
004930                                      TO                          
004940                                   ‚c‚S‚P‚T|Žæ—§Žè”—¿“™Á”ïÅŠz.
004950*                                                                 
004960*--<    No.13 >                                                   
004970        MOVE  ‚k‚s‚q‚e‚b‚s|”ƒŽæ‹àŠz  TO  ‚c‚S‚P‚T|”ƒŽæ‘ã‹àŠz.   
004980*                                                                 
004990*--<    No.14 >                                                   
005000        MOVE  ZERO                    TO  ‚c‚S‚P‚T|ŽÐ“à‹à—˜‹æ•ª. 
005010*                                                                 
005020*--<    No.15 >                                                   
005030        MOVE  ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜  TO  ‚c‚S‚P‚T|ŽÐ“à‹à—˜.     
005040*                                                                 
005050*--<    No.16 >                                                   
005060        MOVE  ZERO                    TO  ‚c‚S‚P‚T|ŽÀŽ¿”N—¦.     
005070*                                                                 
005080*--<    No.17 >                                                   
005090        MOVE  ‚k‚s‚q‚e‚b‚j|‘e—˜‰v    TO  ‚c‚S‚P‚T|‘e—˜.         
005100*                                                                 
005110*--<    No.18 >                                                   
005120        MOVE  ‚k‚s‚q‚e‚b‚s|ŽèŒ`”Ô†  TO  ‚c‚S‚P‚T|ŽèŒ`”Ô†.     
005130*                                                                 
005140*--<    No.19 >                                                   
005150        MOVE  ‚k‚s‚q‚e‚b‚s|ŽèŒ`Ží—Þ  TO  ‚c‚S‚P‚T|ŽèŒ`Ží—Þ.     
005160*                                                                 
005170*--<    No.20 >                                                   
005180        MOVE  ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh(1:4)                   
005190                                      TO ‚c‚S‚P‚T|Žx•¥‹âsƒR[ƒh.
005210*--<    No.21 >                                                   
005220        MOVE  ‚k‚s‚q‚e‚b‚s|Žæˆø‹âsƒR[ƒh(5:3)                   
005230                                      TO ‚c‚S‚P‚T|Žx•¥Žx“XƒR[ƒh.
005250*                                                                 
005260        PERFORM  €–Ú’Šoˆ—‚Q.                                  
005270*--<    No.22 >                                                   
005280        MOVE  ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                        
005290                                      TO                          
005300                                       ‚c‚S‚P‚T|¿‹ŽæˆøæƒR[ƒh.
005310*                                                                 
005320*--<    No.23 >                                                   
005330        MOVE  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      TO  ‚c‚S‚P‚T|¿‹æƒR[ƒh. 
005340*                                                                 
005350*--<    No.24 >                                                   
005360        MOVE  ‚k‚s‚q‚e‚b‚j|ŽÐ“à‹à—˜  TO                          
005370                                         ‚c‚S‚P‚T|ŽÐ“à‹à—˜|ˆê”Ê.
005380*                                                                 
005390*--<    No.25 >                                                   
005400        MOVE  ‚k‚s‚q‚e‚b‚j|‘e—˜‰v    TO  ‚c‚S‚P‚T|‘e—˜|ˆê”Ê.   
005410*                                                                 
005420*--<    No.26 >                                                   
005430        MOVE  ZERO                    TO  ‚c‚S‚P‚T|—¬“®‰»æ.     
005440*                                                                 
005450*--<    No.27 >                                                   
005460        MOVE  ZERO                    TO                          
005470                                       ‚c‚S‚P‚T|ÂŒ —¬“®‰»æ‹æ•ª.
005480*                                                                 
005490*--<    No.28 >                                                   
005500        MOVE  ‚k‚s‚q‚e‚b‚s|ŠúŒÀ‘OŒˆÙ“ú                          
005510                                      TO  ‚c‚S‚P‚T|ŠúŒÀ‘OŒˆÙ“ú. 
005520*                                                                 
005530*--<    No.29 >                                                   
005540        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t        TO  ‚c‚S‚P‚T|XV”NŒŽ“ú.   
005550*                                                                 
005560*--<    No.30 >                                                   
005570        MOVE  ‚v|ƒVƒXƒeƒ€Žž        TO  ‚c‚S‚P‚T|XVŽžŠÔ.     
005580*                                                                 
005590*--<    No.31 >                                                   
005600        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚S‚P‚T|XVŽÒ.       
005610*                                                                 
005620*--<    No.32 >                                                   
005630        MOVE  ‚v|’S“–ŽÒ              TO                          
005640                                      ‚c‚S‚P‚T|“ü—Í’S“–ŽÒƒR[ƒh. 
005650*                                                                 
005660*--<    No.33 >                                                   
005670        MOVE  ‚v|ƒVƒXƒeƒ€“ú•t        TO  ‚c‚S‚P‚T|“o˜^”NŒŽ“ú.   
005680*                                                                 
005690*--<    No.34 >                                                   
005700        MOVE  ‚v|ƒVƒXƒeƒ€Žž        TO  ‚c‚S‚P‚T|“o˜^ŽžŠÔ.     
005710*                                                                 
005720*--<    No.35 >                                                   
005730        MOVE  ‚v|’S“–ŽÒ              TO  ‚c‚S‚P‚T|“o˜^’S“–ŽÒ.   
005740*                                                                 
005750 •ÒWo—Íˆ—|‚d‚w‚h‚s.                                          
005760     EXIT.                                                        
005770******************************************************************
005780*    o—Íˆ—                                                    *
005790******************************************************************
005800 o—Íˆ—                             SECTION.                    
005810 o—Íˆ—|‚r‚s‚`‚q‚s.                                            
005820*                                                                 
005830       
      *      EXEC  SQL                                                  
005840*        INSERT  INTO  D415UTM_TBL                                
005850*          ( Œ_–ñ”Ô†                                             
005860*           ,–¾×”Ô†                                             
005870*           ,ŽæˆøæƒR[ƒh                                         
005880*           ,Œ_–ñæƒR[ƒh                                         
005890*           ,Šz–Ê‹àŠz                                             
005900*           ,ŽèŒ`Šú“ú                                             
005910*           ,—˜‘§Šú“ú                                             
005920*           ,“ú”                                                 
005930*           ,Š„ˆø—¦                                               
005940*           ,Š„ˆø—¿                                               
005950*           ,Žæ—§Žè”—¿“™                                         
005960*           ,Žæ—§Žè”—¿“™Á”ïÅŠz                                 
005970*           ,”ƒŽæ‘ã‹àŠz                                           
005980*           ,ŽÐ“à‹à—˜‹æ•ª                                         
005990*           ,ŽÐ“à‹à—˜                                             
006000*           ,ŽÀŽ¿”N—¦                                             
006010*           ,‘e—˜                                                 
006020*           ,ŽèŒ`”Ô†                                             
006030*           ,ŽèŒ`Ží—Þ                                             
006040*           ,Žx•¥‹âsƒR[ƒh                                       
006050*           ,Žx•¥Žx“XƒR[ƒh                                       
006060*           ,¿‹ŽæˆøæƒR[ƒh                                     
006070*           ,¿‹æƒR[ƒh                                         
006080*           ,ŽÐ“à‹à—˜_ˆê”Ê                                        
006090*           ,‘e—˜_ˆê”Ê                                            
006091*           ,ŠúŒÀ‘OŒˆÙ“ú                                         
006100*           ,—¬“®‰»æ                                             
006110*           ,ÂŒ —¬“®‰»æ‹æ•ª                                     
006130*           ,XV”NŒŽ“ú                                           
006140*           ,XVŽžŠÔ                                             
006150*           ,XVŽÒ                                               
006160*           ,“ü—Í’S“–ŽÒƒR[ƒh                                     
006170*           ,“o˜^”NŒŽ“ú                                           
006180*           ,“o˜^ŽžŠÔ                                             
006190*           ,“o˜^’S“–ŽÒ)                                          
006200*      VALUES                                                     
006210*          ( :‚c‚S‚P‚T|Œ_–ñ”Ô†                                  
006220*           ,:‚c‚S‚P‚T|–¾×”Ô†                                  
006230*           ,:‚c‚S‚P‚T|ŽæˆøæƒR[ƒh                              
006240*           ,:‚c‚S‚P‚T|Œ_–ñæƒR[ƒh                              
006250*           ,:‚c‚S‚P‚T|Šz–Ê‹àŠz                                  
006260*           ,:‚c‚S‚P‚T|ŽèŒ`Šú“ú                                  
006270*           ,:‚c‚S‚P‚T|—˜‘§Šú“ú                                  
006280*           ,:‚c‚S‚P‚T|“ú”                                      
006290*           ,:‚c‚S‚P‚T|Š„ˆø—¦                                    
006300*           ,:‚c‚S‚P‚T|Š„ˆø—¿                                    
006310*           ,:‚c‚S‚P‚T|Žæ—§Žè”—¿“™                              
006320*           ,:‚c‚S‚P‚T|Žæ—§Žè”—¿“™Á”ïÅŠz                      
006330*           ,:‚c‚S‚P‚T|”ƒŽæ‘ã‹àŠz                                
006340*           ,:‚c‚S‚P‚T|ŽÐ“à‹à—˜‹æ•ª                              
006350*           ,:‚c‚S‚P‚T|ŽÐ“à‹à—˜                                  
006360*           ,:‚c‚S‚P‚T|ŽÀŽ¿”N—¦                                  
006370*           ,:‚c‚S‚P‚T|‘e—˜                                      
006380*           ,:‚c‚S‚P‚T|ŽèŒ`”Ô†                                  
006390*           ,:‚c‚S‚P‚T|ŽèŒ`Ží—Þ                                  
006400*           ,:‚c‚S‚P‚T|Žx•¥‹âsƒR[ƒh                            
006410*           ,:‚c‚S‚P‚T|Žx•¥Žx“XƒR[ƒh                            
006420*           ,:‚c‚S‚P‚T|¿‹ŽæˆøæƒR[ƒh                          
006430*           ,:‚c‚S‚P‚T|¿‹æƒR[ƒh                              
006440*           ,:‚c‚S‚P‚T|ŽÐ“à‹à—˜|ˆê”Ê                            
006450*           ,:‚c‚S‚P‚T|‘e—˜|ˆê”Ê                                
006451*           ,:‚c‚S‚P‚T|ŠúŒÀ‘OŒˆÙ“ú                              
006460*           ,:‚c‚S‚P‚T|—¬“®‰»æ                                  
006470*           ,:‚c‚S‚P‚T|ÂŒ —¬“®‰»æ‹æ•ª                          
006490*           ,:‚c‚S‚P‚T|XV”NŒŽ“ú                                
006500*           ,:‚c‚S‚P‚T|XVŽžŠÔ                                  
006510*           ,:‚c‚S‚P‚T|XVŽÒ                                    
006520*           ,:‚c‚S‚P‚T|“ü—Í’S“–ŽÒƒR[ƒh                          
006530*           ,:‚c‚S‚P‚T|“o˜^”NŒŽ“ú                                
006540*           ,:‚c‚S‚P‚T|“o˜^ŽžŠÔ                                  
006550*           ,:‚c‚S‚P‚T|“o˜^’S“–ŽÒ)                               
006560*                                                                 
006570*    END-EXEC.
             CALL "SQLADR" USING SQ0006 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 261 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Œ_–ñ”Ô† IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|–¾×”Ô† IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽæˆøæƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(3)
             MOVE 9 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Œ_–ñæƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(4)
             MOVE 5 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Šz–Ê‹àŠz IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(5)
             MOVE 7 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽèŒ`Šú“ú IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(6)
             MOVE 8 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|—˜‘§Šú“ú IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(7)
             MOVE 8 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|“ú” IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(8)
             MOVE 2 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Š„ˆø—¦ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(9)
             MOVE 6 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Š„ˆø—¿ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(10)
             MOVE 7 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Žæ—§Žè”—¿“™ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(11)
             MOVE 7 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Žæ—§Žè”—¿“™Á”ïÅŠz IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(12)
             MOVE 7 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|”ƒŽæ‘ã‹àŠz IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(13)
             MOVE 7 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽÐ“à‹à—˜‹æ•ª IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(14)
             MOVE 1 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽÐ“à‹à—˜ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(15)
             MOVE 6 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽÀŽ¿”N—¦ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(16)
             MOVE 6 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|‘e—˜ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(17)
             MOVE 7 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽèŒ`”Ô† IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(18)
             MOVE 10 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽèŒ`Ží—Þ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(19)
             MOVE 1 TO SQL-SQHSTL(19)
             MOVE 0 TO SQL-SQHSTS(19)
             MOVE 0 TO SQL-SQINDV(19)
             MOVE 0 TO SQL-SQINDS(19)
             MOVE 0 TO SQL-SQHARM(19)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Žx•¥‹âsƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(20)
             MOVE 4 TO SQL-SQHSTL(20)
             MOVE 0 TO SQL-SQHSTS(20)
             MOVE 0 TO SQL-SQINDV(20)
             MOVE 0 TO SQL-SQINDS(20)
             MOVE 0 TO SQL-SQHARM(20)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|Žx•¥Žx“XƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(21)
             MOVE 3 TO SQL-SQHSTL(21)
             MOVE 0 TO SQL-SQHSTS(21)
             MOVE 0 TO SQL-SQINDV(21)
             MOVE 0 TO SQL-SQINDS(21)
             MOVE 0 TO SQL-SQHARM(21)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|¿‹ŽæˆøæƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(22)
             MOVE 9 TO SQL-SQHSTL(22)
             MOVE 0 TO SQL-SQHSTS(22)
             MOVE 0 TO SQL-SQINDV(22)
             MOVE 0 TO SQL-SQINDS(22)
             MOVE 0 TO SQL-SQHARM(22)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|¿‹æƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(23)
             MOVE 5 TO SQL-SQHSTL(23)
             MOVE 0 TO SQL-SQHSTS(23)
             MOVE 0 TO SQL-SQINDV(23)
             MOVE 0 TO SQL-SQINDS(23)
             MOVE 0 TO SQL-SQHARM(23)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŽÐ“à‹à—˜|ˆê”Ê IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(24)
             MOVE 6 TO SQL-SQHSTL(24)
             MOVE 0 TO SQL-SQHSTS(24)
             MOVE 0 TO SQL-SQINDV(24)
             MOVE 0 TO SQL-SQINDS(24)
             MOVE 0 TO SQL-SQHARM(24)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|‘e—˜|ˆê”Ê IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(25)
             MOVE 7 TO SQL-SQHSTL(25)
             MOVE 0 TO SQL-SQHSTS(25)
             MOVE 0 TO SQL-SQINDV(25)
             MOVE 0 TO SQL-SQINDS(25)
             MOVE 0 TO SQL-SQHARM(25)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ŠúŒÀ‘OŒˆÙ“ú IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(26)
             MOVE 8 TO SQL-SQHSTL(26)
             MOVE 0 TO SQL-SQHSTS(26)
             MOVE 0 TO SQL-SQINDV(26)
             MOVE 0 TO SQL-SQINDS(26)
             MOVE 0 TO SQL-SQHARM(26)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|—¬“®‰»æ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(27)
             MOVE 10 TO SQL-SQHSTL(27)
             MOVE 0 TO SQL-SQHSTS(27)
             MOVE 0 TO SQL-SQINDV(27)
             MOVE 0 TO SQL-SQINDS(27)
             MOVE 0 TO SQL-SQHARM(27)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|ÂŒ —¬“®‰»æ‹æ•ª IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(28)
             MOVE 1 TO SQL-SQHSTL(28)
             MOVE 0 TO SQL-SQHSTS(28)
             MOVE 0 TO SQL-SQINDV(28)
             MOVE 0 TO SQL-SQINDS(28)
             MOVE 0 TO SQL-SQHARM(28)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|XV”NŒŽ“ú IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(29)
             MOVE 8 TO SQL-SQHSTL(29)
             MOVE 0 TO SQL-SQHSTS(29)
             MOVE 0 TO SQL-SQINDV(29)
             MOVE 0 TO SQL-SQINDS(29)
             MOVE 0 TO SQL-SQHARM(29)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|XVŽžŠÔ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(30)
             MOVE 8 TO SQL-SQHSTL(30)
             MOVE 0 TO SQL-SQHSTS(30)
             MOVE 0 TO SQL-SQINDV(30)
             MOVE 0 TO SQL-SQINDS(30)
             MOVE 0 TO SQL-SQHARM(30)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|XVŽÒ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(31)
             MOVE 8 TO SQL-SQHSTL(31)
             MOVE 0 TO SQL-SQHSTS(31)
             MOVE 0 TO SQL-SQINDV(31)
             MOVE 0 TO SQL-SQINDS(31)
             MOVE 0 TO SQL-SQHARM(31)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|“ü—Í’S“–ŽÒƒR[ƒh IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(32)
             MOVE 8 TO SQL-SQHSTL(32)
             MOVE 0 TO SQL-SQHSTS(32)
             MOVE 0 TO SQL-SQINDV(32)
             MOVE 0 TO SQL-SQINDS(32)
             MOVE 0 TO SQL-SQHARM(32)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|“o˜^”NŒŽ“ú IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(33)
             MOVE 8 TO SQL-SQHSTL(33)
             MOVE 0 TO SQL-SQHSTS(33)
             MOVE 0 TO SQL-SQINDV(33)
             MOVE 0 TO SQL-SQINDS(33)
             MOVE 0 TO SQL-SQHARM(33)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|“o˜^ŽžŠÔ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(34)
             MOVE 8 TO SQL-SQHSTL(34)
             MOVE 0 TO SQL-SQHSTS(34)
             MOVE 0 TO SQL-SQINDV(34)
             MOVE 0 TO SQL-SQINDS(34)
             MOVE 0 TO SQL-SQHARM(34)
             CALL "SQLADR" USING
                 ‚c‚S‚P‚T|“o˜^’S“–ŽÒ IN
                 Œ_–ñŽèŒ`ÂŒ –¾×
                 SQL-SQHSTV(35)
             MOVE 8 TO SQL-SQHSTL(35)
             MOVE 0 TO SQL-SQHSTS(35)
             MOVE 0 TO SQL-SQINDV(35)
             MOVE 0 TO SQL-SQINDS(35)
             MOVE 0 TO SQL-SQHARM(35)
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
006580*                                                                 
006590*----------------------------------------------------------------*
006600*    ’Ç‰Áˆ—‚ðŠm”F                                              *
006610*----------------------------------------------------------------*
006620     EVALUATE  SQLCODE                                            
006630        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
006640*--<       ’Ç‰Á¬Œ÷ >                                             
006650           COMPUTE  ‚v|o—Í|Œ”  =  ‚v|o—Í|Œ”  +  1       
006660        WHEN   OTHER                                              
006670*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
006680           MOVE     -50               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006690           PERFORM  ƒGƒ‰[ˆ—                                    
006700     END-EVALUATE.                                                
006710*                                                                 
006720 o—Íˆ—|‚d‚w‚h‚s.                                              
006730     EXIT.                                                        
006740******************************************************************
006750*    I—¹ˆ—                                                    *
006760******************************************************************
006770 I—¹ˆ—                             SECTION.                    
006780 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
006790*                                                                 
006800     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
006810*                                                                 
006820     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
006830*                                                                 
006840     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
006850*                                                                 
006860*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
006870     MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.         
006880*                                                                 
006890 I—¹ˆ—|‚d‚w‚h‚s.                                              
006900     EXIT.                                                        
006910******************************************************************
006920*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
006930******************************************************************
006940 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
006950 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
006960*                                                                 
006970*----------------------------------------------------------------*
006980*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
006990*----------------------------------------------------------------*
007000     INITIALIZE                       IF-CHOCO001.                
007010     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007020     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007030     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007040     MOVE  "LTRFCT"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007050     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007060     MOVE  ‚v|“ü—Í|Œ”‚P           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007070     MOVE  "SUMMITÌ§¸ÀØÝ¸ÞŽèŒ`ÂŒ “ÇžŒ”"                       
007080                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007090     CALL  CLOCO001                USING  IF-CHOCO001.            
007100*                                                                 
007110     INITIALIZE                       IF-CHOCO001.                 
007120     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007130     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007140     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007150     MOVE  "LTRFCK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007160     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007170     MOVE  ‚v|“ü—Í|Œ”‚Q           TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007180     MOVE  "SUMMITÌ§¸ÀØÝ¸ÞŠî–{î•ñ“ÇžŒ”"                       
007190                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007200     CALL  CLOCO001                USING  IF-CHOCO001.            
007210*                                                                 
007220     INITIALIZE                       IF-CHOCO001.                
007230     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007240     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007250     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007260     MOVE  "D415UTM"                  TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
007270     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007280     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
007290     MOVE  "Œ_–ñŽèŒ`ÂŒ –¾×“o˜^Œ”"                             
007300                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007310     CALL  CLOCO001                USING  IF-CHOCO001.            
007320*                                                                 
007330*----------------------------------------------------------------*
007340*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
007350*----------------------------------------------------------------*
007360     INITIALIZE                       IF-CHOCO001.                
007370     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007380     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007390     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007400     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007410     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007420     CALL  CLOCO001                USING  IF-CHOCO001.            
007430*                                                                 
007440 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
007450     EXIT.                                                        
007460******************************************************************
007470*    ‚c‚aƒNƒ[ƒY                                                *
007480******************************************************************
007490 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
007500 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
007510*                                                                 
007520*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
007530     
      *    EXEC SQL                                                     
007540*       CLOSE  CUR1                                               
007550*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 416 TO SQL-OFFSET
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
007560*                                                                 
007570 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
007580     EXIT.                                                        
007590******************************************************************
007600*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
007610******************************************************************
007620 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
007630 ‚c‚aƒRƒ~ƒbƒgˆ—|‚r‚s‚`‚q‚s.                                    
007640*                                                                 
007650     
      *    EXEC  SQL                                                    
007660*       COMMIT  WORK  RELEASE                                     
007670*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 431 TO SQL-OFFSET
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
007680*                                                                 
007690     INITIALIZE                       IF-CHOCO001.                
007700     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007710     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007720     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007730     MOVE  "COMMIT"                   TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007740     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007750     CALL  CLOCO001                USING  IF-CHOCO001.            
007760*                                                                 
007770 ‚c‚aƒRƒ~ƒbƒgˆ—|‚d‚w‚h‚s.                                      
007780     EXIT.                                                        
007790******************************************************************
007800*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
007810******************************************************************
007820 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
007830 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚r‚s‚`‚q‚s.                                
007840*                                                                 
007850     
      *    EXEC  SQL                                                    
007860*       ROLLBACK WORK  RELEASE                                    
007870*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 446 TO SQL-OFFSET
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
007880*                                                                 
007890     INITIALIZE                       IF-CHOCO001.                
007900     MOVE  "1"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
007910     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
007920     MOVE  "9"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
007930     MOVE  "ROLLBACK"                 TO  ‹¤‚P|ˆ—Ž¯•Ê.         
007940     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
007950     CALL  CLOCO001                USING  IF-CHOCO001.            
007960*                                                                 
007970 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—|‚d‚w‚h‚s.                                  
007980     EXIT.                                                        
007990******************************************************************
008000*    ƒGƒ‰[ˆ—                                                  *
008010******************************************************************
008020 ƒGƒ‰[ˆ—                       SECTION.                        
008030 ƒGƒ‰[ˆ—|‚r‚s‚`‚q‚s.                                          
008040*                                                                 
008050     MOVE  "Y"                        TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.    
008060     INITIALIZE                           IF-CHOCO001.            
008070*                                                                 
008080     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
008090        WHEN  -10                                                 
008100*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
008110           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008120           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008130           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008140           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
008150           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008160           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008170           CALL  CLOCO001          USING  IF-CHOCO001             
008180*                                                                 
008190        WHEN  -20                                                 
008200*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
008210           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008220           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008230           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008240           MOVE  "LTRFCT"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008250           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
008260           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008270           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008280           CALL  CLOCO001          USING  IF-CHOCO001             
008290*                                                                 
008300        WHEN  -30                                                 
008310*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
008320           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008330           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008340           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008350           MOVE  "LTRFCT"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008360           MOVE  "FETCH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
008370           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008380           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008390           CALL  CLOCO001          USING  IF-CHOCO001             
008400*                                                                 
008410        WHEN  -40                                                 
008420*--<      €–Ú’Šoˆ—ƒGƒ‰[ >                                    
008430           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008440           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008450           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008460           MOVE  "IKOTBL001"          TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008470           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008480           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008490           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008500           CALL  CLOCO001          USING  IF-CHOCO001             
008510           MOVE  "N"                  TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO      
008520        WHEN  -50                                                 
008530*--<       Œ_–ñŽèŒ`ÂŒ –¾×‚c‚a’Ç‰ÁŽ¸”s >                         
008540           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
008550           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
008560           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
008570           MOVE  "D415UTM"            TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
008580           MOVE  "INSERT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
008590           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
008600           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
008610           CALL  CLOCO001          USING  IF-CHOCO001             
008620*                                                                 
008630        WHEN  OTHER                                               
008640           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
008650     END-EVALUATE.                                                
008660*                                                                 
008670     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
008680        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
008690*                                                                 
008700        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
008710*                                                                 
008720*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
008730        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
008740*                                                                 
008750        EXIT  PROGRAM                                             
008760     END-IF.                                                      
008770*                                                                 
008780 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
008790     EXIT.                                                        
008800******************************************************************
008810*                  END OF PROGRAM                                *
008820******************************************************************
