000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名  : 協調転物件代金売却テーブル             *
000040*                        （D346KTB_TBL)                          *
000050*      2. プログラムID  : COBIS420                               *
000060*      3. 処理概要      : ・債務DB.債務基本、債務DB.債務明細は   *
000070*                          、債権契約ＮＯ・再リースコード        *
000080*                            をKEYとし、JOINで指                 *
000090*                           請求DB.請求明細情報の検索条件は      *
000100*                           移行項目対比表の移行元説明欄を参照   *
000110*      4. 作成者        : 王宏傑                                 *
000120*      5. 作成日        : 2005.04.6                              *
000130******************************************************************
000140*                                                                 
000150******************************************************************
000160*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000170******************************************************************
000180 IDENTIFICATION                       DIVISION.                   
000190*                                                                 
000200 PROGRAM-ID.                          COBIS420.                   
000210******************************************************************
000220*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000230******************************************************************
000240 ENVIRONMENT                          DIVISION.                   
000250******************************************************************
000260*    ＩＮＰＵＴ－ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000270******************************************************************
000280 INPUT-OUTPUT                         SECTION.                    
000290 FILE-CONTROL.                                                    
000300     SELECT         入力ファイル      ASSIGN    TO      U01       
000310     FILE      STATUS     IS          Ｗ－状態                    
000320     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000330*                                                                 
000340     SELECT         出力ファイル      ASSIGN    TO     U11        
000350     FILE      STATUS     IS          Ｗ－状態                    
000360     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000370******************************************************************
000380*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000390******************************************************************
000400 DATA                                 DIVISION.                   
000410******************************************************************
000420*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000430******************************************************************
000440 FILE                                 SECTION.                    
000450*----------------------------------------------------------------*
000460*    入力ファイル 基準適用日ファイル                             *
000470*----------------------------------------------------------------*
000480 FD  入力ファイル                                                 
000490     LABEL  RECORD    IS              STANDARD                    
000500     BLOCK  CONTAINS  0               RECORDS.                    
000510*                                                                 
000520 01  入力－レコード.                                              
000530     COPY   CISPF001   REPLACING      ==()==  BY  ==入力－==.     
000540*----------------------------------------------------------------*
000550*    出力ファイル  協調転物件代金売却ファイル                     
000560*----------------------------------------------------------------*
000570 FD  出力ファイル                                                 
000580     LABEL     RECORD     IS          STANDARD                    
000590     BLOCK     CONTAINS   0           RECORDS.                    
000600*                                                                 
000610 01  出力－レコード.                                              
000620     COPY  CISUF421    REPLACING      ==()==  BY  ==出力－==.     
000630******************************************************************
000640*    ＷＯＲＫＩＮＧ－ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ              *
000650******************************************************************
000660 WORKING-STORAGE                      SECTION.                    
000670*----------------------------------------------------------------*
000680*    ホスト変数定義エリア                                        *
000690*----------------------------------------------------------------*
000700     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS420.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(151) VALUE "select 再リース回数  ,契約種類  
      -     ",主契約区分   into :b1,:b2,:b3  from IKOTBL002 where ((契約
      -    "ＮＯ=:b4 and 再リースコード=:b5) and 債務勘定処理コード=:b6)
      -    "".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(82) VALUE "select 新取引先コード  ,枝番   in
      -    "to :b1,:b2  from IKOTBL001 where 取引先コード=:b3".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(160) VALUE "select 消込金額  ,消込日＿世紀  
      -    ",消込日＿年月日  ,消込通番   into :b1,:b2,:b3,:b4  from LTRS
      -     "KM where (((契約番号=:b5 and 再リースコード=:b6) and 請求内
      -    "訳コード=".

           02  FILLER PIC X(28) VALUE ":b7) and 突合済フラグ=null )".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(77) VALUE "select 現請求内訳コード   into :b
      -    "1  from IKOTBL005 where 新請求内訳コード=:b2".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +287813.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +20.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 20 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 20 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select LTRSMK.債務契約ＮＯ  ,LTR
      -    "SMK.再リースコード  ,LTRSMK.債務勘定処理コード  ,LTRSMM.債務
      -    "取引コード  ,LTRSMM.物件代金回収日＿世紀  ,LTRSMM.物件代金回
      -    "収日＿年".

           02  FILLER PIC X(160) VALUE "月日  ,LTRSMM.リース開始日＿世紀
      -    "  ,LTRSMM.リース開始日＿年月日  ,LTRSMM.回収物件金額  ,LTRSM
      -    "M.売上消費税  ,LTRSMM.債務契約ＮＯ  ,LTRSMM.請求データ作成日
      -    "＿世紀  ".

           02  FILLER PIC X(160) VALUE ",LTRSMM.請求データ作成日＿年月日
      -    "  ,LTRSMM.回収方式コード  ,LTRSMM.再リースコード  ,LTRSMM.債
      -    "務勘定処理コード  ,LTRSMM.債務協調コード  ,LTRSMM.売上消費税
      -    "  ,LTRSM".

           02  FILLER PIC X(159) VALUE "M.契約明細ＮＯ  ,LTRSMM.レコード
      -     "シーケンス   from LTRSMK ,LTRSMM where (((LTRSMM.債務契約Ｎ
      -    "Ｏ=LTRSMK.債務契約ＮＯ and LTRSMM.再リースコード=LTRSMK.再リ
      -    "ースコー".

           02  FILLER PIC X(147) VALUE "ド) and ((SUBSTR(LTRSMM.債務協調
      -    "コード,1,1)=:b1 or LTRSMM.債務協調コード=:b2) or LTRSMM.債務
      -    "協調コード=:b3)) and LTRSMM.回収物件金額<>0)           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +277.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +281.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +786.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +346.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +94.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +414.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +20.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +189.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +151.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +645.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +228.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +82.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +706.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +255.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +188.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +818.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +298.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +77.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +1067.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +321.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +1159.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000710 01 ＷＳ－債務協調コード１            PIC  X(01) VALUE "1".       
000720 01 ＷＳ－債務協調コード２            PIC  X(02) VALUE "46".      
000730 01 ＷＳ－債務協調コード３            PIC  X(02) VALUE "56".      
000740 01 ＷＳ－債務契約ＮＯ                PIC  X(10).                 
000750 01 ＷＳ－連番                        PIC  9(03) VALUE 0.         
000760 01 ＷＳ－物件代金回収日－年          PIC  9(04).                 
000770 01 ＷＳ－物件代金回収日－月          PIC  9(02).                 
000780 01 ＷＳ－物件代金回収日－日          PIC  9(02).                 
000790 01 ＷＳ－物件代金回収日－年月        PIC  9(06).                 
000800 01 ＷＳ－物件代金回収日              PIC  9(08).                 
000810 01 ＷＳ－リース開始日－年            PIC  9(04).                 
000820 01 ＷＳ－リース開始日－月            PIC  9(02).                 
000830 01 ＷＳ－月数                        PIC  S9(02).                
000840 01 ＷＳ－基準日－年月                PIC  9(06).                 
000850*--< 回収方式コード >                                             
000860 01 ＷＳ－振込                        PIC  9(01) VALUE 0.         
000870 01 ＷＳ－回収方法振込                PIC  X(01) VALUE "1".       
000880 01 ＷＳ－手形                        PIC  9(01) VALUE 2.         
000890 01 ＷＳ－約束手形                    PIC  X(01) VALUE "5".       
000900 01 ＷＳ－自動引落                    PIC  9(01) VALUE 3.         
000910 01 ＷＳ－回収方法自動引落            PIC  X(01) VALUE "3".       
000920 01 ＷＳ－ＭＦＳ代理回収              PIC  9(01) VALUE 4.         
000930 01 ＷＳ－代理回収                    PIC  X(01) VALUE "4".       
000940*--< 契約種類(No.3)の上1桁  >                                     
000950 01 ＷＳ－契約種類                    PIC  X(01) VALUE "6".       
000960 01 ＷＳ－契約種類１桁                PIC  X(01).                 
000970*--< 請求書発行済フラグ >                                         
000980 01 ＷＳ－基準日                      PIC  9(8).                  
000990 01 ＷＳ－請求データ作成日－年月日    PIC  9(8).                  
001000*--< 元回収予定日１  >                                            
001010 01 ＷＳ－元回収予定日１世紀          PIC  X(02).                 
001020 01 ＷＳ－出力請求内訳コード          PIC  X(03).                 
001021*                                                                 
001030*--< ＯＲＡＣＬＥ共通変数 >                                       
001040     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
001050*                        M40MAB.CBL                               
001060*--< ＯＲＡＣＬＥ  ＳＱＬ実行情報 >                               
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
001070     
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
001080*                                                                 
001090*--< 債務基本 テーブル >                                          
001100     
      *    EXEC  SQL   INCLUDE  LTRSMK.CBL            END-EXEC.
001110*                                                                 
001120*--< 債務明細 テーブル >                                          
000010************************************************
000020* 債務（債務基本）(LTRSMK)
000030************************************************
000040 01  ＬＴＲＳＭＫ－債務契約ＮＯ PIC  X(010).
000050 01  ＬＴＲＳＭＫ－再リースコード PIC S9(001) COMP-3.
000060 01  ＬＴＲＳＭＫ－事業所コード PIC S9(004) COMP-3.
000070 01  ＬＴＲＳＭＫ－担当者コード PIC S9(004) COMP-3.
000080 01  ＬＴＲＳＭＫ－契約情報－回収物件金額１ PIC S9(013) COMP-3.
000090 01  ＬＴＲＳＭＫ－契約情報－契約金額１ PIC S9(013) COMP-3.
000100 01  ＬＴＲＳＭＫ－契約情報－回収物件金額２ PIC S9(013) COMP-3.
000110 01  ＬＴＲＳＭＫ－契約情報－契約金額２ PIC S9(013) COMP-3.
000120 01  ＬＴＲＳＭＫ－契約情報－回収物件金額３ PIC S9(013) COMP-3.
000130 01  ＬＴＲＳＭＫ－契約情報－契約金額３ PIC S9(013) COMP-3.
000140 01  ＬＴＲＳＭＫ－契約情報－回収物件金額４ PIC S9(013) COMP-3.
000150 01  ＬＴＲＳＭＫ－契約情報－契約金額４ PIC S9(013) COMP-3.
000160 01  ＬＴＲＳＭＫ－契約情報－回収物件金額５ PIC S9(013) COMP-3.
000170 01  ＬＴＲＳＭＫ－契約情報－契約金額５ PIC S9(013) COMP-3.
000180 01  ＬＴＲＳＭＫ－契約情報－回収物件金額６ PIC S9(013) COMP-3.
000190 01  ＬＴＲＳＭＫ－契約情報－契約金額６ PIC S9(013) COMP-3.
000200 01  ＬＴＲＳＭＫ－契約情報－回収物件金額７ PIC S9(013) COMP-3.
000210 01  ＬＴＲＳＭＫ－契約情報－契約金額７ PIC S9(013) COMP-3.
000220 01  ＬＴＲＳＭＫ－契約情報－回収物件金額８ PIC S9(013) COMP-3.
000230 01  ＬＴＲＳＭＫ－契約情報－契約金額８ PIC S9(013) COMP-3.
000240 01  ＬＴＲＳＭＫ－契約情報－回収物件金額９ PIC S9(013) COMP-3.
000250 01  ＬＴＲＳＭＫ－契約情報－契約金額９ PIC S9(013) COMP-3.
000260 01  ＬＴＲＳＭＫ－契約情報－回収物件金額１０ PIC S9(013) COMP-3.
000270 01  ＬＴＲＳＭＫ－契約情報－契約金額１０ PIC S9(013) COMP-3.
000280 01  ＬＴＲＳＭＫ－債務勘定処理コード PIC S9(002) COMP-3.
000290 01  ＬＴＲＳＭＫ－全部解約日－世紀 PIC S9(001) COMP-3.
000300 01  ＬＴＲＳＭＫ－全部解約日－年月日 PIC  X(006).
000310 01  ＬＴＲＳＭＫ－全部解約年月－世紀 PIC S9(001) COMP-3.
000320 01  ＬＴＲＳＭＫ－全部解約年月－年月 PIC  X(004).
000330 01  ＬＴＲＳＭＫ－旧債務契約ＮＯ PIC  X(010).
000340 01  ＬＴＲＳＭＫ－新債務契約ＮＯ PIC  X(010).
000350 01  ＬＴＲＳＭＫ－レコードシーケンス１ PIC S9(001) COMP-3.
000360 01  ＬＴＲＳＭＫ－レコードシーケンス２ PIC S9(001) COMP-3.
000370 01  ＬＴＲＳＭＫ－レコードシーケンス３ PIC S9(001) COMP-3.
000380 01  ＬＴＲＳＭＫ－レコードシーケンス４ PIC S9(001) COMP-3.
000390 01  ＬＴＲＳＭＫ－レコードシーケンス５ PIC S9(001) COMP-3.
000400 01  ＬＴＲＳＭＫ－レコードシーケンス６ PIC S9(001) COMP-3.
000410 01  ＬＴＲＳＭＫ－レコードシーケンス７ PIC S9(001) COMP-3.
000420 01  ＬＴＲＳＭＫ－レコードシーケンス８ PIC S9(001) COMP-3.
000430 01  ＬＴＲＳＭＫ－レコードシーケンス９ PIC S9(001) COMP-3.
000440 01  ＬＴＲＳＭＫ－レコードシーケンス１０ PIC S9(001) COMP-3.
000450 01  ＬＴＲＳＭＫ－ダミー００１ PIC  X(022).
000460 01  ＬＴＲＳＭＫ－共通情報 PIC  X(035).
001130     
      *    EXEC  SQL  INCLUDE  LTRSMM.CBL            END-EXEC.
