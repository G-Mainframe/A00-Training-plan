000010******************************************************************
000020*         ƒŠC‹P“îŒ(‘å˜A)„                                     *
000030*      1. ƒvƒƒOƒ‰ƒ€–¼  : ‹¦’²“]•¨Œ‘ã‹à”„‹pˆÚsˆ—             *
000040*      2. ƒvƒƒOƒ‰ƒ€ID  : COBIS420       		               *
000050*      3. ˆ—ŠT—v      :Â–±DB.Â–±Šî–{AÂ–±DB.Â–±–¾×‚Í       
000051*                         ÂŒ Œ_–ñ‚m‚nEÄƒŠ[ƒXƒR[ƒh            
000052*                         ‚ðKEY‚Æ‚µAJOIN‚ÅŽw                     
000053*                         ¿‹DB.¿‹–¾×î•ñ‚ÌŒŸõðŒ‚Í         
000054*                         ˆÚs€–Ú‘Î”ä•\‚ÌˆÚsŒ³à–¾—“‚ðŽQÆ      
000070*                                                                *
000080*      4. ì¬ŽÒ        : û¹ú“Œ                                 *
000090*      5. ì¬“ú        : 2005.4.2                               *
000100******************************************************************
000110*                                                                *
000120******************************************************************
000130*    ‚h‚c‚d‚m‚s‚h‚e‚h‚b‚`‚s‚h‚n‚m  ‚c‚h‚u‚h‚r‚h‚n‚m              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          COBIS420.                   
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
000280     SELECT  oƒJƒtƒ@ƒCƒ‹              ASSIGN     TO       U11    
000290     FILE    STATUS         IS         ‚v|ó‘Ô                   
000300     ORGANIZATION           IS         LINE        SEQUENTIAL.    
000310     SELECT  “ü—Íƒtƒ@ƒCƒ‹              ASSIGN     TO       U01    
000320     FILE    STATUS         IS         ‚v|ó‘Ô                   
000330     ORGANIZATION           IS         LINE        SEQUENTIAL.    
000340******************************************************************
000350*    ‚c‚`‚s‚`                      ‚c‚h‚u‚h‚r‚h‚n‚m              *
000360******************************************************************
000370 DATA                                 DIVISION.                   
000380******************************************************************
000390*            oƒJƒtƒ@ƒCƒ‹                                        *
000400******************************************************************
000410 FILE                                 SECTION.                    
000420 FD    oƒJƒtƒ@ƒCƒ‹                                               
000430      LABEL    RECORD     IS          STANDARD                    
000440      BLOCK   CONTAINS    0           RECORDS.                    
000450 01  oƒJ[ƒŒƒR[ƒh.                                              
000460    COPY   CISUF421   REPLACING   ==()==  BY  ==oƒJ[==.         
000470 FD    “ü—Íƒtƒ@ƒCƒ‹                                               
000480      LABEL    RECORD     IS          STANDARD                    
000490      BLOCK   CONTAINS    0           RECORDS.                    
000500 01  “ü—Í[ƒŒƒR[ƒh.                                              
000510     COPY  CISPF001   REPLACING   ==()==  BY  ==“ü—Í[==.         
000520*                                                                 
000530                                                                  
000540******************************************************************
000550*  ‚v‚n‚q‚j‚h‚m‚f|‚r‚s‚n‚q‚`‚f‚d  ‚r‚d‚b‚s‚h‚n‚m                *
000560******************************************************************
000570  WORKING-STORAGE                     SECTION.                    
000580*----------------------------------------------------------------*
000590*    ƒzƒXƒg•Ï”’è‹`ƒGƒŠƒA                                        *
000600*----------------------------------------------------------------*
000610     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS420\CO
      -    "BIS420.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(151) VALUE "select ÄƒŠ[ƒX‰ñ”  ,Œ_–ñŽí—Þ  
      -     ",ŽåŒ_–ñ‹æ•ª   into :b1,:b2,:b3  from IKOTBL002 where ((Œ_–ñ
      -    "‚m‚n=:b4 and ÄƒŠ[ƒXƒR[ƒh=:b5) and Â–±Š¨’èˆ—ƒR[ƒh=:b6)
      -    "".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(82) VALUE "select VŽæˆøæƒR[ƒh  ,Ž}”Ô   in
      -    "to :b1,:b2  from IKOTBL001 where ŽæˆøæƒR[ƒh=:b3".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(148) VALUE "select Áž‹àŠz  ,Áž“úQ”NŒŽ“ú
      -    "  ,Áž“úQ¢‹I   into :b1,:b2,:b3  from LTRSKM where ((Œ_–ñ
      -    "”Ô†=:b4 and ÄƒŠ[ƒXƒR[ƒh=:b5) and ¿‹“à–óƒR[ƒh=:b6)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(129) VALUE "select Áž’Ê”Ô  ,Áž“úQ”NŒŽ“ú
      -    "   into :b1,:b2  from LTRSKM where ((Œ_–ñ”Ô†=:b3 and ÄƒŠ[
      -    "ƒXƒR[ƒh=:b4) and ¿‹“à–óƒR[ƒh=:b5)".

       01  SQ0006 GLOBAL.
           02  FILLER PIC X(77) VALUE "select Œ»¿‹“à–óƒR[ƒh   into :b
      -    "1  from IKOTBL005 where V¿‹“à–óƒR[ƒh=:b2".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148476348.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +18.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 18 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 18 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select LTRSMK.Â–±Œ_–ñ‚m‚n  ,LTR
      -    "SMK.ÄƒŠ[ƒXƒR[ƒh  ,LTRSMK.Â–±Š¨’èˆ—ƒR[ƒh  ,LTRSMM.ƒŠ[
      -    "ƒXŠJŽn“úQ¢‹I  ,LTRSMM.ƒŠ[ƒXŠJŽn“úQ”NŒŽ“ú  ,LTRSMM.•¨Œ‘ã
      -    "‹à‰ñŽû“ú".

           02  FILLER PIC X(160) VALUE "Q¢‹I  ,LTRSMM.•¨Œ‘ã‹à‰ñŽû“úQ
      -    "”NŒŽ“ú  ,LTRSMM.‰ñŽû•¨Œ‹àŠz  ,LTRSMM.”„ãÁ”ïÅ  ,LTRSMM.¿
      -    "‹ƒf[ƒ^ì¬“úQ¢‹I  ,LTRSMM.¿‹ƒf[ƒ^ì¬“úQ”NŒŽ“ú  ,LTR
      -    "SMM.ÄƒŠ".

           02  FILLER PIC X(160) VALUE "[ƒXƒR[ƒh  ,LTRSMM.Â–±‹¦’²ƒR[
      -    "ƒh  ,LTRSMM.Â–±ŽæˆøƒR[ƒh  ,LTRSMM.ÄƒŠ[ƒXƒR[ƒh  ,LTRSMM.
      -    "Â–±Œ_–ñ‚m‚n  ,LTRSMM.Â–±Š¨’èˆ—ƒR[ƒh  ,LTRSMM.‰ñŽû•ûŽ®ƒR
      -    "[ƒh   f".

           02  FILLER PIC X(160) VALUE "rom LTRSMK ,LTRSMM where (((LTRS
      -     "MK.Â–±Œ_–ñ‚m‚n=LTRSMM.Â–±Œ_–ñ‚m‚n and LTRSMK.ÄƒŠ[ƒXƒR[
      -    "ƒh=LTRSMM.ÄƒŠ[ƒXƒR[ƒh) and ((SUBSTR(LTRSMM.Â–±‹¦’²ƒR[ƒh
      -     ",1,1)='1'".

           02  FILLER PIC X(95) VALUE " or LTRSMM.Â–±‹¦’²ƒR[ƒh='46') o
      -    "r LTRSMM.Â–±‹¦’²ƒR[ƒh='56')) and ‰ñŽû•¨Œ‹àŠz<>0)         
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
           02     FILLER PIC S9(4) COMP-5 VALUE +263.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +267.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +735.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +328.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +417.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +169.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +151.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +523.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +208.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +82.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +624.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +235.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +148.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +842.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +274.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +129.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +933.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +309.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +77.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +975.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +332.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +1220.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000620*--<ƒL[ƒGƒŠƒA >                                                  
000630 01   ‚v‚r|ƒL[.                                                 
000640     03  ‚v‚r|‚m‚d‚vƒL[.                                        
000650         05  ‚v‚r|‚m‚d‚v|Œ_–ñ”Ô†         PIC  X(09).           
000660         05  ‚v‚r|‚m‚d‚v|ÄƒŠ[ƒX‰ñ”     PIC  9(02).           
000670         05  ‚v‚r|‚m‚d‚v|Œ_–ñŽí—Þ         PIC  X(03).           
000680     03  ‚v‚r|‚n‚k‚cƒL[.                                        
000690         05  ‚v‚r|‚n‚k‚c|Œ_–ñ”Ô†         PIC  X(09).           
000700         05  ‚v‚r|‚n‚k‚c|ÄƒŠ[ƒX‰ñ”     PIC  9(02).           
000710         05  ‚v‚r|‚n‚k‚c|Œ_–ñŽí—Þ         PIC  X(03).           
000720*--<˜A”Ô>                                                         
000730 01   ‚v‚r|˜A”Ô                         PIC 9(03) VALUE 0.       
000740*--<ŒŽ”>                                                         
000750 01   ‚v‚r|ŒŽ”                         PIC S9(02).              
000760 01   ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú.                                       
000770      03  ‚v‚r|¢‹I                     PIC 9(02).               
000780      03  ‚v‚r|”NŒŽ“ú                   PIC 9(06).               
000781 01   ‚v‚r|”NŒŽ                         PIC 9(04).               
000790 01   ‚v‚r|ƒŠ[ƒXŠJŽn“ú.                                         
000800      03  ‚v‚r|ŠJŽn“ú¢‹I               PIC 9(02).               
000810      03  ‚v‚r|ŠJŽn“ú”NŒŽ“ú             PIC 9(06).               
000811 01   ‚v‚r|”NŒŽ‚P                       PIC 9(04).               
000820 01   ‚v‚r|¿‹ƒf[ƒ^ì¬“ú.                                     
000830      03  ‚v‚r|¿‹ƒf[ƒ^ì¬“ú|¢‹I   PIC 9(02).               
000840      03  ‚v‚r|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú PIC 9(06).               
000850 01   ‚v‚r|Œ³‰ñŽû—\’è“ú.                                         
000860      03   ‚v‚r|Œ³‰ñŽû—\’è“ú|¢‹I      PIC 9(01).               
000870	    03   ‚v‚r|Œ³‰ñŽû—\’è“ú|”NŒŽ“ú    PIC 9(06).               
000880 01   ‚v‚r|‚s‚d‚l‚oŒŽ”                 PIC 9(01).               
000890 01   ‚v‚r|¿‹‘”­sÏƒtƒ‰ƒO           PIC X(01).               
000900 01   ‚v‚r|¿‹“à–óƒR[ƒh               PIC X(03).               
000910 01   ‚v‚r|Šî€“ú                       PIC 9(08).               
000920 01   ‚v‚r|Â–±Œ_–ñ‚m‚n                 PIC X(09).               
000930 01   ‚v‚r|ŒŽ                           PIC 9(02).               
000940 01   ‚v‚r|ŠJŽnŒŽ                       PIC 9(02).               
000950 01   ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh               PIC X(01).               
000951 01   ‚v‚r|ƒtƒ‰ƒO                       PIC 9(01).               
000960*                                                                 
000970*--< ‚n‚q‚`‚b‚k‚d‹¤’Ê•Ï” >                                       
000980     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000990*                                                                 
001000*--< ‚n‚q‚`‚b‚k‚d  ‚r‚p‚kŽÀsî•ñ >                               
000010*--ƒ‚r‚p‚k‹¤’Ê•Ï”„
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
001010     
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
001020*                                                                 
001030*--< Â–±Šî–{>                                                    
001040     
      *    EXEC  SQL  INCLUDE  LTRSMK.CBL            END-EXEC.
001050*                                                                 
001060*--<¿‹–¾×î•ñ>                                                 
000010************************************************
000020* Â–±iÂ–±Šî–{j(LTRSMK)
000030************************************************
000040 01  ‚k‚s‚q‚r‚l‚j|Â–±Œ_–ñ‚m‚n PIC  X(010).
000050 01  ‚k‚s‚q‚r‚l‚j|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000060 01  ‚k‚s‚q‚r‚l‚j|Ž–‹ÆŠƒR[ƒh PIC S9(004) COMP-3.
000070 01  ‚k‚s‚q‚r‚l‚j|’S“–ŽÒƒR[ƒh PIC S9(004) COMP-3.
000080 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚P PIC S9(013) COMP-3.
000090 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚P PIC S9(013) COMP-3.
000100 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚Q PIC S9(013) COMP-3.
000110 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚Q PIC S9(013) COMP-3.
000120 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚R PIC S9(013) COMP-3.
000130 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚R PIC S9(013) COMP-3.
000140 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚S PIC S9(013) COMP-3.
000150 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚S PIC S9(013) COMP-3.
000160 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚T PIC S9(013) COMP-3.
000170 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚T PIC S9(013) COMP-3.
000180 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚U PIC S9(013) COMP-3.
000190 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚U PIC S9(013) COMP-3.
000200 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚V PIC S9(013) COMP-3.
000210 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚V PIC S9(013) COMP-3.
000220 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚W PIC S9(013) COMP-3.
000230 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚W PIC S9(013) COMP-3.
000240 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚X PIC S9(013) COMP-3.
000250 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚X PIC S9(013) COMP-3.
000260 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|‰ñŽû•¨Œ‹àŠz‚P‚O PIC S9(013) COMP-3.
000270 01  ‚k‚s‚q‚r‚l‚j|Œ_–ñî•ñ|Œ_–ñ‹àŠz‚P‚O PIC S9(013) COMP-3.
000280 01  ‚k‚s‚q‚r‚l‚j|Â–±Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000290 01  ‚k‚s‚q‚r‚l‚j|‘S•”‰ð–ñ“ú|¢‹I PIC S9(001) COMP-3.
000300 01  ‚k‚s‚q‚r‚l‚j|‘S•”‰ð–ñ“ú|”NŒŽ“ú PIC  X(006).
000310 01  ‚k‚s‚q‚r‚l‚j|‘S•”‰ð–ñ”NŒŽ|¢‹I PIC S9(001) COMP-3.
000320 01  ‚k‚s‚q‚r‚l‚j|‘S•”‰ð–ñ”NŒŽ|”NŒŽ PIC  X(004).
000330 01  ‚k‚s‚q‚r‚l‚j|‹ŒÂ–±Œ_–ñ‚m‚n PIC  X(010).
000340 01  ‚k‚s‚q‚r‚l‚j|VÂ–±Œ_–ñ‚m‚n PIC  X(010).
000350 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚P PIC S9(001) COMP-3.
000360 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚Q PIC S9(001) COMP-3.
000370 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚R PIC S9(001) COMP-3.
000380 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚S PIC S9(001) COMP-3.
000390 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚T PIC S9(001) COMP-3.
000400 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚U PIC S9(001) COMP-3.
000410 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚V PIC S9(001) COMP-3.
000420 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚W PIC S9(001) COMP-3.
000430 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚X PIC S9(001) COMP-3.
000440 01  ‚k‚s‚q‚r‚l‚j|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX‚P‚O PIC S9(001) COMP-3.
000450 01  ‚k‚s‚q‚r‚l‚j|ƒ_ƒ~[‚O‚O‚P PIC  X(022).
000460 01  ‚k‚s‚q‚r‚l‚j|‹¤’Êî•ñ PIC  X(035).
001070     
      *    EXEC  SQL  INCLUDE  LTRSMM.CBL            END-EXEC.
001080*                                                                 
001090*--<Â–±–¾×>                                                     
000010************************************************
000020* Â–±iÂ–±–¾×j(LTRSMM)
000030************************************************
000040 01  ‚k‚s‚q‚r‚l‚l|Â–±Œ_–ñ‚m‚n PIC  X(010).
000050 01  ‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh PIC S9(001) COMP-3.
000060 01  ‚k‚s‚q‚r‚l‚l|Œ_–ñ–¾×‚m‚n PIC S9(002) COMP-3.
000070 01  ‚k‚s‚q‚r‚l‚l|ƒŒƒR[ƒhƒV[ƒPƒ“ƒX PIC S9(001) COMP-3.
000080 01  ‚k‚s‚q‚r‚l‚l|Â–±ŽæˆøƒR[ƒh PIC  X(008).
000090 01  ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh PIC  X(002).
000100 01  ‚k‚s‚q‚r‚l‚l|‚q‚d‚e”Ô† PIC  X(016).
000110 01  ‚k‚s‚q‚r‚l‚l|Œ_–ñ“ú|¢‹I PIC S9(001) COMP-3.
000120 01  ‚k‚s‚q‚r‚l‚l|Œ_–ñ“ú|”NŒŽ“ú PIC  X(006).
000130 01  ‚k‚s‚q‚r‚l‚l|ŒŸŽû“ú|¢‹I PIC S9(001) COMP-3.
000140 01  ‚k‚s‚q‚r‚l‚l|ŒŸŽû“ú|”NŒŽ“ú PIC  X(006).
000150 01  ‚k‚s‚q‚r‚l‚l|•”•ª‰ð–ñ“ú|¢‹I PIC S9(001) COMP-3.
000160 01  ‚k‚s‚q‚r‚l‚l|•”•ª‰ð–ñ“ú|”NŒŽ“ú PIC  X(006).
000170 01  ‚k‚s‚q‚r‚l‚l|“à—e•ÏX“ú|¢‹I PIC S9(001) COMP-3.
000180 01  ‚k‚s‚q‚r‚l‚l|“à—e•ÏX“ú|”NŒŽ“ú PIC  X(006).
000190 01  ‚k‚s‚q‚r‚l‚l|•”•ª‰ð–ñ”NŒŽ“x|¢‹I PIC S9(001) COMP-3.
000200 01  ‚k‚s‚q‚r‚l‚l|•”•ª‰ð–ñ”NŒŽ“x|”NŒŽ PIC  X(004).
000210 01  ‚k‚s‚q‚r‚l‚l|ƒ_ƒ~[‚O‚O‚P PIC  X(010).
000220 01  ‚k‚s‚q‚r‚l‚l|‰ñŽû•¨Œ‹àŠz PIC S9(013) COMP-3.
000230 01  ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ PIC S9(013) COMP-3.
000240 01  ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|¢‹I PIC S9(001) COMP-3.
000250 01  ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|”NŒŽ“ú PIC  X(006).
000260 01  ‚k‚s‚q‚r‚l‚l|‰ñŽû•ûŽ®ƒR[ƒh PIC S9(001) COMP-3.
000270 01  ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ‘ŠŽE‹æ•ª PIC S9(001) COMP-3.
000280 01  ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|¢‹I PIC S9(001) COMP-3.
000290 01  ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú PIC  X(006).
000300 01  ‚k‚s‚q‚r‚l‚l|ƒ_ƒ~[‚O‚O‚Q PIC  X(010).
000310 01  ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|¢‹I PIC S9(001) COMP-3.
000320 01  ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|”NŒŽ“ú PIC  X(006).
000330 01  ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXI—¹“ú|¢‹I PIC S9(001) COMP-3.
000340 01  ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXI—¹“ú|”NŒŽ“ú PIC  X(006).
000350 01  ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠúŠÔ PIC S9(003) COMP-3.
000360 01  ‚k‚s‚q‚r‚l‚l|ƒtƒ@ƒCƒiƒ“ƒXŠJŽn“ú|¢‹I PIC S9(001) COMP-3.
000370 01  ‚k‚s‚q‚r‚l‚l|ƒtƒ@ƒCƒiƒ“ƒXŠJŽn“ú|”NŒŽ“ú PIC  X(006).
000380 01  ‚k‚s‚q‚r‚l‚l|ƒtƒ@ƒCƒiƒ“ƒX|¢‹I PIC S9(001) COMP-3.
000390 01  ‚k‚s‚q‚r‚l‚l|ƒtƒ@ƒCƒiƒ“ƒX|”NŒŽ“ú PIC  X(006).
000400 01  ‚k‚s‚q‚r‚l‚l|ƒtƒ@ƒCƒiƒ“ƒXŠúŠÔ PIC S9(003) COMP-3.
000410 01  ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh PIC S9(002) COMP-3.
000420 01  ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒX—¿ PIC S9(013) COMP-3.
000430 01  ‚k‚s‚q‚r‚l‚l|Žx•¥ƒTƒCƒNƒ‹ PIC S9(002) COMP-3.
000440 01  ‚k‚s‚q‚r‚l‚l|Žx•¥‰ñ” PIC S9(003) COMP-3.
000450 01  ‚k‚s‚q‚r‚l‚l|–ˆŒŽŽx•¥“ú PIC S9(002) COMP-3.
000460 01  ‚k‚s‚q‚r‚l‚l|ŒvŽZ•ûŽ® PIC S9(001) COMP-3.
000470 01  ‚k‚s‚q‚r‚l‚l|˜’uŠúŠÔ PIC S9(003) COMP-3.
000480 01  ‚k‚s‚q‚r‚l‚l|‚a‚d‚f‚h‚m‰ñ” PIC S9(001) COMP-3.
000490 01  ‚k‚s‚q‚r‚l‚l|‘æ‚P‰ñƒŠ[ƒX—¿–ñ’èŽx•¥“ú¢‹I 
000491                                              PIC S9(001) COMP-3.
000500 01  ‚k‚s‚q‚r‚l‚l|‘æ‚P‰ñƒŠ[ƒX—¿–ñ’èŽx•¥“ú”NŒŽ“ú PIC  X(006).
000510 01  ‚k‚s‚q‚r‚l‚l|‘æ‚P‰ñƒŠ[ƒX—¿Žx•¥“ú|¢‹I PIC S9(001) COMP-3.
000520 01  ‚k‚s‚q‚r‚l‚l|‘æ‚P‰ñƒŠ[ƒX—¿Žx•¥“ú|”NŒŽ“ú PIC  X(006).
000530 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿Žx•¥“ú|¢‹I PIC S9(001) COMP-3.
000540 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿Žx•¥“ú|”NŒŽ“ú PIC  X(006).
000550 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿ PIC S9(013) COMP-3.
000560 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿Á”ïÅ PIC S9(013) COMP-3.
000570 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿ŽÀŽx•¥Šz PIC S9(013) COMP-3.
000580 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿””ï—p PIC S9(013) COMP-3.
000590 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿[“–ŠJŽn”NŒŽ¢‹I 
000591                                              PIC S9(001) COMP-3.
000600 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿[“–ŠJŽn”NŒŽ”NŒŽ“ú PIC  X(004).
000610 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿[“–I—¹”NŒŽ¢‹I  
000611                                              PIC S9(001) COMP-3.
000620 01  ‚k‚s‚q‚r‚l‚l|‘O•¥ƒŠ[ƒX—¿[“–I—¹”NŒŽ”NŒŽ“ú PIC  X(004).
000630 01  ‚k‚s‚q‚r‚l‚l|‘O•¥[“–ŒŽ” PIC S9(003) COMP-3.
000640 01  ‚k‚s‚q‚r‚l‚l|—˜‰ñ‚èŠî–{ PIC S9(002)V9(9) COMP-3.
000650 01  ‚k‚s‚q‚r‚l‚l|—˜‰ñ‚èŽÀŽ¿ PIC S9(002)V9(9) COMP-3.
000660 01  ‚k‚s‚q‚r‚l‚l|‘Žx•¥‹àŠz PIC S9(013) COMP-3.
000670 01  ‚k‚s‚q‚r‚l‚l|—˜‘§‡Œv PIC S9(013) COMP-3.
000680 01  ‚k‚s‚q‚r‚l‚l|‘e—˜‰v PIC S9(013) COMP-3.
000690 01  ‚k‚s‚q‚r‚l‚l|Á”ïÅ‘Šz PIC S9(013) COMP-3.
000700 01  ‚k‚s‚q‚r‚l‚l|Á”ïÅŽx•¥‹æ•ª PIC S9(001) COMP-3.
000710 01  ‚k‚s‚q‚r‚l‚l|Á”ïÅÅ—¦ PIC S9(002)V9(1) COMP-3.
000720 01  ‚k‚s‚q‚r‚l‚l|Á”ïÅƒR[ƒh PIC S9(002) COMP-3.
000730 01  ‚k‚s‚q‚r‚l‚l|””ï—pŒÅ’èŽ‘ŽYÅ PIC S9(013) COMP-3.
000740 01  ‚k‚s‚q‚r‚l‚l|””ï—p•ÛŒ¯—¿ PIC S9(013) COMP-3.
000750 01  ‚k‚s‚q‚r‚l‚l|””ï—p•ÛŽç—¿ PIC S9(013) COMP-3.
000760 01  ‚k‚s‚q‚r‚l‚l|””ï—p‚»‚Ì‚½‚P PIC S9(013) COMP-3.
000770 01  ‚k‚s‚q‚r‚l‚l|””ï—p‚»‚Ì‚½‚Q PIC S9(013) COMP-3.
000780 01  ‚k‚s‚q‚r‚l‚l|””ï—p‹æ•ª PIC S9(001) COMP-3.
000790 01  ‚k‚s‚q‚r‚l‚l|Žx•¥æƒR[ƒh PIC  X(004).
000800 01  ‚k‚s‚q‚r‚l‚l|‹âsƒR[ƒh PIC  X(007).
000810 01  ‚k‚s‚q‚r‚l‚l|ŒûÀ”Ô† PIC  X(007).
000820 01  ‚k‚s‚q‚r‚l‚l|—a‹àŽí—Þ PIC  X(001).
000830 01  ‚k‚s‚q‚r‚l‚l|Žx•¥Šm’è“ú|¢‹I PIC S9(001) COMP-3.
000840 01  ‚k‚s‚q‚r‚l‚l|Žx•¥Šm’è“ú|”NŒŽ“ú PIC  X(006).
000850 01  ‚k‚s‚q‚r‚l‚l|Žx•¥Šm’è”NŒŽ“x|¢‹I PIC S9(001) COMP-3.
000860 01  ‚k‚s‚q‚r‚l‚l|Žx•¥Šm’è”NŒŽ“x|”NŒŽ PIC  X(004).
000870 01  ‚k‚s‚q‚r‚l‚l|’S“–ŽÒƒR[ƒh PIC  X(004).
000880 01  ‚k‚s‚q‚r‚l‚l|Žx•¥³”Fî•ñƒTƒuƒVƒXƒeƒ€‹æ•ª PIC  X(001).
000890 01  ‚k‚s‚q‚r‚l‚l|Žx•¥³”Fî•ñƒV[ƒPƒ“ƒX PIC S9(005) COMP-3.
000900 01  ‚k‚s‚q‚r‚l‚l|Žx•¥³”Fî•ñŽx•¥³”F“ú|¢‹I 
000901                                              PIC S9(001) COMP-3.
000910 01  ‚k‚s‚q‚r‚l‚l|Žx•¥³”Fî•ñŽx•¥³”F“ú|”NŒŽ“ú PIC  X(006).
000920 01  ‚k‚s‚q‚r‚l‚l|Žx•¥³”Fî•ñ’S“–ŽÒƒR[ƒh PIC S9(004) COMP-3.
000930 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥³”FƒTƒuƒVƒXƒeƒ€‹æ•ª PIC  X(001).
000940 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥³”FƒV[ƒPƒ“ƒX PIC S9(005) COMP-3.
000950 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥³”FŽx•¥³”F“ú|¢‹I 
000951                                              PIC S9(001) COMP-3.
000960 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥³”FŽx•¥³”F“ú|”NŒŽ“ú PIC  X(006).
000970 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥³”F’S“–ŽÒƒR[ƒh PIC S9(004) COMP-3.
000980 01  ‚k‚s‚q‚r‚l‚l|‘OŒŽ––Â–±Žc‚ PIC S9(013) COMP-3.
000990 01  ‚k‚s‚q‚r‚l‚l|‘OŒŽ––Œ³–{Žc‚ PIC S9(013) COMP-3.
001000 01  ‚k‚s‚q‚r‚l‚l|‘OŠú––Á”ïÅŽc‚ PIC S9(013) COMP-3.
001010 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Šz PIC S9(013) COMP-3.
001020 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥“ú|¢‹I PIC S9(001) COMP-3.
001030 01  ‚k‚s‚q‚r‚l‚l|Žc‰¿Žx•¥“ú|”NŒŽ“ú PIC  X(006).
001040 01  ‚k‚s‚q‚r‚l‚l|ƒ_ƒ~[‚O‚O‚R PIC  X(024).
001050 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñŽÀƒŠ[ƒX—¿ PIC S9(013) COMP-3.
001060 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñ‚m‚d‚sƒŠ[ƒX—¿ PIC S9(013) COMP-3.
001070 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñ—˜‘§ PIC S9(013) COMP-3.
001080 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñŒ³–{Žx•¥Šz PIC S9(013) COMP-3.
001090 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñŒ³–{Žc‚ PIC S9(013) COMP-3.
001100 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñÂ–±Žc‚ PIC S9(013) COMP-3.
001110 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñÁ”ïÅŠz PIC S9(013) COMP-3.
001120 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñÁ”ïÅŽc‚ PIC S9(013) COMP-3.
001130 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñ””ï—p PIC S9(013) COMP-3.
001140 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñŽÀŽx•¥Šz PIC S9(013) COMP-3.
001150 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñÁ”ïÅ—¦ PIC S9(002)V9(1) COMP-3.
001160 01  ‚k‚s‚q‚r‚l‚l|‰‰ñî•ñƒ_ƒ~[ PIC  X(014).
001170 01  ‚k‚s‚q‚r‚l‚l|Žx•¥ƒf[ƒ^ì¬“ú|¢‹I PIC S9(001) COMP-3.
001180 01  ‚k‚s‚q‚r‚l‚l|Žx•¥ƒf[ƒ^ì¬“ú|”NŒŽ“ú PIC  X(006).
001190 01  ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|¢‹I‚Q PIC S9(001) COMP-3.
001200 01  ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú‚Q PIC  X(006).
001210 01  ‚k‚s‚q‚r‚l‚l|Žd–óƒf[ƒ^ì¬“ú|¢‹I PIC S9(001) COMP-3.
001220 01  ‚k‚s‚q‚r‚l‚l|Žd–óƒf[ƒ^ì¬“ú|”NŒŽ“ú PIC  X(006).
001230 01  ‚k‚s‚q‚r‚l‚l|ƒ_ƒ~[‚O‚O‚S PIC  X(018).
001240 01  ‚k‚s‚q‚r‚l‚l|‹¤’Êî•ñ PIC  X(035).
001100     
      *    EXEC  SQL  INCLUDE  LTRSKM.CBL            END-EXEC.
001110                                                                  
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
001120     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
001130                                                                  
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
001140     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
001150                                                                  
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
001160     
      *    EXEC  SQL  INCLUDE  IKOTBL005.CBL         END-EXEC.
001170*                                                                 
001180                                                                  
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
001190     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
001200*                                                                 
001210*----------------------------------------------------------------*
001220*    ‚v‚n‚q‚jƒGƒŠƒA                                              *
001230*----------------------------------------------------------------*
001240 01  ‚v‚n‚q‚j|ƒGƒŠƒA.                                            
001250*--< ƒGƒ‰[”»’è—p >                                               
001260     03  ‚v|ƒGƒ‰[ƒR[ƒh             PIC S9(04).                 
001270     03  ‚v|ó‘Ô                     PIC X(02).                  
001280*                                                                 
001290*--< ƒtƒ‰ƒOƒAƒŠƒA >                                               
001300     03  ƒtƒ‰ƒOƒAƒŠƒA.                                            
001310         05  ‚v|I—¹|ƒtƒ‰ƒO         PIC  X(01).                 
001320         05  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     PIC  X(01).                 
001330*                                                                 
001340*--< Œ”ƒGƒŠƒA >                                                 
001350     03  Œ”ƒGƒŠƒA.                                              
001360         05  ‚v|“ü—Í|Œ”           PIC  9(09).                 
001361         05  ‚v|“ü—Í|Œ”‚P         PIC  9(09).                 
001370         05  ‚v|o—Í|Œ”           PIC  9(09).                 
001380*                                                                 
001390*                                                                 
001400*--< ‹¤’Êî•ñ >                                                   
001410 01  ‚v|‹¤’Êî•ñ.                                                
001420     03  ‚v|ƒVƒXƒeƒ€“ú•t.                                        
001430         05  ‚v|¢‹I                 PIC  X(02) VALUE  "20".     
001440         05  ‚v|”NŒŽ“ú               PIC  X(06).                 
001450     03  ‚v|ƒVƒXƒeƒ€Žž             PIC  X(08).                 
001460     03  ‚v|’S“–ŽÒ                   PIC  X(08) VALUE "IKOPG   ".
001470                                                                  
001480*----------------------------------------------------------------*
001490*    ƒTƒuƒ‹[ƒ`ƒ“–¼                                              *
001500*----------------------------------------------------------------*
001510 01  CALL-AREA.                                                   
001520*--< ‹¤’ÊƒƒOƒTƒuƒ‹[ƒ`ƒ“ >                                       
001530     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001540     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001550*                                                                 
001560*----------------------------------------------------------------*
001570*    ‚b‚n‚o‚x—Ìˆæ                                                *
001580*----------------------------------------------------------------*
001590*--< ‹¤’ÊƒƒO—pƒpƒ‰ƒ[ƒ^ >                                       
001600 01  IF-CHOCO001.                                                 
001610     COPY  CHOCO001  REPLACING  ==()==  BY  ==‹¤‚P|==.           
001620*                                                                 
001630*----------------------------------------------------------------*
001640*    ‚h‚m‚hƒtƒ@ƒCƒ‹“ÇžƒTƒuƒ‹[ƒ`ƒ“—pƒpƒ‰ƒƒ^—Ìˆæ                *
001650*----------------------------------------------------------------*
001660 01  PARA-AREA.                                                   
001670     COPY CPBCO001.                                               
001680******************************************************************
001690*    ’è”—pƒf[ƒ^’è‹`ƒGƒŠƒA                                      *
001700******************************************************************
001710 CONSTANT                             SECTION.                    
001720 01  ’è”—Ìˆæ.                                                    
001730     03  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c         PIC  X(08) VALUE "COBIS420".
001740     03  ’è”|ƒvƒƒOƒ‰ƒ€–¼           PIC  X(80)                  
001750                              VALUE  "‹¦’²“]•¨Œ‘ã‹à”„‹pˆÚsˆ—".
001760     03  ’è”|‚r‚p‚k‚n‚j             PIC S9(04)  VALUE  ZERO.    
001770     03  ’è”|‚r‚p‚k‚d‚m‚c           PIC S9(04)  VALUE  0100.    
001780     03  ’è”|³íó‘Ô               PIC S9(04)  VALUE  ZERO.    
001790     03  ’è”|ˆÙíó‘Ô               PIC S9(04)  VALUE  0009.    
001800******************************************************************
001810*    ‚o‚q‚n‚b‚d‚c‚t‚q‚d            ‚c‚h‚u‚h‚r‚h‚n‚m              *
001820******************************************************************
001830 PROCEDURE                            DIVISION.                   
001840*                                                                 
001850     PERFORM  ‰Šúˆ—.                                           
001860*                                                                 
001870     PERFORM  Žåˆ—  UNTIL  ‚v|I—¹|ƒtƒ‰ƒO  =  "Y".            
001880*                                                                 
001890     PERFORM  I—¹ˆ—.                                           
001900*                                                                 
001910     STOP     RUN.                                                
001920*                                                                 
001930******************************************************************
001940*    ‰Šúˆ—                        (NO 1.)                     *
001950******************************************************************
001960 ‰Šúˆ—                             SECTION.                    
001970 ‰Šúˆ—|‚r‚s‚`‚q‚s.                                            
001980*                                                                 
001990*----------------------------------------------------------------*
002000*    ŠJŽnƒƒbƒZ[ƒWo—Íˆ—                                      *
002010*----------------------------------------------------------------*
002020     INITIALIZE                       IF-CHOCO001.                
002030     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
002040     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
002050     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
002060     MOVE  "START"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
002070     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
002080     CALL  CLOCO001                USING  IF-CHOCO001.            
002090*                                                                 
002100*----------------------------------------------------------------*
002110*    ì‹Æ—Ìˆæ‚Ì‰Šú’lˆ—                                        *
002120*----------------------------------------------------------------*
002130     MOVE  SPACE                      TO  ‚v‚n‚q‚j|ƒGƒŠƒA.       
002140     INITIALIZE                           ‚v‚n‚q‚j|ƒGƒŠƒA.       
002150*                                                                 
002160*--< ‚b‚o‚t“ú•t‚ðŽæ“¾ >                                           
002170     ACCEPT    ‚v|”NŒŽ“ú               FROM  DATE.               
002180*                                                                 
002190*--< ‚b‚o‚tŽž‚ðŽæ“¾ >                                           
002200     ACCEPT    ‚v|ƒVƒXƒeƒ€Žž         FROM  TIME.               
002210*                                                                 
002220*--< ‚n‚q‚`‚b‚k‚dÚ‘± >                                           
002230     PERFORM   ‚n‚q‚`‚b‚k‚dÚ‘±.                                  
002240*                                                                 
002250*--< Œ‹‡Â–±Šî–{Â–±–¾×ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹éŒ¾ >                   
002260     PERFORM  Â–±Šî–{Â–±–¾×‚Í‚ÌŒŸõðŒ.                       
002270*                                                                 
002280*--<ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“>                                             
002290     PERFORM  ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.                                   
002300*                                                                 
002310*--<Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý>                                       
002320     PERFORM   Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý.                            
002330*                                                                 
002340*--<Œ‹‡Â–±Šî–{Â–±–¾×ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž>                     
002350     PERFORM   Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž.                      
002360*                                                                 
002370 ‰Šúˆ—|‚d‚w‚h‚s.                                              
002380     EXIT.                                                        
002390******************************************************************
002400*    ‚n‚q‚`‚b‚k‚dÚ‘±                 (NO 1.1)                   *
002410******************************************************************
002420 ‚n‚q‚`‚b‚k‚dÚ‘±                     SECTION.                    
002430 ‚n‚q‚`‚b‚k‚dÚ‘±|‚r‚s‚`‚q‚s.                                    
002440*                                                                 
002450*--< ‚c‚aÚ‘±—pî•ñ‚ðŽæ“¾ˆ— >                                   
002460     CALL  COBCO001                USING  PARA-AREA.              
002470*                                                                 
002480     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002490     MOVE  PARA-USERNAME              TO  USERNAME.               
002500     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002510*                                                                 
002520*----------------------------------------------------------------*
002530*    ŠJŽnÚ‘±                                                    *
002540*----------------------------------------------------------------*
002550     IF    DB-STRING  =  SPACE                                    
002560        
      *       EXEC SQL                                                  
002570*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002580*       END-EXEC 
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
002590     ELSE                                                         
002600        
      *       EXEC SQL                                                  
002610*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002620*            USING  :DB-STRING                                    
002630*       END-EXEC 
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
002640     END-IF.                                                      
002650*                                                                 
002660*----------------------------------------------------------------*
002670*    Ú‘±Šm”F                                                    *
002680*----------------------------------------------------------------*
002690     EVALUATE  SQLCODE                                            
002700        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
002710           CONTINUE                                               
002720        WHEN   OTHER                                              
002730*--<       Ú‘±ƒGƒ‰[ >                                           
002740           MOVE     -10               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
002750           PERFORM  ƒGƒ‰[”»’èˆ—                                
002760     END-EVALUATE.                                                
002770*                                                                 
002780 ‚n‚q‚`‚b‚k‚dÚ‘±|‚d‚w‚h‚s.                                      
002790     EXIT.                                                        
002810******************************************************************
002820*        Â–±Šî–{Â–±–¾×‚Í‚ÌŒŸõðŒ.     (NO 1.2)              *
002830******************************************************************
002840 Â–±Šî–{Â–±–¾×‚Í‚ÌŒŸõðŒ                SECTION.             
002850 Â–±Šî–{Â–±–¾×‚Í‚ÌŒŸõðŒ|‚r‚s‚`‚q‚s.                        
002860*----------------------------------------------------------------*
002870*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
002880*----------------------------------------------------------------*
002890     
      *    EXEC SQL                                                     
002900*      DECLARE CUR1  CURSOR FOR                                   
002910*        SELECT  LTRSMK.Â–±Œ_–ñ‚m‚n                              
002920*               ,LTRSMK.ÄƒŠ[ƒXƒR[ƒh                            
002930* 	      ,LTRSMK.Â–±Š¨’èˆ—ƒR[ƒh                        
002940*               ,LTRSMM.ƒŠ[ƒXŠJŽn“úQ¢‹I                        
002950*               ,LTRSMM.ƒŠ[ƒXŠJŽn“úQ”NŒŽ“ú                      
002960*               ,LTRSMM.•¨Œ‘ã‹à‰ñŽû“úQ¢‹I                      
002970*               ,LTRSMM.•¨Œ‘ã‹à‰ñŽû“úQ”NŒŽ“ú                    
002980*               ,LTRSMM.‰ñŽû•¨Œ‹àŠz                              
002990*               ,LTRSMM.”„ãÁ”ïÅ                                
003000*               ,LTRSMM.¿‹ƒf[ƒ^ì¬“úQ¢‹I                    
003010*               ,LTRSMM.¿‹ƒf[ƒ^ì¬“úQ”NŒŽ“ú                  
003020*               ,LTRSMM.ÄƒŠ[ƒXƒR[ƒh                            
003030*               ,LTRSMM.Â–±‹¦’²ƒR[ƒh                            
003040*               ,LTRSMM.Â–±ŽæˆøƒR[ƒh                            
003050*               ,LTRSMM.ÄƒŠ[ƒXƒR[ƒh                            
003060*               ,LTRSMM.Â–±Œ_–ñ‚m‚n                              
003070*               ,LTRSMM.Â–±Š¨’èˆ—ƒR[ƒh                        
003080*               ,LTRSMM.‰ñŽû•ûŽ®ƒR[ƒh                            
003090*          FROM  LTRSMK                                           
003100*               ,LTRSMM                                           
003110*          WHERE  LTRSMK.Â–±Œ_–ñ‚m‚n  =  LTRSMM.Â–±Œ_–ñ‚m‚n     
003120*            AND  LTRSMK.ÄƒŠ[ƒXƒR[ƒh  =                        
003130*                                       LTRSMM.ÄƒŠ[ƒXƒR[ƒh     
003140*            AND  (SUBSTR(LTRSMM.Â–±‹¦’²ƒR[ƒh,1,1)='1'          
003150* 	    OR  LTRSMM.Â–±‹¦’²ƒR[ƒh='46'                      
003160* 	    OR  LTRSMM.Â–±‹¦’²ƒR[ƒh='56')                     
003170* 	   AND  ‰ñŽû•¨Œ‹àŠz <> 0                               
003180*    END-EXEC.
003190*----------------------------------------------------------------*
003200*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mˆ—                                        *
003210*----------------------------------------------------------------*
003220     
      *    EXEC  SQL                                                    
003230*       OPEN  CUR1                                                
003240*    END-EXEC.
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
003250*                                                                 
003260*----------------------------------------------------------------*
003270*    ƒJ[ƒ\ƒ‹‚n‚o‚d‚mŠm”F                                        *
003280*----------------------------------------------------------------*
003290     EVALUATE  SQLCODE                                            
003300        WHEN  ’è”|‚r‚p‚k‚n‚j                                    
003310*--<       ³í >                                                 
003320           CONTINUE                                               
003330        WHEN  OTHER                                               
003340*--<       ƒJ[ƒ\ƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003350           MOVE  -20                   TO  ‚v|ƒGƒ‰[ƒR[ƒh       
003360           PERFORM  ƒGƒ‰[”»’èˆ—                                
003370     END-EVALUATE.                                                
003380*                                                                 
003390 Â–±Šî–{Â–±–¾×‚Í‚ÌŒŸõðŒ|‚d‚w‚h‚s.                          
003400     EXIT.                                                        
003420******************************************************************
003430*                   ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“.       (NO 1.3)             *
003440******************************************************************
003450 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                     SECTION.                    
003460 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚r‚s‚`‚q‚s.                                    
003470*----------------------------------------------------------------*
003480*   ‹¦’²“]•¨Œ‘ã‹à”„‹pƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                           *
003490*----------------------------------------------------------------*
003500     OPEN  OUTPUT  oƒJƒtƒ@ƒCƒ‹.                                  
003510                                                                  
003520*----------------------------------------------------------------*
003530*   ‹¦’²“]•¨Œ‘ã‹à”„‹pƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Šm”F                       *
003540*----------------------------------------------------------------*
003550     EVALUATE   ‚v|ó‘Ô                                          
003560        WHEN  ZERO                                                
003570*--<       ³í >                                                 
003580           CONTINUE                                               
003590        WHEN  OTHER                                               
003600*--<       ƒtƒ@ƒCƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003610           MOVE -30                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003620           PERFORM  ƒGƒ‰[”»’èˆ—                                
003630     END-EVALUATE.                                                
003640*                                                                 
003650*----------------------------------------------------------------*
003660*   Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“                                   *
003670*----------------------------------------------------------------*
003680     OPEN  INPUT  “ü—Íƒtƒ@ƒCƒ‹.                                   
003690*                                                                 
003700*----------------------------------------------------------------*
003710*   Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Šm”F                               *
003720*----------------------------------------------------------------*
003730     EVALUATE   ‚v|ó‘Ô                                          
003740        WHEN  ZERO                                                
003750*--<       ³í >                                                 
003760           CONTINUE                                               
003770        WHEN  OTHER                                               
003780*--<       ƒtƒ@ƒCƒ‹‚n‚o‚d‚mƒGƒ‰[ >                               
003790           MOVE -40                   TO  ‚v|ƒGƒ‰[ƒR[ƒh        
003800           PERFORM  ƒGƒ‰[”»’èˆ—                                
003810     END-EVALUATE.                                                
003820 ƒtƒ@ƒCƒ‹ƒI[ƒvƒ“|‚d‚w‚h‚s.                                      
003830     EXIT.                                                        
003850******************************************************************
003860*              Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý.       (NO 1.5)            *
003870******************************************************************
003880 Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý               SECTION.                    
003890 Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý|‚r‚s‚`‚q‚s.                              
003900     READ    “ü—Íƒtƒ@ƒCƒ‹                                         
003910               AT  END  GO  TO   Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý|‚d‚w‚h‚s.
003920*----------------------------------------------------------------*
003930*              Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚ÝŠm”F                        *
003940*----------------------------------------------------------------*
003950     EVALUATE   ‚v|ó‘Ô                                          
003960        WHEN  ZERO                                                
003970*--<       ³í >                                                 
003980           MOVE          “ü—Í[Šî€“ú TO     ‚v‚r|Šî€“ú         
003990        WHEN  OTHER                                               
004000*--<       “Ç‚ÝƒGƒ‰[ >                                           
004010           MOVE -50                   TO     ‚v|ƒGƒ‰[ƒR[ƒh     
004020           PERFORM  ƒGƒ‰[”»’èˆ—                                
004030     END-EVALUATE.                                                
004040                                                                  
004050 Šî€“K—p“úƒtƒ@ƒCƒ‹“Ç‚Ý|‚d‚w‚h‚s.                                
004060     EXIT.                                                        
004070******************************************************************
004080*        Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž.     (NO 1.6)              *
004090******************************************************************
004100 Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž         SECTION.                    
004110 Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž|‚r‚s‚`‚q‚s.                        
004120*--< Œ‹‡Â–±Šî–{Â–±–¾×ƒe[ƒuƒ‹ƒJ[ƒ\ƒ‹“Çž >                   
004130     
      *    EXEC SQL                                                     
004140*        FETCH  CUR1                                              
004150*         INTO  :‚k‚s‚q‚r‚l‚j|Â–±Œ_–ñ‚m‚n                       
004160*              ,:‚k‚s‚q‚r‚l‚j|ÄƒŠ[ƒXƒR[ƒh                     
004170*              ,:‚k‚s‚q‚r‚l‚j|Â–±Š¨’èˆ—ƒR[ƒh		        
004180*              ,:‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|¢‹I                 
004190*              ,:‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|”NŒŽ“ú               
004200*              ,:‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|¢‹I               
004210*              ,:‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|”NŒŽ“ú             
004220*              ,:‚k‚s‚q‚r‚l‚l|‰ñŽû•¨Œ‹àŠz                       
004230*              ,:‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ                         
004240*              ,:‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|¢‹I             
004250*              ,:‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú           
004260*              ,:‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh                     
004270*              ,:‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh                     
004280*              ,:‚k‚s‚q‚r‚l‚l|Â–±ŽæˆøƒR[ƒh                     
004290*              ,:‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh                     
004300*              ,:‚k‚s‚q‚r‚l‚l|Â–±Œ_–ñ‚m‚n                       
004310*              ,:‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh                 
004320*              ,:‚k‚s‚q‚r‚l‚l|‰ñŽû•ûŽ®ƒR[ƒh                     
004330*    END-EXEC.
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
               ‚k‚s‚q‚r‚l‚j|Â–±Œ_–ñ‚m‚n
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚j|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚j|Â–±Š¨’èˆ—ƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|¢‹I
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|”NŒŽ“ú
               SQL-SQHSTV(5)
           MOVE 6 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|¢‹I
               SQL-SQHSTV(6)
           MOVE 1 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|”NŒŽ“ú
               SQL-SQHSTV(7)
           MOVE 6 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|‰ñŽû•¨Œ‹àŠz
               SQL-SQHSTV(8)
           MOVE 7 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|¢‹I
               SQL-SQHSTV(10)
           MOVE 1 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú
               SQL-SQHSTV(11)
           MOVE 6 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(12)
           MOVE 1 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh
               SQL-SQHSTV(13)
           MOVE 2 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|Â–±ŽæˆøƒR[ƒh
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|Â–±Œ_–ñ‚m‚n
               SQL-SQHSTV(16)
           MOVE 10 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh
               SQL-SQHSTV(17)
           MOVE 2 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|‰ñŽû•ûŽ®ƒR[ƒh
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
004340*----------------------------------------------------------------*
004370*    Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž“Çž‚ðŠm”F                      *
004380*----------------------------------------------------------------*
004390     EVALUATE   SQLCODE                                           
004400        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
004410*--<       ³í >                                                 
004420                                                                  
004430        COMPUTE  ‚v|“ü—Í|Œ”  =  ‚v|“ü—Í|Œ”  +  1          
004431        COMPUTE  ‚v|“ü—Í|Œ”‚P =  ‚v|“ü—Í|Œ”‚P + 1         
004440        WHEN   ’è”|‚r‚p‚k‚d‚m‚c                                 
004450*--<       “ÇžI—¹ >                                             
004460           MOVE  "Y"                  TO  ‚v|I—¹|ƒtƒ‰ƒO        
004470        WHEN   OTHER                                              
004480*--<       “ÇžƒGƒ‰[ >                                           
004490           MOVE     -60               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
004500           PERFORM  ƒGƒ‰[”»’èˆ—                                
004510     END-EVALUATE.                                                
004520*                                                                 
004530 Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž|‚d‚w‚h‚s.                          
004540     EXIT.                                                        
004550******************************************************************
004560*                        Žåˆ—          (NO 2.)                 *
004570******************************************************************
004580 Žåˆ—                               SECTION.                    
004590 Žåˆ—|‚r‚s‚`‚q‚s.                                              
004600*--<’Šoˆ—>                                                     
004610     PERFORM    ’Šoˆ—.                                         
004620*                                                                 
004630*--<’Šo•ÒW >                                                    
004640     PERFORM    ’Šo•ÒW.                                         
004650*                                                                 
004660*--<’ŠooƒJ>                                                     
004670     PERFORM    ’ŠooƒJ.                                         
004680*                                                                 
004690*--<Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž(‚QŒ–ÚˆÈ~)>                     
004700     PERFORM    Â–±Šî–{Â–±–¾×ƒJ[ƒ\ƒ‹“Çž.                     
004710                                                                  
004720 Žåˆ—|‚d‚w‚h‚s.                                                
004780     EXIT.                                                        
004790*                                                                 
004800******************************************************************
004810*                        ’Šoˆ—       (NO 2.1)                 *
004820******************************************************************
004830 ’Šoˆ—                             SECTION.                    
004840 ’Šoˆ—|‚r‚s‚`‚q‚s.                                            
004850*                                                                 
004851     MOVE  ‚k‚s‚q‚r‚l‚j|Â–±Œ_–ñ‚m‚n(2:9)                        
004852                                      TO   ‚v‚r|Â–±Œ_–ñ‚m‚n.    
004860*--<Â–±Šî–{’Šoˆ—>                                             
004890     PERFORM    Â–±Šî–{’Šoˆ—.                                 
004910*                                                                 
004920*--<Â–±–¾×’Šoˆ—>                                             
004930     PERFORM    Â–±–¾×’Šoˆ—.                                 
004950*                                                                 
004960*--<¿‹–¾×î•ñ’Šoˆ—>                                         
004970     PERFORM    ¿‹–¾×î•ñ’Šoˆ—.                             
004990*                                                                 
005000*--<¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹’Šoˆ—>                           
005010     PERFORM    ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹’Šoˆ—.               
005020*                                                                 
005030 ’Šoˆ—|‚d‚w‚h‚s.                                              
005040     EXIT.                                                        
005060******************************************************************
005070*                   Â–±Šî–{’Šoˆ—       NO(2.1.1)             *
005080******************************************************************
005090 Â–±Šî–{’Šoˆ—                     SECTION.                    
005100 Â–±Šî–{’Šoˆ—|‚r‚s‚`‚q‚s.                                    
005110*                                                                 
005120*--<Žæ“¾ÄƒŠ[ƒX‰ñ”>                                             
005130     PERFORM    Œ_–ñŽí—Þ“™•ÏŠ·Žæ“¾.                               
005140*                                                                 
005150*--<Žæ“¾˜A”Ô>                                                     
005190     PERFORM    Žæ“¾˜A”Ô.                                         
005200*                                                                 
005210 Â–±Šî–{’Šoˆ—|‚d‚w‚h‚s.                                      
005220     EXIT.                                                        
005240******************************************************************
005250*              Œ_–ñŽí—Þ“™•ÏŠ·Žæ“¾ÄƒŠ[ƒX‰ñ”  (NO 2.1.1.1)      *
005260******************************************************************
005270 Œ_–ñŽí—Þ“™•ÏŠ·Žæ“¾                   SECTION.                    
005280 Œ_–ñŽí—Þ“™•ÏŠ·Žæ“¾|‚r‚s‚`‚q‚s.                                  
005290*                                                                 
005300*----------------------------------------------------------------*
005310*                ÄƒŠ[ƒX‰ñ”‚ÌŒŸõ                              *
005320*----------------------------------------------------------------*
005330     
      *    EXEC  SQL                                                    
005340*                                                                 
005350*             SELECT  ÄƒŠ[ƒX‰ñ”                                
005351*                    ,Œ_–ñŽí—Þ                                    
005352*                    ,ŽåŒ_–ñ‹æ•ª                                  
005360*                                                                 
005370*               INTO  :‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”                 
005371*                    ,:‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ                     
005372*                    ,:‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª                   
005380*                                                                 
005390*               FROM  IKOTBL002                                   
005400*                                                                 
005410*              WHERE  Œ_–ñ‚m‚n  = :‚v‚r|Â–±Œ_–ñ‚m‚n             
005420*                AND  ÄƒŠ[ƒXƒR[ƒh  =                           
005430*                                :‚k‚s‚q‚r‚l‚j|ÄƒŠ[ƒXƒR[ƒh    
005440*                AND  Â–±Š¨’èˆ—ƒR[ƒh =                        
005450*                                :‚k‚s‚q‚r‚l‚j|Â–±Š¨’èˆ—ƒR[ƒh
005460*    END-EXEC.
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
               ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|Â–±Œ_–ñ‚m‚n
               SQL-SQHSTV(4)
           MOVE 9 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚j|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚j|Â–±Š¨’èˆ—ƒR[ƒh
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
005470*----------------------------------------------------------------*
005480*                ÄƒŠ[ƒX‰ñ”‚ÌŒŸõŠm”F                          *
005490*----------------------------------------------------------------*
005500      EVALUATE   SQLCODE                                          
005510        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
005520*--<       ³í >                                                 
005530           CONTINUE                                               
005540        WHEN   OTHER                                              
005550*--<       “Çž‚µ‚È‚¢ >                                           
005560           MOVE     ZERO              TO                          
005570                                    ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”    
005571           MOVE     SPACE             TO   ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ 
005572           MOVE     ZERO              TO  ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª
005580           MOVE     -70               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
005590           PERFORM  ƒGƒ‰[”»’èˆ—                                
005600     END-EVALUATE.                                                
005610*                                                                 
005620 Œ_–ñŽí—Þ“™•ÏŠ·Žæ“¾|‚d‚w‚h‚s.                                    
005630     EXIT.                                                        
005640******************************************************************
006050*              Žæ“¾˜A”Ô                (NO 2.1.1.2)              *
006060******************************************************************
006070 Žæ“¾˜A”Ô                             SECTION.                    
006080 Žæ“¾˜A”Ô|‚r‚s‚`‚q‚s.                                            
006090*--<NEWƒL[‚Ì‰Šú’lˆ—>                                          
006100      MOVE      SPACE                 TO  ‚v‚r|‚m‚d‚vƒL[.       
006110      INITIALIZE                          ‚v‚r|‚m‚d‚vƒL[.       
006120*                                                                 
006130      MOVE      ‚k‚s‚q‚r‚l‚j|Â–±Œ_–ñ‚m‚n(2:9)                   
006140                                      TO  ‚v‚r|‚m‚d‚v|Œ_–ñ”Ô†. 
006150      MOVE      ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”                        
006160                                   TO  ‚v‚r|‚m‚d‚v|ÄƒŠ[ƒX‰ñ”.
006170      MOVE      ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ                            
006180                                      TO  ‚v‚r|‚m‚d‚v|Œ_–ñŽí—Þ .
006190      IF      ‚v‚r|‚m‚d‚vƒL[  =  ‚v‚r|‚n‚k‚cƒL[               
006200              COMPUTE   ‚v‚r|˜A”Ô  =  ‚v‚r|˜A”Ô  +  1           
006210      ELSE                                                        
006220              MOVE   1                TO     ‚v‚r|˜A”Ô           
006230      END-IF.                                                     
006240*                                                                 
006250*--<OLDƒL[‚Ì‰Šú’lˆ—>                                          
006260      MOVE      SPACE                 TO  ‚v‚r|‚n‚k‚cƒL[.       
006270      INITIALIZE                          ‚v‚r|‚n‚k‚cƒL[.       
006280*                                                                 
006290      MOVE    ‚v‚r|‚m‚d‚vƒL[           TO    ‚v‚r|‚n‚k‚cƒL[.  
006300 Žæ“¾˜A”Ô|‚d‚w‚h‚s.                                              
006310      EXIT.                                                       
006320******************************************************************
006330*              Â–±–¾×’Šoˆ—         NO(2.1.2)                *
006340******************************************************************
006350 Â–±–¾×’Šoˆ—                     SECTION.                    
006360 Â–±–¾×’Šoˆ—|‚r‚s‚`‚q‚s.                                    
006370*--<Žæ“¾VŽæˆøæƒR[ƒh>                                           
006380*                                                                 
006390     PERFORM   ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒu.                            
006400*                                                                 
006450*--<Žæ“¾ŒŽ”>                                                     
006460*                                                                 
006470     PERFORM   Žæ“¾ŒŽ”.                                          
006480*                                                                 
006490*--<Žæ“¾¿‹‘”­sÏƒtƒ‰ƒO>                                       
006500*                                                                 
006510     PERFORM   Žæ“¾¿‹‘”­sÏƒtƒ‰ƒO.                            
006520*                                                                 
006530*--<‰ñŽû•ûŽ®ƒR[ƒh‚ðƒR[ƒh•ÏŠ·>                                   
006540*                                                                 
006550     PERFORM   ‰ñŽû•ûŽ®ƒR[ƒh‚ðƒR[ƒh•ÏŠ·.                        
006560*                                                                 
006570*--<Žæ“¾¿‹“à–óƒR[ƒh>                                           
006580*                                                                 
006590     PERFORM   Žæ“¾¿‹“à–óƒR[ƒh.                                
006600*                                                                 
006610 Â–±–¾×’Šoˆ—|‚d‚w‚h‚s.                                      
006620     EXIT.                                                        
006640******************************************************************
006650*           ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒu        (NO 2.1.2.1)            *
006660******************************************************************
006670 ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒu               SECTION.                    
006680 ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒu|‚r‚s‚`‚q‚s.                              
006690*                                                                 
006700*----------------------------------------------------------------*
006710*           ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒu‚ÌŒŸõ                         *
006720*----------------------------------------------------------------*
006730     
      *    EXEC    SQL                                                  
006740*                                                                 
006750*         SELECT   VŽæˆøæƒR[ƒh                                 
006751*                 ,Ž}”Ô                                           
006760*                                                                 
006770*           INTO  :‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                   
006771*                ,:‚h‚j‚n‚O‚O‚P|Ž}”Ô                             
006780*                                                                 
006790*           FROM   IKOTBL001                                      
006800*                                                                 
006810*          WHERE   ŽæˆøæƒR[ƒh  =  :‚k‚s‚q‚r‚l‚l|Â–±ŽæˆøƒR[ƒh 
006820*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 208 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚P|Ž}”Ô
               SQL-SQHSTV(2)
           MOVE 3 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|Â–±ŽæˆøƒR[ƒh
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
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
006830*                                                                 
006840*----------------------------------------------------------------*
006850*           ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒuŠm”F                           *
006860*----------------------------------------------------------------*
006870     EVALUATE   SQLCODE                                           
006880        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
006890*--<       ³í >                                                 
006900           CONTINUE                                               
006910        WHEN   OTHER                                              
006920*--<       “Çž‚µ‚È‚¢ >                                           
006930           MOVE     ZERO              TO                          
006940                                      ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh
006941           MOVE     ZERO              TO  ‚h‚j‚n‚O‚O‚P|Ž}”Ô      
006950           MOVE     -80               TO  ‚v|ƒGƒ‰[ƒR[ƒh        
006960           PERFORM  ƒGƒ‰[”»’èˆ—                                
006970      END-EVALUATE.                                               
006980                                                                  
006990  ŽæˆøæƒR[ƒh•ÏŠ·ƒe[ƒu|‚d‚w‚h‚s.                               
007000     EXIT.                                                        
007020******************************************************************
007400*           Žæ“¾ŒŽ”                   (NO 2.1.2.2)              *
007410******************************************************************
007420 Žæ“¾ŒŽ”                             SECTION.                    
007430 Žæ“¾ŒŽ”|‚r‚s‚`‚q‚s.                                            
007440     MOVE          SPACE              TO    ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú. 
007450     INITIALIZE                             ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú. 
007470     INITIALIZE                             ‚v‚r|‚s‚d‚l‚oŒŽ”.   
007480     MOVE     ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|¢‹I                  
007490                                      TO   ‚v‚r|‚s‚d‚l‚oŒŽ”.    
007500     MOVE     ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|”NŒŽ“ú                
007510                                      TO   ‚v‚r|”NŒŽ“ú.          
007520     IF       ‚v‚r|‚s‚d‚l‚oŒŽ”  =  ZERO                         
007530            MOVE      19              TO   ‚v‚r|¢‹I             
007540     ELSE                                                         
007550            MOVE      20              TO   ‚v‚r|¢‹I             
007560     END-IF.                                                      
007561     MOVE   ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú(1:4) TO    ‚v‚r|”NŒŽ.           
007570     MOVE         SPACE               TO   ‚v‚r|ƒŠ[ƒXŠJŽn“ú.    
007580     INITIALIZE                            ‚v‚r|ƒŠ[ƒXŠJŽn“ú.    
007600     INITIALIZE                            ‚v‚r|‚s‚d‚l‚oŒŽ”.    
007610     MOVE     ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|¢‹I                    
007620                                      TO   ‚v‚r|‚s‚d‚l‚oŒŽ”.    
007630     MOVE     ‚k‚s‚q‚r‚l‚l|ƒŠ[ƒXŠJŽn“ú|”NŒŽ“ú                  
007640                                      TO ‚v‚r|ŠJŽn“ú”NŒŽ“ú.      
007650     IF       ‚v‚r|‚s‚d‚l‚oŒŽ”  =  0                            
007660              MOVE    19              TO ‚v‚r|ŠJŽn“ú¢‹I         
007670     ELSE                                                         
007680              MOVE    20              TO ‚v‚r|ŠJŽn“ú¢‹I         
007690     END-IF.                                                      
007700     MOVE   ‚v‚r|”NŒŽ“ú(3:2)         TO    ‚v‚r|ŒŽ.             
007710     MOVE   ‚v‚r|ŠJŽn“ú”NŒŽ“ú(3:2)   TO    ‚v‚r|ŠJŽnŒŽ.         
007711     MOVE   ‚v‚r|ƒŠ[ƒXŠJŽn“ú(1:4) TO    ‚v‚r|”NŒŽ‚P.           
007721     COMPUTE  ‚v‚r|ŒŽ”  =   (‚v‚r|”NŒŽ - ‚v‚r|”NŒŽ‚P) * 12.   
007872     COMPUTE  ‚v‚r|ŒŽ”  = ‚v‚r|ŒŽ” + ‚v‚r|ŒŽ - ‚v‚r|ŠJŽnŒŽ. 
007880 Žæ“¾ŒŽ”|‚d‚w‚h‚s.                                              
007890     EXIT.                                                        
007910******************************************************************
007920*           Žæ“¾¿‹‘”­sÏƒtƒ‰ƒO         (NO 2.1.2.3)          *
007930******************************************************************
007940 Žæ“¾¿‹‘”­sÏƒtƒ‰ƒO               SECTION.                    
007950 Žæ“¾¿‹‘”­sÏƒtƒ‰ƒO|‚r‚s‚`‚q‚s.                              
007960                                                                  
007970     IF   ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|¢‹I  =  ZERO           
007980	                                                                
007990	        MOVE        19              TO                          
008000                                      ‚v‚r|¿‹ƒf[ƒ^ì¬“ú|¢‹I
008010	   ELSE                                                         
008020	                                                                
008030		MOVE        20              TO                          
008040                                      ‚v‚r|¿‹ƒf[ƒ^ì¬“ú|¢‹I
008050	   END-IF.                                                      
008060                                                                  
008070	   MOVE  ‚k‚s‚q‚r‚l‚l|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú                 
008080	                                    TO                          
008090                                    ‚v‚r|¿‹ƒf[ƒ^ì¬“ú|”NŒŽ“ú
008091     MOVE     “ü—Í[Šî€“ú            TO  ‚v‚r|Šî€“ú.           
008100     IF   ‚v‚r|¿‹ƒf[ƒ^ì¬“ú  <  ‚v‚r|Šî€“ú                 
008110                                                                  
008120	         MOVE         "1"           TO  ‚v‚r|¿‹‘”­sÏƒtƒ‰ƒO
008130                                                                  
008140     ELSE                                                         
008150                                                                  
008160          MOVE         "0"            TO  ‚v‚r|¿‹‘”­sÏƒtƒ‰ƒO
008170	                                                                
008180     END-IF.                                                      
008190                                                                  
008200 Žæ“¾¿‹‘”­sÏƒtƒ‰ƒO|‚d‚w‚h‚s.                                
008210     EXIT.                                                        
008220******************************************************************
008230*           ‰ñŽû•ûŽ®ƒR[ƒh‚ðƒR[ƒh•ÏŠ·      (NO 2.1.2.4)         *
008240******************************************************************
008250 ‰ñŽû•ûŽ®ƒR[ƒh‚ðƒR[ƒh•ÏŠ·           SECTION.                    
008260 ‰ñŽû•ûŽ®ƒR[ƒh‚ðƒR[ƒh•ÏŠ·|‚r‚s‚`‚q‚s.                          
008270*                                                                 
008280      EVALUATE      ‚k‚s‚q‚r‚l‚l|‰ñŽû•ûŽ®ƒR[ƒh                  
008290                                                                  
008300	       WHEN   1                                                 
008310	                                                                
008320		   MOVE   "0"               TO      ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh
008330         WHEN   2                                                 
008340	                                                                
008350	           MOVE   "5"               TO      ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh
008360         WHEN   3                                                 
008370                                                                  
008380	           MOVE    "3"              TO      ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh
008390         WHEN   4                                                 
008400	           MOVE    "4"              TO      ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh
008410         WHEN OTHER                                               
008420             MOVE    "0"              TO      ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh
008430     END-EVALUATE.                                                
008440                                                                  
008450 ‰ñŽû•ûŽ®ƒR[ƒh‚ðƒR[ƒh•ÏŠ·|‚d‚w‚h‚s.                            
008460     EXIT.                                                        
008480******************************************************************
008490*           Žæ“¾¿‹“à–óƒR[ƒh          (NO 2.1.2.5)             *
008500******************************************************************
008510 Žæ“¾¿‹“à–óƒR[ƒh                   SECTION.                    
008520 Žæ“¾¿‹“à–óƒR[ƒh|‚r‚s‚`‚q‚s.                                  
008530                                                                  
008531      MOVE       ZERO                 TO   ‚v‚r|ƒtƒ‰ƒO.          
008540      IF   ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  89                
008550                                                                  
008560	        MOVE     "U00"              TO   ‚v‚r|¿‹“à–óƒR[ƒh   
008570          MOVE       1                TO   ‚v‚r|ƒtƒ‰ƒO           
008580      END-IF.                                                     
008590      IF    (‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  52  OR          
008600             ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  = 62)              
008610        AND ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh  =  "56"                 
008620        AND ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª  =  "5"                      
008630        AND ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ(1:1)  NOT =  "6"               
008640                                                                  
008650           MOVE    "W01"              TO   ‚v‚r|¿‹“à–óƒR[ƒh   
008651           MOVE       1               TO   ‚v‚r|ƒtƒ‰ƒO           
008660                                                                  
008670      END-IF.                                                     
008680      IF    (‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  52  OR          
008690             ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  62)             
008700        AND ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh  =  "56"                 
008710        AND ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª  =  "5"                      
008720        AND ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ(1:1)  =  "6"                   
008730                                                                  
008740           MOVE    "WO2"              TO   ‚v‚r|¿‹“à–óƒR[ƒh   
008741           MOVE       1               TO   ‚v‚r|ƒtƒ‰ƒO           
008750      END-IF.                                                     
008760      IF    (‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  52  OR          
008770             ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  = 62)              
008780       AND ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh  =  "56"                  
008790       AND ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª  =  "0"                       
008800                                                                  
008810	         MOVE    "W51"              TO   ‚v‚r|¿‹“à–óƒR[ƒh   
008811           MOVE       1               TO   ‚v‚r|ƒtƒ‰ƒO           
008820      END-IF.                                                     
008830      IF    (‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  51  OR          
008840             ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  61)             
008850        AND ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh  =  "56"                 
008860        AND ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª  =  "0"                      
008870                                                                  
008880	         MOVE    "W52"              TO   ‚v‚r|¿‹“à–óƒR[ƒh   
008881           MOVE       1               TO   ‚v‚r|ƒtƒ‰ƒO           
008890      END-IF.                                                     
008900      IF     ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  39              
008910         AND ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh  =  "46"                
008920	       AND ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª  =  "5"                     
008930         AND ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ(1:1)  NOT =  "6"              
008940                                                                  
008950	       MOVE    "V01"                TO   ‚v‚r|¿‹“à–óƒR[ƒh   
008951         MOVE       1                 TO   ‚v‚r|ƒtƒ‰ƒO           
008960      END-IF.                                                     
008970      IF     ‚k‚s‚q‚r‚l‚l|Â–±Š¨’èˆ—ƒR[ƒh  =  39              
008980         AND ‚k‚s‚q‚r‚l‚l|Â–±‹¦’²ƒR[ƒh  =  "46"                
008990	       AND ‚h‚j‚n‚O‚O‚Q|ŽåŒ_–ñ‹æ•ª  =  "5"                     
009000         AND ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ(1:1)   =  "6"                 
009010                                                                  
009020	       MOVE    "V02"                TO   ‚v‚r|¿‹“à–óƒR[ƒh   
009021         MOVE       1                 TO   ‚v‚r|ƒtƒ‰ƒO           
009030      END-IF.                                                     
009031      IF     ‚v‚r|ƒtƒ‰ƒO  =  ZERO                                
009032         MOVE      ZERO               TO   ‚v‚r|¿‹“à–óƒR[ƒh   
009033      END-IF.                                                     
009040 Žæ“¾¿‹“à–óƒR[ƒh|‚d‚w‚h‚s.                                    
009050      EXIT.                                                       
009070******************************************************************
009080*           ¿‹–¾×î•ñ’Šoˆ—       (NO 2.1.3)                *
009090******************************************************************
009100 ¿‹–¾×î•ñ’Šoˆ—                 SECTION.                    
009110 ¿‹–¾×î•ñ’Šoˆ—|‚r‚s‚`‚q‚s.                                
009120*                                                                 
009130*--<Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz>                                       
009140*                                                                 
009150      PERFORM    Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz.                          
009160*                                                                 
009170*--<“ü‹àÁž‚ðs‚Á‚½Û‚ÉƒZƒbƒg‚³‚ê‚éÅV‚ÌÁž’Ê”Ô>               
009180*                                                                 
009190      PERFORM    “ü‹àÁžÅV.                                    
009200*                                                                 
009250 ¿‹–¾×î•ñ’Šoˆ—|‚d‚w‚h‚s.                                  
009260      EXIT.                                                       
009280******************************************************************
009290*                Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz   (NO 2.1.3.1)           *
009300******************************************************************
009310 Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz                       SECTION.            
009320 Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz|‚r‚s‚`‚q‚s.                              
009330*----------------------------------------------------------------*
009340*                Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz‚ÌŒŸõ                    *
009350*----------------------------------------------------------------*
009360                                                                  
009370     
      *    EXEC   SQL                                                   
009380*                                                                 
009390*           SELECT  Áž‹àŠz                                      
009400*                  ,Áž“úQ”NŒŽ“ú                                
009410*                  ,Áž“úQ¢‹I                                  
009420*             INTO :‚k‚s‚q‚r‚j‚l|Áž‹àŠz                        
009430*                 ,:‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú                  
009440*                 ,:‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I                    
009450*             FROM  LTRSKM                                        
009460*                                                                 
009470*            WHERE  Œ_–ñ”Ô†  =  :‚v‚r|Â–±Œ_–ñ‚m‚n              
009480*              AND  ÄƒŠ[ƒXƒR[ƒh  =                             
009490*                                    :‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh
009500*              AND  ¿‹“à–óƒR[ƒh  = :‚v‚r|¿‹“à–óƒR[ƒh       
009510*               AND  “Ë‡Ïƒtƒ‰ƒO  =  NULL                         
009520*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 235 TO SQL-OFFSET
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
               ‚k‚s‚q‚r‚j‚l|Áž‹àŠz
               SQL-SQHSTV(1)
           MOVE 7 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú
               SQL-SQHSTV(2)
           MOVE 6 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ‚v‚r|Â–±Œ_–ñ‚m‚n
               SQL-SQHSTV(4)
           MOVE 9 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ‚v‚r|¿‹“à–óƒR[ƒh
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
009530*----------------------------------------------------------------*
009540*                Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz‚ÌŒŸõ                    *
009550*----------------------------------------------------------------*
009560     EVALUATE   SQLCODE                                           
009570        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
009580*--<       ³í >                                                 
009590           PERFORM     ‘S‚Ä‘¶Ý‚·‚éê‡                           
009600        WHEN   OTHER                                              
009610*--<       “Çž‚µ‚È‚¢ >                                           
009620           PERFORM     ‘S‚Ä‚µ‚È‚¢                                 
009630                                                                  
009640      END-EVALUATE.                                               
009650 Žæ“¾”„‹p‘ã‹à‚Ì‰ñŽûÏŠz|‚d‚w‚h‚s.                                
009660      EXIT.                                                       
009680******************************************************************
009690*                ‘S‚Ä‘¶Ý‚·‚éê‡                                *
009700******************************************************************
009710 ‘S‚Ä‘¶Ý‚·‚éê‡                     SECTION.                    
009720 ‘S‚Ä‘¶Ý‚·‚éê‡|‚r‚s‚`‚q‚s.                                    
009730     IF    ‚k‚s‚q‚r‚j‚l|Áž“ú|¢‹I  =  ZERO                    
009740                                                                  
009750           MOVE        19             TO    ‚v‚r|¢‹I            
009760     ELSE                                                         
009770           MOVE        20             TO    ‚v‚r|¢‹I            
009780     END-IF.                                                      
009790     MOVE        ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú                     
009800                                      TO    ‚v‚r|”NŒŽ“ú          
009810     IF    ‚k‚s‚q‚r‚j‚l|Áž‹àŠz  >  ZERO                        
009820*--<NO 15>                                                        
009830           MOVE    ‚k‚s‚q‚r‚l‚l|‰ñŽû•¨Œ‹àŠz                     
009831                                     TO    oƒJ[‰ñŽûŠz           
009840*--<NO 16>                                                        
009850           MOVE    ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ                       
009860                                      TO    oƒJ[‰ñŽûŠzÁ”ïÅ    
009870*--<NO 17>                                                        
009880           MOVE    ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú                           
009890                                      TO    oƒJ[‰ñŽû”NŒŽ“ú      
009900     ELSE                                                         
009910           MOVE    ZERO               TO    oƒJ[‰ñŽûŠz          
009920           MOVE    ZERO               TO    oƒJ[‰ñŽûŠzÁ”ïÅ    
009930           MOVE    ZERO               TO    oƒJ[‰ñŽû”NŒŽ“ú      
009940     END-IF.                                                      
009950 ‘S‚Ä‘¶Ý‚·‚éê‡|‚d‚w‚h‚s.                                      
009960     EXIT.                                                        
009970******************************************************************
009980*                ‘S‚Ä‚µ‚È‚¢                                      *
009990******************************************************************
010000 ‘S‚Ä‚µ‚È‚¢                           SECTION.                    
010010 ‘S‚Ä‚µ‚È‚¢|‚r‚s‚`‚q‚s.                                          
010020     IF    ‚v‚r|Šî€“ú(1:6)  > ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú(1:6)         
010030*--<”„‹p‘ã‹à(No.1‚O)‚ð•ÒW>                                       
010040           MOVE    ‚k‚s‚q‚r‚l‚l|‰ñŽû•¨Œ‹àŠz                     
010041                                      TO    oƒJ[‰ñŽûŠz          
010050*--<”„‹p‘ã‹àÁ”ïÅ(No.11)‚ð•ÒW>                                  
010060           MOVE    ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ                       
010070                                      TO    oƒJ[‰ñŽûŠzÁ”ïÅ    
010080*--<‰ñŽû—\’è“úi‚m‚‚Xj‚ð•ÒW>                                   
010090           MOVE   ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú TO    oƒJ[‰ñŽû”NŒŽ“ú     
010100     ELSE                                                         
010110                                                                  
010120           MOVE    ZERO               TO    oƒJ[‰ñŽûŠz          
010130           MOVE    ZERO               TO    oƒJ[‰ñŽûŠzÁ”ïÅ    
010140           MOVE    ZERO               TO    oƒJ[‰ñŽû”NŒŽ“ú      
010150     END-IF.                                                      
010160 ‘S‚Ä‚µ‚È‚¢|‚d‚w‚h‚s.                                            
010170     EXIT.                                                        
010180******************************************************************
010190*                “ü‹àÁžÅV           (NO 2.1.3.2)             *
010200******************************************************************
010210 “ü‹àÁžÅV                         SECTION.                    
010220 “ü‹àÁžÅV|‚r‚s‚`‚q‚s.                                        
010230*                                                                 
010240*----------------------------------------------------------------*
010250*                “ü‹àÁžÅV‚ÌŒŸõ                              *
010260*----------------------------------------------------------------*
010270      
      *     EXEC     SQL                                                
010280*                                                                 
010290*             SELECT   Áž’Ê”Ô                                   
010291*                     ,Áž“úQ”NŒŽ“ú                             
010300*                                                                 
010310*               INTO  :‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô                     
010311*                    ,:‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú               
010320*                                                                 
010330* 	      FROM   LTRSKM                                     
010340*                                                                 
010350*              WHERE   Œ_–ñ”Ô†  =   :‚v‚r|Â–±Œ_–ñ‚m‚n          
010360*                AND   ÄƒŠ[ƒXƒR[ƒh  =                          
010370*                                    :‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh
010380* 	       AND   ¿‹“à–óƒR[ƒh  =  :‚v‚r|¿‹“à–óƒR[ƒh   
010390*     END-EXEC.
            CALL "SQLADR" USING SQ0005 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 274 TO SQL-OFFSET
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
                ‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô
                SQL-SQHSTV(1)
            MOVE 5 TO SQL-SQHSTL(1)
            MOVE 0 TO SQL-SQHSTS(1)
            MOVE 0 TO SQL-SQINDV(1)
            MOVE 0 TO SQL-SQINDS(1)
            MOVE 0 TO SQL-SQHARM(1)
            CALL "SQLADR" USING
                ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú
                SQL-SQHSTV(2)
            MOVE 6 TO SQL-SQHSTL(2)
            MOVE 0 TO SQL-SQHSTS(2)
            MOVE 0 TO SQL-SQINDV(2)
            MOVE 0 TO SQL-SQINDS(2)
            MOVE 0 TO SQL-SQHARM(2)
            CALL "SQLADR" USING
                ‚v‚r|Â–±Œ_–ñ‚m‚n
                SQL-SQHSTV(3)
            MOVE 9 TO SQL-SQHSTL(3)
            MOVE 0 TO SQL-SQHSTS(3)
            MOVE 0 TO SQL-SQINDV(3)
            MOVE 0 TO SQL-SQINDS(3)
            MOVE 0 TO SQL-SQHARM(3)
            CALL "SQLADR" USING
                ‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh
                SQL-SQHSTV(4)
            MOVE 1 TO SQL-SQHSTL(4)
            MOVE 0 TO SQL-SQHSTS(4)
            MOVE 0 TO SQL-SQINDV(4)
            MOVE 0 TO SQL-SQINDS(4)
            MOVE 0 TO SQL-SQHARM(4)
            CALL "SQLADR" USING
                ‚v‚r|¿‹“à–óƒR[ƒh
                SQL-SQHSTV(5)
            MOVE 3 TO SQL-SQHSTL(5)
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
010400*----------------------------------------------------------------*
010410*                “ü‹àÁžÅVŠm”F                                *
010420*----------------------------------------------------------------*
010430      EVALUATE   SQLCODE                                          
010440        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
010450*--<       ³í >                                                 
010460           CONTINUE                                               
010470        WHEN   OTHER                                              
010480*--<       “Çž‚µ‚È‚¢ >                                           
010490           MOVE     ZERO              TO   ‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô 
010491           MOVE     ZERO              TO                          
010492                                      ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú
010500           MOVE     -90               TO   ‚v|ƒGƒ‰[ƒR[ƒh       
010510           PERFORM     ƒGƒ‰[”»’èˆ—                             
010520      END-EVALUATE.                                               
010530                                                                  
010540 “ü‹àÁžÅV|‚d‚w‚h‚s.                                          
010550      EXIT.                                                       
010960******************************************************************
010970*             ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹’Šoˆ—   (NO 2.1.4)    *
010980******************************************************************
010990 ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹’Šoˆ—   SECTION.                    
011000 ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹’Šoˆ—|‚r‚s‚`‚q‚s.                  
011010*                                                                 
011020*----------------------------------------------------------------*
011030*           ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹‚ÌŒŸõ                     *
011040*----------------------------------------------------------------*
011050     
      *    EXEC   SQL                                                   
011060*     SELECT    Œ»¿‹“à–óƒR[ƒh                                  
011070*                                                                 
011080*       INTO   :‚h‚j‚n‚O‚O‚T|Œ»¿‹“à–óƒR[ƒh                    
011090*                                                                 
011100*       FROM    IKOTBL005                                         
011110*                                                                 
011120*      WHERE    V¿‹“à–óƒR[ƒh  =  :‚v‚r|¿‹“à–óƒR[ƒh        
011130*    END-EXEC.
           CALL "SQLADR" USING SQ0006 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 309 TO SQL-OFFSET
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
               ‚h‚j‚n‚O‚O‚T|Œ»¿‹“à–óƒR[ƒh
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ‚v‚r|¿‹“à–óƒR[ƒh
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
011140*----------------------------------------------------------------*
011150*           ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹Šm”F                       *
011160*----------------------------------------------------------------*
011170      EVALUATE   SQLCODE                                          
011180        WHEN   ’è”|‚r‚p‚k‚n‚j                                   
011190*--<       ³í >                                                 
011200           CONTINUE                                               
011210        WHEN   OTHER                                              
011220*--<       “Çž‚µ‚È‚¢ >                                           
011230           MOVE     ZERO              TO                          
011240                                    ‚h‚j‚n‚O‚O‚T|Œ»¿‹“à–óƒR[ƒh
011250           MOVE     -100              TO   ‚v|ƒGƒ‰[ƒR[ƒh       
011260           PERFORM     ƒGƒ‰[”»’èˆ—                             
011270      END-EVALUATE.                                               
011280 ¿‹“à–óƒR[ƒh•ÏŠ·ƒe[ƒuƒ‹’Šoˆ—|‚d‚w‚h‚s.                    
011290      EXIT.                                                       
011310******************************************************************
011320*                     ’Šo•ÒW          (NO 2.2)                 *
011330******************************************************************
011340 ’Šo•ÒW                             SECTION.                    
011350 ’Šo•ÒW|‚r‚s‚`‚q‚s.                                            
011360*--<NO 1>                                                         
011370     MOVE   ‚v‚r|Â–±Œ_–ñ‚m‚n        TO   oƒJ[Œ_–ñ”Ô†.        
011390*--<NO 2>                                                         
011400     MOVE   ‚h‚j‚n‚O‚O‚Q|ÄƒŠ[ƒX‰ñ”                            
011410                                      TO   oƒJ[ÄƒŠ[ƒX‰ñ”.    
011420*--<NO 3>                                                         
011430     MOVE   ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ    TO   oƒJ[Œ_–ñŽí—Þ.        
011440*--<NO 4>                                                         
011450     MOVE   ‚v‚r|˜A”Ô                TO   oƒJ[˜A”Ô.            
011460*--<NO 5>                                                         
011470     MOVE   ‚h‚j‚n‚O‚O‚P|VŽæˆøæƒR[ƒh                          
011480                                      TO   oƒJ[ŽæˆøæƒR[ƒh.    
011490*--<NO 6>                                                         
011500     MOVE   ‚h‚j‚n‚O‚O‚P|Ž}”Ô        TO   oƒJ[¿‹æƒR[ƒh.    
011510*--<NO 7>                                                         
011520     MOVE    ‚v‚r|ŒŽ”               TO   oƒJ[‰ñŽûƒTƒCƒg.      
011530*--<NO 8>                                                         
011540     MOVE   ‚k‚s‚q‚r‚l‚l|•¨Œ‘ã‹à‰ñŽû“ú|”NŒŽ“ú(5:2)             
011550                                      TO   oƒJ[‰ñŽû“ú.          
011560*--<NO 9>                                                         
011570     MOVE   ‚v‚r|•¨Œ‘ã‹à‰ñŽû“ú      TO   oƒJ[‰ñŽû—\’è“ú.      
011580*--<NO 10>                                                        
011590     MOVE   ‚k‚s‚q‚r‚l‚l|‰ñŽû•¨Œ‹àŠz                            
011600                                      TO   oƒJ[”„‹p‘ã‹à.        
011610*--<NO 11>                                                        
011620     MOVE   ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ  TO   oƒJ[”„‹p‘ã‹àÁ”ïÅ.  
011630*--<NO 12>                                                        
011640     MOVE   ZERO                      TO   oƒJ[”„‹p‘ãŽè”—¿.    
011650*--<NO 13>                                                        
011660     MOVE   oƒJ[”„‹p‘ã‹à            TO   oƒJ[”„‹p‘ã‘Šz.      
011670*--<NO 14>                                                        
011680     MOVE   oƒJ[”„‹p‘ã‹àÁ”ïÅ      TO   oƒJ[”„‹p‘ã‘ŠzÁ”ïÅ.
011690                                                                  
011700*--<NO 18>                                                        
011710     COMPUTE   oƒJ[–¢‰ñŽûŠz  =  oƒJ[”„‹p‘ã‘Šz                
011720                               +  oƒJ[”„‹p‘ã‘ŠzÁ”ïÅ          
011730                               -  oƒJ[‰ñŽûŠz                    
011740                               -  oƒJ[‰ñŽûŠzÁ”ïÅ.             
011750*--<NO 19>                                                        
011760     MOVE   ‚v‚r|¿‹‘”­sÏƒtƒ‰ƒO  TO                          
011770                                         oƒJ[¿‹‘”­sÏƒtƒ‰ƒO.
011780*--<NO 20>                                                        
011790     MOVE   ZERO                      TO                          
011800                                     oƒJ[ŽæÁ¿‹‘”­sÏƒtƒ‰ƒO.
011810*--<NO 21>                                                        
011820     MOVE   ZERO                      TO   oƒJ[¿‹‘”Ô†.      
011830*--<NO 22>                                                        
011840     MOVE   ‚v|ƒVƒXƒeƒ€“ú•t          TO   oƒJ[XV”NŒŽ“ú.      
011850*--<NO 23>                                                        
011860     MOVE   ‚v|ƒVƒXƒeƒ€Žž          TO   oƒJ[XVŽžŠÔ.        
011870*--<NO 24>                                                        
011880     MOVE   ‚v|’S“–ŽÒ                TO   oƒJ[XVŽÒ.          
011890*--<NO 25>                                                        
011900     MOVE   ‚v|’S“–ŽÒ                TO   oƒJ[“ü—Í’S“–ŽÒƒR[ƒh.
011910*--<NO 26>                                                        
011920     MOVE   ‚v‚r|‰ñŽû•ûŽ®ƒR[ƒh      TO   oƒJ[‰ñŽû•û–@.        
011930*--<NO 27>                                                        
011940     IF   ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ(1:1)  =  "6"                     
011950          MOVE    oƒJ[”„‹p‘ã‹à      TO   oƒJ[ƒ\ƒtƒg”„‹p‘ã‹à   
011960     ELSE                                                         
011970          MOVE    ZERO                TO   oƒJ[ƒ\ƒtƒg”„‹p‘ã‹à   
011980     END-IF.                                                      
011990*--<NO 28>                                                        
012000     IF   ‚h‚j‚n‚O‚O‚Q|Œ_–ñŽí—Þ(1:1)  =  "6"                     
012010          MOVE   oƒJ[”„‹p‘ã‹àÁ”ïÅ TO                          
012020                                        oƒJ[ƒ\ƒtƒg”„‹p‘ã‹àÁ”ïÅ
012030     ELSE                                                         
012040          MOVE    ZERO                TO                          
012050                                        oƒJ[ƒ\ƒtƒg”„‹p‘ã‹àÁ”ïÅ
012060     END-IF.                                                      
012070*--<NO 29>                                                        
012080     MOVE   ‚v|ƒVƒXƒeƒ€“ú•t          TO   oƒJ[“o˜^”NŒŽ“ú.      
012090*--<NO 30>                                                        
012100     MOVE   ‚v|ƒVƒXƒeƒ€Žž          TO   oƒJ[“o˜^ŽžŠÔ.        
012110*--<NO 31>                                                        
012120     MOVE   ‚v|’S“–ŽÒ                TO   oƒJ[“o˜^’S“–ŽÒ.      
012130*--<NO 32>                                                        
012140     MOVE   ‚v‚r|¿‹“à–óƒR[ƒh      TO   oƒJ[¿‹“à–óƒR[ƒh.  
012150*--<NO 33>                                                        
012160     MOVE   ‚k‚s‚q‚r‚j‚l|Áž’Ê”Ô    TO   oƒJ[Áž’Ê”Ô.        
012170*--<NO 34>                                                        
012180     MOVE   oƒJ[‰ñŽû”NŒŽ“ú          TO   oƒJ[‰‰ñ“ü‹à“ú.      
012190*--<NO 35>                                                        
012200     MOVE   ‚k‚s‚q‚r‚j‚l|Áž“ú|”NŒŽ“ú                          
012210                                      TO   oƒJ[Áž”NŒŽ“ú.      
012220*--<NO 36>                                                        
012230     IF     ‚k‚s‚q‚r‚l‚l|”„ãÁ”ïÅ  NOT =  ZERO                 
012240            MOVE   0.05                TO   oƒJ[Á”ïÅ—¦        
012250     ELSE                                                         
012260            MOVE   ZERO               TO   oƒJ[Á”ïÅ—¦         
012270     END-IF.                                                      
012280*--<NO 37>                                                        
012290     IF     oƒJ[Á”ïÅ—¦  =  ZERO                               
012300            MOVE   ZERO               TO   oƒJ[Á”ïÅ—¦‹æ•ª     
012310     ELSE                                                         
012320            MOVE   "12"               TO   oƒJ[Á”ïÅ—¦‹æ•ª     
012330     END-IF.                                                      
012340*--<NO 38>                                                        
012350     MOVE   ‚k‚s‚q‚r‚l‚l|ÄƒŠ[ƒXƒR[ƒh                          
012360                                      TO oƒJ[Œ³ÄƒŠ[ƒXƒR[ƒh‚P.
012370*--<NO 39>                                                        
012380     MOVE   ‚h‚j‚n‚O‚O‚T|Œ»¿‹“à–óƒR[ƒh                        
012390                                      TO oƒJ[Œ³¿‹“à–óƒR[ƒh‚P.
012400*--<NO 40>                                                        
012410     IF     oƒJ[‰ñŽû—\’è“ú(1:2)  =  20                          
012420                                                                  
012430	          MOVE         1            TO  ‚v‚r|Œ³‰ñŽû—\’è“ú|¢‹I
012440	   ELSE                                                         
012450	          MOVE         0            TO  ‚v‚r|Œ³‰ñŽû—\’è“ú|¢‹I
012460	   END-IF.                                                      
012470	   MOVE   oƒJ[‰ñŽû—\’è“ú(3:6)     TO                          
012480                                       ‚v‚r|Œ³‰ñŽû—\’è“ú|”NŒŽ“ú.
012490                                                                  
012500     MOVE   ‚v‚r|Œ³‰ñŽû—\’è“ú        TO    oƒJ[Œ³‰ñŽû—\’è“ú‚P. 
012510 ’Šo•ÒW|‚d‚w‚h‚s.                                              
012520     EXIT.                                                        
012540******************************************************************
012550*                        ’ŠooƒJ           (NO 2.3)             *
012560******************************************************************
012570 ’ŠooƒJ                             SECTION.                    
012580 ’ŠooƒJ|‚r‚s‚`‚q‚s.                                            
012590*                                                                 
012600     WRITE   oƒJ[ƒŒƒR[ƒh.                                      
012610     EVALUATE   ‚v|ó‘Ô                                          
012620        WHEN   ZERO                                               
012630*--<   ³í >                                                     
012640            COMPUTE  ‚v|o—Í|Œ”  =  ‚v|o—Í|Œ”  +  1      
012650                                                                  
012660        WHEN   OTHER                                              
012670*--<WRITE ƒGƒ‰[>                                                 
012680            MOVE     -110              TO  ‚v|ƒGƒ‰[ƒR[ƒh       
012690                                                                  
012700            PERFORM  ƒGƒ‰[”»’èˆ—                               
012710                                                                  
012720     END-EVALUATE.                                                
012730                                                                  
012740 ’ŠooƒJ|‚d‚w‚h‚s.                                              
012750     EXIT.                                                        
012760******************************************************************
012770*                     I—¹ˆ—             (NO 3.)               *
012780******************************************************************
012790 I—¹ˆ—                             SECTION.                    
012800 I—¹ˆ—|‚r‚s‚`‚q‚s.                                            
012810*                                                                 
012820      PERFORM  ‚c‚aƒNƒ[ƒYˆ—.                                  
012830*                                                                 
012840      CLOSE    oƒJƒtƒ@ƒCƒ‹  “ü—Íƒtƒ@ƒCƒ‹.                        
012850*                                                                 
012860      PERFORM  I—¹ƒƒbƒZ[ƒWo—Í.                                
012870*                                                                 
012880*--< ƒvƒƒOƒ‰ƒ€³íI—¹ >                                         
012890      MOVE  ’è”|³íó‘Ô             TO  PROGRAM-STATUS.        
012900*                                                                 
012910 I—¹ˆ—|‚d‚w‚h‚s.                                              
012920      EXIT.                                                       
012930******************************************************************
012940*    I—¹ƒƒbƒZ[ƒWo—Í           (NO 3.2)                       *
012950******************************************************************
012960 I—¹ƒƒbƒZ[ƒWo—Í                   SECTION.                    
012970 I—¹ƒƒbƒZ[ƒWo—Í|‚r‚s‚`‚q‚s.                                  
012980*                                                                 
012990*----------------------------------------------------------------*
013000*    Œ”ƒƒbƒZ[ƒWo—Íˆ—                                      *
013010*----------------------------------------------------------------*
013020     INITIALIZE                       IF-CHOCO001.                
013030     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
013040     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
013050     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
013060     MOVE  "LTRSMM"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
013070     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
013080     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
013090     MOVE  "Â–±–¾×“ü—Í"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
013100     CALL  CLOCO001                USING  IF-CHOCO001.            
013110*                                                                 
013111     INITIALIZE                       IF-CHOCO001.                
013112     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
013113     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
013114     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
013115     MOVE  "LTRSMK"                   TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
013116     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
013117     MOVE  ‚v|“ü—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
013118     MOVE  "Â–±Šî–{“ü—Í"             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
013119     CALL  CLOCO001                USING  IF-CHOCO001             
013120*                                                                 
013121     INITIALIZE                       IF-CHOCO001.                
013130     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
013140     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
013150     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
013160     MOVE  "CISUF421"                 TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c. 
013170     MOVE  "COUNT"                    TO  ‹¤‚P|ˆ—Ž¯•Ê.         
013180     MOVE  ‚v|o—Í|Œ”             TO  ‹¤‚P|ƒf[ƒ^“à—e.       
013190     MOVE  "‹¦’²“]•¨Œ‘ã‹à”„‹pˆÚsˆ—o—Í"                       
013191                                      TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
013200     CALL  CLOCO001                USING  IF-CHOCO001.            
013210*                                                                 
013220*----------------------------------------------------------------*
013230*    I—¹ƒƒbƒZ[ƒWo—Í                                          *
013240*----------------------------------------------------------------*
013250     INITIALIZE                       IF-CHOCO001.                
013260     MOVE  "3"                        TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê.     
013270     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c       TO  ‹¤‚P|ƒ\[ƒX‚h‚c.       
013280     MOVE  "0"                        TO  ‹¤‚P|•œ‹AƒR[ƒh.       
013290     MOVE  "END"                      TO  ‹¤‚P|ˆ—Ž¯•Ê.         
013300     MOVE  ’è”|ƒvƒƒOƒ‰ƒ€–¼         TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW. 
013310     CALL  CLOCO001                USING  IF-CHOCO001.            
013320*                                                                 
013330 I—¹ƒƒbƒZ[ƒWo—Í|‚d‚w‚h‚s.                                    
013340     EXIT.                                                        
013350******************************************************************
013360*    ‚c‚aƒNƒ[ƒY                  (NO 3.1)                      *
013370******************************************************************
013380 ‚c‚aƒNƒ[ƒYˆ—                     SECTION.                    
013390 ‚c‚aƒNƒ[ƒYˆ—|‚r‚s‚`‚q‚s.                                    
013400*                                                                 
013410*--< ƒJ[ƒ\ƒ‹ ƒNƒ[ƒY >                                          
013420     
      *    EXEC SQL                                                     
013430*       CLOSE  CUR1                                               
013440*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 332 TO SQL-OFFSET
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
013450*                                                                 
013460 ‚c‚aƒNƒ[ƒYˆ—|‚d‚w‚h‚s.                                      
013470     EXIT.                                                        
013480******************************************************************
013490*    ƒGƒ‰[ˆ—                                                  *
013500******************************************************************
013510 ƒGƒ‰[”»’èˆ—                       SECTION.                    
013520 ƒGƒ‰[”»’èˆ—|‚r‚s‚`‚q‚s.                                      
013530*                                                                 
013540     MOVE  "Y"                        TO  ‚v|ˆÙíI—¹|ƒtƒ‰ƒO.   
013550     INITIALIZE                           IF-CHOCO001.            
013560*                                                                 
013570     EVALUATE  ‚v|ƒGƒ‰[ƒR[ƒh                                   
013580        WHEN  -10                                                 
013590*--<       ‚n‚q‚`‚b‚k‚dÚ‘±Ž¸”s >                                 
013600           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
013610           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
013620           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
013630           MOVE  "CONNECT"            TO  ‹¤‚P|ˆ—Ž¯•Ê          
013640           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
013650           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
013660           CALL  CLOCO001          USING  IF-CHOCO001             
013670*                                                                 
013680        WHEN  -20                                                 
013690*--<       Œ‹‡ƒe[ƒuƒ‹“ÇžŽ¸”s >                                 
013700           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
013710           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
013720           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
013730           MOVE  "LTRSMM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
013740           MOVE  "OPEN"           TO  ‹¤‚P|ˆ—Ž¯•Ê          
013750           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
013760           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
013770           CALL  CLOCO001          USING  IF-CHOCO001             
013780*                                                                 
013790        WHEN  -30                                                 
013800*--<       ‹¦’²“]•¨Œ‘ã‹à”„‹pƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s >               
013810           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
013820           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
013830           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
013840           MOVE  "FFUIS420"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
013850           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
013860           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
013870           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
013880           CALL  CLOCO001          USING  IF-CHOCO001             
013890*                                                                 
013900        WHEN  -40                                                 
013910*--<       Šî€“K—p“úƒtƒ@ƒCƒ‹ƒI[ƒvƒ“Ž¸”s >                       
013920           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
013930           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
013940           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
013950           MOVE  "FFUISA01"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
013960           MOVE  "OPEN"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
013970           CALL  CLOCO001          USING  IF-CHOCO001             
013980*                                                                 
013990        WHEN  -50                                                 
014000*--<       “Ç‚ÝðŒŽ¸”s >                                         
014010           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014020           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014030           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014040           MOVE  "FFUISA01"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014050           MOVE  "READ"               TO  ‹¤‚P|ˆ—Ž¯•Ê          
014060           MOVE  ‚v|ó‘Ô             TO  ‹¤‚P|ƒf[ƒ^“à—e        
014070           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
014080           CALL  CLOCO001          USING  IF-CHOCO001             
014090*                                                                 
014100        WHEN  -60                                                 
014110*--<       ƒJ[ƒ\ƒ‹ðŒŽ¸”s >                                     
014120           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014130           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014140           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014150           MOVE  "LTRSMM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014160           MOVE  "FEACH"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
014170           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
014180           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
014190           CALL  CLOCO001          USING  IF-CHOCO001             
014200                                                                  
014210        WHEN  -70                                                 
014220*--<       ÄƒŠ[ƒX‰ñ”’Šoˆ—Ž¸”s >                             
014230           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014240           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014250           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014260           MOVE  "IKO002"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014270           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
014280           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
014290           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
014300           CALL  CLOCO001          USING  IF-CHOCO001             
014301           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
014310*                                                                 
014320        WHEN  -80                                                 
014330*--<       ŽæˆøæƒR[ƒh’Šoˆ—Ž¸”s  >                            
014340           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014350           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014360           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014370           MOVE  "IKO001"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014380           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
014390           MOVE  SQLCODE              TO  ‹¤‚P|ƒf[ƒ^“à—e        
014400           MOVE  SQLERRMC             TO  ‹¤‚P|‚»‚Ì‘¼ƒƒbƒZ[ƒW  
014410           CALL  CLOCO001          USING  IF-CHOCO001             
014420           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
014430*                                                                 
014440        WHEN  -90                                                 
014450*--<       “ü‹àÁž‚ðs‚Á‚½”NŒŽ“ú’Šoˆ—Ž¸”s >                   
014460           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014470           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014480           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014490           MOVE  "LTRSKM"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014500           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
014510           CALL  CLOCO001          USING  IF-CHOCO001             
014520           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
014530*                                                                 
014540        WHEN  -100                                                
014550*--<       ¿‹“à–óƒR[ƒh’Šoˆ—Ž¸”s >                           
014560           MOVE  "2"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014570           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014580           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014590           MOVE  "IKO005"             TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014600           MOVE  "SELECT"             TO  ‹¤‚P|ˆ—Ž¯•Ê          
014610           CALL  CLOCO001          USING  IF-CHOCO001             
014620           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
014630*                                                                 
014640        WHEN  -110                                                
014650*--<       ƒtƒ@ƒCƒ‹o—Íˆ—Ž¸”s >                                 
014660           MOVE  "1"                  TO  ‹¤‚P|ƒCƒxƒ“ƒgŽí•Ê      
014670           MOVE  ’è”|ƒvƒƒOƒ‰ƒ€‚h‚c TO  ‹¤‚P|ƒ\[ƒX‚h‚c        
014680           MOVE  "9"                  TO  ‹¤‚P|•œ‹AƒR[ƒh        
014690           MOVE  "FFUIS420"           TO  ‹¤‚P|ˆ—ƒe[ƒuƒ‹‚h‚c  
014700           MOVE  "WRITE"              TO  ‹¤‚P|ˆ—Ž¯•Ê          
014710           CALL  CLOCO001          USING  IF-CHOCO001             
014711           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
014720*                                                                 
014730        WHEN  OTHER                                               
014740           MOVE  "N"                  TO ‚v|ˆÙíI—¹|ƒtƒ‰ƒO     
014750     END-EVALUATE.                                                
014760*                                                                 
014770     IF ‚v|ˆÙíI—¹|ƒtƒ‰ƒO  =  "Y"                              
014780*                                                                 
014790        PERFORM  I—¹ƒƒbƒZ[ƒWo—Í                               
014800*                                                                 
014810*--<    ƒvƒƒOƒ‰ƒ€ˆÙíI—¹‚ÌƒŠƒ^[ƒ“ƒR[ƒh >                      
014820        MOVE  ’è”|ˆÙíó‘Ô          TO  PROGRAM-STATUS          
014830*                                                                 
014840        EXIT  PROGRAM                                             
014850     END-IF.                                                      
014860*                                                                 
014870 ƒGƒ‰[ˆ—|‚d‚w‚h‚s.                                            
014880     EXIT.                                                        
014890******************************************************************
014900*                  END OF PROGRAM                                *
014910******************************************************************
