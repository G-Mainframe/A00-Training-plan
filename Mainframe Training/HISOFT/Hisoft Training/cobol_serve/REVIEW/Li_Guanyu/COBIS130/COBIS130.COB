000010******************************************************************
000020*         ＜ＮＮＮＮＮ＞                                         *
000030*      1. プログラム名    ：資産コード変換マスタ移行処理         *
000040*      2. プログラムID    ：COBIS130                             *
000050*      3. 処理概要        ：提携先指定のコードからＢＯＴＬ資産   *
000060*                           コードの変換テーブル                 *
000070*                                                                *
000080*      4. 作成者          ：ＮＮ                                 *
000090*      5. 作成日          ：XXXX.XX.XX                           *
000100******************************************************************
000110*                                                                 
000120******************************************************************
000130*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          COBIS130.                   
000180******************************************************************
000190*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000200******************************************************************
000210 ENVIRONMENT                          DIVISION.                   
000220******************************************************************
000230*    ＩＮＰＵＴ－ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000240******************************************************************
000250 INPUT-OUTPUT                         SECTION.                    
000260 FILE-CONTROL.                                                    
000270*                                                                 
000280     SELECT         入力ファイル      ASSIGN    TO   U05          
000290     FILE STATUS    IS     ファイル状態                           
000300     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000310*                                                                 
000320******************************************************************
000330*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000340******************************************************************
000350 DATA                                 DIVISION.                   
000360******************************************************************
000370*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000380******************************************************************
000390 FILE                                 SECTION.                    
000400*----------------------------------------------------------------*
000410*    入力ファイル                                                *
000420*----------------------------------------------------------------*
000430 FD  入力ファイル                                                 
000440     LABEL  RECORD    IS              STANDARD                    
000450     BLOCK  CONTAINS  0               RECORDS.                    
000460*                                                                 
000470 01  入力－レコード.                                              
000480     COPY   CISPF001   REPLACING      ==()==  BY  ==入力－==.     
000490*                                                                 
000500******************************************************************
000510*  ＷＯＲＫＩＮＧ－ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000520******************************************************************
000530 WORKING-STORAGE                      SECTION.                    
000540*----------------------------------------------------------------*
000550*    ホスト変数定義エリア                                        *
000560*----------------------------------------------------------------*
000570     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS130\CO
      -    "BIS130.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(77) VALUE "select 転リース提携先コード   int
      -    "o :b1  from IKOTBL004 where 取引先コード=:b2".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D077SSH_TBL(転リース
      -    "提携先コード,先方商品コード,適用年月日,資産コード,動総保険コ
      -    "ード,信用保険コード＿リース,信用保険コード＿割賦,税負担区分,
      -    "商品分類".

           02  FILLER PIC X(160) VALUE "名,物件名漢字,物件名,機種名,登録
      -    "年月日,登録時間,登録担当者,更新年月日,更新時間,更新者,入力担
      -    "当者コード) values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10
      -    ",:b11,:b".

           02  FILLER PIC X(38) VALUE "12,:b13,:b14,:b15,:b16,:b17,:b18,
      -    ":b19)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148558428.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +19.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 19 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 19 TIMES.


       01  SQ0001 GLOBAL.
           02  FILLER PIC X(160) VALUE "select ジョモ商品コード  ,ジョモ
      -     "商品分類名  ,物件名＿漢字  ,物件名  ,機種名  ,税区分  ,資産
      -     "コード  ,動総保険コード  ,信用保険コード＿リース  ,信用保険
      -    "コード＿割".

           02  FILLER PIC X(36) VALUE "賦   from JOM_SYOHIN_MST         
      -    "   ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +349.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +353.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +196.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +402.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +427.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +137.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +77.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +577.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +160.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +358.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +605.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +19.
           02     FILLER PIC S9(4) COMP-5 VALUE +19.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +251.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +670.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +266.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +682.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +281.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +703.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580*                                                                 
000590 01  ＷＳ－ジョモ商品                 PIC  X(08) VALUE "K3401966".
000600*                                                                 
000610*--< ＯＲＡＣＬＥ共通変数 >                                       
000620     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000630*                                                                 
000640*--< ジョモ商品マスタ >                                           
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000650     
      *    EXEC  SQL  INCLUDE  JOM_SYOHIN_MST.CBL    END-EXEC.
000660*                                                                 
000670*--< 転リース提携先コード変換テーブル >                           
000010************************************************
000020* (JOM_SYOHIN_MST)
000030************************************************
000040 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品コード PIC  X(004).
000050 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品分類名 PIC  X(030).
000060 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名－漢字 PIC  X(040).
000070 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名 PIC  X(020).
000080 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－機種名 PIC  X(020).
000090 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－資産コード PIC  X(007).
000100 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－耐用年数 PIC  X(002).
000110 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－税区分 PIC  X(001).
000120 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－固定資産税率 
                                             PIC S9(002)V9(1) COMP-3.
000130 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－保険料率 
                                             PIC S9(002)V9(3) COMP-3.
000140 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－動総保険コード PIC  X(004).
000150 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－リース 
                                             PIC  X(006).
000160 01  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－割賦 
                                             PIC  X(006).
000680     
      *    EXEC  SQL  INCLUDE  IKOTBL004.CBL         END-EXEC.
000690*                                                                 
000700*--< 資産コード変換マスタ >                                       
000010************************************************
000020* 転リース提携先コード変換テーブル(IKOTBL004)
000030************************************************
000040 01  ＩＫＯ００４－取引先コード PIC  X(008).
000050 01  ＩＫＯ００４－転リース提携先コード PIC  X(003).
000710     
      *    EXEC  SQL  INCLUDE  D077SSH.CBL           END-EXEC.
000720*                                                                 
000730*--< ＯＲＡＣＬＥ ＳＱＬ実行情報 (SQLCA) >                        
      *****************************************************************
      *   資産コード変換マスタ(D077SSH_TBL)
      *****************************************************************
       01  資産コード変換マスタ.
           03  Ｄ０７７－転リース提携先コード
                                     PIC  X(003).
           03  Ｄ０７７－先方商品コード
                                     PIC  X(010).
           03  Ｄ０７７－適用年月日  PIC  X(008).
           03  Ｄ０７７－資産コード  PIC  X(007).
           03  Ｄ０７７－動総保険コード
                                     PIC  X(004).
           03  Ｄ０７７－信用保険コード－リース
                                     PIC  X(006).
           03  Ｄ０７７－信用保険コード－割賦
                                     PIC  X(006).
           03  Ｄ０７７－税負担区分  PIC  X(001).
           03  Ｄ０７７－商品分類名  PIC  X(030).
           03  Ｄ０７７－物件名漢字  PIC  X(040).
           03  Ｄ０７７－物件名      PIC  X(020).
           03  Ｄ０７７－機種名      PIC  X(020).
           03  Ｄ０７７－登録年月日  PIC  X(008).
           03  Ｄ０７７－登録時間    PIC  X(008).
           03  Ｄ０７７－登録担当者  PIC  X(008).
           03  Ｄ０７７－更新年月日  PIC  X(008).
           03  Ｄ０７７－更新時間    PIC  X(008).
           03  Ｄ０７７－更新者      PIC  X(008).
           03  Ｄ０７７－入力担当者コード
                                     PIC  X(008).
000740     
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
000750*                                                                 
000760     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000770*----------------------------------------------------------------*
000780*   作業領域定義                                                 *
000790*----------------------------------------------------------------*
000800 01  ＷＯＲＫ－エリア.                                            
000810*--< エラーコード >                                               
000820     03  Ｗ－エラーコード             PIC S9(04).                 
000830*                                                                 
000840*--< ファイル状態 >                                               
000850     03  ファイル状態                 PIC  X(02).                 
000860*                                                                 
000870*--< 件数エリア >                                                 
000880     03  件数エリア.                                              
000890         05  Ｗ－入力－件数１         PIC  9(09).                 
000900         05  Ｗ－入力－件数２         PIC  9(09).                 
000910         05  Ｗ－出力－件数           PIC  9(09).                 
000920*                                                                 
000930*--< フラグアリア >                                               
000940     03  フラグ－エリア.                                          
000950         05  Ｗ－終了－フラグ         PIC  X(01).                 
000960         05  Ｗ－終了－フラグ１       PIC  X(01).                 
000970         05  異常終了－フラグ         PIC  X(01).                 
000980*                                                                 
000990*--< ファイル状態 >                                               
001000     03  Ｗ－適用日                   PIC  X(08).                 
001010*                                                                 
001020*----------------------------------------------------------------*
001030*   処理時間定義                                                 *
001040*----------------------------------------------------------------*
001050*--< 共通情報 >                                                   
001060 01  Ｗ－共通情報.                                                
001070     03  Ｗ－システム日付.                                        
001080         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001090         05  Ｗ－年月日               PIC  X(06).                 
001100     03  Ｗ－システム時刻             PIC  X(08).                 
001110     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001120*----------------------------------------------------------------*
001130*    サブルーチン名                                              *
001140*----------------------------------------------------------------*
001150 01  CALL-AREA.                                                   
001160*--< 共通ログサブルーチン >                                       
001170     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001180     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001190*----------------------------------------------------------------*
001200*    ＣＯＰＹ領域                                                *
001210*----------------------------------------------------------------*
001220*--< 共通ログ用パラメータ >                                       
001230 01  IF-CHOCO001.                                                 
001240     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１－==.           
001250*                                                                 
001260*----------------------------------------------------------------*
001270*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001280*----------------------------------------------------------------*
001290 01  PARA-AREA.                                                   
001300     COPY CPBCO001.                                               
001310******************************************************************
001320*    定数用データ定義エリア                                      *
001330******************************************************************
001340 CONSTANT                             SECTION.                    
001350 01  定数領域.                                                    
001360     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS130".
001370     03  定数－プログラム名           PIC  X(80)                  
001380                                VALUE  "資産コード変換マスタ移行".
001390     03  定数－ＳＱＬＯＫ             PIC  9(04)  VALUE  0000.    
001400     03  定数－ＳＱＬＥＮＤ           PIC  9(04)  VALUE  0100.    
001410     03  定数－正常状態               PIC  9(04)  VALUE  ZERO.    
001420     03  定数－異常状態               PIC  9(04)  VALUE  0009.    
001430******************************************************************
001440*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001450******************************************************************
001460 PROCEDURE                            DIVISION.                   
001470*                                                                 
001480     PERFORM   初期処理.                                          
001490*                                                                 
001500     PERFORM   主処理  UNTIL  Ｗ－終了－フラグ  =  "Y".           
001510*                                                                 
001520     PERFORM   終了処理.                                          
001530*                                                                 
001540     STOP RUN.                                                    
001550*                                                                 
001560******************************************************************
001570*    初期処理                                            <1.0>   *
001580******************************************************************
001590 初期処理                             SECTION.                    
001600 初期処理－ＳＴＡＲＴ.                                            
001610*                                                                 
001620*----------------------------------------------------------------*
001630*    開始メッセージ出力                                          *
001640*----------------------------------------------------------------*
001650     INITIALIZE                       IF-CHOCO001.                
001660     MOVE  "3"                        TO  共１－イベント種別.     
001670     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
001680     MOVE  "0"                        TO  共１－復帰コード.       
001690     MOVE  "START"                    TO  共１－処理識別.         
001700     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
001710     CALL  CLOCO001                USING  IF-CHOCO001.            
001720*                                                                 
001730*----------------------------------------------------------------*
001740*    作業領域の初期値設定                                        *
001750*----------------------------------------------------------------*
001760     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
001770     INITIALIZE                           ＷＯＲＫ－エリア.       
001780*                                                                 
001790*--< ＣＰＵ日付を取得 >                                           
001800     ACCEPT  Ｗ－年月日               FROM  DATE.                 
001810*                                                                 
001820*--< ＣＰＵ時刻を取得 >                                           
001830     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
001840*----------------------------------------------------------------*
001850*    ＯＲＡＣＬＥ接続                                    <1.1>   *
001860*----------------------------------------------------------------*
001870     PERFORM  ＯＲＡＣＬＥ接続.                                   
001880*                                                                 
001890*----------------------------------------------------------------*
001900*    カーソル宣言                                        <1.2>   *
001910*----------------------------------------------------------------*
001920     PERFORM  カーソル宣言.                                       
001930*                                                                 
001940*--< ファイルオープン >                                           
001950     OPEN  INPUT  入力ファイル.                                   
001960*                                                                 
001970*----------------------------------------------------------------*
001980*    ファイルオープン状態判定                                    *
001990*----------------------------------------------------------------*
002000     EVALUATE  ファイル状態                                       
002010        WHEN  ZERO                                                
002020           CONTINUE                                               
002030        WHEN  OTHER                                               
002040*--<       ファイルオープンエラー >                               
002050           MOVE     -1                TO  Ｗ－エラーコード        
002060           PERFORM  エラー処理                                    
002070     END-EVALUATE.                                                
002080*----------------------------------------------------------------*
002090*    ジョモ商品読込処理(１件目)                          <C.1>   *
002100*----------------------------------------------------------------*
002110     PERFORM   ジョモ商品読込処理.                                
002120*                                                                 
002130*----------------------------------------------------------------*
002140*    基準適用日読込処理(１件目)                          <C.2>   *
002150*----------------------------------------------------------------*
002160     PERFORM   基準適用日読込処理.                                
002170*                                                                 
002180 初期処理－ＥＸＩＴ.                                              
002190     EXIT.                                                        
002200******************************************************************
002210*    主処理                                              <2.0>   *
002220******************************************************************
002230 主処理                               SECTION.                    
002240 主処理－ＳＴＡＲＴ.                                              
002250*                                                                 
002260*----------------------------------------------------------------*
002270*    編集処理                                            <2.1>   *
002280*----------------------------------------------------------------*
002290     PERFORM  編集処理.                                           
002300*                                                                 
002310*----------------------------------------------------------------*
002320*    資産コード変換マスタ追加処理                        <2.2>   *
002330*----------------------------------------------------------------*
002340     PERFORM  資産コード変換マスタ追加処理.                       
002350*                                                                 
002360*----------------------------------------------------------------*
002370*    ジョモ商品読込処理. (２件目以降)                    <C.1>   *
002380*----------------------------------------------------------------*
002390     PERFORM   ジョモ商品読込処理.                                
002400*                                                                 
002410 主処理－ＥＸＩＴ.                                                
002420     EXIT.                                                        
002430******************************************************************
002440*    終了処理                                            <3.0>   *
002450******************************************************************
002460 終了処理                             SECTION.                    
002470 終了処理－ＳＴＡＲＴ.                                            
002480*                                                                 
002490*----------------------------------------------------------------*
002500*    ＤＢクローズ                                        <3.1>   *
002510*----------------------------------------------------------------*
002520     PERFORM   ＤＢクローズ.                                      
002530*                                                                 
002540*----------------------------------------------------------------*
002550*    ＤＢコミット処理                                    <3.2>   *
002560*----------------------------------------------------------------*
002570     PERFORM   ＤＢコミット処理.                                  
002580*                                                                 
002590*--< ファイルクローズ >                                           
002600     CLOSE  入力ファイル.                                         
002610*                                                                 
002620*----------------------------------------------------------------*
002630*    終了メッセージ出力処理                              <C.3>   *
002640*----------------------------------------------------------------*
002650     PERFORM  終了メッセージ出力.                                 
002660*                                                                 
002670*--< プログラム正常終了 >                                         
002680     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
002690*                                                                 
002700 終了処理－ＥＸＩＴ.                                              
002710     EXIT.                                                        
002720******************************************************************
002730*    終了メッセージ出力                                  <C.3>   *
002740******************************************************************
002750  終了メッセージ出力                  SECTION.                    
002760  終了メッセージ出力－ＳＴＡＲＴ.                                 
002770*                                                                 
002780*----------------------------------------------------------------*
002790*    ジョモ商品マスタ入力件数                                    *
002800*----------------------------------------------------------------*
002810     INITIALIZE                       IF-CHOCO001.                
002820     MOVE  "3"                        TO  共１－イベント種別.     
002830     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
002840     MOVE  "0"                        TO  共１－復帰コード.       
002850     MOVE  "JOM_MST"                  TO  共１－処理テーブルＩＤ. 
002860     MOVE  "COUNT"                    TO  共１－処理識別.         
002870     MOVE  Ｗ－入力－件数１           TO  共１－データ内容.       
002880     MOVE  "ジョモ商品マスタ読込件数" TO  共１－その他メッセージ. 
002890     CALL  CLOCO001                USING  IF-CHOCO001.            
002900*                                                                 
002910*----------------------------------------------------------------*
002920*    基準適用日ファイル入力件数                                  *
002930*----------------------------------------------------------------*
002940     INITIALIZE                       IF-CHOCO001.                
002950     MOVE  "3"                        TO  共１－イベント種別.     
002960     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
002970     MOVE  "0"                        TO  共１－復帰コード.       
002980     MOVE  "FFUSIA01"                  TO  共１－処理テーブルＩＤ. 
002990     MOVE  "COUNT"                    TO  共１－処理識別.         
003000     MOVE  Ｗ－入力－件数２           TO  共１－データ内容.       
003010     MOVE  "基準適用日ファイル読込件数"                           
003020                                      TO  共１－その他メッセージ. 
003030     CALL  CLOCO001                USING  IF-CHOCO001.            
003040*                                                                 
003050*----------------------------------------------------------------*
003060*    資産コード変換マスタ出力件数                                *
003070*----------------------------------------------------------------*
003080     INITIALIZE                       IF-CHOCO001.                
003090     MOVE  "3"                        TO  共１－イベント種別.     
003100     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
003110     MOVE  "0"                        TO  共１－復帰コード.       
003120     MOVE  "D077SSH"                  TO  共１－処理テーブルＩＤ. 
003130     MOVE  "COUNT"                    TO  共１－処理識別.         
003140     MOVE  Ｗ－出力－件数             TO  共１－データ内容.       
003150     MOVE  "資産コード変換マスタ出力件数"                         
003160                                      TO  共１－その他メッセージ. 
003170     CALL  CLOCO001                USING  IF-CHOCO001.            
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    終了メッセージ 出力                                         *
003210*----------------------------------------------------------------*
003220     INITIALIZE                       IF-CHOCO001.                
003230     MOVE  "3"                        TO  共１－イベント種別.     
003240     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
003250     MOVE  "0"                        TO  共１－復帰コード.       
003260     MOVE  "END"                      TO  共１－処理識別.         
003270     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
003280     CALL  CLOCO001                USING  IF-CHOCO001.            
003290*                                                                 
003300 終了メッセージ出力－ＥＸＩＴ.                                    
003310     EXIT.                                                        
003320******************************************************************
003330*    ＯＲＡＣＬＥ接続                                    <1.1>   *
003340******************************************************************
003350 ＯＲＡＣＬＥ接続                     SECTION.                    
003360 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
003370*                                                                 
003380*--< ＩＮＩファイル読込サブルーチン呼び出し >                     
003390     CALL  COBCO001                USING  PARA-AREA.              
003400*                                                                 
003410     MOVE  PARA-DBSTRING              TO  DB-STRING.              
003420     MOVE  PARA-USERNAME              TO  USERNAME.               
003430     MOVE  PARA-PASSWORD              TO  PASSWD.                 
003440*                                                                 
003450*----------------------------------------------------------------*
003460*    開始接続                                                    *
003470*----------------------------------------------------------------*
003480     IF  DB-STRING  =  SPACE                                      
003490        
      *       EXEC  SQL                                                 
003500*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
003510*       END-EXEC 
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
003520     ELSE                                                         
003530        
      *       EXEC  SQL                                                 
003540*          CONNECT  :USERNAME  IDENTIFIED  BY  :PASSWD            
003550*            USING  :DB-STRING                                    
003560*       END-EXEC 
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
003570     END-IF.                                                      
003580*                                                                 
003590*----------------------------------------------------------------*
003600*    接続状態判定                                                *
003610*----------------------------------------------------------------*
003620     EVALUATE  SQLCODE                                            
003630        WHEN  定数－ＳＱＬＯＫ                                    
003640*--<       接続正常 >                                             
003650           CONTINUE                                               
003660        WHEN  OTHER                                               
003670*--<       接続エラー >                                           
003680           MOVE     -10               TO  Ｗ－エラーコード        
003690           PERFORM  エラー処理                                    
003700     END-EVALUATE.                                                
003710*                                                                 
003720 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
003730     EXIT.                                                        
003740******************************************************************
003750*    カーソル宣言                                        <1.2>   *
003760******************************************************************
003770*                                                                 
003780 カーソル宣言                         SECTION.                    
003790 カーソル宣言－ＳＴＡＲＴ.                                        
003800*                                                                 
003810*----------------------------------------------------------------*
003820*    カーソル宣言                                                *
003830*----------------------------------------------------------------*
003840     
      *    EXEC  SQL                                                    
003850*       DECLARE  CUR1  CURSOR  FOR                                
003860*          SELECT  ジョモ商品コード                               
003870*                 ,ジョモ商品分類名                               
003880*                 ,物件名＿漢字                                   
003890*                 ,物件名                                         
003900*                 ,機種名                                         
003910*                 ,税区分                                         
003920*                 ,資産コード                                     
003930*                 ,動総保険コード                                 
003940*                 ,信用保険コード＿リース                         
003950*                 ,信用保険コード＿割賦                           
003960*            FROM  JOM_SYOHIN_MST                                 
003970*    END-EXEC.
003980*                                                                 
003990*----------------------------------------------------------------*
004000*    カーソルオープン                                            *
004010*----------------------------------------------------------------*
004020     
      *    EXEC  SQL                                                    
004030*       OPEN  CUR1                                                
004040*    END-EXEC.
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
004050*                                                                 
004060*----------------------------------------------------------------*
004070*    カーソルオープンを確認                                      *
004080*----------------------------------------------------------------*
004090     EVALUATE   SQLCODE                                           
004100        WHEN   定数－ＳＱＬＯＫ                                   
004110*--<       正常 >                                                 
004120           CONTINUE                                               
004130        WHEN   OTHER                                              
004140*--<       カーソルオープン失敗、プログラムが異常終了 >           
004150           MOVE      -20              TO  Ｗ－エラーコード        
004160           PERFORM   エラー処理                                   
004170     END-EVALUATE.                                                
004180*                                                                 
004190 カーソル宣言－ＥＸＩＴ.                                          
004200     EXIT.                                                        
004210******************************************************************
004220*    ジョモ商品読込処理                                  <C.1>   *
004230******************************************************************
004240 ジョモ商品読込処理                   SECTION.                    
004250 ジョモ商品読込処理－ＳＴＡＲＴ.                                  
004260*                                                                 
004270     
      *    EXEC  SQL                                                    
004280*       FETCH  CUR1                                               
004290*          INTO                                                   
004300*            :ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品コード      
004310*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品分類名      
004320*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名－漢字          
004330*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名                
004340*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－機種名                
004350*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－税区分                
004360*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－資産コード            
004370*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－動総保険コード        
004380*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－リース
004390*           ,:ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－割賦  
004400*    END-EXEC.
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
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品コード
               SQL-SQHSTV(1)
           MOVE 4 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品分類名
               SQL-SQHSTV(2)
           MOVE 30 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名－漢字
               SQL-SQHSTV(3)
           MOVE 40 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名
               SQL-SQHSTV(4)
           MOVE 20 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－機種名
               SQL-SQHSTV(5)
           MOVE 20 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－税区分
               SQL-SQHSTV(6)
           MOVE 1 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－資産コード
               SQL-SQHSTV(7)
           MOVE 7 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－動総保険コード
               SQL-SQHSTV(8)
           MOVE 4 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－リース
               SQL-SQHSTV(9)
           MOVE 6 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－割賦
               SQL-SQHSTV(10)
           MOVE 6 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
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
004410*                                                                 
004420*----------------------------------------------------------------*
004430*    ジョモ商品読込確認                                          *
004440*----------------------------------------------------------------*
004450     EVALUATE  SQLCODE                                            
004460        WHEN  定数－ＳＱＬＯＫ                                    
004470*--<       正常 >                                                 
004480           COMPUTE   Ｗ－入力－件数１ =  Ｗ－入力－件数１ +  1    
004490        WHEN  定数－ＳＱＬＥＮＤ                                  
004500*--<       読込終了 >                                             
004510           MOVE      "Y"              TO  Ｗ－終了－フラグ        
004520        WHEN  OTHER                                               
004530*--<       読込エラー、プログラムが異常終了 >                     
004540           MOVE      -30              TO  Ｗ－エラーコード        
004550           PERFORM   エラー処理                                   
004560     END-EVALUATE.                                                
004570*                                                                 
004580 ジョモ商品読込処理－ＥＸＩＴ.                                    
004590     EXIT.                                                        
004600******************************************************************
004610*    基準適用日読込処理                                  <C.2>   *
004620******************************************************************
004630 基準適用日読込処理                   SECTION.                    
004640 基準適用日読込処理－ＳＴＡＲＴ.                                  
004650*--<    基準適用日読込 >                                          
004660        READ  入力ファイル                                        
004670           AT  END                                                
004680*--<          読込終了 >                                          
004690              MOVE  "Y"               TO  Ｗ－終了－フラグ１      
004700              GO  TO  基準適用日読込処理－ＥＸＩＴ                
004710           NOT  AT  END                                           
004720              COMPUTE  Ｗ－入力－件数２  =  Ｗ－入力－件数２ + 1  
004730        END-READ.                                                 
004740*                                                                 
004750*----------------------------------------------------------------*
004760*    ファイルオープン状態判定                                    *
004770*----------------------------------------------------------------*
004780     EVALUATE  ファイル状態                                       
004790        WHEN  ZERO                                                
004800           MOVE  入力－適用日         TO  Ｗ－適用日              
004810        WHEN  OTHER                                               
004820*--<       読み込みエラー >                                       
004830           MOVE     ZERO              TO  Ｗ－適用日              
004840           MOVE     -2                TO  Ｗ－エラーコード        
004850           PERFORM  エラー処理                                    
004860     END-EVALUATE.                                                
004870*                                                                 
004880 基準適用日読込処理－ＥＸＩＴ.                                    
004890     EXIT.                                                        
004900******************************************************************
004910*    編集処理                                            <2.1>   *
004920******************************************************************
004930 編集処理                             SECTION.                    
004940 編集処理－ＳＴＡＲＴ.                                            
004950*                                                                 
004960*--< 出力レコードを初期化 >                                       
004970*                                                                 
004980     MOVE  SPACE                      TO  資産コード変換マスタ.   
004990     INITIALIZE                           資産コード変換マスタ.   
005000*----------------------------------------------------------------*
005010*    転リースコード取得処理                              <2.1.1> *
005020*----------------------------------------------------------------*
005030     PERFORM       転リースコード取得処理.                        
005040*                                                                 
005050*----------------------------------------------------------------*
005060*    編集処理                                                    *
005070*----------------------------------------------------------------*
005080     MOVE  ＩＫＯ００４－転リース提携先コード                     
005090                             TO  Ｄ０７７－転リース提携先コード.  
005100*                                                                 
005110     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品コード         
005120                             TO  Ｄ０７７－先方商品コード.        
005130*                                                                 
005140     MOVE  Ｗ－適用日        TO  Ｄ０７７－適用年月日.            
005150*                                                                 
005160     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－資産コード               
005170                             TO  Ｄ０７７－資産コード.            
005180*                                                                 
005190     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－動総保険コード           
005200                             TO  Ｄ０７７－動総保険コード.        
005210*                                                                 
005220     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－リース   
005230                             TO  Ｄ０７７－信用保険コード－リース.
005240*                                                                 
005250     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－信用保険コード－割賦     
005260                             TO  Ｄ０７７－信用保険コード－割賦.  
005270*                                                                 
005280*----------------------------------------------------------------*
005290*    税区分判定                                                  *
005300*----------------------------------------------------------------*
005310     EVALUATE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－税区分               
005320*--<    "0"非課税 >                                               
005330        WHEN  "0"                                                 
005340           MOVE    "0"                TO  Ｄ０７７－税負担区分    
005350*--<    "1"非課税 >                                               
005360        WHEN  "1"                                                 
005370           MOVE    "1"                TO  Ｄ０７７－税負担区分    
005380*--<    "2"非課税 >                                               
005390        WHEN  "2"                                                 
005400           MOVE    "2"                TO  Ｄ０７７－税負担区分    
005410*--<    "3"非課税 >                                               
005420        WHEN  "3"                                                 
005430           MOVE    "3"                TO  Ｄ０７７－税負担区分    
005440*--<    "4"非課税 >                                               
005450        WHEN  "4"                                                 
005460           MOVE    "4"                TO  Ｄ０７７－税負担区分    
005470     END-EVALUATE.                                                
005480*                                                                 
005490     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－ジョモ商品分類名         
005500                                      TO  Ｄ０７７－商品分類名.   
005510     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名－漢字             
005520                                      TO  Ｄ０７７－物件名漢字.   
005530     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－物件名                   
005540                                      TO  Ｄ０７７－物件名.       
005550     MOVE  ＪＯＭ－ＳＹＯＨＩＮ－ＭＳＴ－機種名                   
005560                                      TO  Ｄ０７７－機種名.       
005570     MOVE  Ｗ－システム日付           TO  Ｄ０７７－登録年月日.   
005580     MOVE  Ｗ－システム時刻           TO  Ｄ０７７－登録時間.     
005590     MOVE  Ｗ－担当者                 TO  Ｄ０７７－登録担当者.   
005600     MOVE  Ｗ－システム日付           TO  Ｄ０７７－更新年月日.   
005610     MOVE  Ｗ－システム時刻           TO  Ｄ０７７－更新時間.     
005620     MOVE  Ｗ－担当者                 TO  Ｄ０７７－更新者.       
005630     MOVE  Ｗ－担当者                 TO                          
005640                                      Ｄ０７７－入力担当者コード. 
005650*                                                                 
005660 編集処理－ＥＸＩＴ.                                              
005670     EXIT.                                                        
005680******************************************************************
005690*    転リースコード取得処理                              <2.1.1> *
005700******************************************************************
005710 転リースコード取得処理               SECTION.                    
005720 転リースコード取得処理－ＳＴＡＲＴ.                              
005730                                                                  
005740     MOVE  SPACE                      TO                          
005750                               ＩＫＯ００４－転リース提携先コード.
005760*--< 転リース提携先コード取得 >                                   
005770     
      *    EXEC SQL                                                     
005780*       SELECT  転リース提携先コード                              
005790*         INTO :ＩＫＯ００４－転リース提携先コード                
005800*         FROM  IKOTBL004                                         
005810*       WHERE   取引先コード  =  :ＷＳ－ジョモ商品                
005820*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 137 TO SQL-OFFSET
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
               ＩＫＯ００４－転リース提携先コード
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＷＳ－ジョモ商品
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
005830*                                                                 
005840*--< 転リーステーブル読込確認 >                                   
005850     EVALUATE  SQLCODE                                            
005860        WHEN  定数－ＳＱＬＯＫ                                    
005870*--<       正常 >                                                 
005880           CONTINUE                                               
005890        WHEN  OTHER                                               
005900*--<       転リース提携先コードを取得しない >                     
005910           MOVE      -40              TO  Ｗ－エラーコード        
005920           PERFORM   エラー処理                                   
005930           MOVE  ZERO                 TO                          
005940                               ＩＫＯ００４－転リース提携先コード 
005950     END-EVALUATE.                                                
005960*                                                                 
005970 転リースコード取得処理－ＥＸＩＴ.                                
005980     EXIT.                                                        
005990******************************************************************
006000*    資産コード変換マスタ追加処理                        <2.2>   *
006010******************************************************************
006020 資産コード変換マスタ追加処理         SECTION.                    
006030 資産コード変換マスタ追加処理－ＳＴＡＲＴ.                        
006040*                                                                 
006050     
      *    EXEC  SQL                                                    
006060*       INSERT  INTO  D077SSH_TBL                                 
006070*          (転リース提携先コード                                  
006080*          ,先方商品コード                                        
006090*          ,適用年月日                                            
006100*          ,資産コード                                            
006110*          ,動総保険コード                                        
006120*          ,信用保険コード＿リース                         
006130*          ,信用保険コード＿割賦                           
006140*          ,税負担区分                                            
006150*          ,商品分類名                                            
006160*          ,物件名漢字                                            
006170*          ,物件名                                                
006180*          ,機種名                                                
006190*          ,登録年月日                                            
006200*          ,登録時間                                              
006210*          ,登録担当者                                            
006220*          ,更新年月日                                            
006230*          ,更新時間                                              
006240*          ,更新者                                                
006250*          ,入力担当者コード)                                     
006260*      VALUES                                                     
006270*          (:Ｄ０７７－転リース提携先コード                       
006280*          ,:Ｄ０７７－先方商品コード                             
006290*          ,:Ｄ０７７－適用年月日                                 
006300*          ,:Ｄ０７７－資産コード                                 
006310*          ,:Ｄ０７７－動総保険コード                             
006320*          ,:Ｄ０７７－信用保険コード－リース                     
006330*          ,:Ｄ０７７－信用保険コード－割賦                       
006340*          ,:Ｄ０７７－税負担区分                                 
006350*          ,:Ｄ０７７－商品分類名                                 
006360*          ,:Ｄ０７７－物件名漢字                                 
006370*          ,:Ｄ０７７－物件名                                     
006380*          ,:Ｄ０７７－機種名                                     
006390*          ,:Ｄ０７７－登録年月日                                 
006400*          ,:Ｄ０７７－登録時間                                   
006410*          ,:Ｄ０７７－登録担当者                                 
006420*          ,:Ｄ０７７－更新年月日                                 
006430*          ,:Ｄ０７７－更新時間                                   
006440*          ,:Ｄ０７７－更新者                                     
006450*          ,:Ｄ０７７－入力担当者コード)                          
006460*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 160 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｄ０７７－転リース提携先コード IN
               資産コード変換マスタ
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｄ０７７－先方商品コード IN
               資産コード変換マスタ
               SQL-SQHSTV(2)
           MOVE 10 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｄ０７７－適用年月日 IN
               資産コード変換マスタ
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｄ０７７－資産コード IN
               資産コード変換マスタ
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｄ０７７－動総保険コード IN
               資産コード変換マスタ
               SQL-SQHSTV(5)
           MOVE 4 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               Ｄ０７７－信用保険コード－リース IN
               資産コード変換マスタ
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               Ｄ０７７－信用保険コード－割賦 IN
               資産コード変換マスタ
               SQL-SQHSTV(7)
           MOVE 6 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               Ｄ０７７－税負担区分 IN
               資産コード変換マスタ
               SQL-SQHSTV(8)
           MOVE 1 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               Ｄ０７７－商品分類名 IN
               資産コード変換マスタ
               SQL-SQHSTV(9)
           MOVE 30 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               Ｄ０７７－物件名漢字 IN
               資産コード変換マスタ
               SQL-SQHSTV(10)
           MOVE 40 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               Ｄ０７７－物件名 IN
               資産コード変換マスタ
               SQL-SQHSTV(11)
           MOVE 20 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               Ｄ０７７－機種名 IN
               資産コード変換マスタ
               SQL-SQHSTV(12)
           MOVE 20 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               Ｄ０７７－登録年月日 IN
               資産コード変換マスタ
               SQL-SQHSTV(13)
           MOVE 8 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               Ｄ０７７－登録時間 IN
               資産コード変換マスタ
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               Ｄ０７７－登録担当者 IN
               資産コード変換マスタ
               SQL-SQHSTV(15)
           MOVE 8 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               Ｄ０７７－更新年月日 IN
               資産コード変換マスタ
               SQL-SQHSTV(16)
           MOVE 8 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               Ｄ０７７－更新時間 IN
               資産コード変換マスタ
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               Ｄ０７７－更新者 IN
               資産コード変換マスタ
               SQL-SQHSTV(18)
           MOVE 8 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               Ｄ０７７－入力担当者コード IN
               資産コード変換マスタ
               SQL-SQHSTV(19)
           MOVE 8 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
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
006470*                                                                 
006480*----------------------------------------------------------------*
006490*    ＤＢ追加処理を確認                                          *
006500*----------------------------------------------------------------*
006510     EVALUATE  SQLCODE                                            
006520        WHEN   定数－ＳＱＬＯＫ                                   
006530*--<       追加成功 >                                             
006540           COMPUTE  Ｗ－出力－件数    =  Ｗ－出力－件数  +  1     
006550        WHEN   OTHER                                              
006560*--<       追加失敗、プログラムを異常終了する >                   
006570           MOVE     -50               TO  Ｗ－エラーコード        
006580           PERFORM  エラー処理                                    
006590     END-EVALUATE.                                                
006600*                                                                 
006610 資産コード変換マスタ追加処理－ＥＸＩＴ.                          
006620     EXIT.                                                        
006630******************************************************************
006640*    ＤＢクローズ                                        <3.1>   *
006650******************************************************************
006660 ＤＢクローズ                         SECTION.                    
006670 ＤＢクローズ－ＳＴＡＲＴ.                                        
006680*                                                                 
006690*--< カーソルのクローズ >                                         
006700     
      *    EXEC  SQL                                                    
006710*       CLOSE  CUR1                                               
006720*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 251 TO SQL-OFFSET
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
006730*                                                                 
006740 ＤＢクローズ－ＥＸＩＴ.                                          
006750     EXIT.                                                        
006760******************************************************************
006770*    ＤＢコミット処理                                    <3.2>   *
006780******************************************************************
006790 ＤＢコミット処理                     SECTION.                    
006800 ＤＢコミット処理－ＳＴＡＲＴ.                                    
006810*                                                                 
006820     
      *    EXEC  SQL                                                    
006830*       COMMIT  WORK  RELEASE                                     
006840*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 266 TO SQL-OFFSET
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
006850*                                                                 
006860*--< コミット処理 >                                               
006870     INITIALIZE                       IF-CHOCO001.                
006880     MOVE  "3"                        TO  共１－イベント種別.     
006890     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
006900     MOVE  "0"                        TO  共１－復帰コード.       
006910     MOVE  "COMMIT"                   TO  共１－処理識別.         
006920     MOVE  "コミット実施"             TO  共１－その他メッセージ. 
006930     CALL  CLOCO001                USING  IF-CHOCO001.            
006940*                                                                 
006950 ＤＢコミット処理－ＥＸＩＴ.                                      
006960     EXIT.                                                        
006970******************************************************************
006980*    ＤＢロールバック処理                                <4.1>   *
006990******************************************************************
007000 ＤＢロールバック処理                 SECTION.                    
007010 ＤＢロールバック処理－ＳＴＡＲＴ.                                
007020*                                                                 
007030     
      *    EXEC  SQL                                                    
007040*        ROLLBACK WORK  RELEASE                                   
007050*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 281 TO SQL-OFFSET
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
007060*                                                                 
007070*--< ロールバック処理 >                                           
007080     INITIALIZE                       IF-CHOCO001.                
007090     MOVE  "1"                        TO  共１－イベント種別.     
007100     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007110     MOVE  "9"                        TO  共１－復帰コード.       
007120     MOVE  "ROLLBACK"                 TO  共１－処理識別.         
007130     MOVE  "ロールバック実施"         TO  共１－その他メッセージ. 
007140     CALL  CLOCO001                USING  IF-CHOCO001.            
007150*                                                                 
007160 ＤＢロールバック処理－ＥＸＩＴ.                                  
007170     EXIT.                                                        
007180******************************************************************
007190*    エラー処理                                          <4.0>   *
007200******************************************************************
007210 エラー処理                           SECTION.                    
007220 エラー処理－ＳＴＡＲＴ.                                          
007230*                                                                 
007240     MOVE  "Y"                        TO  異常終了－フラグ.       
007250     INITIALIZE                       IF-CHOCO001.                
007260*                                                                 
007270     EVALUATE  Ｗ－エラーコード                                   
007280        WHEN  -1                                                  
007290*--<       基準適用日ファイルオープンエラー >                     
007300           MOVE  "2"                  TO  共１－イベント種別      
007310           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
007320           MOVE  "9"                  TO  共１－復帰コード        
007330           MOVE  "FFUISA01"           TO  共１－処理テーブルＩＤ  
007340           MOVE  "OPEN"               TO  共１－処理識別          
007350           MOVE  ファイル状態         TO  共１－データ内容        
007360           MOVE  "基準適用日ファイルオープンエラー"               
007370                                      TO  共１－その他メッセージ  
007380           CALL  CLOCO001          USING  IF-CHOCO001             
007390           MOVE  "N"                  TO  異常終了－フラグ        
007400*                                                                 
007410        WHEN  -2                                                  
007420*--<       基準適用日読み込みファイルエラー >                     
007430           MOVE  "2"                  TO  共１－イベント種別      
007440           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
007450           MOVE  "9"                  TO  共１－復帰コード        
007460           MOVE  "FFUISA01"           TO  共１－処理テーブルＩＤ  
007470           MOVE  "READ"               TO  共１－処理識別          
007480           MOVE  ファイル状態         TO  共１－データ内容        
007490           MOVE  "基準適用日ファイル読み込みエラー"               
007500                                      TO  共１－その他メッセージ  
007510           CALL  CLOCO001          USING  IF-CHOCO001             
007520           MOVE  "N"                  TO  異常終了－フラグ        
007530*                                                                 
007540        WHEN  -10                                                 
007550*--<       ＯＲＡＣＬＥ接続失敗 >                                 
007560           MOVE  "1"                  TO  共１－イベント種別      
007570           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
007580           MOVE  "9"                  TO  共１－復帰コード        
007590           MOVE  "CONNECT"            TO  共１－処理識別          
007600           MOVE  SQLCODE              TO  共１－データ内容        
007610           MOVE  SQLERRMC             TO  共１－その他メッセージ  
007620           CALL  CLOCO001          USING  IF-CHOCO001             
007630*                                                                 
007640        WHEN  -20                                                 
007650*--<       カーソルオープン失敗 >                                 
007660           MOVE  "1"                  TO  共１－イベント種別      
007670           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
007680           MOVE  "9"                  TO  共１－復帰コード        
007690           MOVE  "JOM_MST"            TO  共１－処理テーブルＩＤ  
007700           MOVE  "OPEN"               TO  共１－処理識別          
007710           MOVE  SQLCODE              TO  共１－データ内容        
007720           MOVE  SQLERRMC             TO  共１－その他メッセージ  
007730           CALL  CLOCO001          USING  IF-CHOCO001             
007740*                                                                 
007750        WHEN  -30                                                 
007760*--<       ジョモ商品の読込失敗 >                                 
007770           MOVE  "1"                  TO  共１－イベント種別      
007780           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
007790           MOVE  "9"                  TO  共１－復帰コード        
007800           MOVE  "JOM_MST"            TO  共１－処理テーブルＩＤ  
007810           MOVE  "FETCH"              TO  共１－処理識別          
007820           MOVE  SQLCODE              TO  共１－データ内容        
007830           MOVE  SQLERRMC             TO  共１－その他メッセージ  
007840           CALL  CLOCO001          USING  IF-CHOCO001             
007850*                                                                 
007860        WHEN  -40                                                 
007870*--<       転リース提携先コードを取得しない >                     
007880           MOVE  "2"                  TO  共１－イベント種別      
007890           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
007900           MOVE  "9"                  TO  共１－復帰コード        
007910           MOVE  "IKO004"             TO  共１－処理テーブルＩＤ  
007920           MOVE  "SELECT"             TO  共１－処理識別          
007930           MOVE  ＷＳ－ジョモ商品     TO  共１－キー情報          
007940           MOVE  SQLCODE              TO  共１－データ内容        
007950           MOVE  SQLERRMC             TO  共１－その他メッセージ  
007960           CALL  CLOCO001          USING  IF-CHOCO001             
007970           MOVE  "N"                  TO  異常終了－フラグ        
007980*                                                                 
007990        WHEN  -50                                                 
008000*--<       資産コード変換マスタ追加失敗 >                         
008010           MOVE  "1"                  TO  共１－イベント種別      
008020           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008030           MOVE  "9"                  TO  共１－復帰コード        
008040           MOVE  "D077SSH"            TO  共１－処理テーブルＩＤ  
008050           MOVE  "INSERT"             TO  共１－処理識別          
008060           MOVE  SQLCODE              TO  共１－データ内容        
008070           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008080           CALL  CLOCO001          USING  IF-CHOCO001             
008090*                                                                 
008100        WHEN  OTHER                                               
008110           MOVE  "N"                  TO  異常終了－フラグ        
008120     END-EVALUATE.                                                
008130*                                                                 
008140     IF  異常終了－フラグ  =  "Y"                                 
008150*----------------------------------------------------------------*
008160*    終了メッセージ出力処理                                      *
008170*----------------------------------------------------------------*
008180        PERFORM  終了メッセージ出力                               
008190*                                                                 
008200        PERFORM  ＤＢロールバック処理                             
008210*--<    プログラムリターンコード >                                
008220        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
008230        EXIT  PROGRAM                                             
008240     END-IF.                                                      
008250*                                                                 
008260 エラー処理－ＥＸＩＴ.                                            
008270      EXIT.                                                       
008280******************************************************************
008290*                  END OF PROGRAM                                *
008300******************************************************************