001140*                                                                 
001150*--< 請求明細情報 テーブル >                                      
000010************************************************
000020* 債務（債務明細）(LTRSMM)
000030************************************************
000040 01  ＬＴＲＳＭＭ－債務契約ＮＯ PIC  X(010).
000050 01  ＬＴＲＳＭＭ－再リースコード PIC S9(001) COMP-3.
000060 01  ＬＴＲＳＭＭ－契約明細ＮＯ PIC S9(002) COMP-3.
000070 01  ＬＴＲＳＭＭ－レコードシーケンス PIC S9(001) COMP-3.
000080 01  ＬＴＲＳＭＭ－債務取引コード PIC  X(008).
000090 01  ＬＴＲＳＭＭ－債務協調コード PIC  X(002).
000100 01  ＬＴＲＳＭＭ－ＲＥＦ番号 PIC  X(016).
000110 01  ＬＴＲＳＭＭ－契約日－世紀 PIC S9(001) COMP-3.
000120 01  ＬＴＲＳＭＭ－契約日－年月日 PIC  X(006).
000130 01  ＬＴＲＳＭＭ－検収日－世紀 PIC S9(001) COMP-3.
000140 01  ＬＴＲＳＭＭ－検収日－年月日 PIC  X(006).
000150 01  ＬＴＲＳＭＭ－部分解約日－世紀 PIC S9(001) COMP-3.
000160 01  ＬＴＲＳＭＭ－部分解約日－年月日 PIC  X(006).
000170 01  ＬＴＲＳＭＭ－内容変更日－世紀 PIC S9(001) COMP-3.
000180 01  ＬＴＲＳＭＭ－内容変更日－年月日 PIC  X(006).
000190 01  ＬＴＲＳＭＭ－部分解約年月度－世紀 PIC S9(001) COMP-3.
000200 01  ＬＴＲＳＭＭ－部分解約年月度－年月 PIC  X(004).
000210 01  ＬＴＲＳＭＭ－ダミー００１ PIC  X(010).
000220 01  ＬＴＲＳＭＭ－回収物件金額 PIC S9(013) COMP-3.
000230 01  ＬＴＲＳＭＭ－売上消費税 PIC S9(013) COMP-3.
000240 01  ＬＴＲＳＭＭ－物件代金回収日－世紀 PIC S9(001) COMP-3.
000250 01  ＬＴＲＳＭＭ－物件代金回収日－年月日 PIC  X(006).
000260 01  ＬＴＲＳＭＭ－回収方式コード PIC S9(001) COMP-3.
000270 01  ＬＴＲＳＭＭ－売上消費税相殺区分 PIC S9(001) COMP-3.
000280 01  ＬＴＲＳＭＭ－請求データ作成日－世紀 PIC S9(001) COMP-3.
000290 01  ＬＴＲＳＭＭ－請求データ作成日－年月日 PIC  X(006).
000300 01  ＬＴＲＳＭＭ－ダミー００２ PIC  X(010).
000310 01  ＬＴＲＳＭＭ－リース開始日－世紀 PIC S9(001) COMP-3.
000320 01  ＬＴＲＳＭＭ－リース開始日－年月日 PIC  X(006).
000330 01  ＬＴＲＳＭＭ－リース終了日－世紀 PIC S9(001) COMP-3.
000340 01  ＬＴＲＳＭＭ－リース終了日－年月日 PIC  X(006).
000350 01  ＬＴＲＳＭＭ－リース期間 PIC S9(003) COMP-3.
000360 01  ＬＴＲＳＭＭ－ファイナンス開始日－世紀 PIC S9(001) COMP-3.
000370 01  ＬＴＲＳＭＭ－ファイナンス開始日－年月日 PIC  X(006).
000380 01  ＬＴＲＳＭＭ－ファイナンス－世紀 PIC S9(001) COMP-3.
000390 01  ＬＴＲＳＭＭ－ファイナンス－年月日 PIC  X(006).
000400 01  ＬＴＲＳＭＭ－ファイナンス期間 PIC S9(003) COMP-3.
000410 01  ＬＴＲＳＭＭ－債務勘定処理コード PIC S9(002) COMP-3.
000420 01  ＬＴＲＳＭＭ－リース料 PIC S9(013) COMP-3.
000430 01  ＬＴＲＳＭＭ－支払サイクル PIC S9(002) COMP-3.
000440 01  ＬＴＲＳＭＭ－支払回数 PIC S9(003) COMP-3.
000450 01  ＬＴＲＳＭＭ－毎月支払日 PIC S9(002) COMP-3.
000460 01  ＬＴＲＳＭＭ－計算方式 PIC S9(001) COMP-3.
000470 01  ＬＴＲＳＭＭ－据置期間 PIC S9(003) COMP-3.
000480 01  ＬＴＲＳＭＭ－ＢＥＧＩＮ回数 PIC S9(001) COMP-3.
000490 01  ＬＴＲＳＭＭ－第１回リース料約定支払日世紀 
000491                                              PIC S9(001) COMP-3.
000500 01  ＬＴＲＳＭＭ－第１回リース料約定支払日年月日 PIC  X(006).
000510 01  ＬＴＲＳＭＭ－第１回リース料支払日－世紀 PIC S9(001) COMP-3.
000520 01  ＬＴＲＳＭＭ－第１回リース料支払日－年月日 PIC  X(006).
000530 01  ＬＴＲＳＭＭ－前払リース料支払日－世紀 PIC S9(001) COMP-3.
000540 01  ＬＴＲＳＭＭ－前払リース料支払日－年月日 PIC  X(006).
000550 01  ＬＴＲＳＭＭ－前払リース料 PIC S9(013) COMP-3.
000560 01  ＬＴＲＳＭＭ－前払リース料消費税 PIC S9(013) COMP-3.
000570 01  ＬＴＲＳＭＭ－前払リース料実支払額 PIC S9(013) COMP-3.
000580 01  ＬＴＲＳＭＭ－前払リース料諸費用 PIC S9(013) COMP-3.
000590 01  ＬＴＲＳＭＭ－前払リース料充当開始年月世紀 
000591                                              PIC S9(001) COMP-3.
000600 01  ＬＴＲＳＭＭ－前払リース料充当開始年月年月日 PIC  X(004).
000610 01  ＬＴＲＳＭＭ－前払リース料充当終了年月世紀  
000611                                              PIC S9(001) COMP-3.
000620 01  ＬＴＲＳＭＭ－前払リース料充当終了年月年月日 PIC  X(004).
000630 01  ＬＴＲＳＭＭ－前払充当月数 PIC S9(003) COMP-3.
000640 01  ＬＴＲＳＭＭ－利回り基本 PIC S9(002)V9(9) COMP-3.
000650 01  ＬＴＲＳＭＭ－利回り実質 PIC S9(002)V9(9) COMP-3.
000660 01  ＬＴＲＳＭＭ－総支払金額 PIC S9(013) COMP-3.
000670 01  ＬＴＲＳＭＭ－利息合計 PIC S9(013) COMP-3.
000680 01  ＬＴＲＳＭＭ－粗利益 PIC S9(013) COMP-3.
000690 01  ＬＴＲＳＭＭ－消費税総額 PIC S9(013) COMP-3.
000700 01  ＬＴＲＳＭＭ－消費税支払区分 PIC S9(001) COMP-3.
000710 01  ＬＴＲＳＭＭ－消費税税率 PIC S9(002)V9(1) COMP-3.
000720 01  ＬＴＲＳＭＭ－消費税コード PIC S9(002) COMP-3.
000730 01  ＬＴＲＳＭＭ－諸費用固定資産税 PIC S9(013) COMP-3.
000740 01  ＬＴＲＳＭＭ－諸費用保険料 PIC S9(013) COMP-3.
000750 01  ＬＴＲＳＭＭ－諸費用保守料 PIC S9(013) COMP-3.
000760 01  ＬＴＲＳＭＭ－諸費用そのた１ PIC S9(013) COMP-3.
000770 01  ＬＴＲＳＭＭ－諸費用そのた２ PIC S9(013) COMP-3.
000780 01  ＬＴＲＳＭＭ－諸費用区分 PIC S9(001) COMP-3.
000790 01  ＬＴＲＳＭＭ－支払先コード PIC  X(004).
000800 01  ＬＴＲＳＭＭ－銀行コード PIC  X(007).
000810 01  ＬＴＲＳＭＭ－口座番号 PIC  X(007).
000820 01  ＬＴＲＳＭＭ－預金種類 PIC  X(001).
000830 01  ＬＴＲＳＭＭ－支払確定日－世紀 PIC S9(001) COMP-3.
000840 01  ＬＴＲＳＭＭ－支払確定日－年月日 PIC  X(006).
000850 01  ＬＴＲＳＭＭ－支払確定年月度－世紀 PIC S9(001) COMP-3.
000860 01  ＬＴＲＳＭＭ－支払確定年月度－年月 PIC  X(004).
000870 01  ＬＴＲＳＭＭ－担当者コード PIC  X(004).
000880 01  ＬＴＲＳＭＭ－支払承認情報サブシステム区分 PIC  X(001).
000890 01  ＬＴＲＳＭＭ－支払承認情報シーケンス PIC S9(005) COMP-3.
000900 01  ＬＴＲＳＭＭ－支払承認情報支払承認日－世紀 
000901                                              PIC S9(001) COMP-3.
000910 01  ＬＴＲＳＭＭ－支払承認情報支払承認日－年月日 PIC  X(006).
000920 01  ＬＴＲＳＭＭ－支払承認情報担当者コード PIC S9(004) COMP-3.
000930 01  ＬＴＲＳＭＭ－残価支払承認サブシステム区分 PIC  X(001).
000940 01  ＬＴＲＳＭＭ－残価支払承認シーケンス PIC S9(005) COMP-3.
000950 01  ＬＴＲＳＭＭ－残価支払承認支払承認日－世紀 
000951                                              PIC S9(001) COMP-3.
000960 01  ＬＴＲＳＭＭ－残価支払承認支払承認日－年月日 PIC  X(006).
000970 01  ＬＴＲＳＭＭ－残価支払承認担当者コード PIC S9(004) COMP-3.
000980 01  ＬＴＲＳＭＭ－前月末債務残高 PIC S9(013) COMP-3.
000990 01  ＬＴＲＳＭＭ－前月末元本残高 PIC S9(013) COMP-3.
001000 01  ＬＴＲＳＭＭ－前期末消費税残高 PIC S9(013) COMP-3.
001010 01  ＬＴＲＳＭＭ－残価額 PIC S9(013) COMP-3.
001020 01  ＬＴＲＳＭＭ－残価支払日－世紀 PIC S9(001) COMP-3.
001030 01  ＬＴＲＳＭＭ－残価支払日－年月日 PIC  X(006).
001040 01  ＬＴＲＳＭＭ－ダミー００３ PIC  X(024).
001050 01  ＬＴＲＳＭＭ－初回情報実リース料 PIC S9(013) COMP-3.
001060 01  ＬＴＲＳＭＭ－初回情報ＮＥＴリース料 PIC S9(013) COMP-3.
001070 01  ＬＴＲＳＭＭ－初回情報利息 PIC S9(013) COMP-3.
001080 01  ＬＴＲＳＭＭ－初回情報元本支払額 PIC S9(013) COMP-3.
001090 01  ＬＴＲＳＭＭ－初回情報元本残高 PIC S9(013) COMP-3.
001100 01  ＬＴＲＳＭＭ－初回情報債務残高 PIC S9(013) COMP-3.
001110 01  ＬＴＲＳＭＭ－初回情報消費税額 PIC S9(013) COMP-3.
001120 01  ＬＴＲＳＭＭ－初回情報消費税残高 PIC S9(013) COMP-3.
001130 01  ＬＴＲＳＭＭ－初回情報諸費用 PIC S9(013) COMP-3.
001140 01  ＬＴＲＳＭＭ－初回情報実支払額 PIC S9(013) COMP-3.
001150 01  ＬＴＲＳＭＭ－初回情報消費税率 PIC S9(002)V9(1) COMP-3.
001160 01  ＬＴＲＳＭＭ－初回情報ダミー PIC  X(014).
001170 01  ＬＴＲＳＭＭ－支払データ作成日－世紀 PIC S9(001) COMP-3.
001180 01  ＬＴＲＳＭＭ－支払データ作成日－年月日 PIC  X(006).
001190 01  ＬＴＲＳＭＭ－請求データ作成日－世紀２ PIC S9(001) COMP-3.
001200 01  ＬＴＲＳＭＭ－請求データ作成日－年月日２ PIC  X(006).
001210 01  ＬＴＲＳＭＭ－仕訳データ作成日－世紀 PIC S9(001) COMP-3.
001220 01  ＬＴＲＳＭＭ－仕訳データ作成日－年月日 PIC  X(006).
001230 01  ＬＴＲＳＭＭ－ダミー００４ PIC  X(018).
001240 01  ＬＴＲＳＭＭ－共通情報 PIC  X(035).
001160     
      *    EXEC  SQL  INCLUDE  LTRSKM.CBL            END-EXEC.
