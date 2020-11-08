000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : ”Ä—p¿‹ƒe[ƒuƒ‹                       *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS460                               *
000050*      3. ˆ—ŠT—v      : SUMMIT.¿‹–¾×î•ñ‘SŒˆ—‚É‚ÄA      *
000060*                                                                *
000070*      4. ì¬ŽÒ        : —›ŠÑ‰F                                 *
000080*      5. ì¬“ú        : 2004.10.10                             *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS460.                   
000170******************************************************************
000180*    ‚d‚m‚u‚h‚q‚n‚m‚l‚d‚m‚s        ‚c‚h‚u‚h‚r‚h‚n‚m              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000230******************************************************************
000240 DATA                                 DIVISION.                   
000250******************************************************************
000260*  ‚v‚n‚q‚j‚h‚m‚f[‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000270******************************************************************
000280  WORKING-STORAGE                     SECTION.                    
000290*----------------------------------------------------------------*
000300*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000310*----------------------------------------------------------------*
000320     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS460\CO
      -    "BIS460.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(112) VALUE "select VŽæˆøæƒR[ƒh   into :b1
      -    "  from IKOTBL001 where (IKOTBL001.VŽæˆøæƒR[ƒh=:b2 and IKO
      -    "TBL001.–Ú“I‚b‚c='3')".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(92) VALUE "select Ž}”Ô   into :b1  from IKOT
      -    "BL001 where (IKOTBL001.Ž}”Ô=:b2 and IKOTBL001.–Ú“I‚b‚c='3')"
           .

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(160) VALUE "select ÄƒŠ[ƒX‰ñ”  ,Œ_–ñŽí—Þ  
      -    ",ÂŒ Š¨’èˆ—ƒR[ƒh   into :b1,:b2,:b3  from IKOTBL002 where
      -    " ((IKOTBL002.Œ_–ñ‚m‚n=:b4 and IKOTBL002.ÄƒŠ[ƒXƒR[ƒh=:b5) 
      -    "and IKOT".

           02  FILLER PIC X(29) VALUE "BL002.ÂŒ Š¨’èˆ—ƒR[ƒh=:b6)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(107) VALUE "select ¿‹ŠÔŠu   into :b1  from
      -    " D31KYK_TBL where (D31KYK_TBL.Œ_–ñ”Ô†=:b2 and D31KYK_TBL.Ä
      -    "ƒŠ[ƒX‰ñ”=:b3)".

       01  SQ0006 GLOBAL.
           02  FILLER PIC X(120) VALUE "select V¿‹“à–óƒR[ƒh   into :
      -    "b1  from IKOTBL005 where (IKOTBL005.ƒAƒNƒZƒX‹æ•ª='A' and IKO
      -    "TBL005.Œ»¿‹“à–óƒR[ƒh=:b2)".

       01  SQ0007 GLOBAL.
           02  FILLER PIC X(83) VALUE "select ‹âs’ZkƒR[ƒh   into :b1 
      -    " from D05GKO_TBL ,LTRSKM where LTRSKM.‹âs‚b‚c=:b2".

       01  SQ0008 GLOBAL.
           02  FILLER PIC X(160) VALUE  "insert into D40HSQ_TBL(ŽæˆøæƒR
      -    "[ƒh,¿‹æƒR[ƒh,˜A”Ô,Œ_–ñ”Ô†,ÄƒŠ[ƒX‰ñ”,Œ_–ñŽí—Þ,¿‹‰ñ
      -    "”,¿‹ŠÔŠu,‰ñŽû•û–@,¿‹”NŒŽ“ú,¿‹‹àŠz,¿‹Á”ïÅ,Áž”NŒŽ
      -    "“ú,Áž’Ê".

           02  FILLER PIC X(160) VALUE  "”Ô,‰ñŽû—\’è“ú,‰ñŽû”NŒŽ“ú,‰ñŽû‹à
      -     "Šz,‰ñŽûÁ”ïÅ,–¢‰ñŽû‹àŠz,‰‰ñ“ü‹à“ú,¿‹“à–óƒR[ƒh,•”‰ÛƒR[
      -     "ƒh,’·’Z‹æ•ª,‹âs’ZkƒR[ƒh,Á”ïÅƒR[ƒh,Á”ïÅ’¥Žû‹æ•ª,Š¨’è
      -     "ˆ—ƒR[ƒh,".

           02  FILLER PIC X(160) VALUE  "‘¿‹‰ñ”,“o˜^”NŒŽ“ú,“o˜^ŽžŠÔ,
      -    "“o˜^’S“–ŽÒ,XV”NŒŽ“ú,XVŽžŠÔ,XVŽÒ,“ü—Í’S“–ŽÒƒR[ƒh) valu
      -    "es (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:b13,
      -    ":b14,:b15".

           02  FILLER PIC X(101) VALUE ",:b16,:b17,:b18,:b19,:b20,:b21,:
      -    "b22,:b23,:b24,:b25,:b26,:b27,:b28,:b29,:b30,:b31,:b32,:b33,:
      -    "b34,:b35)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148410684.


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
           02  FILLER PIC X(160) VALUE "select LTRSKM.‚j‚d‚x€–Ú¿‹æƒR
      -    "[ƒh  ,LTRSKM.Œ_–ñ”Ô†  ,LTRSKM.ÄƒŠ[ƒXƒR[ƒh  ,LTRSKM.Š¨’è
      -    "ˆ—ƒR[ƒh  ,LTRSKM.[“–‰ñ”  ,LTRSKM.Œ_–ñ”Ô†  ,D31KYK_TBL.
      -    "Œ_–ñ”Ô†".

           02  FILLER PIC X(160) VALUE "  ,D31KYK_TBL.ÄƒŠ[ƒX‰ñ”  ,D31
      -    "KYK_TBL.ÄƒŠ[ƒX¿‹ŠÔŠu  ,LTRSKM.‰ñŽû•ûŽ®  ,LTRSKM.¿‹”­s
      -    "“úQ¢‹I  ,LTRSKM.¿‹”­s“úQ”NŒŽ“ú  ,LTRSKM.¿‹‹àŠz  ,LTR
      -    "SKM.Á”ï".

           02  FILLER PIC X(160) VALUE "ÅQ‹àŠz  ,LTRSKM.Áž“úQ¢‹I  
      -    ",LTRSKM.Áž“úQ”NŒŽ“ú  ,LTRSKM.Áž’Ê”Ô  ,LTRSKM.“ü‹à—\’è“ú
      -    "  ,LTRSKM.Áž‹àŠz  ,LTRSKM.¿‹‹àŠz  ,LTRSKM.¿‹“à–óƒR[ƒh
      -    "  ,LTRSK".

           02  FILLER PIC X(160) VALUE "M.Ž–‹ÆŠƒR[ƒh  ,LTRSKM.’·’Z‹æ•ª
      -    "  ,LTRSKM.‹âs‚b‚c  ,D05GKO_TBL.‹âs’ZkƒR[ƒh  ,D05GKO_TBL.
      -    "‹âsƒR[ƒh  ,D05GKO_TBL.Žx“XƒR[ƒh  ,LTRSKM.Á”ïÅQÁ”ïÅƒR
      -    "[ƒh  ,L".

           02  FILLER PIC X(159) VALUE "TRSKM.Á”ïÅQ’¥Žû‹æ•ª  ,LTRSKM.
      -    "‘Žx•¥‰ñ”  ,LTRSKM.‹¤’Êî•ñ   from LTRSKM ,D31KYK_TBL ,D05G
      -     "KO_TBL where ((LTRSKM.“à•”“ü‹à‹æ•ª=2 and SUBSTR(LTRSKM.¿‹
      -    "“à–óƒR[".

           02  FILLER PIC X(89) VALUE "ƒh,1,1)='G') or (SUBSTR(LTRSKM.¿
      -    "‹“à–óƒR[ƒh,1,1)='Y' and LTRSKM.Áž’Ê”Ô=0))           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +213.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +217.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +888.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +291.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +317.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +31.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +221.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +112.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +545.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +244.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +92.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +576.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +267.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +189.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +625.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +306.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +107.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +647.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +333.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +120.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +783.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +356.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +83.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +806.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +379.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
           02     FILLER PIC S9(4) COMP-5 VALUE +581.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +834.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +534.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +991.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +549.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +1003.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +564.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +1023.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000330   01  ‚v‚r[‹âs‚b‚c                 PIC  9(07).
000344*                                                                 
000390*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000391     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL             END-EXEC.
000392*                                                                 
000393*--< ‚n‚q‚`‚b‚k‚d ‚r‚p‚kŽÀsî•ñ (SQLCA) >                        
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000394     
      *    EXEC  SQL  INCLUDE  SQLCA.COB              END-EXEC.
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
000395*                                                                 
000400*--< SUMMIT¿‹–¾× >                                            
000410     
      *    EXEC  SQL  INCLUDE  LTRSKM.CBL           END-EXEC.
000420*                                                                 
000430*--<ˆÚsŒã_Œ_–ñ“à—e>                                                
000010************************************************
000020* ¿‹i¿‹–¾×î•ñj(LTRSKM)
000030************************************************
000040 01  ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh PIC  X(008).
000050 01  ‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô† PIC  X(009).
000060 01  ‚k‚s‚q‚r‚j‚l|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000070 01  ‚k‚s‚q‚r‚j‚l|“ü‹à—\’è“ú PIC  X(007).
000080 01  ‚k‚s‚q‚r‚j‚l|¿‹“à–óƒR[ƒh PIC  X(003).
000090 01  ‚k‚s‚q‚r‚j‚l|‘Žx•¥‰ñ” PIC S9(003) COMP-3.
000100 01  ‚k‚s‚q‚r‚j‚l|[“–‰ñ” PIC S9(003) COMP-3.
000110 01  ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ® PIC S9(001) COMP-3.
000120 01  ‚k‚s‚q‚r‚j‚l|’·’Z‹æ•ª PIC S9(001) COMP-3.
000130 01  ‚k‚s‚q‚r‚j‚l|Ž–‹ÆŠƒR[ƒh PIC S9(004) COMP-3.
000140 01  ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|¢‹I PIC S9(001) COMP-3.
000150 01  ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|”NŒŽ“ú PIC  X(006).
000160 01  ‚k‚s‚q‚r‚j‚l|Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000170 01  ‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô PIC S9(009) COMP-3.
000180 01  ‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I PIC S9(001) COMP-3.
000190 01  ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú PIC  X(006).
000200 01  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|’¥Žû‹æ•ª PIC S9(001) COMP-3.
000210 01  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz PIC S9(013) COMP-3.
000220 01  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|Á”ïÅƒR[ƒh PIC S9(002) COMP-3.
000230 01  ‚k‚s‚q‚r‚j‚l|ƒŠ[ƒX—¿“™ PIC S9(013) COMP-3.
000240 01  ‚k‚s‚q‚r‚j‚l|¿‹‹àŠz PIC S9(013) COMP-3.
000250 01  ‚k‚s‚q‚r‚j‚l|Áž‹àŠz PIC S9(013) COMP-3.
000260 01  ‚k‚s‚q‚r‚j‚l|“à•”“ü‹à‹æ•ª PIC S9(001) COMP-3.
000270 01  ‚k‚s‚q‚r‚j‚l|‹âs‚b‚c PIC S9(007) COMP-3.
000280 01  ‚k‚s‚q‚r‚j‚l|‹Œ¿‹“à–óƒR[ƒh PIC  X(003).
000290 01  ‚k‚s‚q‚r‚j‚l|ƒ†[ƒUƒR[ƒh PIC  X(008).
000300 01  ‚k‚s‚q‚r‚j‚l|Â‹¦ƒR[ƒh PIC  X(002).
000310 01  ‚k‚s‚q‚r‚j‚l|“Ë‡Ïƒtƒ‰ƒO PIC  X(001).
000320 01  ‚k‚s‚q‚r‚j‚l|ƒ_ƒ~[‚O‚O‚P PIC  X(005).
000330 01  ‚k‚s‚q‚r‚j‚l|‹¤’Êî•ñ PIC  X(035).
000440     
      *    EXEC  SQL  INCLUDE  D31KYK.CBL            END-EXEC.
000450*                                                                 
000460*--< ˆÚsŒã_ŽóŽæŒûÀƒ}ƒXƒ^>                                                  
      *****************************************************************
      *   Œ_–ñ“à—e(D31KYK_TBL)
      *****************************************************************
       01  Œ_–ñ“à—e.
           03  ‚c‚R‚P|Œ_–ñ”Ô†      PIC  X(010).
           03  ‚c‚R‚P|ÄƒŠ[ƒX‰ñ”  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ©Ï”Ô†      PIC S9(007) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ©Ï”Ô†Ž}”Ô  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽæˆøæƒR[ƒh  PIC  X(009).
           03  ‚c‚R‚P|âg‹cŒˆÙ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘Ý•tŽÀs—\’è“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¬–ñ”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|ˆø“n”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|Œ_–ñŠJŽn“ú    PIC  X(008).
           03  ‚c‚R‚P|Œ_–ñI—¹“ú    PIC  X(008).
           03  ‚c‚R‚P|ŠúŠÔ          PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ_–ñŒ–¼      PIC  X(060).
           03  ‚c‚R‚P|ƒGƒ“ƒhƒ†[ƒUƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚R‚P|Œ_–ñ‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|Ð‰îƒ‹[ƒg    PIC  X(001).
           03  ‚c‚R‚P|’S“–•”‰ÛƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚R‚P|’S“–ŽÒƒR[ƒh  PIC  X(008).
           03  ‚c‚R‚P|•Ï‘¥•¥        PIC  X(001).
           03  ‚c‚R‚P|ŒŽŠz—¿‹à      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ_–ñ‘Šz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX—¿
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿‹à‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|M—p•ÛŒ¯‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|’S•Û‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‹¦’²‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñæƒR[ƒh  PIC  X(005).
           03  ‚c‚R‚P|ŽåŠ²Ž–æƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚R‚P|—˜‰ñ‚è        PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒ†[ƒU—˜‰ñ‚è  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|’·ƒvƒ‰‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽÐ“à‹à—˜      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|¿‹æƒR[ƒh  PIC  X(005).
           03  ‚c‚R‚P|¿‹‘ì¬‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|¿‹Œ–¼      PIC  X(060).
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽû•û–@
                                     PIC  X(001).
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽû“ú  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘æ‚P‰ñ‰ñŽû‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|U‘ÖŠJŽn”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|‘O•¥‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|“ª‹à‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚P
                                     PIC  X(080).
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚Q
                                     PIC  X(080).
           03  ‚c‚R‚P|ó‘Ôƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ˆÄ“à‘—•t‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ˆÄ“à‰ñ“š‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ŽåŒ_–ñ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|‘k‹yˆ—‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‘k‹yˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ŒŸŽûƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ŒŸŽûŽæÁ“ú    PIC  X(008).
           03  ‚c‚R‚P|ŒŸŽûŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ŒŸŽûˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ŒŸŽûŽæÁ”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|“–‰‰ñŽûŠúŠÔ  PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÅV‰ñŽûŠúŠÔ  PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÅI•¨Œ”Ô†  PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒXƒf[ƒ^ì¬‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽ©“®ì¬”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ƒŠ[ƒXŠ„•Š‘O•¥ŒŽ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|“ª‹à¿‹‘ì¬ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‘O•¥¿‹‘ì¬ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|“ª‹à¿‹Ïƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‘O•¥¿‹Ïƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñ”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘‰ñŽû‰ñ”    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚R‚P|•¨ŒŠm”F      PIC  X(001).
           03  ‚c‚R‚P|‚Ü‚é‚ß’PˆÊ    PIC  X(001).
           03  ‚c‚R‚P|“à–óˆóü•û–@  PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñŠúŠÔ‰ñ”ˆóü—L–³
                                     PIC  X(001).
           03  ‚c‚R‚P|¬–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¬–ñŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¬–ñˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|¬–ñŽæÁ”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ÄƒŠ[ƒX¿‹ŠÔŠu
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒX‰ñŽûŠÔŠu
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚P|XVŽÒ        PIC  X(008).
           03  ‚c‚R‚P|“–‰—˜‰ñ‚è    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰‘e—˜Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰ŒŽŠz—¿‹à  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰Œ_–ñ‘Šz  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽû“ú    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽûŠÔŠu  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹ŒŽæˆø”Ô†    PIC  X(010).
           03  ‚c‚R‚P|‰ð–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|‰ð–ñˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|‰ð–ñŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|‰ð–ñŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|–ž—¹—\–ñƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|–ž—¹—\–ñƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|–ž—¹ˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ÄƒŠ[ƒXƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ÄƒŠ[ƒXˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|³ŒpƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|³Œpˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|³ŒpŽæÁƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|³ŒpŽæÁˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|”„‹pƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|”„‹pˆ—”NŒŽ  PIC  X(006).
           03  ‚c‚R‚P|ðŒ•ÏXƒGƒ“ƒgƒŠ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ðŒ•ÏXˆ—”NŒŽ
                                     PIC  X(006).
           03  ‚c‚R‚P|ŠÇ—ÂŒ ƒŒƒxƒ‹
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ—¿—¦      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘e—˜Šz        PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“–‰Œ_–ñ—¿—¦  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆÈ~‰ñŽû•û–@  PIC  X(001).
           03  ‚c‚R‚P|¿‹ƒTƒCƒg    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|¿‹ŠÔŠu      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|¿‹Šî€ŒŽ    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|Œ_–ñŽæˆø‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|Ó”C‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‘ŠŽE‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|’•¶‘o—Í‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ˆÄ“à’ •[‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒXŽ©“®Œp‘±‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ‘Ž®      PIC  X(001).
           03  ‚c‚R‚P|•¨Œ•ÛŠÇêŠ  PIC  X(001).
           03  ‚c‚R‚P|¿‹æ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|•s“®ŽY’S•ÛÝ’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|—L‰¿ØŒ”’S•ÛÝ’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‚»‚Ì‘¼’S•ÛÝ’èŠz
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|•ÛØl—L–³‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|–¢ŽûŽc‚‘ÎÛŠOƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÛŒ¯‰ïŽÐ‹æ•ª  PIC  X(004).
           03  ‚c‚R‚P|“®‘•ÛŒ¯—¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|“®‘•t•ÛŠJŽn”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚R‚P|¿‹ŽæˆøæƒR[ƒh
                                     PIC  X(009).
           03  ‚c‚R‚P|–â‡‚¹”Ô†    PIC  X(010).
           03  ‚c‚R‚P|ÄƒŠ[ƒX‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‹ŒŒ_–ñ”Ô†    PIC  X(010).
           03  ‚c‚R‚P|w“ü‘I‘ðŒ •tƒŠ[ƒX‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿‘—L–³‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|³Œp\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|\¿˜A”Ô      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒŠƒXƒPƒtƒ‰ƒO  PIC  X(001).
           03  ‚c‚R‚P|‘e—˜‰vŠz|•\  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‚¨Žx•¥–¾×‘ì¬Ïƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‚¨Žx•¥–¾×‘—v”Û
                                     PIC  X(001).
           03  ‚c‚R‚P|\¿”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘ÎÛŒ³–{Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|Á”ïÅ—¦‹æ•ª  PIC  X(002).
           03  ‚c‚R‚P|\¿‘o—Í”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿‘o—Í”NŒŽ“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|¿‹Šî€      PIC  X(001).
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX‰ñŽûƒTƒCƒg
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX‰ñŽû“ú
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ï•ÛŽç—¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ï”Ì‘£”ï    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ïM—p•ÛŒ¯  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽG”ï‚»‚Ì‘¼    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|’¥‹Š®—¹ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|’¥‹Š®—¹ŽæÁƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŽŸ‰ñÄƒŠ[ƒX‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|’•¶‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‚»‚Ì‘¼”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚R
                                     PIC  X(080).
           03  ‚c‚R‚P|ŽÐ“à‹à—˜‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|ŽG”ï’²®Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒI[ƒvƒ“ƒuƒ‰ƒCƒ“ƒh‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|‹¦’²‰ñŽû‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|’P”N“xŒ_–ñ    PIC  X(001).
           03  ‚c‚R‚P|ƒoƒbƒNŽæˆø    PIC  X(001).
           03  ‚c‚R‚P|”Û”F‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|‘O“n‹à‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|”ñ‰ÛÅ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|•ïŠ‡‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|ŠCŠOÝ’u‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|•¨ŒƒRƒƒ“ƒg  PIC  X(040).
           03  ‚c‚R‚P|‰ð–ñ‹àŒvŽZ•û–@
                                     PIC  X(001).
           03  ‚c‚R‚P|”À“ü—\’è“ú    PIC  X(008).
           03  ‚c‚R‚P|\¿Œ_–ñŠz‰ÁŽZƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Ð‰îæŽæˆøæ  PIC  X(009).
           03  ‚c‚R‚P|Ð‰îæŒ_–ñæ  PIC  X(005).
           03  ‚c‚R‚P|Ð‰îæ‚a‚s‚l  PIC  X(004).
           03  ‚c‚R‚P|Ð‰îæ—»“X    PIC  X(004).
           03  ‚c‚R‚P|Ð‰îæ‹âs    PIC  X(004).
           03  ‚c‚R‚P|Ð‰îæŽx“X    PIC  X(003).
           03  ‚c‚R‚P|¿‹“ú        PIC  X(002).
           03  ‚c‚R‚P|Œ_–ñŽæÁ——R‚P
                                     PIC  X(080).
           03  ‚c‚R‚P|Œ_–ñŽæÁ——R‚Q
                                     PIC  X(080).
           03  ‚c‚R‚P|Œ_–ñŽæÁ\¿‘”­sÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŒˆÙ“o˜^\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñ“o˜^\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŒŸŽû“o˜^\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñŽæÁ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ŒŸŽûŽæÁ\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÏX\¿ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÏXƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|•ÏX”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|Â–±‹¦’²ƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚R‚P|ˆê”Ê‘åŒû‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|§“xƒŠ[ƒX    PIC  X(001).
           03  ‚c‚R‚P|Šî–{—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŽÀŽ¿—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘e—˜Šz‘Šz•ª  PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŽÐ“à‹à—˜  PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŠî–{—˜‰ñ‚è
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŽÀŽ¿—˜‰ñ‚è
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”Ê‘e—˜Šz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŠî–{—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”ÊŽÀŽ¿—˜‰ñ‚è‘Šz•ª
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”Ê‘e—˜ŠzŽ©ŽÐ•ª
                                     PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹­§•Û‘¶ƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚R‚P|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚R‚P|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚R‚P|“]ƒŠ[ƒX’ñŒgæƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚R‚P|ˆ´ùŽè”—¿    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹Æ–±‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|”ƒ–ß‹`–±‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‘ã—‰ñŽû      PIC  X(001).
           03  ‚c‚R‚P|”ƒŽæ‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‹à—˜•Ï“®‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|˜A“®‹à—˜‹æ•ª  PIC  X(002).
           03  ‚c‚R‚P|Š„ˆø—¦        PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘Ý•t‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘Ý•t‹à—˜      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|Ž‘‹àŽg“r‹æ•ª  PIC  X(002).
           03  ‚c‚R‚P|Ž‘‹àŽg“r•¶Œ¾  PIC  X(080).
           03  ‚c‚R‚P|Žx•¥ˆÏ‘õŽæˆøŒ`‘Ô
                                     PIC  X(001).
           03  ‚c‚R‚P|—ZŽ‘•û–@      PIC  X(001).
           03  ‚c‚R‚P|•ÔÏðŒ      PIC  X(001).
           03  ‚c‚R‚P|ƒŠ[ƒXŽí—Þ‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Ž‘ŽY‰È–Ú‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|d—v«Šî€‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|‘O“n‹à‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ƒgƒŠƒvƒ‹ƒIƒvƒVƒ‡ƒ“•ûŽ®
                                     PIC  X(001).
           03  ‚c‚R‚P|ˆø‡’†Ž~‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|“à—e•ÏX\¿˜A”Ô
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|³Œp•ªŠ„Ží—Þ  PIC  X(001).
           03  ‚c‚R‚P|³Œp‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|–ž—¹ðŒ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‘æ‚P‰ñ–Ú‰ñŽû“ú•¶Œ¾
                                     PIC  X(040).
           03  ‚c‚R‚P|‘æ‚Q‰ñ–ÚˆÈ~‰ñŽû“ú•¶Œ¾
                                     PIC  X(040).
           03  ‚c‚R‚P|÷“nðŒ•tƒŠ[ƒX‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|Žc‰¿‰ñŽûƒTƒCƒg
                                     PIC S9(002)V9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÂŒ ”ƒŽæ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|Žx•¥Šî€ŒŽ    PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|‘¹ŠQ”…ž‹à•¶Œ¾
                                     PIC  X(080).
           03  ‚c‚R‚P|—¬“®‰»”Ô†    PIC  X(006).
           03  ‚c‚R‚P|—¬“®‰»æ      PIC  X(007).
           03  ‚c‚R‚P|M‘õæÝ’è“ú  PIC  X(008).
           03  ‚c‚R‚P|M‘õI—¹“ú    PIC  X(008).
           03  ‚c‚R‚P|ÂŒ —¬“®‰»‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|·“ü—\–ñ‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|ÂŒ ”ƒŽæ“ú    PIC  X(008).
           03  ‚c‚R‚P|‘ŠŽEð€‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|÷“n‹ÖŽ~“Á–ñ  PIC  X(001).
           03  ‚c‚R‚P|æ•ûŒ_–ñ”Ô†  PIC  X(016).
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿•ªŽq
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿•ª•ê
                                     PIC S9(004) PACKED-DECIMAL.
           03  ‚c‚R‚P|‰c‹ÆƒRƒƒ“ƒg—“‚S
                                     PIC  X(080).
           03  ‚c‚R‚P|V‹Kæ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|e–§æ‹æ•ª    PIC  X(001).
           03  ‚c‚R‚P|à–±•”‹à—˜    PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ˆê”Ê‘O“n‹à‹à—˜
                                     PIC S9(002)V9(008) PACKED-DECIMAL.
           03  ‚c‚R‚P|ŒˆÙƒ‰ƒ“ƒN    PIC  X(001).
           03  ‚c‚R‚P|‚¨—çó”­sƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|ˆÚsƒtƒ‰ƒO    PIC  X(001).
           03  ‚c‚R‚P|ÄƒŠ[ƒX\¿ðŒ‹æ•ª
                                     PIC  X(002).
           03  ‚c‚R‚P|–â‚¢‡‚í‚¹’S“–•”“XƒR[ƒh
                                     PIC  X(004).
           03  ‚c‚R‚P|–â‚¢‡‚í‚¹’S“–ŽÒ–¼
                                     PIC  X(020).
           03  ‚c‚R‚P|ÄƒŠ[ƒX—¿Žx•¥—\’è“ú
                                     PIC  X(008).
           03  ‚c‚R‚P|–ž—¹’Ê’m‘‰ñ“šŠúŒÀ
                                     PIC  X(008).
           03  ‚c‚R‚P|\¿‹æ•ª      PIC  X(001).
           03  ‚c‚R‚P|“à—e\¿‘ˆóü‰ñ”
                                     PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚R‚P|“à—e\¿‘ˆóüÏƒtƒ‰ƒO
                                     PIC  X(001).
           03  ‚c‚R‚P|Œ_–ñŒ–¼Ž©“®“o˜^‹æ•ª
                                     PIC  X(001).
           03  ‚c‚R‚P|•ÔÏŒ´Ž‘      PIC  X(080).
           03  ‚c‚R‚P|”Û”Fˆ—‹æ•ª  PIC  X(001).
           03  ‚c‚R‚P|‰ð–ñ——R      PIC  X(002).
           03  ‚c‚R‚P|—¬“®‰»æŒ_–ñæƒR[ƒh
                                     PIC  X(005).
000470     
      *    EXEC  SQL  INCLUDE  D05GKO.CBL            END-EXEC.
000480*
000490*--< ”Ä—p¿‹‚c‚a>                                                  
      *****************************************************************
      *   ŽóŽæŒûÀƒ}ƒXƒ^(D05GKO_TBL)
      *****************************************************************
       01  ŽóŽæŒûÀƒ}ƒXƒ^.
           03  ‚c‚O‚T|‹âs’ZkƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚O‚T|‹âsƒR[ƒh    PIC  X(004).
           03  ‚c‚O‚T|Žx“XƒR[ƒh    PIC  X(003).
           03  ‚c‚O‚T|—a‹àŽí—Þ      PIC  X(001).
           03  ‚c‚O‚T|ŒûÀ”Ô†      PIC  X(010).
           03  ‚c‚O‚T|‹âs–¼        PIC  X(040).
           03  ‚c‚O‚T|Žx“X–¼        PIC  X(040).
           03  ‚c‚O‚T|–¼‹`l        PIC  X(030).
           03  ‚c‚O‚T|XV“úŽž      PIC  X(016).
           03  ‚c‚O‚T|XVŽÒ        PIC  X(008).
           03  ‚c‚O‚T|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
           03  ‚c‚O‚T|•”‰ÛƒR[ƒh    PIC  X(004).
           03  ‚c‚O‚T|‹âs˜A”Ô      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚O‚T|¿‹‹æ•ªŽ¯•Ê  PIC  X(001).
           03  ‚c‚O‚T|“K—p”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚T|‹âsŽx“X–¼    PIC  X(040).
           03  ‚c‚O‚T|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚T|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚O‚T|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚O‚T|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚O‚T|XVŽžŠÔ      PIC  X(008).
000500     
      *    EXEC  SQL  INCLUDE  D40HSQ.CBL            END-EXEC.
000510*
000520*--< ‹¤’Ê>                                                  
      *****************************************************************
      *   ”Ä—p¿‹(D40HSQ_TBL)
      *****************************************************************
       01  ”Ä—p¿‹.
           03  ‚c‚S‚O|ŽæˆøæƒR[ƒh  PIC  X(009).
           03  ‚c‚S‚O|¿‹æƒR[ƒh  PIC  X(005).
           03  ‚c‚S‚O|Œ_–ñ”Ô†      PIC  X(010).
           03  ‚c‚S‚O|ÄƒŠ[ƒX‰ñ”  PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚S‚O|Œ_–ñŽí—Þ      PIC  X(003).
           03  ‚c‚S‚O|˜A”Ô          PIC S9(006) PACKED-DECIMAL.
           03  ‚c‚S‚O|¿‹‰ñ”      PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚O|¿‹ŠÔŠu      PIC S9(002) PACKED-DECIMAL.
           03  ‚c‚S‚O|‰ñŽû•û–@      PIC  X(001).
           03  ‚c‚S‚O|¿‹”NŒŽ“ú    PIC  X(008).
           03  ‚c‚S‚O|¿‹‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚O|¿‹Á”ïÅ    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚O|Áž”NŒŽ“ú    PIC  X(008).
           03  ‚c‚S‚O|Áž’Ê”Ô      PIC  X(011).
           03  ‚c‚S‚O|‰ñŽû—\’è“ú    PIC  X(008).
           03  ‚c‚S‚O|‰ñŽû”NŒŽ“ú    PIC  X(008).
           03  ‚c‚S‚O|‰ñŽû‹àŠz      PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚O|‰ñŽûÁ”ïÅ    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚O|–¢‰ñŽû‹àŠz    PIC S9(013) PACKED-DECIMAL.
           03  ‚c‚S‚O|‰‰ñ“ü‹à“ú    PIC  X(008).
           03  ‚c‚S‚O|¿‹“à–óƒR[ƒh
                                     PIC  X(003).
           03  ‚c‚S‚O|•”‰ÛƒR[ƒh    PIC  X(004).
           03  ‚c‚S‚O|’·’Z‹æ•ª      PIC  X(001).
           03  ‚c‚S‚O|‹âs’ZkƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚S‚O|Á”ïÅƒR[ƒh  PIC  X(002).
           03  ‚c‚S‚O|Á”ïÅ’¥Žû‹æ•ª
                                     PIC  X(001).
           03  ‚c‚S‚O|Š¨’èˆ—ƒR[ƒh
                                     PIC  X(002).
           03  ‚c‚S‚O|‘¿‹‰ñ”    PIC S9(003) PACKED-DECIMAL.
           03  ‚c‚S‚O|“o˜^”NŒŽ“ú    PIC  X(008).
           03  ‚c‚S‚O|“o˜^ŽžŠÔ      PIC  X(008).
           03  ‚c‚S‚O|“o˜^’S“–ŽÒ    PIC  X(008).
           03  ‚c‚S‚O|XV”NŒŽ“ú    PIC  X(008).
           03  ‚c‚S‚O|XVŽžŠÔ      PIC  X(008).
           03  ‚c‚S‚O|XVŽÒ        PIC  X(008).
           03  ‚c‚S‚O|“ü—Í’S“–ŽÒƒR[ƒh
                                     PIC  X(008).
000530     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
000540*
000550*--< ‹¤’Ê>                                                  
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
000560     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
000570*
000580*--< ‹¤’Ê>                                                  
000010************************************************
000020* Œ_–ñŽí—Þ“™•ÏŠ·ƒe[ƒuƒ‹(IKOTBL002)
000030************************************************
000040 01  ‚h‚j‚n‚O‚O‚Q|Œ_–ñ‚m‚n PIC  X(009).
000050 01  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000060 01  ‚h‚j‚n‚O‚O‚Q|‹ŒÂŒ Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000070 01  ‚h‚j‚n‚O‚O‚Q|‹ŒÂ–±Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000080 01  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ” PIC S9(002) COMP-3.
000090 01  ‚h‚j‚n‚O‚O‚Q|ÂŒ Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000100 01  ‚h‚j‚n‚O‚O‚Q|Â–±Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000110 01  ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ PIC  X(003).
000120 01  ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª PIC  X(001).
000130 01  ‚h‚j‚n‚O‚O‚Q|‰ñŽûŽè‡ PIC  X(001).
000590     
      *    EXEC  SQL  INCLUDE  IKOTBL005.CBL         END-EXEC.
000600
000610*          
000010************************************************
000020* ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹(IKOTBL005)
000030************************************************
000040 01  ‚h‚j‚n‚O‚O‚T|Œ»¿‹“à–óƒR[ƒh PIC  X(003).
000050 01  ‚h‚j‚n‚O‚O‚T|ƒAƒNƒZƒX‹æ•ª PIC  X(001).
000060 01  ‚h‚j‚n‚O‚O‚T|Š¨’èˆ—ƒR[ƒh PIC  X(002).
000070 01  ‚h‚j‚n‚O‚O‚T|Á”ïÅƒR[ƒh PIC  X(002).
000080 01  ‚h‚j‚n‚O‚O‚T|’¥Žû’·’Z‹æ•ª PIC S9(001) COMP-3.
000090 01  ‚h‚j‚n‚O‚O‚T|Žè”—¿¿‹ƒR[ƒh PIC  X(002).
000100 01  ‚h‚j‚n‚O‚O‚T|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000110 01  ‚h‚j‚n‚O‚O‚T|Œvã‹æ•ª PIC S9(001) COMP-3.
000120 01  ‚h‚j‚n‚O‚O‚T|‹æ•ª‚P PIC S9(001) COMP-3.
000130 01  ‚h‚j‚n‚O‚O‚T|Â‹¦ã‚PŒ… PIC  X(001).
000140 01  ‚h‚j‚n‚O‚O‚T|‹æ•ª‚Q PIC  X(001).
000150 01  ‚h‚j‚n‚O‚O‚T|Œ_–ñŽí—Þã‚PŒ… PIC S9(001) COMP-3.
000160 01  ‚h‚j‚n‚O‚O‚T|V¿‹“à–óƒR[ƒh PIC  X(003).
000170 01  ‚h‚j‚n‚O‚O‚T|V¿‹“à–óƒR[ƒh‚Q PIC  X(003).
000620     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000630*                                                                 
000640*----------------------------------------------------------------*
000650*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
000660*----------------------------------------------------------------*
000661 01  ‚v‚n‚q‚j[ƒGƒŠƒA.
000662   03  ‚v‚r[‚k‚s‚q‚r‚j‚l|‹âs‚b‚c   PIC  X(07).
000664   03  ‚v‚r[Áž˜A”Ô                 PIC  X(11).
000665   03  ‚v‚r[Áž˜A”Ô”N               PIC  X(2).
000666   03  ‚v‚r[Áž˜A”ÔŒŽ“ú             PIC  X(4).
000667   03  ‚v‚r[Áž˜A”Ô˜A               PIC  X(5).
000668   03  ‚v‚r[‹âsƒR[ƒh               PIC  X(04).
000669   03  ‚v‚r[Žx“XƒR[ƒh               PIC  X(03).
000670   03  ‚v‚r[Áž‹àŠz                   PIC S9(13).
000671   03  ‚v‚r[˜A”Ô                       PIC S9(06) .
000672*
000674   03  ‚v‚r[¿‹”NŒŽ“ú               PIC  X(08).            
000675   03  ‚v‚r[Áž”NŒŽ“ú               PIC  X(08).
000680
000683   03 ‚v‚r[Áž“ú                     PIC  X(02). 
000684   03 ‚v‚r[‰ñŽû‹àŠz                   PIC S9(13).
000685   03 ‚v‚r[‰ñŽûÁ”ïÅ                 PIC S9(13).
000686   03 ‚v‚r[–¢‰ñŽû‹àŠz                 PIC S9(13).
000687   03 ‚n‚k‚c[ŽæˆøæƒR[ƒh             PIC  X(09).
000688   03 ‚n‚k‚c[¿‹æƒR[ƒh             PIC  X(05).                                                   
000689*                                                                 
000690*                                                                 
000890*--< ƒGƒ‰[”»’è—p >                                               
000900     03  ‚v[ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
000910*                                                                 
000920*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
000930     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
000940         05  ‚v[I—¹[ƒtƒ‰ƒO         PIC  X(01).                 
000950         05  ‚v[ˆÙíI—¹[ƒtƒ‰ƒO     PIC  X(01).                 
000960*                                                                 
000970*--< Œ”ƒGƒŠƒA >                                                 
000980     03  Œ”ƒGƒŠƒA.                                              
000990         05  ‚v[“ü—Í[Œ”           PIC  9(09).                 
001000         05  ‚v[o—Í[Œ”           PIC  9(09).                 
001010*                                                                 
001250*--< ‹¤’Êî•ñ >                                                   
001260 01  ‚v[‹¤’Êî•ñ.                                                
001270     03  ‚v[ƒVƒXƒeƒ€“ú•t.                                        
001280         05  ‚v[¢‹I                 PIC  X(02) VALUE  "20".     
001290         05  ‚v[”NŒŽ“ú               PIC  X(06).                 
001300     03  ‚v[ƒVƒXƒeƒ€Žž             PIC  X(08).                 
001310     03  ‚v[’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
001320*                                                                 
001330*----------------------------------------------------------------*
001340*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001350*----------------------------------------------------------------*
001360 01  CALL-AREA.                                                   
001370*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001380     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001390     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001400*                                                                 
001410*----------------------------------------------------------------*
001420*    ‚b‚n‚o‚x—Ìˆæ                                                *
001430*----------------------------------------------------------------*
001440*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001450 01  IF-CHOCO001.                                                 
001460     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P[==.           
001470*                                                                 
001480*----------------------------------------------------------------*
001490*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001500*----------------------------------------------------------------*
001510 01  PARA-AREA.                                                   
001520     COPY CPBCO001.                                               
001530******************************************************************
001540*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001550******************************************************************
001560 CONSTANT                             SECTION.                    
001570 01  ’è”—Ìˆæ.                                                    
001580     03  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS430".
001590     03  ’è”[ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001600                                      VALUE  "”Ä—p¿‹ƒe[ƒuƒ‹".        
001610     03  ’è”[‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001620     03  ’è”[‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001630     03  ’è”[³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001640     03  ’è”[ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001650******************************************************************
001660*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001670******************************************************************
001680 PROCEDURE                            DIVISION.                   
001690*                                                                 
001700     PERFORM  ‰Šúˆ—.                                           
001710*                                                                 
001720     PERFORM  Žåˆ—  UNTIL  ‚v[I—¹[ƒtƒ‰ƒO  =  "Y".            
001730*                                                                 
001740     PERFORM  I—¹ˆ—.                                           
001750*                                                                 
001760     STOP     RUN.                                                
001770*                                                                 
001780******************************************************************
001790*    ‰Šúˆ—                                                    *
001800******************************************************************
001810 ‰Šúˆ—                             SECTION.                    
001820 ‰Šúˆ—[‚r‚s‚`‚q‚s.                                            
001830*                                                                 
001840*----------------------------------------------------------------*
001850*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
001860*----------------------------------------------------------------*
001870     INITIALIZE                       IF-CHOCO001.                
001880     MOVE  "3"                        TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê.     
001890     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P[ƒ\[ƒX‚h‚c.       
001900     MOVE  "0"                        TO  ‹¤‚P[•œ‹AƒR[ƒh.       
001910     MOVE  "START"                    TO  ‹¤‚P[ˆ—Ž¯•Ê.         
001920     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
001930     CALL  CLOCO001                USING  IF-CHOCO001.            
001940*                                                                 
001950*----------------------------------------------------------------*
001960*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
001970*----------------------------------------------------------------*
001980     MOVE  SPACE                      TO  ‚v‚n‚q‚j[ƒGƒŠƒA.       
001990     INITIALIZE                           ‚v‚n‚q‚j[ƒGƒŠƒA.       
002020*                                                                 
002030*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
002040     ACCEPT  ‚v[”NŒŽ“ú               FROM  DATE.                 
002050*                                                                 
002060*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
002070     ACCEPT  ‚v[ƒVƒXƒeƒ€Žž         FROM  TIME.                 
002080*                                                                 
002090*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
002100     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
002110*                                                                 
002120*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹` >                                   
002130     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`.                           
002140*                                                                 
002150*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž(‚PŒ–Ú) >                           
002160     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
002170*                                                                 
002180 ‰Šúˆ—[‚d‚w‚h‚s.                                              
002190     EXIT.                                                        
002200******************************************************************
002210*    ‚n‚q‚`‚b‚k‚dÚ‘±                                            *
002220******************************************************************
002230 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002240 ‚n‚q‚`‚b‚k‚dÚ‘±[‚r‚s‚`‚q‚s.                                    
002250*                                                                 
002260*--< ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“ŒÄ‚Ño‚µ >                     
002270     CALL  COBCO001                USING  PARA-AREA.              
002280*                                                                 
002290     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002300     MOVE  PARA-USERNAME              TO  USERNAME.               
002310     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002320*                                                                 
002330*----------------------------------------------------------------*
002340*    ŠJŽnÚ‘±                                                    *
002350*----------------------------------------------------------------*
002360     IF  DB-STRING  =  SPACE                                      
002370        
      *       EXEC  SQL                                                 
002380*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002390*       END-EXEC 
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
002400     ELSE                                                         
002410        
      *       EXEC  SQL                                                 
002420*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
002430*            USING  :DB-STRING                                    
002440*       END-EXEC 
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
002450     END-IF.                                                      
002460*                                                                 
002470*----------------------------------------------------------------*
002480*    Ú‘±ó‘Ô”»’è                                                *
002490*----------------------------------------------------------------*
002500     EVALUATE  SQLCODE                                            
002510        WHEN  ’è”[‚r‚p‚k‚n‚j                                    
002520*--<       Ú‘±³í >                                             
002530           CONTINUE                                               
002540        WHEN  OTHER                                               
002550*--<       Ú‘±ƒGƒ‰[ >                                           
002560           MOVE     -1                TO  ‚v[ƒGƒ‰[ƒR[ƒh        
002570           PERFORM  ƒGƒ‰[ˆ—                                    
002580     END-EVALUATE.                                                
002590*                                                                 
002600 ‚n‚q‚`‚b‚k‚dÚ‘±[‚d‚w‚h‚s.                                      
002610     EXIT.                                                        
002620******************************************************************
002630*        Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`                                *
002640******************************************************************
002650 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`             SECTION.                    
002660 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`[‚r‚s‚`‚q‚s. 
002670*
002680     
      *    EXEC SQL                                                     
002690*       DECLARE CUR1  CURSOR FOR                                  
002700*          SELECT  LTRSKM.‚j‚d‚x€–Ú¿‹æƒR[ƒh                             
002710*                 ,LTRSKM.Œ_–ñ”Ô†                         
002720*                 ,LTRSKM.ÄƒŠ[ƒXƒR[ƒh    
002730*                 ,LTRSKM.Š¨’èˆ—ƒR[ƒh                         
002740*                 ,LTRSKM.[“–‰ñ”
002750*                 ,LTRSKM.Œ_–ñ”Ô†                      
002760*                 ,D31KYK_TBL.Œ_–ñ”Ô†
002770*                 ,D31KYK_TBL.ÄƒŠ[ƒX‰ñ”
002780*                 ,D31KYK_TBL.ÄƒŠ[ƒX¿‹ŠÔŠu       
002790*                 ,LTRSKM.‰ñŽû•ûŽ®
002791*                 ,LTRSKM.¿‹”­s“úQ¢‹I    
002800*                 ,LTRSKM.¿‹”­s“úQ”NŒŽ“ú     
002810*                 ,LTRSKM.¿‹‹àŠz     
002820*                 ,LTRSKM.Á”ïÅQ‹àŠz
002830*                 ,LTRSKM.Áž“úQ¢‹I 
002840*                 ,LTRSKM.Áž“úQ”NŒŽ“ú
002850*                  ,LTRSKM.ÄƒŠ[ƒX‰ñ”    
002860*                 ,LTRSKM.Áž’Ê”Ô     
002870*                 ,LTRSKM.“ü‹à—\’è“ú    
002880*                 ,LTRSKM.Áž‹àŠz   
002890*                 ,LTRSKM.¿‹‹àŠz     
002900*                 ,LTRSKM.¿‹“à–óƒR[ƒh    
002910*                 ,LTRSKM.Ž–‹ÆŠƒR[ƒh    
002920*                 ,LTRSKM.’·’Z‹æ•ª    
002930*                 ,LTRSKM.‹âs‚b‚c
002931*                 ,D05GKO_TBL.‹âs’ZkƒR[ƒh
002940*                 ,D05GKO_TBL.‹âsƒR[ƒh
002950*                 ,D05GKO_TBL.Žx“XƒR[ƒh
002951*                 
002960*                 ,LTRSKM.Á”ïÅQÁ”ïÅƒR[ƒh    
002970*                 ,LTRSKM.Á”ïÅQ’¥Žû‹æ•ª   
002980*                 ,LTRSKM.‘Žx•¥‰ñ”
002990*                 ,LTRSKM.‹¤’Êî•ñ
003000*            FROM  LTRSKM
003010*                 ,D31KYK_TBL                    
003020*                 ,D05GKO_TBL
003030*           WHERE  LTRSKM.“à•”“ü‹à‹æ•ª       =  2
003031*             AND  SUBSTR (LTRSKM.¿‹“à–óƒR[ƒh,1,1) = 'G'
003032*             OR   SUBSTR (LTRSKM.¿‹“à–óƒR[ƒh,1,1) = 'Y'                
003040*             AND  LTRSKM.Áž’Ê”Ô = 0                          
003050*    END-EXEC.
003060*                                                                 
003070*----------------------------------------------------------------*
003080*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003090*----------------------------------------------------------------*
003100     
      *    EXEC  SQL                                                    
003110*       OPEN  CUR1                                                
003120*    END-EXEC.
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
003130*                                                                 
003140*----------------------------------------------------------------*
003150*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003160*----------------------------------------------------------------*
003170     EVALUATE  SQLCODE                                            
003180        WHEN  ’è”[‚r‚p‚k‚n‚j                                    
003190*--<       ³í >                                                 
003200           CONTINUE                                               
003210        WHEN  OTHER                                               
003220*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003230           MOVE -20                   TO  ‚v[ƒGƒ‰[ƒR[ƒh        
003240           PERFORM  ƒGƒ‰[ˆ—                                
003250     END-EVALUATE.                                                
003260*                                                                 
003270 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹’è‹`[‚d‚w‚h‚s.                              
003280     EXIT.                                                        
003290******************************************************************
003300*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž                                    *
003310******************************************************************
003320 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž             SECTION.                    
003330 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž[‚r‚s‚`‚q‚s.                            
003340*                                                                 
003350*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                                   
003360     
      *    EXEC SQL                                                     
003370*        FETCH  CUR1                                              
003380*         INTO      ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh              
003390*                 ,:‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†                         
003400*                 ,:‚k‚s‚q‚r‚j‚l|ÄƒŠ[ƒXƒR[ƒh  
003410*                 ,:‚k‚s‚q‚r‚j‚l|Š¨’èˆ—ƒR[ƒh                         
003420*                 ,:‚k‚s‚q‚r‚j‚l|[“–‰ñ”
003430*                 ,:‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†                      
003440*                 ,:‚c‚R‚P|Œ_–ñ”Ô†
003450*                 ,:‚c‚R‚P|ÄƒŠ[ƒX‰ñ”
003460*                 ,:‚c‚R‚P|ÄƒŠ[ƒX¿‹ŠÔŠu
003470*                 ,:‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ®
003471*                 ,:‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|¢‹I    
003480*                 ,:‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|”NŒŽ“ú     
003490*                 ,:‚k‚s‚q‚r‚j‚l|¿‹‹àŠz     
003500*                 ,:‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz
003510*                 ,:‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I 
003520*                 ,:‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú
003530*                 ,:‚k‚s‚q‚r‚j‚l|ÄƒŠ[ƒX‰ñ”    
003540*                 ,:‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô     
003550*                 ,:‚k‚s‚q‚r‚j‚l|“ü‹à—\’è“ú    
003560*                 ,:‚k‚s‚q‚r‚j‚l|Áž‹àŠz   
003570*                 ,:‚k‚s‚q‚r‚j‚l|¿‹‹àŠz     
003580*                 ,:‚k‚s‚q‚r‚j‚l|¿‹“à–óƒR[ƒh    
003590*                 ,:‚k‚s‚q‚r‚j‚l|Ž–‹ÆŠƒR[ƒh    
003600*                 ,:‚k‚s‚q‚r‚j‚l|’·’Z‹æ•ª    
003610*                 ,:‚k‚s‚q‚r‚j‚l|‹âs‚b‚c
003611*                 ,:‚c‚O‚T|‹âs’ZkƒR[ƒh
003620*                 ,:‚c‚O‚T|‹âsƒR[ƒh
003630*                 ,:‚c‚O‚T|Žx“XƒR[ƒh                  
003640*                 ,:‚k‚s‚q‚r‚j‚l|Á”ïÅ|Á”ïÅƒR[ƒh    
003650*                 ,:‚k‚s‚q‚r‚j‚l|Á”ïÅ|’¥Žû‹æ•ª   
003660*                 ,:‚k‚s‚q‚r‚j‚l|‘Žx•¥‰ñ”
003670*                 ,:‚k‚s‚q‚r‚j‚l|‹¤’Êî•ñ
003680*          END-EXEC.
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
               ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 8 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Š¨’èˆ—ƒR[ƒh
               SQL-SQHSTV(4)
           MOVE 2 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|[“–‰ñ”
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†
               SQL-SQHSTV(6)
           MOVE 9 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚c‚R‚P|Œ_–ñ”Ô† IN
               Œ_–ñ“à—e
               SQL-SQHSTV(7)
           MOVE 10 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚c‚R‚P|ÄƒŠ[ƒX‰ñ” IN
               Œ_–ñ“à—e
               SQL-SQHSTV(8)
           MOVE 2 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚c‚R‚P|ÄƒŠ[ƒX¿‹ŠÔŠu IN
               Œ_–ñ“à—e
               SQL-SQHSTV(9)
           MOVE 2 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ®
               SQL-SQHSTV(10)
           MOVE 1 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|¢‹I
               SQL-SQHSTV(11)
           MOVE 1 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|”NŒŽ“ú
               SQL-SQHSTV(12)
           MOVE 6 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|¿‹‹àŠz
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz
               SQL-SQHSTV(14)
           MOVE 7 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú
               SQL-SQHSTV(16)
           MOVE 6 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô
               SQL-SQHSTV(17)
           MOVE 5 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|“ü‹à—\’è“ú
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Áž‹àŠz
               SQL-SQHSTV(19)
           MOVE 7 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|¿‹‹àŠz
               SQL-SQHSTV(20)
           MOVE 7 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|¿‹“à–óƒR[ƒh
               SQL-SQHSTV(21)
           MOVE 3 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Ž–‹ÆŠƒR[ƒh
               SQL-SQHSTV(22)
           MOVE 3 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|’·’Z‹æ•ª
               SQL-SQHSTV(23)
           MOVE 1 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|‹âs‚b‚c
               SQL-SQHSTV(24)
           MOVE 4 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               ‚c‚O‚T|‹âs’ZkƒR[ƒh IN
               ŽóŽæŒûÀƒ}ƒXƒ^
               SQL-SQHSTV(25)
           MOVE 2 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               ‚c‚O‚T|‹âsƒR[ƒh IN
               ŽóŽæŒûÀƒ}ƒXƒ^
               SQL-SQHSTV(26)
           MOVE 4 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               ‚c‚O‚T|Žx“XƒR[ƒh IN
               ŽóŽæŒûÀƒ}ƒXƒ^
               SQL-SQHSTV(27)
           MOVE 3 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Á”ïÅ|Á”ïÅƒR[ƒh
               SQL-SQHSTV(28)
           MOVE 2 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Á”ïÅ|’¥Žû‹æ•ª
               SQL-SQHSTV(29)
           MOVE 1 TO SQL-SQHSTL(29)
           MOVE 0 TO SQL-SQHSTS(29)
           MOVE 0 TO SQL-SQINDV(29)
           MOVE 0 TO SQL-SQINDS(29)
           MOVE 0 TO SQL-SQHARM(29)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|‘Žx•¥‰ñ”
               SQL-SQHSTV(30)
           MOVE 2 TO SQL-SQHSTL(30)
           MOVE 0 TO SQL-SQHSTS(30)
           MOVE 0 TO SQL-SQINDV(30)
           MOVE 0 TO SQL-SQINDS(30)
           MOVE 0 TO SQL-SQHARM(30)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|‹¤’Êî•ñ
               SQL-SQHSTV(31)
           MOVE 35 TO SQL-SQHSTL(31)
           MOVE 0 TO SQL-SQHSTS(31)
           MOVE 0 TO SQL-SQINDV(31)
           MOVE 0 TO SQL-SQINDS(31)
           MOVE 0 TO SQL-SQHARM(31)
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
003690*                                                                 
003700*----------------------------------------------------------------*
003710*    Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž‚ðŠm”F                              *
003720*----------------------------------------------------------------*
003730*
003740     EVALUATE   SQLCODE                                           
003750        WHEN   ’è”[‚r‚p‚k‚n‚j                                   
003760*--<       ³í > 
003850           CONTINUE                                                        
003860           COMPUTE  ‚v[“ü—Í[Œ”  =  ‚v[“ü—Í[Œ”  +  1       
003870        WHEN   ’è”[‚r‚p‚k‚d‚m‚c                                 
003880*--<       “ÇžI—¹ >                                             
003890           MOVE  "Y"                  TO  ‚v[I—¹[ƒtƒ‰ƒO        
003900        WHEN   OTHER                                              
003910*--<       “ÇžƒGƒ‰[ >                                           
003920           MOVE     -30               TO  ‚v[ƒGƒ‰[ƒR[ƒh        
003930           PERFORM  ƒGƒ‰[ˆ—                                
003940     END-EVALUATE.                                                
003950*                                                                 
003960 Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž[‚d‚w‚h‚s.                              
003970     EXIT.                                                        
003980******************************************************************
003990*    Žåˆ—                                                      *
004000******************************************************************
004010 Žåˆ—                               SECTION.                    
004020 Žåˆ—[‚r‚s‚`‚q‚s.                                              
004030*                                                                 
004040     PERFORM  •ÒWo—Íˆ—.                                       
004050*                                                                 
004080*                                                                 
004090*     IF  ‚v[I—¹[ƒtƒ‰ƒO  =  "Y"                                 
004100*--<    “ü—Íƒf[ƒ^I‚í‚éŽžÅŒão—Íˆ— >                          
004110     PERFORM  o—Íˆ—.                                         
004111*--< Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çži‚QŒ–ÚˆÈ~j >                     
004112     PERFORM  Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž.                           
004120*     END-IF.                                                      
004130*                                                                 
004140 Žåˆ—[‚d‚w‚h‚s.                                                
004150     EXIT.                                                        
004160******************************************************************
004170*     •ÒWo—Íˆ—                                               *
004180******************************************************************
004190 •ÒWo—Íˆ—                         SECTION.                    
004200 •ÒWo—Íˆ—[‚r‚s‚`‚q‚s.
004210*                                                                 
004510*--<    No.01 >
004520        PERFORM •ÏŠ·ˆ—‚P.                                       
004530        MOVE  ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh 
004540                                      TO  ‚c‚S‚O|ŽæˆøæƒR[ƒh.        
004550*                                                                 
004560*--<    No.02 >
004570        PERFORM •ÏŠ·ˆ—‚Q.                                           
004580        MOVE  ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh  
004590                                      TO  ‚c‚S‚O|¿‹æƒR[ƒh.    
004600                                                                  
004610*--<    No.03 >
004620        PERFORM ˜A”Ôˆ—.                                                   
004630        MOVE ‚v‚r[˜A”Ô               TO  ‚c‚S‚O|˜A”Ô.  
004640*                                                                
004650*--<    No.04 >                                                   
004660        MOVE  ‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†  TO  ‚c‚S‚O|Œ_–ñ”Ô†.          
004670*                                                                 
004680*--<    No.05 >
004690        PERFORM             ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—.                                                   
004700        MOVE  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”    
004710                                      TO  ‚c‚S‚O|ÄƒŠ[ƒX‰ñ”.                                                 
004720*                                                                 
004730*--<    No.06 >
004740        PERFORM             ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—.                                                   
004750        MOVE  ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ          
004760                                      TO  ‚c‚S‚O|Œ_–ñŽí—Þ.        
004770*                                                                 
004780*--<    No.07 >                                                   
004790        MOVE  ‚k‚s‚q‚r‚j‚l|[“–‰ñ”  TO  ‚c‚S‚O|¿‹‰ñ”.        
004800*                                                                 
004810*--<    No.08 > 
004820        PERFORM  ¿‹ŠÔŠuˆ—.                                                  
004830        MOVE  ‚c‚R‚P|¿‹ŠÔŠu        TO  ‚c‚S‚O|¿‹ŠÔŠu.         
004840*                                                                 
004850*--<    No.09 >
004860        PERFORM  ‰ñŽû•û–@ˆ—.                                                  
004870        MOVE  ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ®  TO  ‚c‚S‚O|‰ñŽû•û–@.           
004880*                                                                 
004890*--<    No.10 >
004900        PERFORM  ¿‹”NŒŽ“úˆ—.                                                  
004910        MOVE  ‚v‚r[¿‹”NŒŽ“ú        TO  ‚c‚S‚O|¿‹”NŒŽ“ú.      
004920*                                                                 
004930*--<    No.11 >
004940        COMPUTE   ‚c‚S‚O|¿‹‹àŠz =
004950               ‚k‚s‚q‚r‚j‚l|¿‹‹àŠz -
004960                                 ‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz.
004970*                                                                 
004980*--<    No.12 >
004990        MOVE  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz           
005000                                      TO  ‚c‚S‚O|¿‹Á”ïÅ.           
005010*                                                                 
005020*--<    No.13 >                                                   
005030        PERFORM  Áž”NŒŽ“úˆ—.                                                  
005040        MOVE   ‚v‚r[Áž”NŒŽ“ú       TO  ‚c‚S‚O|Áž”NŒŽ“ú.
005050*                                                                 
005060*--<    No.14 >
005070        PERFORM  Áž’Ê”Ôˆ—.                                                  
005080        MOVE     ‚v‚r[Áž˜A”Ô      TO  ‚c‚S‚O|Áž’Ê”Ô.       
005090*                                                                 
005100*--<    No.15 >                                                   
005110        MOVE  ‚k‚s‚q‚r‚j‚l|“ü‹à—\’è“ú
005120                                      TO  ‚c‚S‚O|‰ñŽû—\’è“ú.         
005130*                                                                 
005140*--<    No.16 >                                                   
005150        PERFORM  Áž”NŒŽ“úˆ—.                                    
005160        MOVE  ‚v‚r[Áž”NŒŽ“ú        TO  ‚c‚S‚O|‰ñŽû”NŒŽ“ú.      
005170*
005180*--<    No.17 >
005190        PERFORM ‰ñŽû‹àŠzˆ—.                                                  
005200        MOVE  ‚v‚r[‰ñŽû‹àŠz          TO  ‚c‚S‚O|‰ñŽû‹àŠz.    
005210*
005220*--<    No.18 >
005230        PERFORM ‰ñŽûÁ”ïÅˆ—.                                                   
005240        MOVE  ‚v‚r[‰ñŽûÁ”ïÅ        TO  ‚c‚S‚O|‰ñŽûÁ”ïÅ.     
005250                                           
005260*
005270*--<    No.19 >
005280        COMPUTE  ‚c‚S‚O|–¢‰ñŽû‹àŠz   =  ‚c‚S‚O|¿‹‹àŠz
005290                                      +  ‚c‚S‚O|¿‹‹àŠz
005300                                      -  ‚c‚S‚O|‰ñŽû‹àŠz
005310                                      -  ‚c‚S‚O|‰ñŽûÁ”ïÅ.
005320*
005330*--<    No.20 >                                                   
005340        MOVE  ‚v‚r[Áž“ú            TO  ‚c‚S‚O|‰‰ñ“ü‹à“ú.      
005350*
005360*--<    No.21 >
005370        PERFORM ¿‹“à–óƒR[ƒhˆ—.                                                   
005380        MOVE  ‚h‚j‚n‚O‚O‚T|V¿‹“à–óƒR[ƒh              
005390                                      TO  ‚c‚S‚O|¿‹“à–óƒR[ƒh.  
005400*
005410*--<    No.22 >                                                   
005420        MOVE  ‚k‚s‚q‚r‚j‚l|Ž–‹ÆŠƒR[ƒh              
005430                                      TO ‚c‚S‚O|•”‰ÛƒR[ƒh.  
005440*
005450*--<    No.23 >                                                   
005460        MOVE  ‚k‚s‚q‚r‚j‚l|’·’Z‹æ•ª  TO ‚c‚S‚O|’·’Z‹æ•ª.     
005470*
005480*--<    No.24 >
005490        PERFORM ‹âs’ZkƒR[ƒhˆ—                                                    
005500        MOVE  ‚c‚O‚T|‹âs’ZkƒR[ƒh   TO  ‚c‚S‚O|‹âs’ZkƒR[ƒh.  
005510*
005520*--<    No.25 >                                                   
005530        MOVE  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|Á”ïÅƒR[ƒh             
005540                                      TO  ‚c‚S‚O|Á”ïÅƒR[ƒh.
005550*
005560*--<    No.26 >                                                   
005570        MOVE  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|’¥Žû‹æ•ª             
005580                                      TO  ‚c‚S‚O|Á”ïÅ’¥Žû‹æ•ª.      
005590*
005600*--<    No.27 >
005610        PERFORM   ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—.                                                   
005620        MOVE  ‚h‚j‚n‚O‚O‚Q|ÂŒ Š¨’èˆ—ƒR[ƒh              
005630                                      TO  ‚c‚S‚O|Š¨’èˆ—ƒR[ƒh.   
005640*
005650*--<    No.28 >                                                   
005660        MOVE  ‚k‚s‚q‚r‚j‚l|‘Žx•¥‰ñ”             
005670                                      TO  ‚c‚S‚O|‘¿‹‰ñ”.   
005680*
005690*--<    No.29 >                                                   
005700        MOVE  ‚v[ƒVƒXƒeƒ€“ú•t        TO  ‚c‚S‚O|“o˜^”NŒŽ“ú.      
005710*
005720*--<    No.30 >                                                   
005730        MOVE  ‚v[ƒVƒXƒeƒ€Žž        TO  ‚c‚S‚O|“o˜^ŽžŠÔ.      
005740*
005750*--<    No.31 >                                                   
005760        MOVE  ‚v[’S“–ŽÒ              TO  ‚c‚S‚O|“o˜^’S“–ŽÒ.     
005770*
005780*--<    No.32 >                                                   
005790        MOVE  ‚v[ƒVƒXƒeƒ€“ú•t        TO  ‚c‚S‚O|XV”NŒŽ“ú.      
005800*
005810*--<    No.33 >                                                   
005820        MOVE  ‚v[ƒVƒXƒeƒ€Žž        TO  ‚c‚S‚O|XVŽžŠÔ.     
005830*
005840*--<    No.34 >                                                   
005850        MOVE  ‚v[’S“–ŽÒ              TO  ‚c‚S‚O|XVŽÒ.     
005860*
005870*--<    No.35 >                                                   
005880        MOVE  ‚v[’S“–ŽÒ              TO ‚c‚S‚O|“ü—Í’S“–ŽÒƒR[ƒh.      
005890*                                                                
005940*                                                                 
005950  •ÒWo—Íˆ—[‚d‚w‚h‚s.                                          
005960     EXIT.
005970******************************************************************
005980*                 •ÏŠ·ˆ—1                                           *
005990******************************************************************
006000 •ÏŠ·ˆ—‚P                           SECTION.                    
006010 •ÏŠ·ˆ—‚P[‚r‚s‚`‚q‚s.                                          
006020*                                                                 
006030     
      *    EXEC  SQL                                                    
006040*          SELECT  VŽæˆøæƒR[ƒh                                 
006050*            INTO :‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                   
006060*            FROM  IKOTBL001
006070*           WHERE  IKOTBL001.VŽæˆøæƒR[ƒh                          
006080*                           =                           
006090*                           :‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh 
006100*             AND  IKOTBL001.–Ú“I‚b‚c = '3'                       
006110*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 221 TO SQL-OFFSET
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
               ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh
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
006120*                                                                 
006130*----------------------------------------------------------------*
006140*    •ÏŠ·ˆ—‚PŠm”F                                              *
006150*----------------------------------------------------------------*
006160     EVALUATE  SQLCODE                                            
006170        WHEN  ’è”[‚r‚p‚k‚n‚j                                    
006180*--<       ³í >                                                 
006190           CONTINUE                                               
006200        WHEN  OTHER                                               
006210*--<       •ÏŠ·ˆ—‚PƒGƒ‰[ >                                     
006220           MOVE     SPACE             TO                          
006230                                     ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
006240     END-EVALUATE.                                                
006250*                                                                 
006260  •ÏŠ·ˆ—‚P[‚d‚w‚h‚s.                                           
006270     EXIT.
006280******************************************************************
006290*                 •ÏŠ·ˆ—2                                           *
006300******************************************************************
006310 •ÏŠ·ˆ—‚Q                           SECTION.                    
006320 •ÏŠ·ˆ—‚Q[‚r‚s‚`‚q‚s.                                          
006330*                                                                 
006340     
      *    EXEC  SQL                                                    
006350*          SELECT  Ž}”Ô                                 
006360*            INTO :‚h‚j‚n‚O‚O‚P|Ž}”Ô                   
006370*            FROM  IKOTBL001                                      
006380*           WHERE  IKOTBL001.Ž}”Ô                          
006390*                           =                           
006400*                           :‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh 
006410*             AND  IKOTBL001.–Ú“I‚b‚c = '3'                       
006420*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 244 TO SQL-OFFSET
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
               ‚k‚s‚q‚r‚j‚l|‚j‚d‚x€–Ú¿‹æƒR[ƒh
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
006430*                                                                 
006440*----------------------------------------------------------------*
006450*    •ÏŠ·ˆ—‚QŠm”F                                              *
006460*----------------------------------------------------------------*
006470     EVALUATE  SQLCODE                                            
006480        WHEN  ’è”[‚r‚p‚k‚n‚j                                    
006490*--<       ³í >                                                 
006500           CONTINUE                                               
006510        WHEN  OTHER                                               
006520*--<       •ÏŠ·ˆ—‚PƒGƒ‰[ >                                     
006530           MOVE     SPACE             TO                          
006540                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
006550     END-EVALUATE.                                                
006560*                                                                 
006570  •ÏŠ·ˆ—‚Q[‚d‚w‚h‚s.                                           
006580     EXIT.
006590******************************************************************
006600*                  ˜A”Ôˆ—                                      *
006610******************************************************************
006620 ˜A”Ôˆ—                           SECTION.                    
006630 ˜A”Ôˆ—[‚r‚s‚`‚q‚s.
006640         IF  (   ‚c‚S‚O|ŽæˆøæƒR[ƒh   NOT  =  
006650                                             ‚n‚k‚c[ŽæˆøæƒR[ƒh
006660             OR ‚c‚S‚O|¿‹æƒR[ƒh  
006670                                       NOT  =   
006680                                           ‚n‚k‚c[¿‹æƒR[ƒh)
006690                MOVE  1                  TO   ‚v‚r[˜A”Ô
006700          ELSE
006710         COMPUTE    ‚v‚r[˜A”Ô =  ‚v‚r[˜A”Ô  +  1 
006720     END-IF.
006730         MOVE ‚c‚S‚O|ŽæˆøæƒR[ƒh TO  ‚n‚k‚c[ŽæˆøæƒR[ƒh.
006740         MOVE ‚c‚S‚O|¿‹æƒR[ƒh TO  ‚n‚k‚c[¿‹æƒR[ƒh.
006750 ˜A”Ôˆ—[‚d‚w‚h‚s.                                           
006760       EXIT.
006770******************************************************************
006780*                  ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—                      *
006790******************************************************************
006800 ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—                        SECTION.                    
006810 ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—[‚r‚s‚`‚q‚s.
006820*
006830        
      *       EXEC SQL
006840*          SELECT  ÄƒŠ[ƒX‰ñ”
006850*                 ,Œ_–ñŽí—Þ
006860*                 ,ÂŒ Š¨’èˆ—ƒR[ƒh
006870*           INTO  :‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”
006880*                ,:‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ
006890*                ,:‚h‚j‚n‚O‚O‚Q|ÂŒ Š¨’èˆ—ƒR[ƒh
006900*           FROM  IKOTBL002
006910*          WHERE  IKOTBL002.Œ_–ñ‚m‚n    = :‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†      
006920*            AND  IKOTBL002.ÄƒŠ[ƒXƒR[ƒh = 
006930*                                   :‚k‚s‚q‚r‚j‚l|ÄƒŠ[ƒXƒR[ƒh    
006931*            AND  IKOTBL002.ÂŒ Š¨’èˆ—ƒR[ƒh 
006940*                                 = :‚k‚s‚q‚r‚j‚l|Š¨’èˆ—ƒR[ƒh
006950*       END-EXEC.
              CALL "SQLADR" USING SQ0004 SQL-STMT
              MOVE 1 TO SQL-ITERS
              MOVE 267 TO SQL-OFFSET
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
                  ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”
                  SQL-SQHSTV(1)
              MOVE 2 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ
                  SQL-SQHSTV(2)
              MOVE 3 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  ‚h‚j‚n‚O‚O‚Q|ÂŒ Š¨’èˆ—ƒR[ƒh
                  SQL-SQHSTV(3)
              MOVE 2 TO SQL-SQHSTL(3)
              MOVE 0 TO SQL-SQHSTS(3)
              MOVE 0 TO SQL-SQINDV(3)
              MOVE 0 TO SQL-SQINDS(3)
              MOVE 0 TO SQL-SQHARM(3)
              CALL "SQLADR" USING
                  ‚k‚s‚q‚r‚j‚l|Œ_–ñ”Ô†
                  SQL-SQHSTV(4)
              MOVE 9 TO SQL-SQHSTL(4)
              MOVE 0 TO SQL-SQHSTS(4)
              MOVE 0 TO SQL-SQINDV(4)
              MOVE 0 TO SQL-SQINDS(4)
              MOVE 0 TO SQL-SQHARM(4)
              CALL "SQLADR" USING
                  ‚k‚s‚q‚r‚j‚l|ÄƒŠ[ƒXƒR[ƒh
                  SQL-SQHSTV(5)
              MOVE 1 TO SQL-SQHSTL(5)
              MOVE 0 TO SQL-SQHSTS(5)
              MOVE 0 TO SQL-SQINDV(5)
              MOVE 0 TO SQL-SQINDS(5)
              MOVE 0 TO SQL-SQHARM(5)
              CALL "SQLADR" USING
                  ‚k‚s‚q‚r‚j‚l|Š¨’èˆ—ƒR[ƒh
                  SQL-SQHSTV(6)
              MOVE 2 TO SQL-SQHSTL(6)
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
006960*                                                                 
006970 ÄƒŠ[ƒX‰ñ”Œ_–ñŽí—Þˆ—[‚d‚w‚h‚s.                                          
006980        EXIT.                                                  
006990******************************************************************
007000*                 ¿‹ŠÔŠuˆˆ—                                 *
007010******************************************************************
007020 ¿‹ŠÔŠuˆ—                          SECTION.                    
007030 ¿‹ŠÔŠuˆ—[‚r‚s‚`‚q‚s.
007040        
      *       EXEC SQL
007050*          SELECT  ¿‹ŠÔŠu
007060*           INTO  :‚c‚R‚P|¿‹ŠÔŠu
007070*           FROM  D31KYK_TBL
007080*          WHERE  D31KYK_TBL.Œ_–ñ”Ô†      =  :‚c‚S‚O|Œ_–ñ”Ô†        
007090*            AND  D31KYK_TBL.ÄƒŠ[ƒX‰ñ”  =  
007100*                                            :‚c‚S‚O|ÄƒŠ[ƒX‰ñ”
007110*      END-EXEC.
              CALL "SQLADR" USING SQ0005 SQL-STMT
              MOVE 1 TO SQL-ITERS
              MOVE 306 TO SQL-OFFSET
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
                  ‚c‚R‚P|¿‹ŠÔŠu IN
                  Œ_–ñ“à—e
                  SQL-SQHSTV(1)
              MOVE 2 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  ‚c‚S‚O|Œ_–ñ”Ô† IN
                  ”Ä—p¿‹
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  ‚c‚S‚O|ÄƒŠ[ƒX‰ñ” IN
                  ”Ä—p¿‹
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
007120*
007130*----------------------------------------------------------------*
007140* ŒŸõˆ—‚ðŠm”F *
007150*----------------------------------------------------------------*
007160          EVALUATE SQLCODE
007170          WHEN ’è”[‚r‚p‚k‚n‚j
007180*--< ³í‚ÌŽž >
007190          CONTINUE
007200          WHEN OTHER
007210*--< Žæ“¾‚µ‚È‚¢A‰Šú’l‚ðƒZƒbƒg >
007220          MOVE ZERO TO  ‚c‚R‚P|¿‹ŠÔŠu
007230          END-EVALUATE.
007250*                                                                 
007260 ¿‹ŠÔŠuˆˆ—[‚d‚w‚h‚s.                                          
007270          EXIT.                                                  
007280******************************************************************
007290*                  ‰ñŽû•û–@                                      *
007300******************************************************************
007310 ‰ñŽû•û–@ˆ—                          SECTION.                    
007320 ‰ñŽû•û–@ˆ—[‚r‚s‚`‚q‚s.
007330        IF ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ® = 1
007340           MOVE ZERO TO  ‚c‚S‚O|‰ñŽû•û–@
007350        IF ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ® = 2
007360           MOVE 5 TO  ‚c‚S‚O|‰ñŽû•û–@ 
007370        IF  ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ® = 3
007380           MOVE 3 TO ‚c‚S‚O|‰ñŽû•û–@
007390        IF ‚k‚s‚q‚r‚j‚l|‰ñŽû•ûŽ® = 4
007400           MOVE 4 TO  ‚c‚S‚O|‰ñŽû•û–@
007410        ELSE 
007420           MOVE ZERO TO  ‚c‚S‚O|‰ñŽû•û–@ 
007430        END-IF.                     
007440*
007450 ‰ñŽû•û–@ˆ—[‚d‚w‚h‚s.                                           
007460     EXIT.
007470
007480******************************************************************
007490*                  ¿‹”NŒŽ“úˆ—                                *
007500******************************************************************
007510 ¿‹”NŒŽ“úˆ—                         SECTION.                    
007520 ¿‹”NŒŽ“úˆ—[‚r‚s‚`‚q‚s.
007530        IF ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|”NŒŽ“ú  = ZERO     
007540           MOVE  ZERO                 TO  ‚v‚r[¿‹”NŒŽ“ú                       
007550        ELSE IF ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|¢‹I = 0   
007600                MOVE  "19"                 TO  
007610                                           ‚v‚r[¿‹”NŒŽ“ú(1:2) 
007611                MOVE  ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|”NŒŽ“ú  
007612                                         TO  
007613                                          ‚v‚r[¿‹”NŒŽ“ú(3:6)       
007620             ELSE                                                      
007630                MOVE  "20"                 TO  
007640                                            ‚v‚r[¿‹”NŒŽ“ú(1:2)
007641                MOVE  ‚k‚s‚q‚r‚j‚l|¿‹”­s“ú|”NŒŽ“ú  
007642                                         TO  
007643                                          ‚v‚r[¿‹”NŒŽ“ú(3:6)
007650         END-IF.
007660*
007670 ¿‹”NŒŽ“úˆ—[‚d‚w‚h‚s.                                           
007680     EXIT.
007690******************************************************************
007700*                  ¿‹”NŒŽ“úˆ—                                *
007710******************************************************************
007720 Áž”NŒŽ“úˆ—                         SECTION.                    
007730 Áž”NŒŽ“úˆ—[‚r‚s‚`‚q‚s.
007740        IF  ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú  = ZERO     
007750           MOVE  ZERO                 TO  ‚v‚r[Áž”NŒŽ“ú                       
007760        ELSE                                              
007770           MOVE  ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú  
007780                                         TO  
007790                                          ‚v‚r[Áž”NŒŽ“ú(3:6)
007800           IF ‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I = 0   
007810              MOVE  "19"                 TO  
007820                                           ‚v‚r[Áž”NŒŽ“ú(1:2)        
007830           ELSE                                                      
007840              MOVE  "20"                 TO  
007850                                           ‚v‚r[Áž”NŒŽ“ú(1:2)
007860        END-IF.
007870*
007880 Áž”NŒŽ“úˆ—[‚d‚w‚h‚s.                                           
007890     EXIT.
007900******************************************************************
007910*                  Áž’Ê”Ôˆ—                                  *
007920******************************************************************
007930 Áž’Ê”Ôˆ—                         SECTION.                    
007940 Áž’Ê”Ôˆ—[‚r‚s‚`‚q‚s.
007941      MOVE ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú(1:2) 
007951                                   TO ‚v‚r[Áž˜A”Ô”N.                                            
007965      MOVE   ‚v‚r[Áž˜A”Ô”N  TO  ‚v‚r[Áž˜A”Ô(1:2).
007966      MOVE   ‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô TO  ‚v‚r[Áž˜A”Ô(3:9).
007967     
007971 Áž’Ê”Ôˆ—[‚d‚w‚h‚s.                                           
008000     EXIT.      
008010******************************************************************
008020*                 ‰ñŽû‹àŠzˆ—                                   *
008030******************************************************************
008040 ‰ñŽû‹àŠzˆ—                         SECTION.                    
008050 ‰ñŽû‹àŠzˆ—[‚r‚s‚`‚q‚s.
008060        IF ‚k‚s‚q‚r‚j‚l|Áž‹àŠz >  ZERO
008070           COMPUTE ‚v‚r[Áž‹àŠz     =   ‚k‚s‚q‚r‚j‚l|Áž‹àŠz
008080                                      -   
008090                                      ‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz
008100        ELSE                                                    
008110           MOVE ZERO                TO  ‚v‚r[Áž‹àŠz
008120        END-IF.
008130*
008140 ‰ñŽû‹àŠzˆ—[‚d‚w‚h‚s.                                           
008150     EXIT.      
008160
008170******************************************************************
008180*           ‰ñŽûÁ”ïÅˆ—                                       *
008190******************************************************************
008200 ‰ñŽûÁ”ïÅˆ—                             SECTION.                    
008210 ‰ñŽûÁ”ïÅˆ—[‚r‚s‚`‚q‚s.
008220*
008230         IF ‚k‚s‚q‚r‚j‚l|Áž‹àŠz >  ZERO
008240            MOVE  ‚k‚s‚q‚r‚j‚l|Á”ïÅ|‹àŠz           
008250                                      TO  ‚v‚r[‰ñŽûÁ”ïÅ
008260         ELSE 
008270            MOVE ZERO                 TO  ‚v‚r[‰ñŽûÁ”ïÅ
008280         END-IF.
008290*
008300 ‰ñŽûÁ”ïÅˆ—[‚d‚w‚h‚s.                                           
008310     EXIT.      
008320******************************************************************
008330*    ¿‹“à–óƒR[ƒhˆ—                                          *
008340******************************************************************
008350 ¿‹“à–óƒR[ƒhˆ—                             SECTION.                    
008360 ¿‹“à–óƒR[ƒhˆ—[‚r‚s‚`‚q‚s.                      
008370*                                                                 
008380     
      *    EXEC  SQL                                                    
008390*          SELECT  V¿‹“à–óƒR[ƒh
008400*                   ƒAƒNƒZƒX‹æ•ª                                   
008410*            INTO :‚h‚j‚n‚O‚O‚T|V¿‹“à–óƒR[ƒh
008420*                 ,:‚h‚j‚n‚O‚O‚T[ƒAƒNƒZƒX‹æ•ª                   
008430*            FROM  IKOTBL005
008440*                   LTRSKM                                     
008450*           WHERE  IKOTBL005.ƒAƒNƒZƒX‹æ•ª      = 'A'                                            
008460*             AND  IKOTBL005.Œ»¿‹“à–óƒR[ƒh
008470*                                              =
008480*                                    :‚k‚s‚q‚r‚j‚l|¿‹“à–óƒR[ƒh                       
008490*    END-EXEC.
           CALL "SQLADR" USING SQ0006 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 333 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚T|V¿‹“à–óƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|¿‹“à–óƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 3 TO SQL-SQHSTL(2)
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
008500*
008510 ¿‹“à–óƒR[ƒhˆ—[‚d‚w‚h‚s.                                           
008520     EXIT.      
008530
008540******************************************************************
008550*                 ‹âs’ZkƒR[ƒhˆ—                             *
008560******************************************************************
008570 ‹âs’ZkƒR[ƒhˆ—                          SECTION.                    
008580 ‹âs’ZkƒR[ƒhˆ—[‚r‚s‚`‚q‚s.
008590     MOVE ‚c‚O‚T|‹âsƒR[ƒh TO    ‚v‚r[‹âs‚b‚c(1:4).
008591     MOVE  ‚c‚O‚T|Žx“XƒR[ƒh TO   ‚v‚r[‹âs‚b‚c(5:3).
008600        
      *       EXEC SQL
008620*         SELECT  ‹âs’ZkƒR[ƒh
008630*           INTO :‚c‚O‚T|‹âs’ZkƒR[ƒh
008640*           FROM  D05GKO_TBL
008641*                ,LTRSKM         
008650*          WHERE  LTRSKM.‹âs‚b‚c   =  :‚v‚r[‹âs‚b‚c
008660*      END-EXEC.
              CALL "SQLADR" USING SQ0007 SQL-STMT
              MOVE 1 TO SQL-ITERS
              MOVE 356 TO SQL-OFFSET
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
                  ‚c‚O‚T|‹âs’ZkƒR[ƒh IN
                  ŽóŽæŒûÀƒ}ƒXƒ^
                  SQL-SQHSTV(1)
              MOVE 2 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  ‚v‚r[‹âs‚b‚c
                  SQL-SQHSTV(2)
              MOVE 7 TO SQL-SQHSTL(2)
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
008670*
008680*----------------------------------------------------------------*
008690* ŒŸõˆ—‚ðŠm”F *
008700*----------------------------------------------------------------*
008710          EVALUATE SQLCODE
008720          WHEN ’è”[‚r‚p‚k‚n‚j
008730*--< ³í‚ÌŽž >
008740          CONTINUE
008750          WHEN OTHER
008760*--< Žæ“¾‚µ‚È‚¢A‰Šú’l‚ðƒZƒbƒg >
008770          MOVE ZERO TO  ‚c‚O‚T|‹âs’ZkƒR[ƒh
008780          END-EVALUATE.
008800*                                                                 
008810 ‹âs’ZkƒR[ƒhˆ—[‚d‚w‚h‚s.                                          
008820          EXIT.                                                                                                                                                                      
008830******************************************************************
008840*    o—Íˆ—                                                    *
008850******************************************************************
008860 o—Íˆ—                             SECTION.                    
008870 o—Íˆ—[‚r‚s‚`‚q‚s.                                            
008880*                                                                 
008890       
      *      EXEC  SQL                                                  
008900*       INSERT  INTO  D40HSQ_TBL                                  
008910*          ( ŽæˆøæƒR[ƒh                                             
008920*           ,¿‹æƒR[ƒh                                         
008930*           ,˜A”Ô                                             
008940*           ,Œ_–ñ”Ô†                                               
008950*           ,ÄƒŠ[ƒX‰ñ”                                             
008960*           ,Œ_–ñŽí—Þ                                              
008970*           ,¿‹‰ñ”                                             
008980*           ,¿‹ŠÔŠu                                                 
008990*           ,‰ñŽû•û–@                                               
009000*           ,¿‹”NŒŽ“ú                                          
009010*           ,¿‹‹àŠz                                              
009020*           ,¿‹Á”ïÅ                                   
009030*           ,Áž”NŒŽ“ú                                          
009040*           ,Áž’Ê”Ô                                             
009050*           ,‰ñŽû—\’è“ú
009060*           ,‰ñŽû”NŒŽ“ú
009070*           ,‰ñŽû‹àŠz
009080*           ,‰ñŽûÁ”ïÅ
009090*           ,–¢‰ñŽû‹àŠz
009100*           ,‰‰ñ“ü‹à“ú
009110*           ,¿‹“à–óƒR[ƒh
009120*           ,•”‰ÛƒR[ƒh
009130*           ,’·’Z‹æ•ª
009140*           ,‹âs’ZkƒR[ƒh
009150*           ,Á”ïÅƒR[ƒh
009160*           ,Á”ïÅ’¥Žû‹æ•ª
009170*           ,Š¨’èˆ—ƒR[ƒh
009180*           ,‘¿‹‰ñ”
009190*           ,“o˜^”NŒŽ“ú
009200*           ,“o˜^ŽžŠÔ
009210*           ,“o˜^’S“–ŽÒ
009220*           ,XV”NŒŽ“ú
009230*           ,XVŽžŠÔ
009240*           ,XVŽÒ
009250*           ,“ü—Í’S“–ŽÒƒR[ƒh)                                       
009260*      VALUES                                                     
009270*            ( :‚c‚S‚O|ŽæˆøæƒR[ƒh                                             
009280*           ,:‚c‚S‚O|¿‹æƒR[ƒh                                         
009290*           ,:‚c‚S‚O|˜A”Ô                                             
009300*           ,:‚c‚S‚O|Œ_–ñ”Ô†                                               
009310*           ,:‚c‚S‚O|ÄƒŠ[ƒX‰ñ”                                             
009320*           ,:‚c‚S‚O|Œ_–ñŽí—Þ                                              
009330*           ,:‚c‚S‚O|¿‹‰ñ”                                             
009340*           ,:‚c‚S‚O|¿‹ŠÔŠu                                                 
009350*           ,:‚c‚S‚O|‰ñŽû•û–@                                               
009360*           ,:‚c‚S‚O|¿‹”NŒŽ“ú                                          
009370*           ,:‚c‚S‚O|¿‹‹àŠz                                              
009380*           ,:‚c‚S‚O|¿‹Á”ïÅ                                   
009390*           ,:‚c‚S‚O|Áž”NŒŽ“ú                                          
009400*           ,:‚c‚S‚O|Áž’Ê”Ô                                             
009410*           ,:‚c‚S‚O|‰ñŽû—\’è“ú
009420*           ,:‚c‚S‚O|‰ñŽû”NŒŽ“ú
009430*           ,:‚c‚S‚O|‰ñŽû‹àŠz
009440*           ,:‚c‚S‚O|‰ñŽûÁ”ïÅ
009450*           ,:‚c‚S‚O|–¢‰ñŽû‹àŠz
009460*           ,:‚c‚S‚O|‰‰ñ“ü‹à“ú
009470*           ,:‚c‚S‚O|¿‹“à–óƒR[ƒh
009480*           ,:‚c‚S‚O|•”‰ÛƒR[ƒh
009490*           ,:‚c‚S‚O|’·’Z‹æ•ª
009500*           ,:‚c‚S‚O|‹âs’ZkƒR[ƒh
009510*           ,:‚c‚S‚O|Á”ïÅƒR[ƒh
009520*           ,:‚c‚S‚O|Á”ïÅ’¥Žû‹æ•ª
009530*           ,:‚c‚S‚O|Š¨’èˆ—ƒR[ƒh
009540*           ,:‚c‚S‚O|‘¿‹‰ñ”
009550*           ,:‚c‚S‚O|“o˜^”NŒŽ“ú
009560*           ,:‚c‚S‚O|“o˜^ŽžŠÔ
009570*           ,:‚c‚S‚O|“o˜^’S“–ŽÒ
009580*           ,:‚c‚S‚O|XV”NŒŽ“ú
009590*           ,:‚c‚S‚O|XVŽžŠÔ
009600*           ,:‚c‚S‚O|XVŽÒ
009610*           ,:‚c‚S‚O|“ü—Í’S“–ŽÒƒR[ƒh)                           
009620*    END-EXEC.
             CALL "SQLADR" USING SQ0008 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 379 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 ‚c‚S‚O|ŽæˆøæƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(1)
             MOVE 9 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹æƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(2)
             MOVE 5 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 ‚c‚S‚O|˜A”Ô IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(3)
             MOVE 4 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Œ_–ñ”Ô† IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(4)
             MOVE 10 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 ‚c‚S‚O|ÄƒŠ[ƒX‰ñ” IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(5)
             MOVE 2 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Œ_–ñŽí—Þ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(6)
             MOVE 3 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹‰ñ” IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(7)
             MOVE 2 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹ŠÔŠu IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(8)
             MOVE 2 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‰ñŽû•û–@ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(9)
             MOVE 1 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹”NŒŽ“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(10)
             MOVE 8 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹‹àŠz IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(11)
             MOVE 7 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹Á”ïÅ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(12)
             MOVE 7 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Áž”NŒŽ“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Áž’Ê”Ô IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(14)
             MOVE 11 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‰ñŽû—\’è“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(15)
             MOVE 8 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‰ñŽû”NŒŽ“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(16)
             MOVE 8 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‰ñŽû‹àŠz IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(17)
             MOVE 7 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‰ñŽûÁ”ïÅ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(18)
             MOVE 7 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
             CALL "SQLADR" USING
                 ‚c‚S‚O|–¢‰ñŽû‹àŠz IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(19)
             MOVE 7 TO SQL-SQHSTL(19)
             MOVE 0 TO SQL-SQHSTS(19)
             MOVE 0 TO SQL-SQINDV(19)
             MOVE 0 TO SQL-SQINDS(19)
             MOVE 0 TO SQL-SQHARM(19)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‰‰ñ“ü‹à“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(20)
             MOVE 8 TO SQL-SQHSTL(20)
             MOVE 0 TO SQL-SQHSTS(20)
             MOVE 0 TO SQL-SQINDV(20)
             MOVE 0 TO SQL-SQINDS(20)
             MOVE 0 TO SQL-SQHARM(20)
             CALL "SQLADR" USING
                 ‚c‚S‚O|¿‹“à–óƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(21)
             MOVE 3 TO SQL-SQHSTL(21)
             MOVE 0 TO SQL-SQHSTS(21)
             MOVE 0 TO SQL-SQINDV(21)
             MOVE 0 TO SQL-SQINDS(21)
             MOVE 0 TO SQL-SQHARM(21)
             CALL "SQLADR" USING
                 ‚c‚S‚O|•”‰ÛƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(22)
             MOVE 4 TO SQL-SQHSTL(22)
             MOVE 0 TO SQL-SQHSTS(22)
             MOVE 0 TO SQL-SQINDV(22)
             MOVE 0 TO SQL-SQINDS(22)
             MOVE 0 TO SQL-SQHARM(22)
             CALL "SQLADR" USING
                 ‚c‚S‚O|’·’Z‹æ•ª IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(23)
             MOVE 1 TO SQL-SQHSTL(23)
             MOVE 0 TO SQL-SQHSTS(23)
             MOVE 0 TO SQL-SQINDV(23)
             MOVE 0 TO SQL-SQINDS(23)
             MOVE 0 TO SQL-SQHARM(23)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‹âs’ZkƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(24)
             MOVE 2 TO SQL-SQHSTL(24)
             MOVE 0 TO SQL-SQHSTS(24)
             MOVE 0 TO SQL-SQINDV(24)
             MOVE 0 TO SQL-SQINDS(24)
             MOVE 0 TO SQL-SQHARM(24)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Á”ïÅƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(25)
             MOVE 2 TO SQL-SQHSTL(25)
             MOVE 0 TO SQL-SQHSTS(25)
             MOVE 0 TO SQL-SQINDV(25)
             MOVE 0 TO SQL-SQINDS(25)
             MOVE 0 TO SQL-SQHARM(25)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Á”ïÅ’¥Žû‹æ•ª IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(26)
             MOVE 1 TO SQL-SQHSTL(26)
             MOVE 0 TO SQL-SQHSTS(26)
             MOVE 0 TO SQL-SQINDV(26)
             MOVE 0 TO SQL-SQINDS(26)
             MOVE 0 TO SQL-SQHARM(26)
             CALL "SQLADR" USING
                 ‚c‚S‚O|Š¨’èˆ—ƒR[ƒh IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(27)
             MOVE 2 TO SQL-SQHSTL(27)
             MOVE 0 TO SQL-SQHSTS(27)
             MOVE 0 TO SQL-SQINDV(27)
             MOVE 0 TO SQL-SQINDS(27)
             MOVE 0 TO SQL-SQHARM(27)
             CALL "SQLADR" USING
                 ‚c‚S‚O|‘¿‹‰ñ” IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(28)
             MOVE 2 TO SQL-SQHSTL(28)
             MOVE 0 TO SQL-SQHSTS(28)
             MOVE 0 TO SQL-SQINDV(28)
             MOVE 0 TO SQL-SQINDS(28)
             MOVE 0 TO SQL-SQHARM(28)
             CALL "SQLADR" USING
                 ‚c‚S‚O|“o˜^”NŒŽ“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(29)
             MOVE 8 TO SQL-SQHSTL(29)
             MOVE 0 TO SQL-SQHSTS(29)
             MOVE 0 TO SQL-SQINDV(29)
             MOVE 0 TO SQL-SQINDS(29)
             MOVE 0 TO SQL-SQHARM(29)
             CALL "SQLADR" USING
                 ‚c‚S‚O|“o˜^ŽžŠÔ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(30)
             MOVE 8 TO SQL-SQHSTL(30)
             MOVE 0 TO SQL-SQHSTS(30)
             MOVE 0 TO SQL-SQINDV(30)
             MOVE 0 TO SQL-SQINDS(30)
             MOVE 0 TO SQL-SQHARM(30)
             CALL "SQLADR" USING
                 ‚c‚S‚O|“o˜^’S“–ŽÒ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(31)
             MOVE 8 TO SQL-SQHSTL(31)
             MOVE 0 TO SQL-SQHSTS(31)
             MOVE 0 TO SQL-SQINDV(31)
             MOVE 0 TO SQL-SQINDS(31)
             MOVE 0 TO SQL-SQHARM(31)
             CALL "SQLADR" USING
                 ‚c‚S‚O|XV”NŒŽ“ú IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(32)
             MOVE 8 TO SQL-SQHSTL(32)
             MOVE 0 TO SQL-SQHSTS(32)
             MOVE 0 TO SQL-SQINDV(32)
             MOVE 0 TO SQL-SQINDS(32)
             MOVE 0 TO SQL-SQHARM(32)
             CALL "SQLADR" USING
                 ‚c‚S‚O|XVŽžŠÔ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(33)
             MOVE 8 TO SQL-SQHSTL(33)
             MOVE 0 TO SQL-SQHSTS(33)
             MOVE 0 TO SQL-SQINDV(33)
             MOVE 0 TO SQL-SQINDS(33)
             MOVE 0 TO SQL-SQHARM(33)
             CALL "SQLADR" USING
                 ‚c‚S‚O|XVŽÒ IN
                 ”Ä—p¿‹
                 SQL-SQHSTV(34)
             MOVE 8 TO SQL-SQHSTL(34)
             MOVE 0 TO SQL-SQHSTS(34)
             MOVE 0 TO SQL-SQINDV(34)
             MOVE 0 TO SQL-SQINDS(34)
             MOVE 0 TO SQL-SQHARM(34)
             CALL "SQLADR" USING
                 ‚c‚S‚O|“ü—Í’S“–ŽÒƒR[ƒh IN
                 ”Ä—p¿‹
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
009630*                                                                 
009640*----------------------------------------------------------------*
009650*    ’Ç‰Áˆ—‚ðŠm”F                                              *
009660*----------------------------------------------------------------*
009670     EVALUATE  SQLCODE                                            
009680        WHEN   ’è”[‚r‚p‚k‚n‚j                                   
009690*--<       ’Ç‰Á¬Œ÷ >                                             
009700           COMPUTE  ‚v[o—Í[Œ”  =  ‚v[o—Í[Œ”  +  1       
009710        WHEN   OTHER                                              
009720*--<       ’Ç‰Áˆ—ƒGƒ‰[ >                                       
009730           MOVE     -40               TO  ‚v[ƒGƒ‰[ƒR[ƒh        
009740           PERFORM  ƒGƒ‰[ˆ—                                
009750     END-EVALUATE.                                                
009760*                                                                 
009770 o—Íˆ—[‚d‚w‚h‚s.                                              
009780     EXIT.                                                        
009790******************************************************************
009800*    I—¹ˆ—                                                    *
009810******************************************************************
009820 I—¹ˆ—                             SECTION.                    
009830 I—¹ˆ—[‚r‚s‚`‚q‚s.                                            
009840*                                                                 
009850     PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                   
009860*                                                                 
009870     PERFORM  ‚c‚aƒRƒ~ƒbƒgˆ—.                                   
009880*                                                                 
009890     PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                 
009900*                                                                 
009910*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
009920     MOVE  ’è”[³íó‘Ô             TO  PROGRAM-STATUS.         
009930*                                                                 
009940 I—¹ˆ—[‚d‚w‚h‚s.                                              
009950     EXIT.                                                        
009960******************************************************************
009970*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
009980******************************************************************
009990 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
010000 I—¹ƒƒbƒZ[ƒWo—Í[‚r‚s‚`‚q‚s.                                  
010010*                                                                 
010020*----------------------------------------------------------------*
010030*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
010040*----------------------------------------------------------------*
010050     INITIALIZE                       IF-CHOCO001.                
010060     MOVE  "3"                        TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê.     
010070     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P[ƒ\[ƒX‚h‚c.       
010080     MOVE  "0"                        TO  ‹¤‚P[•œ‹AƒR[ƒh.       
010090     MOVE  "LTRSKM"                  TO  ‹¤‚P[ˆ—ƒe[ƒuƒ‹‚h‚c. 
010100     MOVE  "COUNT"                    TO  ‹¤‚P[ˆ—Ž¯•Ê.         
010110     MOVE  ‚v[“ü—Í[Œ”             TO  ‹¤‚P[ƒf[ƒ^“à—e.       
010120     MOVE  "SUMMIT¿‹–¾×“ü—ÍŒ”"                         
010130                                      TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010140     CALL  CLOCO001                USING  IF-CHOCO001.            
010150*                                                                 
010160     INITIALIZE                       IF-CHOCO001.                
010170     MOVE  "3"                        TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê.     
010180     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P[ƒ\[ƒX‚h‚c.       
010190     MOVE  "0"                        TO  ‹¤‚P[•œ‹AƒR[ƒh.       
010200     MOVE  "D40HSQ"                   TO  ‹¤‚P[ˆ—ƒe[ƒuƒ‹‚h‚c. 
010210     MOVE  "COUNT"                    TO  ‹¤‚P[ˆ—Ž¯•Ê.         
010220     MOVE  ‚v[o—Í[Œ”             TO  ‹¤‚P[ƒf[ƒ^“à—e.       
010230     MOVE  "”Ä—p¿‹DBo—ÍŒ”"       TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010240     CALL  CLOCO001                USING  IF-CHOCO001.            
010250*                                                                 
010260*----------------------------------------------------------------*
010270*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
010280*----------------------------------------------------------------*
010290     INITIALIZE                       IF-CHOCO001.                
010300     MOVE  "3"                        TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê.     
010310     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P[ƒ\[ƒX‚h‚c.       
010320     MOVE  "0"                        TO  ‹¤‚P[•œ‹AƒR[ƒh.       
010330     MOVE  "END"                      TO  ‹¤‚P[ˆ—Ž¯•Ê.         
010340     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010350     CALL  CLOCO001                USING  IF-CHOCO001.            
010360*                                                                 
010370 I—¹ƒƒbƒZ[ƒWo—Í[‚d‚w‚h‚s.                                    
010380     EXIT.                                                        
010390******************************************************************
010400*    ‚c‚aƒNƒ[ƒY                                                *
010410******************************************************************
010420 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
010430 ‚c‚aƒNƒ[ƒYˆ—[‚r‚s‚`‚q‚s.                                    
010440*                                                                 
010450*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
010460     
      *    EXEC SQL                                                     
010470*       CLOSE  CUR1                                               
010480*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 534 TO SQL-OFFSET
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
010490*                                                                 
010500 ‚c‚aƒNƒ[ƒYˆ—[‚d‚w‚h‚s.                                      
010510     EXIT.                                                        
010520******************************************************************
010530*    ‚c‚aƒRƒ~ƒbƒgˆ—                                            *
010540******************************************************************
010550 ‚c‚aƒRƒ~ƒbƒgˆ—                     SECTION.                    
010560 ‚c‚aƒRƒ~ƒbƒgˆ—[‚r‚s‚`‚q‚s.                                    
010570*                                                                 
010580     
      *    EXEC  SQL                                                    
010590*       COMMIT  WORK  RELEASE                                     
010600*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 549 TO SQL-OFFSET
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
010610*                                                                 
010620     INITIALIZE                       IF-CHOCO001.                
010630     MOVE  "3"                        TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê.     
010640     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P[ƒ\[ƒX‚h‚c.       
010650     MOVE  "0"                        TO  ‹¤‚P[•œ‹AƒR[ƒh.       
010660     MOVE  "COMMIT"                   TO  ‹¤‚P[ˆ—Ž¯•Ê.         
010670     MOVE  "ƒRƒ~ƒbƒgŽÀŽ{"             TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010680     CALL  CLOCO001                USING  IF-CHOCO001.            
010690*                                                                 
010700 ‚c‚aƒRƒ~ƒbƒgˆ—[‚d‚w‚h‚s.                                      
010710     EXIT.                                                        
010720******************************************************************
010730*    ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                                        *
010740******************************************************************
010750 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                 SECTION.                    
010760 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—[‚r‚s‚`‚q‚s.                                
010770*                                                                 
010780     
      *    EXEC  SQL                                                    
010790*       ROLLBACK WORK  RELEASE                                    
010800*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 564 TO SQL-OFFSET
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
010810*                                                                 
010820     INITIALIZE                       IF-CHOCO001.                
010830     MOVE  "1"                        TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê.     
010840     MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P[ƒ\[ƒX‚h‚c.       
010850     MOVE  "9"                        TO  ‹¤‚P[•œ‹AƒR[ƒh.       
010860     MOVE  "ROLLBACK"                 TO  ‹¤‚P[ˆ—Ž¯•Ê.         
010870     MOVE  "ƒ[ƒ‹ƒoƒbƒNŽÀŽ{"         TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
010880     CALL  CLOCO001                USING  IF-CHOCO001.            
010890*                                                                 
010900 ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—[‚d‚w‚h‚s.                                  
010910     EXIT.                                                        
010920******************************************************************
010930*    ƒGƒ‰[ˆ—                                                  *
010940******************************************************************
010950 ƒGƒ‰[ˆ—                       SECTION.                    
010960 ƒGƒ‰[ˆ—[‚r‚s‚`‚q‚s.                                      
010970*                                                                 
010980     MOVE  "Y"                        TO ‚v[ˆÙíI—¹[ƒtƒ‰ƒO.    
010990     INITIALIZE                           IF-CHOCO001.            
011000*                                                                 
011010     EVALUATE  ‚v[ƒGƒ‰[ƒR[ƒh                                   
011020        WHEN  -10                                                 
011030*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
011040           MOVE  "1"                  TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê      
011050           MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P[ƒ\[ƒX‚h‚c        
011060           MOVE  "9"                  TO  ‹¤‚P[•œ‹AƒR[ƒh        
011070           MOVE  "CONNECT"            TO  ‹¤‚P[ˆ—Ž¯•Ê          
011080           MOVE  SQLCODE              TO  ‹¤‚P[ƒf[ƒ^“à—e        
011090           MOVE  SQLERRMC             TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011100           CALL  CLOCO001          USING  IF-CHOCO001             
011110*                                                                 
011120        WHEN  -20                                                 
011130*--<       Œ‹‡ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹ƒI[ƒvƒ“Ž¸”s >                     
011140           MOVE  "1"                  TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê      
011150           MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P[ƒ\[ƒX‚h‚c        
011160           MOVE  "9"                  TO  ‹¤‚P[•œ‹AƒR[ƒh        
011170           MOVE  "LTRSKY"             TO  ‹¤‚P[ˆ—ƒe[ƒuƒ‹‚h‚c  
011180           MOVE  "OPEN"               TO  ‹¤‚P[ˆ—Ž¯•Ê          
011190           MOVE  SQLCODE              TO  ‹¤‚P[ƒf[ƒ^“à—e        
011200           MOVE  SQLERRMC             TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011210           CALL  CLOCO001          USING  IF-CHOCO001             
011220*                                                                 
011230        WHEN  -30                                                 
011240*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
011250           MOVE  "1"                  TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê      
011260           MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P[ƒ\[ƒX‚h‚c        
011270           MOVE  "9"                  TO  ‹¤‚P[•œ‹AƒR[ƒh        
011280           MOVE  "LTRSKM"             TO  ‹¤‚P[ˆ—ƒe[ƒuƒ‹‚h‚c  
011290           MOVE  "FETCH"              TO  ‹¤‚P[ˆ—Ž¯•Ê          
011300           MOVE  SQLCODE              TO  ‹¤‚P[ƒf[ƒ^“à—e        
011310           MOVE  SQLERRMC             TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011320           CALL  CLOCO001          USING  IF-CHOCO001             
011330*                                                                 
011340        WHEN  -40                                                 
011350*--<       •Ï‘¥•¥‚c‚a’Ç‰ÁŽ¸”s >                                   
011360           MOVE  "1"                  TO  ‹¤‚P[ƒCƒxƒ“ƒgŽí•Ê      
011370           MOVE  ’è”[ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P[ƒ\[ƒX‚h‚c        
011380           MOVE  "9"                  TO  ‹¤‚P[•œ‹AƒR[ƒh        
011390           MOVE  "D40HNS"             TO  ‹¤‚P[ˆ—ƒe[ƒuƒ‹‚h‚c  
011400           MOVE  "INSERT"             TO  ‹¤‚P[ˆ—Ž¯•Ê          
011410           MOVE  SQLCODE              TO  ‹¤‚P[ƒf[ƒ^“à—e        
011420           MOVE  SQLERRMC             TO  ‹¤‚P[‚»‚Ì‘¼ƒƒbƒZ[ƒW  
011430           CALL  CLOCO001          USING  IF-CHOCO001             
011440*                                                                 
011450        WHEN  OTHER                                               
011460           MOVE  "N"                  TO ‚v[ˆÙíI—¹[ƒtƒ‰ƒO     
011470     END-EVALUATE.                                                
011480*                                                                 
011490     IF ‚v[ˆÙíI—¹[ƒtƒ‰ƒO  =  "Y"                              
011500        PERFORM  ‚c‚aƒ[ƒ‹ƒoƒbƒNˆ—                             
011510*                                                                 
011520        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
011530*                                                                 
011540*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
011550        MOVE  ’è”[ˆÙíó‘Ô          TO  PROGRAM-STATUS          
011560*                                                                 
011570        EXIT  PROGRAM                                             
011580     END-IF.                                                      
011590*                                                                 
011600 ƒGƒ‰[ˆ—[‚d‚w‚h‚s.                                            
011610     EXIT.                                                        
011620******************************************************************
011630*                  END OF PROGRAM                                *
011640******************************************************************