001170*                                                                 
001180*--< 変換テーブル >                                               
000010************************************************
000020* 請求（請求明細情報）(LTRSKM)
000030************************************************
000040 01  ＬＴＲＳＫＭ－ＫＥＹ項目請求先コード PIC  X(008).
000050 01  ＬＴＲＳＫＭ－契約番号 PIC  X(009).
000060 01  ＬＴＲＳＫＭ－再リースコード PIC S9(001) COMP-3.
000070 01  ＬＴＲＳＫＭ－入金予定日 PIC  X(007).
000080 01  ＬＴＲＳＫＭ－請求内訳コード PIC  X(003).
000090 01  ＬＴＲＳＫＭ－総支払回数 PIC S9(003) COMP-3.
000100 01  ＬＴＲＳＫＭ－充当回数 PIC S9(003) COMP-3.
000110 01  ＬＴＲＳＫＭ－回収方式 PIC S9(001) COMP-3.
000120 01  ＬＴＲＳＫＭ－長短区分 PIC S9(001) COMP-3.
000130 01  ＬＴＲＳＫＭ－事業所コード PIC S9(004) COMP-3.
000140 01  ＬＴＲＳＫＭ－請求発行日－世紀 PIC S9(001) COMP-3.
000150 01  ＬＴＲＳＫＭ－請求発行日－年月日 PIC  X(006).
000160 01  ＬＴＲＳＫＭ－勘定処理コード PIC S9(002) COMP-3.
000170 01  ＬＴＲＳＫＭ－消込通番 PIC S9(009) COMP-3.
000180 01  ＬＴＲＳＫＭ－消込日－世紀 PIC S9(001) COMP-3.
000190 01  ＬＴＲＳＫＭ－消込日－年月日 PIC  X(006).
000200 01  ＬＴＲＳＫＭ－消費税－徴収区分 PIC S9(001) COMP-3.
000210 01  ＬＴＲＳＫＭ－消費税－金額 PIC S9(013) COMP-3.
000220 01  ＬＴＲＳＫＭ－消費税－消費税コード PIC S9(002) COMP-3.
000230 01  ＬＴＲＳＫＭ－リース料等 PIC S9(013) COMP-3.
000240 01  ＬＴＲＳＫＭ－請求金額 PIC S9(013) COMP-3.
000250 01  ＬＴＲＳＫＭ－消込金額 PIC S9(013) COMP-3.
000260 01  ＬＴＲＳＫＭ－内部入金区分 PIC S9(001) COMP-3.
000270 01  ＬＴＲＳＫＭ－銀行ＣＤ PIC S9(007) COMP-3.
000280 01  ＬＴＲＳＫＭ－旧請求内訳コード PIC  X(003).
000290 01  ＬＴＲＳＫＭ－ユーザコード PIC  X(008).
000300 01  ＬＴＲＳＫＭ－債協コード PIC  X(002).
000310 01  ＬＴＲＳＫＭ－突合済フラグ PIC  X(001).
000320 01  ＬＴＲＳＫＭ－ダミー００１ PIC  X(005).
000330 01  ＬＴＲＳＫＭ－共通情報 PIC  X(035).
001190     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
001200*                                                                 
001210*--< 契約種類等変換テーブル >                                     
000010************************************************
000020* 変換テーブル(IKOTBL001)
000030************************************************
000040 01  ＩＫＯ００１－取引先コード PIC  X(008).
000050 01  ＩＫＯ００１－目的ＣＤ PIC  X(001).
000060 01  ＩＫＯ００１－新取引先コード PIC  X(007).
000070 01  ＩＫＯ００１－枝番 PIC  X(003).
000080 01  ＩＫＯ００１－与信括りコード PIC  X(007).
000090 01  ＩＫＯ００１－名寄せコード PIC  X(008).
000100 01  ＩＫＯ００１－ユーザコード PIC  X(008).
000110 01  ＩＫＯ００１－識別ＣＤ PIC  X(001).
001220     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
001230*                                                                 
001240*--< 請求内訳コード変換テーブル >                                 
000010************************************************
000020* 契約種類等変換テーブル(IKOTBL002)
000030************************************************
000040 01  ＩＫＯ００２－契約ＮＯ PIC  X(009).
000050 01  ＩＫＯ００２－再リースコード PIC S9(001) COMP-3.
000060 01  ＩＫＯ００２－旧債権勘定処理コード PIC S9(002) COMP-3.
000070 01  ＩＫＯ００２－旧債務勘定処理コード PIC S9(002) COMP-3.
000080 01  ＩＫＯ００２－再リース回数 PIC S9(002) COMP-3.
000090 01  ＩＫＯ００２－債権勘定処理コード PIC S9(002) COMP-3.
000100 01  ＩＫＯ００２－債務勘定処理コード PIC S9(002) COMP-3.
000110 01  ＩＫＯ００２－契約種類 PIC  X(003).
000120 01  ＩＫＯ００２－主契約区分 PIC  X(001).
000130 01  ＩＫＯ００２－回収手順 PIC  X(001).
001250     
      *    EXEC  SQL  INCLUDE  IKOTBL005.CBL         END-EXEC.
001260*                                                                 
000010************************************************
000020* 請求内訳コード変換テーブル(IKOTBL005)
000030************************************************
000040 01  ＩＫＯ００５－現請求内訳コード PIC  X(003).
000050 01  ＩＫＯ００５－アクセス区分 PIC  X(001).
000060 01  ＩＫＯ００５－勘定処理コード PIC  X(002).
000070 01  ＩＫＯ００５－消費税コード PIC  X(002).
000080 01  ＩＫＯ００５－徴収長短区分 PIC S9(001) COMP-3.
000090 01  ＩＫＯ００５－手数料請求コード PIC  X(002).
000100 01  ＩＫＯ００５－再リースコード PIC S9(001) COMP-3.
000110 01  ＩＫＯ００５－計上区分 PIC S9(001) COMP-3.
000120 01  ＩＫＯ００５－区分１ PIC S9(001) COMP-3.
000130 01  ＩＫＯ００５－債協上１桁 PIC  X(001).
000140 01  ＩＫＯ００５－区分２ PIC  X(001).
000150 01  ＩＫＯ００５－契約種類上１桁 PIC S9(001) COMP-3.
000160 01  ＩＫＯ００５－新請求内訳コード PIC  X(003).
000170 01  ＩＫＯ００５－新請求内訳コード２ PIC  X(003).
001270     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
001280*                                                                 
001290*----------------------------------------------------------------*
001300*    ＷＯＲＫエリア                                              *
001310*----------------------------------------------------------------*
001320 01  ＷＯＲＫ－エリア.                                            
001330*--< エラー判定用 >                                               
001340     03  Ｗ－エラーコード             PIC S9(04).                 
001350*                                                                 
001360*--< フラグアリア >                                               
001370     03  フラグアリア.                                            
001380         05  Ｗ－終了－フラグ         PIC  X(01).                 
001390         05  Ｗ－異常終了－フラグ     PIC  X(01).                 
001400*--< ファイル状態 >                                               
001410     03  Ｗ－状態エリア.                                          
001420         05  Ｗ－状態                 PIC  X(02).                 
001430*                                                                 
001440*--< 件数エリア >                                                 
001450     03  件数エリア.                                              
001460         05  Ｗ－入力－件数           PIC  9(09).                 
001470         05  Ｗ－入力－件数２         PIC  9(09).                 
001480         05  Ｗ－入力－更新件数       PIC  9(09).                 
001490         05  Ｗ－出力－件数           PIC  9(09).                 
001500*--< キーエリア >                                                 
001510     03  ＫＥＹ－エリア.                                          
001520        05  ＮＥＷキー.                                           
001530            07 Ｎ－契約番号           PIC  X(10).                 
001540            07 Ｎ－再リース回数       PIC  9(02).                 
001550            07 Ｎ－契約種類           PIC  X(03).                 
001560        05  ＯＬＤキー.                                           
001570            07 Ｏ－契約番号           PIC  X(10).                 
001580            07 Ｏ－再リース回数       PIC  9(02).                 
001590            07 Ｏ－契約種類           PIC  X(03).                 
001600*----------------------------------------------------------------*
001610*    処理時間定義                                                *
001620*----------------------------------------------------------------*
001630*--< 共通情報 >                                                   
001640 01  Ｗ－共通情報.                                                
001650     03  Ｗ－システム日付.                                        
001660         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001670         05  Ｗ－年月日               PIC  X(06).                 
001680     03  Ｗ－システム時刻             PIC  X(08).                 
001690     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001700*----------------------------------------------------------------*
001710*    サブルーチン名                                              *
001720*----------------------------------------------------------------*
001730 01  CALL-AREA.                                                   
001740*--< 共通ログサブルーチン >                                       
001750     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001760     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001770*                                                                 
001780*----------------------------------------------------------------*
001790*    ＣＯＰＹ領域                                                *
001800*----------------------------------------------------------------*
001810*--< 共通ログ用パラメータ >                                       
001820 01  IF-CHOCO001.                                                 
001830     COPY  CHOCO001  REPLACING ==()== BY  ==共１－==.             
001840*                                                                 
001850*----------------------------------------------------------------*
001860*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001870*----------------------------------------------------------------*
001880 01  PARA-AREA.                                                   
001890     COPY CPBCO001.                                               
001900******************************************************************
001910*    定数用データ定義エリア                                      *
001920******************************************************************
001930 CONSTANT                             SECTION.                    
001940 01  定数領域.                                                    
001950     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS420".
001960     03  定数－プログラム名           PIC  X(80)                  
001970                               VALUE "協調転物件代金売却移行処理".
001980     03  定数－ＳＱＬＯＫ             PIC S9(04)  VALUE  ZERO.    
001990     03  定数－ＳＱＬＥＮＤ           PIC S9(04)  VALUE  0100.    
002000     03  定数－正常状態               PIC S9(04)  VALUE  ZERO.    
002010     03  定数－異常状態               PIC S9(04)  VALUE  0009.    
002020******************************************************************
002030*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
002040******************************************************************
002050 PROCEDURE                            DIVISION.                   
002060*                                                                 
002070     PERFORM  初期処理.                                           
002080*                                                                 
002090     PERFORM  主処理  UNTIL  Ｗ－終了－フラグ  =  "Y".            
002100*                                                                 
002110     PERFORM  終了処理.                                           
002120*                                                                 
002130     STOP     RUN.                                                
002140*                                                                 
002150******************************************************************
002160*    初期処理                                                    *
002170******************************************************************
002180 初期処理                             SECTION.                    
002190 初期処理－ＳＴＡＲＴ.                                            
002200*                                                                 
002210*----------------------------------------------------------------*
002220*    開始メッセージ出力処理                                      *
002230*----------------------------------------------------------------*
002240     INITIALIZE                       IF-CHOCO001.                
002250     MOVE  "3"                        TO  共１－イベント種別.     
002260     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
002270     MOVE  "0"                        TO  共１－復帰コード.       
002280     MOVE  "START"                    TO  共１－処理識別.         
002290     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
002300     CALL  CLOCO001                USING  IF-CHOCO001.            
002310*                                                                 
002320*----------------------------------------------------------------*
002330*    作業領域の初期値処理                                        *
002340*----------------------------------------------------------------*
002350     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
002360     INITIALIZE                           ＷＯＲＫ－エリア.       
002370*--< ＣＰＵ日付を取得 >                                           
002380     ACCEPT  Ｗ－年月日               FROM  DATE.                 
002390*                                                                 
002400*--< ＣＰＵ時刻を取得 >                                           
002410     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
002420*                                                                 
002430*--< ＯＲＡＣＬＥ接続 >                                           
002440     PERFORM   ＯＲＡＣＬＥ接続.                                  
002450*                                                                 
002460*--< 結合テーブルカーソル宣言 >                                   
002470     PERFORM  結合テーブルカーソル定義.                           
002480*                                                                 
002490*--< ファイルオープン >                                           
002500     PERFORM  ファイルオープン.                                   
002510*                                                                 
002520*--< 結合テーブルカーソル読込(１件目) >                           
002530     PERFORM  結合テーブルカーソル読込.                           
002540*                                                                 
002550*--< 基準適用日読込処理(１件目) >                                 
002560     PERFORM   基準適用日読込処理.                                
002570 初期処理－ＥＸＩＴ.                                              
002580     EXIT.                                                        
002590******************************************************************
002600*    ＯＲＡＣＬＥ接続                                            *
002610******************************************************************
002620 ＯＲＡＣＬＥ接続                     SECTION.                    
002630 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
002640*                                                                 
002650*--< ＤＢ接続用情報を取得処理 >                                   
002660     CALL  COBCO001                USING  PARA-AREA.              
002670*                                                                 
002680     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002690     MOVE  PARA-USERNAME              TO  USERNAME.               
002700     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002710*                                                                 
002720*----------------------------------------------------------------*
002730*    開始接続                                                    *
002740*----------------------------------------------------------------*
002750     IF    DB-STRING  =  SPACE                                    
002760        
      *       EXEC SQL                                                  
002770*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002780*       END-EXEC 
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
002790     ELSE                                                         
002800        
      *       EXEC SQL                                                  
002810*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002820*            USING  :DB-STRING                                    
002830*       END-EXEC 
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
002840     END-IF.                                                      
002850*                                                                 
002860*----------------------------------------------------------------*
002870*    接続確認                                                    *
002880*----------------------------------------------------------------*
002890     EVALUATE  SQLCODE                                            
002900        WHEN   定数－ＳＱＬＯＫ                                   
002910           CONTINUE                                               
002920        WHEN   OTHER                                              
002930*--< 接続エラー >                                                 
002940           MOVE     -10               TO  Ｗ－エラーコード        
002950           PERFORM  エラー判定処理                                
002960     END-EVALUATE.                                                
002970*                                                                 
002980 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
002990     EXIT.                                                        
003000******************************************************************
003010 結合テーブルカーソル定義             SECTION.                    
003020 結合テーブルカーソル定義－ＳＴＡＲＴ.                            
003030*                                                                 
003040*----------------------------------------------------------------*
003050*    カーソル定義処理                                            *
003060*----------------------------------------------------------------*
003070     
      *    EXEC SQL                                                     
003080*       DECLARE CUR1  CURSOR FOR                                  
003090*          SELECT  LTRSMK.債務契約ＮＯ                            
003100*                 ,LTRSMK.再リースコード                          
003110*                 ,LTRSMK.債務勘定処理コード                      
003120*                 ,LTRSMM.債務取引コード                          
003130*                 ,LTRSMM.物件代金回収日＿世紀                    
003140*                 ,LTRSMM.物件代金回収日＿年月日                  
003150*                 ,LTRSMM.リース開始日＿世紀                      
003160*                 ,LTRSMM.リース開始日＿年月日                    
003170*                 ,LTRSMM.回収物件金額                            
003180*                 ,LTRSMM.売上消費税                              
003190*                 ,LTRSMM.債務契約ＮＯ                            
003200*                 ,LTRSMM.請求データ作成日＿世紀                  
003210*                 ,LTRSMM.請求データ作成日＿年月日                
003220*                 ,LTRSMM.回収方式コード                          
003230*                 ,LTRSMM.再リースコード                          
003240*                 ,LTRSMM.債務勘定処理コード                      
003250*                 ,LTRSMM.債務協調コード                          
003260*                 ,LTRSMM.売上消費税                              
003270*                 ,LTRSMM.契約明細ＮＯ                            
003280*                 ,LTRSMM.レコードシーケンス                      
003290*          FROM  LTRSMK                                           
003300*               ,LTRSMM                                           
003310*          WHERE LTRSMM.債務契約ＮＯ   = LTRSMK.債務契約ＮＯ      
003320*          AND   LTRSMM.再リースコード = LTRSMK.再リースコード    
003330*          AND   ( SUBSTR (LTRSMM.債務協調コード,1,1) =           
003340*                                          :ＷＳ－債務協調コード１
003350*                  OR LTRSMM.債務協調コード =                     
003360*                                          :ＷＳ－債務協調コード２
003370*                  OR LTRSMM.債務協調コード =                     
003380*                                          :ＷＳ－債務協調コード３
003390*                 )                                               
003400*          AND   LTRSMM.回収物件金額 <> 0                         
003410*    END-EXEC.
003420*----------------------------------------------------------------*
003430*    カーソルＯＰＥＮ処理                                        *
003440*----------------------------------------------------------------*
003450     
      *    EXEC  SQL                                                    
003460*       OPEN  CUR1                                                
003470*    END-EXEC.
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
               ＷＳ－債務協調コード１
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＷＳ－債務協調コード２
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ＷＳ－債務協調コード３
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
003480*                                                                 
003490*----------------------------------------------------------------*
003500*    カーソルＯＰＥＮ確認                                        *
003510*----------------------------------------------------------------*
003520     EVALUATE  SQLCODE                                            
003530        WHEN  定数－ＳＱＬＯＫ                                    
003540*--< 正常 >                                                       
003550           CONTINUE                                               
003560        WHEN  OTHER                                               
003570*--< カーソルＯＰＥＮエラー >                                     
003580           MOVE -20                   TO  Ｗ－エラーコード        
003590           PERFORM  エラー判定処理                                
003600     END-EVALUATE.                                                
003610*                                                                 
003620 結合テーブルカーソル定義－ＥＸＩＴ.                              
003630     EXIT.                                                        
003640*                                                                 
003650******************************************************************
003660*    ファイルオープン                                            *
003670******************************************************************
003680 ファイルオープン                     SECTION.                    
003690 ファイルオープン－ＳＴＡＲＴ.                                    
003700*----------------------------------------------------------------*
003710*    ファイルオープン ＯＰＥＮ                                   *
003720*----------------------------------------------------------------*
003730*--<  入力ファイルオープン >                                       
003740     OPEN  INPUT  入力ファイル.                                   
003750*                                                                 
003760*----------------------------------------------------------------*
003770*    ファイルオープン状態判定                                    *
003780*----------------------------------------------------------------*
003790     EVALUATE  Ｗ－状態                                           
003800        WHEN  ZERO                                                
003810           CONTINUE                                               
003820        WHEN  OTHER                                               
003830*--< ファイルオープンエラー >                                     
003840           MOVE     -30               TO  Ｗ－エラーコード        
003850           PERFORM  エラー判定処理                                
003860     END-EVALUATE.                                                
003870*                                                                 
003880*--< 出力ファイルオープン >                                       
003890     OPEN  OUTPUT   出力ファイル.                                 
003900*----------------------------------------------------------------*
003910*    ファイルオープン状態判定                                    *
003920*----------------------------------------------------------------*
003930     EVALUATE  Ｗ－状態                                           
003940        WHEN  ZERO                                                
003950*--< ファイルオープン正常 >                                       
003960           CONTINUE                                               
003970        WHEN  OTHER                                               
003980*--< ファイルオープンエラー >                                     
003990           MOVE     -40               TO  Ｗ－エラーコード        
004000           PERFORM  エラー判定処理                                
004010     END-EVALUATE.                                                
004020*                                                                 
004030 ファイルオープン－ＥＸＩＴ.                                      
004040     EXIT.                                                        
004050*                                                                 
004060******************************************************************
004070*    結合テーブルカーソル読込                                    *
004080******************************************************************
004090 結合テーブルカーソル読込             SECTION.                    
004100 結合テーブルカーソル読込－ＳＴＡＲＴ.                            
004110*                                                                 
004120*--< 結合テーブルカーソル読込 >                                   
004130     
      *    EXEC SQL                                                     
004140*        FETCH  CUR1                                              
004150*         INTO  :ＬＴＲＳＭＫ－債務契約ＮＯ                       
004160* 	     ,:ＬＴＲＳＭＫ－再リースコード                     
004170*              ,:ＬＴＲＳＭＫ－債務勘定処理コード                 
004180*              ,:ＬＴＲＳＭＭ－債務取引コード                     
004190*              ,:ＬＴＲＳＭＭ－物件代金回収日－世紀               
004200* 	     ,:ＬＴＲＳＭＭ－物件代金回収日－年月日             
004210* 	     ,:ＬＴＲＳＭＭ－リース開始日－世紀                 
004220* 	     ,:ＬＴＲＳＭＭ－リース開始日－年月日               
004230* 	     ,:ＬＴＲＳＭＭ－回収物件金額                       
004240* 	     ,:ＬＴＲＳＭＭ－売上消費税                         
004250* 	     ,:ＬＴＲＳＭＭ－債務契約ＮＯ                       
004260*              ,:ＬＴＲＳＭＭ－請求データ作成日－世紀             
004270* 	     ,:ＬＴＲＳＭＭ－請求データ作成日－年月日           
004280* 	     ,:ＬＴＲＳＭＭ－回収方式コード                     
004290* 	     ,:ＬＴＲＳＭＭ－再リースコード                     
004300* 	     ,:ＬＴＲＳＭＭ－債務勘定処理コード                 
004310* 	     ,:ＬＴＲＳＭＭ－債務協調コード                     
004320* 	     ,:ＬＴＲＳＭＭ－売上消費税                         
004330*              ,:ＬＴＲＳＭＭ－契約明細ＮＯ                       
004340*              ,:ＬＴＲＳＭＭ－レコードシーケンス                 
004350*                                                                 
004360*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 94 TO SQL-OFFSET
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
               ＬＴＲＳＭＫ－債務契約ＮＯ
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＬＴＲＳＭＫ－再リースコード
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ＬＴＲＳＭＫ－債務勘定処理コード
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－債務取引コード
               SQL-SQHSTV(4)
           MOVE 8 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－物件代金回収日－世紀
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－物件代金回収日－年月日
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－リース開始日－世紀
               SQL-SQHSTV(7)
           MOVE 1 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－リース開始日－年月日
               SQL-SQHSTV(8)
           MOVE 6 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－回収物件金額
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－売上消費税
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－債務契約ＮＯ
               SQL-SQHSTV(11)
           MOVE 10 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－請求データ作成日－世紀
               SQL-SQHSTV(12)
           MOVE 1 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－請求データ作成日－年月日
               SQL-SQHSTV(13)
           MOVE 6 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－回収方式コード
               SQL-SQHSTV(14)
           MOVE 1 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－再リースコード
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－債務勘定処理コード
               SQL-SQHSTV(16)
           MOVE 2 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－債務協調コード
               SQL-SQHSTV(17)
           MOVE 2 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－売上消費税
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－契約明細ＮＯ
               SQL-SQHSTV(19)
           MOVE 2 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－レコードシーケンス
               SQL-SQHSTV(20)
           MOVE 1 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
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
004370*                                                                 
004380*------------------------------------------------------------- --*
004390*    結合テーブルカーソル読込を確認                              *
004400*----------------------------------------------------------------*
004410     EVALUATE   SQLCODE                                           
004420        WHEN   定数－ＳＱＬＯＫ                                   
004430*--< 正常 >                                                       
004440         COMPUTE  Ｗ－入力－件数   =  Ｗ－入力－件数   +  1       
004450         COMPUTE  Ｗ－入力－件数２ =  Ｗ－入力－件数２ +  1       
004460        WHEN   定数－ＳＱＬＥＮＤ                                 
004470*--< 読込終了 >                                                   
004480           MOVE  "Y"                  TO  Ｗ－終了－フラグ        
004490        WHEN   OTHER                                              
004500*--< 読込エラー >                                                 
004510           MOVE     -50               TO  Ｗ－エラーコード        
004520           PERFORM  エラー判定処理                                
004530     END-EVALUATE.                                                
004540*                                                                 
004550 結合テーブルカーソル読込－ＥＸＩＴ.                              
004560     EXIT.                                                        
004570******************************************************************
004580*    基準適用日読込処理(１件目)                                  *
004590******************************************************************
004600 基準適用日読込処理                   SECTION.                    
004610 基準適用日読込処理－ＳＴＡＲＴ.                                  
004620*--< 基準適用日読込 >                                             
004630     READ  入力ファイル                                           
004640           AT  END                                                
004650*--< 読込終了 >                                                   
004660              GO  TO  基準適用日読込処理－ＥＸＩＴ                
004670     END-READ.                                                    
004680*                                                                 
004690*----------------------------------------------------------------*
004700*    ファイルオープン状態判定                                    *
004710*----------------------------------------------------------------*
004720     EVALUATE  Ｗ－状態                                           
004730        WHEN  ZERO                                                
004740           MOVE  入力－基準日(1:6)    TO  ＷＳ－基準日－年月      
004750        WHEN  OTHER                                               
004760*--< 読み込みエラー >                                             
004770           MOVE     -60               TO  Ｗ－エラーコード        
004780           PERFORM  エラー判定処理                                
004790     END-EVALUATE.                                                
004800*                                                                 
004810 基準適用日読込処理－ＥＸＩＴ.                                    
004820     EXIT.                                                        
004830******************************************************************
004840*    主処理                                                      *
004850******************************************************************
004860 主処理                               SECTION.                    
004870 主処理－ＳＴＡＲＴ.                                              
004880*--< 協調転物件代金売却ファイル >                                 
004890     PERFORM  協調転物件代金売却項目編集.                         
004900*                                                                 
004910*                                                                 
004920*--< 協調転物件代金売却ファイル出力処理 >                         
004930	   PERFORM  協調転物件代金売却出力処理.                         
004940*                                                                 
004950*--< 結合テーブルカーソル読込（２件目以降） >                     
004960     PERFORM  結合テーブルカーソル読込.                           
004970*                                                                 
004980*                                                                 
004990 主処理－ＥＸＩＴ.                                                
005000     EXIT.                                                        
005010******************************************************************
005020*     協調転物件代金売却項目編集処理                             *
005030******************************************************************
005040 協調転物件代金売却項目編集           SECTION.                    
005050 協調転物件代金売項目編集－ＳＴＡＲＴ.                            
005060*                                                                 
005070*----------------------------------------------------------------*
005080*    協調転物件代金売却項目編集移行処理                          *
005090*----------------------------------------------------------------*
005100*--< No.01 契約番号 >                                             
005110     PERFORM  契約番号移行処理.                                   
005120*                                                                 
005130*--< No.02 再リース回数,No.03 契約種類 >                          
005140     PERFORM  再リース回数契約種類移行処理.                       
005150*                                                                 
005160*--< No.04 連番 >                                                 
005170     PERFORM  連番移行処理.                                       
005180*                                                                 
005190*--< No.05 取引先コード No.06 請求先コード >                      
005200     PERFORM  取引先コード請求先コード移行処理.                   
005210*--< No.07 回収サイト >                                           
005220     PERFORM  回収サイト移行処理.                                 
005230*                                                                 
005240*--< No.08 回収日 >                                               
005250     PERFORM  回収日移行処理.                                     
005260*                                                                 
005270*--< No.09 回収予定日 >                                           
005280     PERFORM  回収予定日移行処理.                                 
005290*                                                                 
005300*--< No.10 売却代金 >                                             
005310     MOVE  ＬＴＲＳＭＭ－回収物件金額 TO  出力－売却代金.         
005320*                                                                 
005330*--< No.11 売却代金消費税 >                                       
005340     MOVE  ＬＴＲＳＭＭ－売上消費税   TO  出力－売却代金消費税.   
005350*                                                                 
005360*--< No.12 売却代手数料 >                                         
005370     MOVE  ZERO                       TO  出力－売却代手数料.     
005380*                                                                 
005390*--< No.13 売却代総額 >                                           
005400     MOVE  出力－売却代金             TO  出力－売却代総額.       
005410*                                                                 
005420*--< No.14 売却代総額消費税 >                                     
005430     MOVE  出力－売却代金消費税       TO  出力－売却代総額消費税. 
005440*                                                                 
005450*--< No.32 請求内訳コード >                                       
005460     PERFORM  請求内訳コード移行処理.                             
005470*                                                                 
005480*--< No.15回収額,No.16回収額消費税,No.17回収年月日,               
005490*    No.33 消込通番, No.35 消込年月日   >                         
005500     PERFORM  請求明細共通移行処理.                               
005510*                                                                 
005520*--< No.18 未回収額 >                                             
005530     COMPUTE  出力－未回収額 =  出力－売却代総額       +          
005540                                出力－売却代総額消費税 -          
005550                                出力－回収額           -          
005560                                出力－回収額消費税.               
005570*                                                                 
005580*--< No.19 請求書発行済フラグ >                                   
005590     PERFORM  請求書発行済フラグ移行処理.                         
005600*                                                                 
005610*--< No.20 取消請求書発行済フラグ >                               
005620     MOVE   ZERO                      TO                          
005630                                     出力－取消請求書発行済フラグ.
005640*                                                                 
005650*--< No.21 請求書番号 >                                           
005660     MOVE   ZERO                      TO  出力－請求書番号.       
005670*                                                                 
005680*--< No.22 更新年月日 >                                           
005690     MOVE   Ｗ－世紀                  TO  出力－更新年月日(1:2).  
005700     MOVE   Ｗ－年月日                TO  出力－更新年月日(3:6).  
005710*                                                                 
005720*--< No.23 更新時間 >                                             
005730     MOVE   Ｗ－システム時刻          TO  出力－更新時間.         
005740*                                                                 
005750*--< No.24 更新者 >                                               
005760     MOVE   Ｗ－担当者                TO  出力－更新者.           
005770*                                                                 
005780*--< No.25 入力担当者コード >                                     
005790     MOVE   Ｗ－担当者                TO  出力－入力担当者コード. 
005800*                                                                 
005810*--< No.26 回収方法>                                              
005820     PERFORM  回収方法移行処理.                                   
005830*                                                                 
005840*--< No.27 ソフト売却代金>                                        
005850     PERFORM  ソフト売却代金移行処理.                             
005860*                                                                 
005870*--< No.28 ソフト売却代金消費税>                                  
005880     PERFORM  ソフト売却代金消費税移行処理.                       
005890*                                                                 
005900*--< No.29 登録年月日 >                                           
005910     MOVE   Ｗ－世紀                  TO  出力－登録年月日(1:2).  
005920     MOVE   Ｗ－年月日                TO  出力－登録年月日(3:6).  
005930*                                                                 
005940*--< No.30 登録時間 >                                             
005950     MOVE   Ｗ－システム時刻          TO  出力－登録時間.         
005960*                                                                 
005970*--< No.31 登録担当者 >                                           
005980     MOVE   Ｗ－担当者                TO  出力－登録担当者.       
005990*                                                                 
006000*--< No.34 初回入金日 >                                           
006010     MOVE   出力－回収年月日          TO  出力－初回入金日.       
006020*                                                                 
006030*--< No.36 消費税率 >                                             
006040     PERFORM  消費税率移行処理.                                   
006050*                                                                 
006060*--< No.37 消費税率区分 >                                         
006070     PERFORM  消費税率区分移行処理.                               
006080*                                                                 
006090*--< No.38 元再リースコード１ >                                   
006100     MOVE  ＬＴＲＳＭＭ－再リースコード                           
006110                                      TO                          
006120                                         出力－元再リースコード１.
006130*                                                                 
006140*--< No.39 元請求内訳コード１ >                                   
006150     PERFORM  元請求内訳コード１移行処理.                         
006160*                                                                 
006170*--< No.40 元回収予定日１ >                                       
006180     PERFORM  元回収予定日１移行処理.                             
006190*                                                                 
006200 協調転物件代金売項目編集－ＥＸＩＴ.                              
006210     EXIT.                                                        
006220******************************************************************
006230*    項目の移行 編集処理                                         *
006240*******************************************************************                                                                 
006250*----------------------------------------------------------------*
006260*    No1  契約番号移行処理.                                      *
006270*----------------------------------------------------------------*
006280 契約番号移行処理                     SECTION.                    
006290 契約番号移行処理－ＳＴＡＲＴ.                                    
006300*                                                                 
006310     MOVE ＬＴＲＳＭＫ－債務契約ＮＯ(2:9)                         
006320                                      TO   出力－契約番号         
006330                                           ＷＳ－債務契約ＮＯ     
006340                                           Ｎ－契約番号.          
006350 契約番号移行処理－ＥＸＩＴ.                                      
006360     EXIT.                                                        
006370*                                                                 
006380*----------------------------------------------------------------*
006390*    NO2 再リース回数移行処理,No3 契約種類移行処理               *
006400*----------------------------------------------------------------*
006410 再リース回数契約種類移行処理         SECTION.                    
006420 再リース回数契約種類移行処理－ＳＴＡＲＴ.                        
006430*                                                                 
006440      
      *     EXEC SQL                                                    
006450*          SELECT  再リース回数                                   
006460*                  ,契約種類                                      
006470*                  ,主契約区分                                    
006480*            INTO  :ＩＫＯ００２－再リース回数                    
006490*                  ,:ＩＫＯ００２－契約種類                       
006500*                  ,:ＩＫＯ００２－主契約区分                     
006510*            FROM  IKOTBL002                                      
006520*           WHERE  契約ＮＯ        = :ＷＳ－債務契約ＮＯ          
006530*             AND  再リースコード  = :ＬＴＲＳＭＫ－再リースコード
006540*             AND  債務勘定処理コード =                           
006550*                                :ＬＴＲＳＭＫ－債務勘定処理コード
006560*     END-EXEC.
            CALL "SQLADR" USING SQ0002 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 189 TO SQL-OFFSET
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
                ＩＫＯ００２－再リース回数
                SQL-SQHSTV(1)
            MOVE 2 TO SQL-SQHSTL(1)
            MOVE 0 TO SQL-SQHSTS(1)
            MOVE 0 TO SQL-SQINDV(1)
            MOVE 0 TO SQL-SQINDS(1)
            MOVE 0 TO SQL-SQHARM(1)
            CALL "SQLADR" USING
                ＩＫＯ００２－契約種類
                SQL-SQHSTV(2)
            MOVE 3 TO SQL-SQHSTL(2)
            MOVE 0 TO SQL-SQHSTS(2)
            MOVE 0 TO SQL-SQINDV(2)
            MOVE 0 TO SQL-SQINDS(2)
            MOVE 0 TO SQL-SQHARM(2)
            CALL "SQLADR" USING
                ＩＫＯ００２－主契約区分
                SQL-SQHSTV(3)
            MOVE 1 TO SQL-SQHSTL(3)
            MOVE 0 TO SQL-SQHSTS(3)
            MOVE 0 TO SQL-SQINDV(3)
            MOVE 0 TO SQL-SQINDS(3)
            MOVE 0 TO SQL-SQHARM(3)
            CALL "SQLADR" USING
                ＷＳ－債務契約ＮＯ
                SQL-SQHSTV(4)
            MOVE 10 TO SQL-SQHSTL(4)
            MOVE 0 TO SQL-SQHSTS(4)
            MOVE 0 TO SQL-SQINDV(4)
            MOVE 0 TO SQL-SQINDS(4)
            MOVE 0 TO SQL-SQHARM(4)
            CALL "SQLADR" USING
                ＬＴＲＳＭＫ－再リースコード
                SQL-SQHSTV(5)
            MOVE 1 TO SQL-SQHSTL(5)
            MOVE 0 TO SQL-SQHSTS(5)
            MOVE 0 TO SQL-SQINDV(5)
            MOVE 0 TO SQL-SQINDS(5)
            MOVE 0 TO SQL-SQHARM(5)
            CALL "SQLADR" USING
                ＬＴＲＳＭＫ－債務勘定処理コード
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
006570*----------------------------------------------------------------*
006580*    再リース回数移行処理確認                                    *
006590*----------------------------------------------------------------*
006600      EVALUATE  SQLCODE                                           
006610        WHEN  定数－ＳＱＬＯＫ                                    
006620*--< 再リース回数移行処理 >                                       
006630        MOVE ＩＫＯ００２－再リース回数                           
006640                                      TO   出力－再リース回数     
006650                                              Ｎ－再リース回数    
006660*--< No3 契約種類移行処理 >                                       
006670        MOVE ＩＫＯ００２－契約種類   TO      出力－契約種類      
006680                                              Ｎ－契約種類        
006690*--< 取得エラー >                                                 
006700        WHEN  OTHER                                               
006710                                                                  
006720*--< 再リース回数移行処理 >                                       
006730           MOVE  ZERO                 TO      出力－再リース回数  
006740*--< No3 契約種類移行処理 >                                       
006750           MOVE  ZERO                 TO      出力－契約種類      
006760           MOVE -70                   TO      Ｗ－エラーコード    
006770           PERFORM  エラー判定処理                                
006780                                                                  
006790      END-EVALUATE.                                               
006800 再リース回数契約種類移行処理－ＥＸＩＴ.                          
006810     EXIT.                                                        
006820*                                                                 
006830*----------------------------------------------------------------*
006840*    NO4  連番移行処理.                                          *
006850*----------------------------------------------------------------*
006860 連番移行処理                         SECTION.                    
006870 連番移行処理－ＳＴＡＲＴ.                                        
006880*                                                                 
006890     IF ＮＥＷキー NOT   =  ＯＬＤキー                            
006900     MOVE    1                        TO   ＷＳ－連番             
006910     MOVE   ＮＥＷキー                TO   ＯＬＤキー             
006920     ELSE                                                         
006930     COMPUTE ＷＳ－連番  =  ＷＳ－連番 + 1                        
006940     END-IF.                                                      
006950     MOVE ＷＳ－連番                  TO  出力－連番.             
006960 連番移行処理－ＥＸＩＴ.                                          
006970     EXIT.                                                        
006980*                                                                 
006990*----------------------------------------------------------------*
007000*    NO5  取引先コード移行処理.NO6  請求先コード移行処理.        *
007010*----------------------------------------------------------------*
007020 取引先コード請求先コード移行処理     SECTION.                    
007030 取引先コード請求先コード移行処理－ＳＴＡＲＴ.                    
007040*                                                                 
007050      
      *     EXEC SQL                                                    
007060*          SELECT  新取引先コード                                 
007070*                 ,枝番                                           
007080*            INTO  :ＩＫＯ００１－新取引先コード                  
007090*                 ,:ＩＫＯ００１－枝番                            
007100*            FROM  IKOTBL001                                      
007110*           WHERE  取引先コード    = :ＬＴＲＳＭＭ－債務取引コード
007120*     END-EXEC.
            CALL "SQLADR" USING SQ0003 SQL-STMT
            MOVE 1 TO SQL-ITERS
            MOVE 228 TO SQL-OFFSET
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
                ＩＫＯ００１－新取引先コード
                SQL-SQHSTV(1)
            MOVE 7 TO SQL-SQHSTL(1)
            MOVE 0 TO SQL-SQHSTS(1)
            MOVE 0 TO SQL-SQINDV(1)
            MOVE 0 TO SQL-SQINDS(1)
            MOVE 0 TO SQL-SQHARM(1)
            CALL "SQLADR" USING
                ＩＫＯ００１－枝番
                SQL-SQHSTV(2)
            MOVE 3 TO SQL-SQHSTL(2)
            MOVE 0 TO SQL-SQHSTS(2)
            MOVE 0 TO SQL-SQINDV(2)
            MOVE 0 TO SQL-SQINDS(2)
            MOVE 0 TO SQL-SQHARM(2)
            CALL "SQLADR" USING
                ＬＴＲＳＭＭ－債務取引コード
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
007130*----------------------------------------------------------------*
007140*    取引先コード請求先コード移行処理確認                        *
007150*----------------------------------------------------------------*
007160      EVALUATE  SQLCODE                                           
007170        WHEN  定数－ＳＱＬＯＫ                                    
007180*--< 取引先コード移行処理 >                                       
007190           MOVE ＩＫＯ００１－新取引先コード                      
007200                                      TO                          
007210                                          出力－取引先コード      
007220*--< 請求先コード移行処理 >                                       
007230           MOVE ＩＫＯ００１－枝番    TO  出力－請求先コード      
007240*--< 取得エラー >                                                 
007250        WHEN  OTHER                                               
007260*--< 取引先コード移行処理エラー >                                 
007270           MOVE  ZERO                 TO  出力－取引先コード      
007280*--< 請求先コード移行処理エラー >                                 
007290           MOVE  ZERO                 TO  出力－請求先コード      
007300           MOVE -80                   TO  Ｗ－エラーコード        
007310           PERFORM  エラー判定処理                                
007320      END-EVALUATE.                                               
007330 取引先コード請求先コード移行処理－ＥＸＩＴ.                      
007340     EXIT.                                                        
007350*                                                                 
007360*----------------------------------------------------------------*
007370*    NO7  回収サイト移行処理.                                    *
007380*----------------------------------------------------------------*
007390 回収サイト移行処理                   SECTION.                    
007400 回収サイト移行処理－ＳＴＡＲＴ.                                  
007410*--< 物件代金回収日－世紀処理 >                                   
007420     IF ＬＴＲＳＭＭ－物件代金回収日－世紀 = 1                    
007430        MOVE  "20"                    TO                          
007440                                     ＷＳ－物件代金回収日－年(1:2)
007450     ELSE                                                         
007460        MOVE  "19"                    TO                          
007470                                     ＷＳ－物件代金回収日－年(1:2)
007480     END-IF.                                                      
007490*--< 物件代金回収日－世紀処理 >                                   
007500     MOVE ＬＴＲＳＭＭ－物件代金回収日－年月日(1:2)               
007510                                      TO                          
007520                                    ＷＳ－物件代金回収日－年(3:2).
007530     MOVE ＬＴＲＳＭＭ－物件代金回収日－年月日(3:2)               
007540                                      TO                          
007550                                         ＷＳ－物件代金回収日－月.
007560*--< リース開始日＿世紀処理 >                                     
007570     IF ＬＴＲＳＭＭ－リース開始日－世紀 = 1                      
007580        MOVE  "20"                    TO                          
007590                                     ＷＳ－リース開始日－年(1:2)  
007600     ELSE                                                         
007610        MOVE  "19"                    TO                          
007620                                      ＷＳ－リース開始日－年(1:2) 
007630     END-IF.                                                      
007640*                                                                 
007650     MOVE ＬＴＲＳＭＭ－リース開始日－年月日(1:2)                 
007660                                      TO                          
007670                                      ＷＳ－リース開始日－年(3:2).
007680     MOVE ＬＴＲＳＭＭ－リース開始日－年月日(3:2)                 
007690                                      TO  ＷＳ－リース開始日－月. 
007700*--< 計算月数 >                                                 　
007710     COMPUTE ＷＳ－月数  = (ＷＳ－物件代金回収日－年     -        
007720                                     ＷＳ－リース開始日－年) * 12 
007730                            +  ＷＳ－物件代金回収日－月  -        
007740                               ＷＳ－リース開始日－月.            
007750     MOVE ＷＳ－月数                  TO  出力－回収サイト.       
007760 回収サイト移行処理－ＥＸＩＴ.                                    
007770     EXIT.                                                        
007780*                                                                 
007790*----------------------------------------------------------------*
007800*    NO8  回収日移行処理.                                        *
007810*----------------------------------------------------------------*
007820 回収日移行処理                       SECTION.                    
007830 回収日移行処理－ＳＴＡＲＴ.                                      
007840*--< 回収日移行処理 >                                             
007850      MOVE ＬＴＲＳＭＭ－物件代金回収日－年月日(5:2)              
007860                                      TO                          
007870                                     ＷＳ－物件代金回収日－日.    
007880      MOVE  ＷＳ－物件代金回収日－日  TO  出力－回収日.           
007890 回収日移行処理－ＥＸＩＴ.                                        
007900     EXIT.                                                        
007910*                                                                 
007920*----------------------------------------------------------------*
007930*    NO9  回収予定日移行処理.                                    *
007940*----------------------------------------------------------------*
007950 回収予定日移行処理                   SECTION.                    
007960 回収予定日移行処理－ＳＴＡＲＴ.                                  
007970*--< 回収予定日移行処理 >                                         
007980      MOVE ＷＳ－物件代金回収日－年   TO                          
007990                                        ＷＳ－物件代金回収日(1:4).
008000      MOVE ＷＳ－物件代金回収日－月   TO                          
008010                                        ＷＳ－物件代金回収日(5:2).
008020      MOVE ＷＳ－物件代金回収日－日   TO                          
008030                                        ＷＳ－物件代金回収日(7:2).
008040      MOVE ＷＳ－物件代金回収日       TO                          
008050                                        出力－回収予定日.         
008060 回収予定日移行処理－ＥＸＩＴ.                                    
008070     EXIT.                                                        
008080*                                                                 
008090*----------------------------------------------------------------*
008100*    N15回収額,N16回収額消費税,N17回収年月日 N033 N035 移行処理  *
008110*----------------------------------------------------------------*
008120 請求明細共通移行処理                 SECTION.                    
008130 請求明細共通移行処理－ＳＴＡＲＴ.                                
008140*                                                                 
008150     MOVE ＬＴＲＳＭＭ－債務契約ＮＯ(2:9)                         
008160                                      TO  ＷＳ－債務契約ＮＯ      
008170     
      *    EXEC SQL                                                     
008180*          SELECT  消込金額                                       
008190*                 ,消込日＿世紀                                   
008200*                 ,消込日＿年月日                                 
008210*                 ,消込通番                                       
008220*            INTO  :ＬＴＲＳＫＭ－消込金額                        
008230*                 ,:ＬＴＲＳＫＭ－消込日－世紀                    
008240*                 ,:ＬＴＲＳＫＭ－消込日－年月日                  
008250*                 ,:ＬＴＲＳＫＭ－消込通番                        
008260*           FROM  LTRSKM                                          
008270*           WHERE  契約番号 = :ＷＳ－債務契約ＮＯ                 
008280*             AND  再リースコード  = :ＬＴＲＳＭＭ－再リースコード
008290*             AND  請求内訳コード  = :ＷＳ－出力請求内訳コード    
008300*             AND  突合済フラグ    = NULL                         
008310*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 255 TO SQL-OFFSET
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
               ＬＴＲＳＫＭ－消込金額
               SQL-SQHSTV(1)
           MOVE 7 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＬＴＲＳＫＭ－消込日－世紀
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ＬＴＲＳＫＭ－消込日－年月日
               SQL-SQHSTV(3)
           MOVE 6 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＬＴＲＳＫＭ－消込通番
               SQL-SQHSTV(4)
           MOVE 5 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ＷＳ－債務契約ＮＯ
               SQL-SQHSTV(5)
           MOVE 10 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ＬＴＲＳＭＭ－再リースコード
               SQL-SQHSTV(6)
           MOVE 1 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ＷＳ－出力請求内訳コード
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
008320*----------------------------------------------------------------*
008330*    請求明細共通移行処理確認                                    *
008340*----------------------------------------------------------------*
008350     EVALUATE  SQLCODE                                            
008360*--< 請求明細情報に該当データが存在する場合>                      
008370        WHEN  定数－ＳＱＬＯＫ                                    
008380*--< N033 消込通番移行処理 >                                      
008390          MOVE  ＬＴＲＳＫＭ－消込通番                            
008400                                      TO   出力－消込通番         
008410*--< N035 消込年月日移行処理 >                                    
008420          IF ＬＴＲＳＫＭ－消込日－世紀 = 1                       
008430            MOVE  "20"                TO  出力－消込年月日(1:2)   
008440          ELSE                                                    
008450            MOVE  "19"                TO  出力－消込年月日(1:2)   
008460          END-IF                                                  
008470          MOVE  ＬＴＲＳＫＭ－消込日－年月日                      
008480                                      TO                          
008490                                        出力－消込年月日(3:6)     
008500*                                                                 
008510          IF ＬＴＲＳＫＭ－消込金額   >  ZERO                     
008520*--< N015回収額移行処理 >                                         
008530            MOVE  出力－売却代金      TO   出力－回収額           
008540*--< N016回収額消費税移行処理 >                                   
008550            MOVE  出力－売却代金消費税                            
008560                                      TO  出力－回収額消費税      
008570*--< N017回収年月日移行処理 >                                     
008580*                                                                 
008590*--< 消込日－世紀処理 >                                           
008600          IF ＬＴＲＳＫＭ－消込日－世紀 = 1                       
008610            MOVE  "20"                TO   出力－回収年月日(1:2)  
008620            ELSE                                                  
008630            MOVE  "19"                TO   出力－回収年月日(1:2)  
008640            END-IF                                                
008650            MOVE  ＬＴＲＳＫＭ－消込日－年月日                    
008660                                      TO                          
008670                                           出力－回収年月日(3:6)  
008680           ELSE                                                   
008690            MOVE  ZERO                TO   出力－回収額           
008700            MOVE  ZERO                TO   出力－回収額消費税     
008710            MOVE  ZERO                TO   出力－回収年月日       
008720          END-IF                                                  
008730*                                                                 
008740*--< 請求明細情報に該当データが存在しない場合 >                   
008750        WHEN  OTHER                                               
008760*--< N033 消込通番移行処理 >                                      
008770          MOVE  ZERO                  TO   出力－消込通番         
008780*--< N035 消込年月日移行処理 >                                    
008790          MOVE  ZERO                  TO   出力－消込年月日       
008800*--< N015回収額移行処理 >                                         
008810          MOVE ＷＳ－物件代金回収日－年                           
008820                                      TO                          
008830                                   ＷＳ－物件代金回収日－年月(1:4)
008840          MOVE ＷＳ－物件代金回収日－月                           
008850                                      TO                          
008860                                   ＷＳ－物件代金回収日－年月(5:2)
008870*                                                                 
008880          IF ＷＳ－基準日－年月 > ＷＳ－物件代金回収日－年月      
008890            MOVE  出力－売却代金      TO   出力－回収額           
008900*--< N016回収額消費税移行処理 >                                   
008910            MOVE  出力－売却代金消費税                            
008920                                      TO   出力－回収額消費税     
008930*--< N017回収年月日移行処理 >                                     
008940            MOVE  出力－回収予定日    TO   出力－回収年月日       
008950          ELSE                                                    
008960            MOVE  ZERO                TO   出力－回収額           
008970            MOVE  ZERO                TO   出力－回収額消費税     
008980            MOVE  ZERO                TO   出力－回収年月日       
008990          END-IF                                                  
009000*--< 読み込みエラー >                                             
009010          MOVE -90                    TO  Ｗ－エラーコード        
009020          PERFORM  エラー判定処理                                 
009030     END-EVALUATE.                                                
009040 請求明細共通移行処理－ＥＸＩＴ.                                  
009050     EXIT.                                                        
009060*                                                                 
009070*----------------------------------------------------------------*
009080*    No19  請求書発行済フラグ移行処理.                           *
009090*----------------------------------------------------------------*
009100 請求書発行済フラグ移行処理           SECTION.                    
009110 請求書発行済フラグ移行処理－ＳＴＡＲＴ.                          
009120*                                                                 
009130     IF ＬＴＲＳＭＭ－請求データ作成日－世紀 = 1                  
009140        MOVE  "20"                    TO                          
009150                             ＷＳ－請求データ作成日－年月日(1:2)  
009160     ELSE                                                         
009170        MOVE  "19"                    TO                          
009180                             ＷＳ－請求データ作成日－年月日(1:2)  
009190            END-IF                                                
009200     MOVE  ＬＴＲＳＭＭ－請求データ作成日－年月日   TO            
009210                             ＷＳ－請求データ作成日－年月日(3:6). 
009220     MOVE  入力－基準日               TO  ＷＳ－基準日.           
009230     IF  ＷＳ－請求データ作成日－年月日  <  ＷＳ－基準日          
009240        MOVE   "1"                    TO  出力－請求書発行済フラグ
009250     ELSE                                                         
009260        MOVE   "0"                    TO  出力－請求書発行済フラグ
009270     END-IF.                                                      
009280 請求書発行済フラグ移行処理－ＥＸＩＴ.                            
009290     EXIT.                                                        
009300*                                                                 
009310*----------------------------------------------------------------*
009320*    N26  回収方法移行処.                                        *
009330*----------------------------------------------------------------*
009340 回収方法移行処理                     SECTION.                    
009350 回収方法移行処理－ＳＴＡＲＴ.                                    
009360*                                                                 
009370     EVALUATE  ＬＴＲＳＭＭ－回収方式コード                       
009380        WHEN  ＷＳ－振込                                          
009390           MOVE  ＷＳ－回収方法振込   TO   出力－回収方法         
009400        WHEN  ＷＳ－手形                                          
009410           MOVE  ＷＳ－約束手形       TO   出力－回収方法         
009420        WHEN  ＷＳ－自動引落                                      
009430           MOVE  ＷＳ－回収方法自動引落                           
009440                                      TO   出力－回収方法         
009450        WHEN  ＷＳ－ＭＦＳ代理回収                                
009460           MOVE  ＷＳ－代理回収       TO   出力－回収方法         
009470        WHEN OTHER                                                
009480           MOVE  "0"                  TO   出力－回収方法         
009490     END-EVALUATE.                                                
009500 取引先コード移行処理－ＥＸＩＴ.                                  
009510     EXIT.                                                        
009520*                                                                 
009530*----------------------------------------------------------------*
009540*    No27  ソフト売却代金移行処理.                               *
009550*----------------------------------------------------------------*
009560 ソフト売却代金移行処理               SECTION.                    
009570 ソフト売却代金移行処理－ＳＴＡＲＴ.                              
009580*                                                                 
009590     MOVE   出力－契約種類(1:1)       TO  ＷＳ－契約種類１桁      
009600     IF     ＷＳ－契約種類１桁  =   ＷＳ－契約種類                
009610         MOVE   出力－売却代金        TO  出力－ソフト売却代金    
009620     ELSE                                                         
009630         MOVE   ZERO                  TO  出力－ソフト売却代金    
009640     END-IF.                                                      
009650 ソフト売却代金移行処理－ＥＸＩＴ.                                
009660     EXIT.                                                        
009670*                                                                 
009680*----------------------------------------------------------------*
009690*    No28  ソフト売却代金消費税移行処理.                         *
009700*----------------------------------------------------------------*
009710 ソフト売却代金消費税移行処理         SECTION.                    
009720 ソフト売却代金消費税移行処理－ＳＴＡＲＴ.                        
009730*                                                                 
009740     MOVE   出力－契約種類(1:1)       TO  ＷＳ－契約種類１桁      
009750     IF     ＷＳ－契約種類１桁  =   ＷＳ－契約種類                
009760       MOVE   出力－売却代金消費税    TO                          
009770                                      出力－ソフト売却代金消費税  
009780     ELSE                                                         
009790       MOVE   ZERO                    TO                          
009800                                      出力－ソフト売却代金消費税  
009810     END-IF.                                                      
009820 ソフト売却代金消費税移行処理－ＥＸＩＴ.                          
009830     EXIT.                                                        
009840*----------------------------------------------------------------*
009850*    N32 請求内訳コード移行処理                                  *
009860*----------------------------------------------------------------*
009870 請求内訳コード移行処理               SECTION.                    
009880 請求内訳コード移行処理－ＳＴＡＲＴ.                              
009890*                                                                 
009900     IF  ＬＴＲＳＭＭ－債務勘定処理コード   = 89                  
009910       MOVE    "U00"                  TO  出力－請求内訳コード    
009920     ELSE IF (ＬＴＲＳＭＭ－債務勘定処理コード  = 52   OR         
009930              ＬＴＲＳＭＭ－債務勘定処理コード  = 62)  AND        
009940              ＬＴＲＳＭＭ－債務協調コード      = "56" AND        
009950              ＩＫＯ００２－主契約区分    =  "5"       AND        
009960              出力－契約種類(1:1)     NOT  =  "6"                 
009970       MOVE    "W01"                  TO  出力－請求内訳コード    
009980     ELSE IF (ＬＴＲＳＭＭ－債務勘定処理コード  = 52   OR         
009990              ＬＴＲＳＭＭ－債務勘定処理コード  = 62)  AND        
010000              ＬＴＲＳＭＭ－債務協調コード      = "56" AND        
010010              ＩＫＯ００２－主契約区分    =  "5"       AND        
010020              出力－契約種類(1:1)          =  "6"                 
010030       MOVE    "W02"                  TO  出力－請求内訳コード    
010040     ELSE IF (ＬＴＲＳＭＭ－債務勘定処理コード  = 52   OR         
010050              ＬＴＲＳＭＭ－債務勘定処理コード  = 62)  AND        
010060              ＬＴＲＳＭＭ－債務協調コード      = "56" AND        
010070              ＩＫＯ００２－主契約区分    =  "0"                  
010080       MOVE    "W51"                  TO  出力－請求内訳コード    
010090     ELSE IF (ＬＴＲＳＭＭ－債務勘定処理コード  = 51   OR         
010100              ＬＴＲＳＭＭ－債務勘定処理コード  = 61)  AND        
010110              ＬＴＲＳＭＭ－債務協調コード      = "56" AND        
010120              ＩＫＯ００２－主契約区分    =  "0"                  
010130       MOVE    "W52"                  TO  出力－請求内訳コード    
010140     ELSE IF  ＬＴＲＳＭＭ－債務勘定処理コード  = 39   AND        
010150              ＬＴＲＳＭＭ－債務協調コード      = "46" AND        
010160              ＩＫＯ００２－主契約区分    =  "5"       AND        
010170              出力－契約種類(1:1)         NOT =  "6"              
010180       MOVE    "V01"                  TO  出力－請求内訳コード    
010190     ELSE IF  ＬＴＲＳＭＭ－債務勘定処理コード  = 39   AND        
010200              ＬＴＲＳＭＭ－債務協調コード      = "46" AND        
010210              ＩＫＯ００２－主契約区分    =  "5"       AND        
010220              出力－契約種類(1:1)         =  "6"                  
010230       MOVE    "V02"                  TO  出力－請求内訳コード    
010240     ELSE                                                         
010250       MOVE    ZERO                   TO  出力－請求内訳コード    
010260     END-IF.                                                      
010270     MOVE     出力－請求内訳コード    TO                          
010280                                         ＷＳ－出力請求内訳コード.
010290 請求内訳コード移行処理－ＥＸＩＴ.                                
010300     EXIT.                                                        
010310*                                                                 
010320*----------------------------------------------------------------*
010330*    No36  消費税率移行処理.                                     *
010340*----------------------------------------------------------------*
010350 消費税率移行処理                     SECTION.                    
010360 消費税率移行処理－ＳＴＡＲＴ.                                    
010370*                                                                 
010380     IF    ＬＴＲＳＭＭ－売上消費税 NOT =  ZERO                   
010390       MOVE  0.05                     TO  出力－消費税率          
010400     ELSE                                                         
010410       MOVE  ZERO                     TO  出力－消費税率          
010420     END-IF.                                                      
010430 消費税率移行処理－ＥＸＩＴ.                                      
010440     EXIT.                                                        
010450*                                                                 
010460*----------------------------------------------------------------*
010470*    No37  消費税率区分移行処理.                                 *
010480*----------------------------------------------------------------*
010490 消費税率区分移行処理                 SECTION.                    
010500 消費税率区分移行処理－ＳＴＡＲＴ.                                
010510*                                                                 
010520     IF    出力－消費税率  =  ZERO                                
010530       MOVE  "00"                     TO  出力－消費税率区分      
010540     ELSE                                                         
010550       MOVE  "12"                     TO  出力－消費税率区分      
010560     END-IF.                                                      
010570 消費税率区分移行処理－ＥＸＩＴ.                                  
010580     EXIT.                                                        
010590*                                                                 
010600*----------------------------------------------------------------*
010610*    No39 元請求内訳コード１移行処理                             *
010620*----------------------------------------------------------------*
010630 元請求内訳コード１移行処理           SECTION.                    
010640 元請求内訳コード１移行処理－ＳＴＡＲＴ.                          
010650*                                                                 
010660     
      *    EXEC SQL                                                     
010670*          SELECT  現請求内訳コード                               
010680*            INTO  :ＩＫＯ００５－現請求内訳コード                
010690*            FROM  IKOTBL005                                      
010700*           WHERE  新請求内訳コード  = :ＷＳ－出力請求内訳コード  
010710*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 298 TO SQL-OFFSET
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
               ＩＫＯ００５－現請求内訳コード
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＷＳ－出力請求内訳コード
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
010720*----------------------------------------------------------------*
010730*    元請求内訳コード１移行処理 確認                             *
010740*----------------------------------------------------------------*
010750     EVALUATE  SQLCODE                                            
010760        WHEN  定数－ＳＱＬＯＫ                                    
010770*--< 正常 >                                                       
010780           MOVE  ＩＫＯ００５－現請求内訳コード                   
010790                                      TO  出力－元請求内訳コード１
010800        WHEN  OTHER                                               
010810*--< 取得エラー >                                                 
010820           MOVE  ZERO                 TO  出力－元請求内訳コード１
010830*--< 読み込みエラー >                                             
010840          MOVE -100                   TO  Ｗ－エラーコード        
010850          PERFORM  エラー判定処理                                 
010860*                                                                 
010870     END-EVALUATE.                                                
010880 元請求内訳コード１移行処理－ＥＸＩＴ.                            
010890     EXIT.                                                        
010900*                                                                 
010910*----------------------------------------------------------------*
010920*    No40  元回収予定日１移行処理.                               *
010930*----------------------------------------------------------------*
010940 元回収予定日１移行処理               SECTION.                    
010950 元回収予定日１移行処理－ＳＴＡＲＴ.                              
010960*                                                                 
010970     MOVE  出力－回収予定日(1:2)      TO                          
010980                                        ＷＳ－元回収予定日１世紀. 
010990     IF  ＷＳ－元回収予定日１世紀  =  "20"                        
011000       MOVE  "1"                      TO                          
011001                                         出力－元回収予定日１(1:1)
011010     ELSE                                                         
011020       MOVE  "0"                      TO                          
011021                                         出力－元回収予定日１(1:1)
011030     END-IF.                                                      
011040     MOVE  出力－回収予定日(3:6)      TO                          
011050                                        出力－元回収予定日１(2:6).
011060 元回収予定日１移行処理－ＥＸＩＴ.                                
011070     EXIT.                                                        
011080*                                                                 
011090******************************************************************
011100*    協調転物件代金売ファイル出力処理                            *
011110******************************************************************
011120 協調転物件代金売却出力処理           SECTION.                    
011130 協調転物件代金売却出力処理－ＳＴＡＲＴ.                          
011140*--< 協調転物件代金売ファイル出力 >                               
011150     WRITE  出力－レコード.                                       
011160*                                                                 
011170*--< 協調転物件代金売出力の状態判定 >                             
011180     EVALUATE  Ｗ－状態                                           
011190        WHEN  ZERO                                                
011200*--< 共通出力件数の加算 >                                         
011210           COMPUTE  Ｗ－出力－件数 =  Ｗ－出力－件数 + 1          
011220        WHEN  OTHER                                               
011230*--< ファイル出力エラー >                                         
011240           MOVE     -110               TO  Ｗ－エラーコード       
011250           PERFORM  エラー判定処理                                
011260     END-EVALUATE.                                                
011270*                                                                 
011280 協調転物件代金売却出力処理－ＥＸＩＴ.                            
011290     EXIT.                                                        
011300******************************************************************
011310*    終了処理                                                    *
011320******************************************************************
011330 終了処理                             SECTION.                    
011340 終了処理－ＳＴＡＲＴ.                                            
011350*                                                                 
011360     PERFORM  ＤＢクローズ処理.                                   
011370*                                                                 
011380     PERFORM  ファイルクローズ処理.                               
011390*                                                                 
011400     PERFORM  件数メッセージ出力.                                 
011410*                                                                 
011420     PERFORM  終了メッセージ出力.                                 
011430*                                                                 
011440*--< プログラム正常終了 >                                         
011450     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
011460*                                                                 
011470 終了処理－ＥＸＩＴ.                                              
011480     EXIT.                                                        
011490******************************************************************
011500*    ＤＢクローズ                                                *
011510******************************************************************
011520 ＤＢクローズ処理                     SECTION.                    
011530 ＤＢクローズ処理－ＳＴＡＲＴ.                                    
011540*                                                                 
011550*--< カーソル クローズ >                                          
011560     
      *    EXEC SQL                                                     
011570*       CLOSE  CUR1                                               
011580*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 321 TO SQL-OFFSET
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
011590*                                                                 
011600 ＤＢクローズ処理－ＥＸＩＴ.                                      
011610     EXIT.                                                        
011620******************************************************************
011630*    ファイルクローズ                                            *
011640******************************************************************
011650 ファイルクローズ処理                 SECTION.                    
011660 ファイルクローズ処理－ＳＴＡＲＴ.                                
011670*                                                                 
011680     CLOSE  入力ファイル.                                         
011690     CLOSE  出力ファイル.                                         
011700*                                                                 
011710 ファイルクローズ処理－ＥＸＩＴ.                                  
011720     EXIT.                                                        
011730*                                                                 
011740******************************************************************
011750*    件数メッセージ出力処理                                      *
011760******************************************************************
011770 件数メッセージ出力                   SECTION.                    
011780 件数メッセージ出力－ＳＴＡＲＴ.                                  
011790*----------------------------------------------------------------*
011800*    件数メッセージ出力処理                                      *
011810*----------------------------------------------------------------*
011820     INITIALIZE                       IF-CHOCO001.                
011830     MOVE  "3"                        TO  共１－イベント種別.     
011840     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
011850     MOVE  "0"                        TO  共１－復帰コード.       
011860     MOVE  "LTRSMK"                   TO  共１－処理テーブルＩＤ. 
011870     MOVE  "COUNT"                    TO  共１－処理識別.         
011880     MOVE  Ｗ－入力－件数             TO  共１－データ内容.       
011890     MOVE  " 債務基本読込件数"        TO  共１－その他メッセージ. 
011900     CALL  CLOCO001                   USING  IF-CHOCO001.         
011910*                                                                 
011920     INITIALIZE                       IF-CHOCO001.                
011930     MOVE  "3"                        TO  共１－イベント種別.     
011940     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
011950     MOVE  "0"                        TO  共１－復帰コード.       
011960     MOVE  "LTRSMM"                   TO  共１－処理テーブルＩＤ. 
011970     MOVE  "COUNT"                    TO  共１－処理識別.         
011980     MOVE  Ｗ－入力－件数２           TO  共１－データ内容.       
011990     MOVE  "債務明細読込件数"         TO  共１－その他メッセージ. 
012000     CALL  CLOCO001                   USING  IF-CHOCO001.         
012010*                                                                 
012020     INITIALIZE                       IF-CHOCO001.                
012030     MOVE  "3"                        TO  共１－イベント種別.     
012040     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
012050     MOVE  "0"                        TO  共１－復帰コード.       
012060     MOVE  "FFUIS420.TMP"             TO  共１－処理テーブルＩＤ. 
012070     MOVE  "COUNT"                    TO  共１－処理識別.         
012080     MOVE  Ｗ－出力－件数             TO  共１－データ内容.       
012090     MOVE  "協調転物件代金売却出力件数"                           
012100                                      TO  共１－その他メッセージ. 
012110     CALL  CLOCO001                   USING  IF-CHOCO001.         
012120 件数メッセージ出力－ＥＸＩＴ.                                    
012130     EXIT.                                                        
012140*                                                                 
012150******************************************************************
012160*    終了メッセージ出力                                          *
012170******************************************************************
012180 終了メッセージ出力                   SECTION.                    
012190 終了メッセージ出力－ＳＴＡＲＴ.                                  
012200*                                                                 
012210*                                                                 
012220*----------------------------------------------------------------*
012230*    終了メッセージ出力                                          *
012240*----------------------------------------------------------------*
012250     INITIALIZE                       IF-CHOCO001.                
012260     MOVE  "3"                        TO  共１－イベント種別.     
012270     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
012280     MOVE  "0"                        TO  共１－復帰コード.       
012290     MOVE  "END"                      TO  共１－処理識別.         
012300     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
012310     CALL  CLOCO001                   USING  IF-CHOCO001.         
012320*                                                                 
012330 終了メッセージ出力－ＥＸＩＴ.                                    
012340     EXIT.                                                        
012350******************************************************************
012360*    エラー処理                                                  *
012370******************************************************************
012380 エラー判定処理                       SECTION.                    
012390 エラー判定処理－ＳＴＡＲＴ.                                      
012400*                                                                 
012410     MOVE  "Y"                        TO  Ｗ－異常終了－フラグ.   
012420     INITIALIZE                           IF-CHOCO001.            
012430*                                                                 
012440     EVALUATE  Ｗ－エラーコード                                   
012450        WHEN  -10                                                 
012460*--< ＯＲＡＣＬＥ接続失敗 >                                       
012470           MOVE  "1"                  TO  共１－イベント種別      
012480           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
012490           MOVE  "9"                  TO  共１－復帰コード        
012500           MOVE  "CONNECT"            TO  共１－処理識別          
012510           MOVE  SQLCODE              TO  共１－データ内容        
012520           MOVE  SQLERRMC             TO  共１－その他メッセージ  
012530           CALL  CLOCO001             USING  IF-CHOCO001          
012540*                                                                 
012550        WHEN  -20                                                 
012560*--< 結合テーブルカーソル定義処理失敗 >                           
012570           MOVE  "1"                  TO  共１－イベント種別      
012580           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
012590           MOVE  "9"                  TO  共１－復帰コード        
012600           MOVE  "LTRSMM"             TO  共１－処理テーブルＩＤ  
012610           MOVE  "SELECT"             TO  共１－処理識別          
012620           MOVE  SQLCODE              TO  共１－データ内容        
012630           MOVE  SQLERRMC             TO  共１－その他メッセージ  
012640           CALL  CLOCO001             USING  IF-CHOCO001          
012650                                                                  
012660         WHEN  -30                                                
012670*--< ファイルオープン失敗 >                                       
012680           MOVE  "1"                  TO  共１－イベント種別      
012690           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
012700           MOVE  "9"                  TO  共１－復帰コード        
012710           MOVE  "FFUISA01"           TO  共１－処理テーブルＩＤ  
012720           MOVE  "OPEN"               TO  共１－処理識別          
012730           MOVE  Ｗ－状態             TO  共１－データ内容        
012740           CALL  CLOCO001             USING  IF-CHOCO001          
012750*                                                                 
012760        WHEN  -40                                                 
012770*--< ファイルオープン失敗 >                                       
012780           MOVE  "1"                  TO  共１－イベント種別      
012790           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
012800           MOVE  "9"                  TO  共１－復帰コード        
012810           MOVE  "FFUIS420"           TO  共１－処理テーブルＩＤ  
012820           MOVE  "OPEN"               TO  共１－処理識別          
012830           MOVE  Ｗ－状態             TO  共１－データ内容        
012840           CALL  CLOCO001             USING  IF-CHOCO001          
012850*                                                                 
012860           WHEN  -50                                              
012870*--< 結合テーブルカーソル読込失敗 >                               
012880           MOVE  "1"                  TO  共１－イベント種別      
012890           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
012900           MOVE  "9"                  TO  共１－復帰コード        
012910           MOVE  "LTRSMM"             TO  共１－処理テーブルＩＤ  
012920           MOVE  "FETCH"              TO  共１－処理識別          
012930           MOVE  SQLCODE              TO  共１－データ内容        
012940           MOVE  SQLERRMC             TO  共１－その他メッセージ  
012950           CALL  CLOCO001             USING  IF-CHOCO001          
012960*                                                                 
012970           WHEN  -60                                              
012980*--< 基準適用日読込処理の抽出確認失敗>                            
012990           MOVE  "1"                  TO  共１－イベント種別      
013000           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
013010           MOVE  "9"                  TO  共１－復帰コード        
013020           MOVE  "FFUISA01"           TO  共１－処理テーブルＩＤ  
013030           MOVE  "READ"               TO  共１－処理識別          
013040           MOVE  Ｗ－状態             TO  共１－データ内容        
013050           CALL  CLOCO001             USING  IF-CHOCO001          
013060*                                                                 
013070           WHEN  -70                                              
013080*--< 再リース回数契約種類移行処理の抽出失敗 >                     
013090           MOVE  "2"                  TO  共１－イベント種別      
013100           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
013110           MOVE  "9"                  TO  共１－復帰コード        
013120           MOVE  "IKOTBL2"            TO  共１－処理テーブルＩＤ  
013130           MOVE  "SELECT"             TO  共１－処理識別          
013140           MOVE  SQLCODE              TO  共１－データ内容        
013150           MOVE  SQLERRMC             TO  共１－その他メッセージ  
013160           CALL  CLOCO001             USING  IF-CHOCO001          
013170           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
013180           DISPLAY  "契約種類等変換テーブルが存在しない"          
013190                    "債務明細.債務契約Ｎ ＝ "                     
013200                                      ＬＴＲＳＭＭ－債務契約ＮＯ  
013210                    "債務明細.再リースコード ＝ "                 
013220                                      ＬＴＲＳＭＭ－再リースコード
013230                    "債務明細.契約明細ＮＯ ＝ "                   
013240                                      ＬＴＲＳＭＭ－契約明細ＮＯ  
013250                    "債務明細.レコードシーケンス ＝ "             
013260                                  ＬＴＲＳＭＭ－レコードシーケンス
013270*                                                                 
013280           WHEN  -80                                              
013290*--< 取引先コード,請求先コード移行の抽出確認 失敗 >               
013300           MOVE  "2"                  TO  共１－イベント種別      
013310           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
013320           MOVE  "9"                  TO  共１－復帰コード        
013330           MOVE  "IKOTBL1 "           TO  共１－処理テーブルＩＤ  
013340           MOVE  "SELECT"             TO  共１－処理識別          
013350           MOVE  SQLCODE              TO  共１－データ内容        
013360           MOVE  SQLERRMC             TO  共１－その他メッセージ  
013370           CALL  CLOCO001             USING  IF-CHOCO001          
013380           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
013390           DISPLAY  "変換テーブルが存在しない"                    
013400                    "債務明細.債務契約Ｎ ＝ "                     
013410                                      ＬＴＲＳＭＭ－債務契約ＮＯ  
013420                    "債務明細.再リースコード ＝ "                 
013430                                      ＬＴＲＳＭＭ－再リースコード
013440                    "債務明細.契約明細ＮＯ ＝ "                   
013450                                      ＬＴＲＳＭＭ－契約明細ＮＯ  
013460                    "債務明細.レコードシーケンス ＝ "             
013470                                  ＬＴＲＳＭＭ－レコードシーケンス
013480*                                                                 
013490           WHEN  -90                                              
013500*--< 請求明細共通移行処理の抽出確認 失敗 >                        
013510           MOVE  "2"                  TO  共１－イベント種別      
013520           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
013530           MOVE  "9"                  TO  共１－復帰コード        
013540           MOVE  "LTRSKM "            TO  共１－処理テーブルＩＤ  
013550           MOVE  "SELECT"             TO  共１－処理識別          
013560           MOVE  SQLCODE              TO  共１－データ内容        
013570           MOVE  SQLERRMC             TO  共１－その他メッセージ  
013580           CALL  CLOCO001             USING  IF-CHOCO001          
013590           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
013600           DISPLAY  "請求明細情報が存在しない"                    
013610                    "債務明細.債務契約Ｎ ＝ "                     
013620                                      ＬＴＲＳＭＭ－債務契約ＮＯ  
013630                    "債務明細.再リースコード ＝ "                 
013640                                      ＬＴＲＳＭＭ－再リースコード
013650                    "債務明細.契約明細ＮＯ ＝ "                   
013660                                      ＬＴＲＳＭＭ－契約明細ＮＯ  
013670                    "債務明細.レコードシーケンス ＝ "             
013680                                  ＬＴＲＳＭＭ－レコードシーケンス
013690*                                                                 
013700           WHEN  -100                                             
013710*--< 元請求内訳コード１移行の抽出確認 失敗 >                      
013720           MOVE  "2"                  TO  共１－イベント種別      
013730           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
013740           MOVE  "9"                  TO  共１－復帰コード        
013750           MOVE  "IKOTBL5 "           TO  共１－処理テーブルＩＤ  
013760           MOVE  "SELECT"             TO  共１－処理識別          
013770           MOVE  SQLCODE              TO  共１－データ内容        
013780           MOVE  SQLERRMC             TO  共１－その他メッセージ  
013790           CALL  CLOCO001             USING  IF-CHOCO001          
013800           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
013810*                                                                 
013820           WHEN  -110                                             
013830*--< 協調転物件代金売ファイル出力処理失敗 >                       
013840           MOVE  "1"                  TO  共１－イベント種別      
013850           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
013860           MOVE  "9"                  TO  共１－復帰コード        
013870           MOVE  "FFUIS420"           TO  共１－処理テーブルＩＤ  
013880           MOVE  "WRITE"              TO  共１－処理識別          
013890           MOVE  SQLCODE              TO  共１－データ内容        
013900           MOVE  SQLERRMC             TO  共１－その他メッセージ  
013910           CALL  CLOCO001             USING  IF-CHOCO001          
013920           WHEN  OTHER                                            
013930*                                                                 
013940           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
013950     END-EVALUATE.                                                
013960*                                                                 
013970     IF Ｗ－異常終了－フラグ  =  "Y"                              
013980*                                                                 
013990*--< 件数メッセージ出力処理 >                                     
014000        PERFORM  件数メッセージ出力                               
014010*--< 終了メッセージ出力処理 >                                     
014020        PERFORM  終了メッセージ出力                               
014030*                                                                 
014040*--< プログラム異常終了のリターンコード >                         
014050        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
014060*                                                                 
014070        EXIT  PROGRAM                                             
014080     END-IF.                                                      
014090*                                                                 
014100 エラー処理－ＥＸＩＴ.                                            
014110     EXIT.                                                        
014120******************************************************************
014130*                  END OF PROGRAM                                *
014140******************************************************************
