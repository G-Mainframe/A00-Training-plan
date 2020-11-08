000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名    ：受取手形移行処理                     *
000040*      2. プログラムID    ：COBIS630                             *
000050*      3. 処理概要        ：契約ＮＯをKEYとし、                  *
000060*                           ソート後の手形基本ファイルと         *
000070*                           ソート後の受取手形ファイルで         *
000080*                           マッチング処理を行う                 *
000090*      4. 作成者          ：紀岩                                 *
000100*      5. 作成日          ：2005.04.02                           *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000150******************************************************************
000160 IDENTIFICATION                       DIVISION.                   
000170*                                                                 
000180 PROGRAM-ID.                          COBIS630.                   
000190******************************************************************
000200*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000210******************************************************************
000220 ENVIRONMENT                          DIVISION.                   
000230******************************************************************
000240*    ＩＮＰＵＴ－ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000250******************************************************************
000260 INPUT-OUTPUT                         SECTION.                    
000270*                                                                 
000280 FILE-CONTROL.                                                    
000290     SELECT    入力ファイル１         ASSIGN    TO     U01        
000300     FILE      STATUS     IS          Ｗ－状態                    
000310     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000320*                                                                 
000330     SELECT    入力ファイル２         ASSIGN    TO     U02        
000340     FILE      STATUS     IS          Ｗ－状態                    
000350     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000360*                                                                 
000370******************************************************************
000380*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000390******************************************************************
000400 DATA                                 DIVISION.                   
000410******************************************************************
000420*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000430******************************************************************
000440 FILE                                 SECTION.                    
000450*----------------------------------------------------------------*
000460*    入力ファイル                                                *
000470*----------------------------------------------------------------*
000480 FD  入力ファイル１                                               
000490     LABEL     RECORD     IS          STANDARD                    
000500     BLOCK     CONTAINS   0           RECORDS.                    
000510*                                                                 
000520 01  入力１－レコード.                                            
000530     COPY  CPBIS061  REPLACING  ==()==  BY  ==入力１－==.         
000540*                                                                 
000550 FD  入力ファイル２                                               
000560     LABEL     RECORD     IS          STANDARD                    
000570     BLOCK     CONTAINS   0           RECORDS.                    
000580*                                                                 
000590 01  入力２－レコード.                                            
000600     COPY  CPBIS062  REPLACING  ==()==  BY  ==入力２－==.         
000610*                                                                 
000620******************************************************************
000630*  ＷＯＲＫＩＮＧ－ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000640******************************************************************
000650  WORKING-STORAGE                     SECTION.                    
000660*----------------------------------------------------------------*
000670*    ホスト変数定義エリア                                        *
000680*----------------------------------------------------------------*
000690     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS630\CO
      -    "BIS630.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(101) VALUE "select 新取引先コード  ,枝番   i
      -    "nto :b1,:b2  from IKOTBL001 where (取引先コード=:b3 and 目的
      -    "ＣＤ=:b4)".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(63) VALUE "select 主契約区分   into :b1  fro
      -    "m IKOTBL002 where 契約ＮＯ=:b2".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(101) VALUE "select 新取引先コード  ,枝番   i
      -    "nto :b1,:b2  from IKOTBL001 where (取引先コード=:b3 and 目的
      -    "ＣＤ=:b4)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D642UTG_TBL(代表契約
      -     "番号,束数,取引先コード,契約先コード,契約先名称,契約先名称カ
      -    "ナ,部店コード,主契約区分,手形状態,取引日,伝票発行日,手形種類
      -    ",期日基準".

           02  FILLER PIC X(160) VALUE  "日,期日サイクル,束合計金額,手形
      -     "枚数,取立銀行コード,支払銀行コード,契約番号１,契約番号２,契
      -     "約番号３,契約番号４,契約番号５,契約番号６,契約番号７,契約番
      -    "号８,契約番".

           02  FILLER PIC X(159) VALUE  "号９,契約番号１０,備考欄,手形内
      -    "容種別,登録年月日,登録時間,登録担当者,更新年月日,更新時間,更
      -    "新者,入力担当者コード,売却代金区分,振出人取引先コード,振出人
      -    "契約先コ".

           02  FILLER PIC X(160) VALUE "ード,振出人名称,振出人名称カナ) 
      -    "values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:
      -    "b13,:b14,:b15,:b16,:b17,:b18,:b19,:b20,:b21,:b22,:b23,:b24,:
      -    "b25,:b26".

           02  FILLER PIC X(81) VALUE ",:b27,:b28,:b29,:b30,:b31,:b32,:b
      -    "33,:b34,:b35,:b36,:b37,:b38,:b39,:b40,:b41,:b42)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D645UTT_TBL(代表契約
      -     "番号,束数,連番,手形番号,期日,金額,振出人取引先コード,振出人
      -     "契約先コード,振出人名称,振出人名称カナ,登録年月日,登録時間,
      -     "登録担当者".

           02  FILLER PIC X(144) VALUE ",更新年月日,更新時間,更新者,入力
      -    "担当者コード,手形状態) values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:
      -    "b8,:b9,:b10,:b11,:b12,:b13,:b14,:b15,:b16,:b17,:b18)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148394268.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +233.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +237.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +516.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +98.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +63.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +546.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +121.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +595.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +152.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +720.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +686.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +335.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +304.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +796.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +422.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +978.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000700*                                                                 
000710 01 ＷＳ－取引先コード                PIC X(08).                  
000720 01 ＷＳ－目的ＣＤ                    PIC X(01)  VALUE '2'.       
000730 01 ＷＳ－契約ＮＯ                    PIC X(09).                  
000740 01 ＷＳ－支払人コード                PIC X(08).                  
000750*                                                                 
000760*--< ＯＲＡＣＬＥ共通変数 >                                       
000770     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000780*--< 受取手形テーブル >                                           
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000790     
      *    EXEC  SQL  INCLUDE  D642UTG.CBL           END-EXEC.
000800*--< 受取手形展開テーブル >                                       
      *****************************************************************
      *   受取手形(D642UTG_TBL)
      *****************************************************************
       01  受取手形.
           03  Ｄ６４２－代表契約番号
                                     PIC  X(010).
           03  Ｄ６４２－束数        PIC S9(003) PACKED-DECIMAL.
           03  Ｄ６４２－取引先コード
                                     PIC  X(009).
           03  Ｄ６４２－契約先コード
                                     PIC  X(005).
           03  Ｄ６４２－契約先名称  PIC  X(040).
           03  Ｄ６４２－契約先名称カナ
                                     PIC  X(040).
           03  Ｄ６４２－部店コード  PIC  X(004).
           03  Ｄ６４２－主契約区分  PIC  X(001).
           03  Ｄ６４２－手形状態    PIC  X(001).
           03  Ｄ６４２－取引日      PIC  X(008).
           03  Ｄ６４２－伝票発行日  PIC  X(008).
           03  Ｄ６４２－手形種類    PIC  X(001).
           03  Ｄ６４２－期日基準日  PIC  X(008).
           03  Ｄ６４２－期日サイクル
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ６４２－束合計金額  PIC S9(013) PACKED-DECIMAL.
           03  Ｄ６４２－手形枚数    PIC S9(004) PACKED-DECIMAL.
           03  Ｄ６４２－取立銀行コード
                                     PIC  X(007).
           03  Ｄ６４２－支払銀行コード
                                     PIC  X(007).
           03  Ｄ６４２－契約番号１  PIC  X(010).
           03  Ｄ６４２－契約番号２  PIC  X(010).
           03  Ｄ６４２－契約番号３  PIC  X(010).
           03  Ｄ６４２－契約番号４  PIC  X(010).
           03  Ｄ６４２－契約番号５  PIC  X(010).
           03  Ｄ６４２－契約番号６  PIC  X(010).
           03  Ｄ６４２－契約番号７  PIC  X(010).
           03  Ｄ６４２－契約番号８  PIC  X(010).
           03  Ｄ６４２－契約番号９  PIC  X(010).
           03  Ｄ６４２－契約番号１０
                                     PIC  X(010).
           03  Ｄ６４２－備考欄      PIC  X(040).
           03  Ｄ６４２－手形内容種別
                                     PIC  X(001).
           03  Ｄ６４２－登録年月日  PIC  X(008).
           03  Ｄ６４２－登録時間    PIC  X(008).
           03  Ｄ６４２－登録担当者  PIC  X(008).
           03  Ｄ６４２－更新年月日  PIC  X(008).
           03  Ｄ６４２－更新時間    PIC  X(008).
           03  Ｄ６４２－更新者      PIC  X(008).
           03  Ｄ６４２－入力担当者コード
                                     PIC  X(008).
           03  Ｄ６４２－売却代金区分
                                     PIC  X(001).
           03  Ｄ６４２－振出人取引先コード
                                     PIC  X(009).
           03  Ｄ６４２－振出人契約先コード
                                     PIC  X(005).
           03  Ｄ６４２－振出人名称  PIC  X(040).
           03  Ｄ６４２－振出人名称カナ
                                     PIC  X(040).
000810     
      *    EXEC  SQL  INCLUDE  D645UTT.CBL           END-EXEC.
000820*--< 変換テーブル >                                               
      *****************************************************************
      *   受取手形展開(D645UTT_TBL)
      *****************************************************************
       01  受取手形展開.
           03  Ｄ６４５－代表契約番号
                                     PIC  X(010).
           03  Ｄ６４５－束数        PIC S9(003) PACKED-DECIMAL.
           03  Ｄ６４５－連番        PIC S9(003) PACKED-DECIMAL.
           03  Ｄ６４５－手形番号    PIC  X(010).
           03  Ｄ６４５－期日        PIC  X(008).
           03  Ｄ６４５－金額        PIC S9(013) PACKED-DECIMAL.
           03  Ｄ６４５－振出人取引先コード
                                     PIC  X(009).
           03  Ｄ６４５－振出人契約先コード
                                     PIC  X(005).
           03  Ｄ６４５－振出人名称  PIC  X(040).
           03  Ｄ６４５－振出人名称カナ
                                     PIC  X(040).
           03  Ｄ６４５－登録年月日  PIC  X(008).
           03  Ｄ６４５－登録時間    PIC  X(008).
           03  Ｄ６４５－登録担当者  PIC  X(008).
           03  Ｄ６４５－更新年月日  PIC  X(008).
           03  Ｄ６４５－更新時間    PIC  X(008).
           03  Ｄ６４５－更新者      PIC  X(008).
           03  Ｄ６４５－入力担当者コード
                                     PIC  X(008).
           03  Ｄ６４５－手形状態    PIC  X(001).
000830     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
000840*--< 契約種類等変換テーブル >                                     
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
000850     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
000860*--< ＯＲＡＣＬＥ ＳＱＬ実行情報 (SQLCA) >                        
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
000870     
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
000880*                                                                 
000890     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000900*----------------------------------------------------------------*
000910*    ＷＯＲＫエリア                                              *
000920*----------------------------------------------------------------*
000930 01  ＷＯＲＫ－エリア.                                            
000940*--< 連番処理 >                                                   
000950     03  Ｗ－連番                     PIC S9(03).                 
000960*--< 日期処理 >                                                   
000970     03  Ｗ－入力日期                 PIC  X(07).                 
000980     03  Ｗ－出力日期                 PIC  X(08).                 
000990*--< エラー判定用 >                                               
001000     03  Ｗ－エラーコード             PIC S9(04).                 
001010*--< ファイル状態 >                                               
001020     03  Ｗ－状態エリア.                                          
001030         05  Ｗ－状態                 PIC  X(02).                 
001040*--< フラグエリア >                                               
001050     03  Ｗ－フラッグエリア.                                      
001060         05  Ｗ－終了－フラグ１       PIC  X(01).                 
001070         05  Ｗ－終了－フラグ２       PIC  X(01).                 
001080         05  Ｗ－異常終了－フラグ     PIC  X(01).                 
001090*--< 件数エリア >                                                 
001100     03  件数エリア.                                              
001110         05  Ｗ－入力－件数１         PIC  9(09).                 
001120         05  Ｗ－入力－件数２         PIC  9(09).                 
001130         05  Ｗ－出力－件数１         PIC  9(09).                 
001140         05  Ｗ－出力－件数２         PIC  9(09).                 
001150*--< キーエリア >                                                 
001160     03  ＫＥＹ－エリア.                                          
001170        05  ＮＥＷキー.                                           
001180            07 Ｗ－Ｎ－契約ＮＯ１     PIC  X(09).                 
001190            07 Ｗ－Ｎ－契約ＮＯ２     PIC  X(09).                 
001200            07 Ｗ－Ｎ－束数           PIC  S9(2).                 
001210        05  ＯＬＤキー.                                           
001220            07 Ｗ－Ｏ－契約ＮＯ１     PIC  X(09).                 
001230            07 Ｗ－Ｏ－束数           PIC  S9(2).                 
001240*--< 共通情報 >                                                   
001250 01  Ｗ－共通情報.                                                
001260     03  Ｗ－システム日付.                                        
001270         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001280         05  Ｗ－年月日               PIC  X(06).                 
001290     03  Ｗ－システム時刻             PIC  X(08).                 
001300     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001310*                                                                 
001320*----------------------------------------------------------------*
001330*    サブルーチン名                                              *
001340*----------------------------------------------------------------*
001350 01  CALL-AREA.                                                   
001360*--< 共通ログサブルーチン >                                       
001370     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001380     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001390*                                                                 
001400*----------------------------------------------------------------*
001410*    ＣＯＰＹ領域                                                *
001420*----------------------------------------------------------------*
001430*--< 共通ログ用パラメータ >                                       
001440 01  IF-CHOCO001.                                                 
001450     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１－==.           
001460*                                                                 
001470*----------------------------------------------------------------*
001480*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001490*----------------------------------------------------------------*
001500 01  PARA-AREA.                                                   
001510     COPY CPBCO001.                                               
001520******************************************************************
001530*    定数用データ定義エリア                                      *
001540******************************************************************
001550 CONSTANT                             SECTION.                    
001560 01  定数領域.                                                    
001570     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS630".
001580     03  定数－プログラム名           PIC  X(80)                  
001590                                        VALUE  "受取手形移行処理".
001600     03  定数－ＳＱＬＯＫ             PIC  9(04)  VALUE  ZERO.    
001610     03  定数－ＳＱＬＬＯＴ           PIC S9(04)  VALUE -2112.    
001620     03  定数－ＳＱＬＥＮＤ           PIC  9(04)  VALUE  0100.    
001630     03  定数－正常状態               PIC S9(04)  VALUE  ZERO.    
001640     03  定数－異常状態               PIC S9(04)  VALUE  0009.    
001650******************************************************************
001660*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001670******************************************************************
001680 PROCEDURE                            DIVISION.                   
001690*                                                                 
001700     PERFORM  初期処理.                                           
001710*                                                                 
001720     PERFORM   主処理     UNTIL  (Ｗ－終了－フラグ１ = "Y")       
001730                          AND    (Ｗ－終了－フラグ２ = "Y").      
001740*                                                                 
001750     PERFORM  終了処理.                                           
001760*                                                                 
001770     STOP     RUN.                                                
001780*                                                                 
001790******************************************************************
001800*    初期処理                                            <1.0>   *
001810******************************************************************
001820 初期処理                             SECTION.                    
001830 初期処理－ＳＴＡＲＴ.                                            
001840*                                                                 
001850*----------------------------------------------------------------*
001860*    開始メッセージ出力処理                              <1.1>   *
001870*----------------------------------------------------------------*
001880     INITIALIZE                       IF-CHOCO001.                
001890     MOVE  "3"                        TO  共１－イベント種別.     
001900     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
001910     MOVE  ZERO                       TO  共１－復帰コード.       
001920     MOVE  "START"                    TO  共１－処理識別.         
001930     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
001940     CALL  CLOCO001                USING  IF-CHOCO001.            
001950*                                                                 
001960*----------------------------------------------------------------*
001970*    作業領域の初期値処理                                <1.2>   *
001980*----------------------------------------------------------------*
001990     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
002000     INITIALIZE                           ＷＯＲＫ－エリア.       
002010*--< ＣＰＵ日付を取得 >                                           
002020     ACCEPT  Ｗ－年月日               FROM  DATE.                 
002030*--< ＣＰＵ時刻を取得 >                                           
002040     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
002050*--< ＯＲＡＣＬＥ接続  >                                          
002060     PERFORM   ＯＲＡＣＬＥ接続.                                  
002070*--< ファイルオープン >                                           
002080     PERFORM  ファイルオープン.                                   
002090*--< 入力ファイル１(手形基本ファイル)読込処理 >                   
002100     PERFORM  手形基本ファイル読込処理.                           
002110*--< 入力ファイル２(受取手形ファイル)読込処理 >                   
002120     PERFORM  受取手形ファイル読込処理.                           
002130*                                                                 
002140 初期処理－ＥＸＩＴ.                                              
002150     EXIT.                                                        
002160******************************************************************
002170*    ＯＲＡＣＬＥ接続                                            *
002180******************************************************************
002190 ＯＲＡＣＬＥ接続                     SECTION.                    
002200 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
002210*                                                                 
002220*--< ＤＢ接続用情報を取得処理 >                                   
002230     CALL  COBCO001                USING  PARA-AREA.              
002240*                                                                 
002250     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002260     MOVE  PARA-USERNAME              TO  USERNAME.               
002270     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002280*                                                                 
002290*----------------------------------------------------------------*
002300*    開始接続                                                    *
002310*----------------------------------------------------------------*
002320     IF    DB-STRING  =  SPACE                                    
002330        
      *       EXEC SQL                                                  
002340*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002350*       END-EXEC 
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
002360     ELSE                                                         
002370        
      *       EXEC SQL                                                  
002380*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002390*            USING  :DB-STRING                                    
002400*       END-EXEC 
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
002410     END-IF.                                                      
002420*                                                                 
002430*----------------------------------------------------------------*
002440*    接続確認                                                    *
002450*----------------------------------------------------------------*
002460     EVALUATE  SQLCODE                                            
002470        WHEN   定数－ＳＱＬＯＫ                                   
002480           CONTINUE                                               
002490        WHEN   OTHER                                              
002500*--<       接続エラー >                                           
002510           MOVE     -10               TO  Ｗ－エラーコード        
002520           PERFORM  エラー処理                                    
002530     END-EVALUATE.                                                
002540*                                                                 
002550 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
002560     EXIT.                                                        
002570******************************************************************
002580*    ファイルオープン                                            *
002590******************************************************************
002600 ファイルオープン                     SECTION.                    
002610 ファイルオープン－ＳＴＡＲＴ.                                    
002620*----------------------------------------------------------------*
002630*    入力ファイル１オープン                                      *
002640*----------------------------------------------------------------*
002650     OPEN  INPUT   入力ファイル１.                                
002660*                                                                 
002670*--< 入力ファイル１オープンの状態判定 >                           
002680     EVALUATE  Ｗ－状態                                           
002690        WHEN  ZERO                                                
002700           CONTINUE                                               
002710        WHEN  OTHER                                               
002720*--<       入力ファイル１オープンエラー >                         
002730           MOVE     -20               TO  Ｗ－エラーコード        
002740           PERFORM  エラー処理                                    
002750     END-EVALUATE.                                                
002760*                                                                 
002770*----------------------------------------------------------------*
002780*    入力ファイル２オープン                                      *
002790*----------------------------------------------------------------*
002800     OPEN  INPUT   入力ファイル２.                                
002810*                                                                 
002820*--< 入力ファイル２オープンの状態判定 >                           
002830     EVALUATE  Ｗ－状態                                           
002840        WHEN  ZERO                                                
002850           CONTINUE                                               
002860        WHEN  OTHER                                               
002870*--<       入力ファイル２オープンエラー >                         
002880           MOVE     -30               TO  Ｗ－エラーコード        
002890           PERFORM  エラー処理                                    
002900     END-EVALUATE.                                                
002910 ファイルオープン－ＥＸＩＴ.                                      
002920     EXIT.                                                        
002930******************************************************************
002940*    手形基本ファイル読込処理                                    *
002950******************************************************************
002960 手形基本ファイル読込処理             SECTION.                    
002970 手形基本ファイル読込処理－ＳＴＡＲＴ.                            
002980*                                                                 
002990     READ  入力ファイル１                                         
003000        AT END                                                    
003010           MOVE  "Y"                  TO  Ｗ－終了－フラグ１      
003020           MOVE  HIGH-VALUE           TO  Ｗ－Ｎ－契約ＮＯ１      
003030           GO    TO   手形基本ファイル読込処理－ＥＸＩＴ          
003040     END-READ.                                                    
003050*                                                                 
003060*--< ファイル読込状態判定 >                                       
003070     EVALUATE  Ｗ－状態                                           
003080        WHEN  ZERO                                                
003090           MOVE  入力１－契約ＮＯ     TO  Ｗ－Ｎ－契約ＮＯ１      
003100           MOVE  入力１－契約ＮＯ     TO  ＷＳ－契約ＮＯ          
003110           MOVE  入力１－取引先コード TO  ＷＳ－取引先コード      
003120                                                                  
003130*--<       手形基本ファイル入力件数のカウント >                   
003140           COMPUTE  Ｗ－入力－件数１ = Ｗ－入力－件数１ + 1       
003150        WHEN  OTHER                                               
003160*--<       手形基本ファイル読込エラー >                           
003170           MOVE     -40               TO  Ｗ－エラーコード        
003180           PERFORM  エラー処理                                    
003190     END-EVALUATE.                                                
003200*                                                                 
003210 手形基本ファイル読込処理－ＥＸＩＴ.                              
003220     EXIT.                                                        
003230******************************************************************
003240*    受取手形ファイル読込処理                                    *
003250******************************************************************
003260 受取手形ファイル読込処理             SECTION.                    
003270 受取手形ファイル読込処理－ＳＴＡＲＴ.                            
003280*                                                                 
003290     READ  入力ファイル２                                         
003300        AT END                                                    
003310           MOVE  "Y"                  TO  Ｗ－終了－フラグ２      
003320           MOVE  HIGH-VALUE           TO  Ｗ－Ｎ－契約ＮＯ２      
003330           GO    TO   受取手形ファイル読込処理－ＥＸＩＴ          
003340     END-READ.                                                    
003350*                                                                 
003360*--< ファイル読込状態判定 >                                       
003370     EVALUATE  Ｗ－状態                                           
003380        WHEN  ZERO                                                
003390           MOVE  入力２－契約ＮＯ     TO  Ｗ－Ｎ－契約ＮＯ２      
003400           MOVE  入力２－束数         TO  Ｗ－Ｎ－束数            
003410           MOVE  入力２－支払人コード TO  ＷＳ－支払人コード      
003420*--<       受取手形ファイル入力件数の加算 >                       
003430           COMPUTE  Ｗ－入力－件数２ = Ｗ－入力－件数２ + 1       
003440        WHEN  OTHER                                               
003450*--<       受取手形ファイル読込エラー >                           
003460           MOVE     -50               TO  Ｗ－エラーコード        
003470           PERFORM  エラー処理                                    
003480     END-EVALUATE.                                                
003490*                                                                 
003500 受取手形ファイル読込処理－ＥＸＩＴ.                              
003510     EXIT.                                                        
003520******************************************************************
003530*    主処理                                                      *
003540******************************************************************
003550 主処理                               SECTION.                    
003560 主処理－ＳＴＡＲＴ.                                              
003570*                                                                 
003580     EVALUATE  TRUE                                               
003590*--<    手形基本ファイルのみの場合 >                              
003600        WHEN  Ｗ－Ｎ－契約ＮＯ１ > Ｗ－Ｎ－契約ＮＯ２             
003610           PERFORM  受取手形ファイル読込処理                      
003620*                                                                 
003630*--<    マッチングの場合 >                                        
003640        WHEN  Ｗ－Ｎ－契約ＮＯ１ = Ｗ－Ｎ－契約ＮＯ２             
003650           PERFORM  マッチング編集出力処理                        
003660*                                                                 
003670           PERFORM  受取手形ファイル読込処理                      
003680*                                                                 
003690*--<    受取手形ファイルのみの場合 >                              
003700        WHEN  Ｗ－Ｎ－契約ＮＯ１ < Ｗ－Ｎ－契約ＮＯ２             
003710           IF Ｗ－Ｎ－契約ＮＯ１ NOT = Ｗ－Ｏ－契約ＮＯ１         
003720		    DISPLAY "***** COBIS630:受取手形ファイルなし ",     
003730                      "契約ＮＯ=" , Ｗ－Ｎ－契約ＮＯ１            
003740           END-IF                                                 
003750           PERFORM  手形基本ファイル読込処理                      
003760*                                                                 
003770     END-EVALUATE.                                                
003780*                                                                 
003790 主処理－ＥＸＩＴ.                                                
003800     EXIT.                                                        
003810******************************************************************
003820*    マッチング編集出力処理                                      *
003830******************************************************************
003840 マッチング編集出力処理               SECTION.                    
003850 マッチング編集出力処理－ＳＴＡＲＴ.                              
003860     PERFORM 受取手形テーブル編集.                                
003870*                                                                 
003880	   PERFORM 受取手形展開テーブル編集.                            
003890*                                                                 
003900     IF     Ｗ－Ｎ－契約ＮＯ１ = Ｗ－Ｏ－契約ＮＯ１               
003910        AND Ｗ－Ｎ－束数       = Ｗ－Ｏ－束数                     
003920           PERFORM 受取手形展開テーブル出力                       
003930     ELSE                                                         
003940           PERFORM 受取手形テーブル出力                           
003950           PERFORM 受取手形展開テーブル出力                       
003960     END-IF.                                                      
003970*                                                                 
003980	   MOVE Ｗ－Ｎ－契約ＮＯ１          TO  Ｗ－Ｏ－契約ＮＯ１.     
003990	   MOVE Ｗ－Ｎ－束数                TO  Ｗ－Ｏ－束数.           
004000*                                                                 
004010 マッチング編集出力処理－ＥＸＩＴ.                                
004020******************************************************************
004030*     受取手形テーブル編集                                       *
004040******************************************************************
004050 受取手形テーブル編集                 SECTION.                    
004060 受取手形テーブル編集－ＳＴＡＲＴ.                                
004070*----------------------------------------------------------------*
004080*       初期化処理                                               *
004090*----------------------------------------------------------------*
004100        MOVE  SPACE                   TO  受取手形.               
004110        INITIALIZE                        受取手形.               
004120*----------------------------------------------------------------*
004130*       項目編集処理                                             *
004140*----------------------------------------------------------------*
004150*--<    No.01 >                                                   
004160        MOVE  入力１－契約ＮＯ        TO  Ｄ６４２－代表契約番号. 
004170*--<    No.02 >                                                   
004180        MOVE  入力２－束数            TO  Ｄ６４２－束数.         
004190*--<    No.03 AND No.04 >                                         
004200        PERFORM 取引先コードと契約先コード項目抽出.               
004210        MOVE  ＩＫＯ００１－新取引先コード                        
004220                                      TO  Ｄ６４２－取引先コード. 
004230        MOVE  ＩＫＯ００１－枝番      TO  Ｄ６４２－契約先コード. 
004240*--<    No.05 >                                                   
004250        MOVE  入力１－名称漢字        TO  Ｄ６４２－契約先名称.   
004260*--<    No.06 >                                                   
004270        MOVE  入力１－名称カナ        TO Ｄ６４２－契約先名称カナ.
004280*--<    No.07 >                                                   
004290        MOVE  入力１－事業所コード    TO  Ｄ６４２－部店コード.   
004300*--<    No.08 >                                                   
004310        PERFORM 主契約区分項目抽出.                               
004320        MOVE ＩＫＯ００２－主契約区分 TO  Ｄ６４２－主契約区分.   
004330*--<    No.09 >                                                   
004340        MOVE  ZERO                    TO  Ｄ６４２－手形状態.     
004350*--<    No.10 >                                                   
004360        MOVE  入力２－取引日          TO  Ｗ－入力日期.           
004370        PERFORM 日期処理.                                         
004380        MOVE  Ｗ－出力日期            TO  Ｄ６４２－取引日.       
004390*--<    No.11 >                                                   
004400        MOVE  入力２－伝票発行日      TO  Ｗ－入力日期.           
004410        PERFORM 日期処理.                                         
004420        MOVE  Ｗ－出力日期            TO  Ｄ６４２－伝票発行日.   
004430*--<    No.12 >                                                   
004440        MOVE  入力２－手形種類        TO  Ｄ６４２－手形種類.     
004450*--<    No.13 >                                                   
004460        MOVE  入力２－期日基準日      TO  Ｗ－入力日期.           
004470        PERFORM 日期処理.                                         
004480        MOVE  Ｗ－出力日期            TO  Ｄ６４２－期日基準日.   
004490*--<    No.14 >                                                   
004500        MOVE  入力２－期日サイクル    TO  Ｄ６４２－期日サイクル. 
004510*--<    No.15 >                                                   
004520        MOVE  入力２－束合計金額      TO  Ｄ６４２－束合計金額.   
004530*--<    No.16 >                                                   
004540        MOVE  入力２－手形枚数        TO  Ｄ６４２－手形枚数.     
004550*--<    No.17 >                                                   
004560        MOVE  入力２－取立依頼銀行コード                          
004570                                     TO Ｄ６４２－取立銀行コード. 
004580*--<    No.18 >                                                   
004590        MOVE  入力２－支払銀行コード TO Ｄ６４２－支払銀行コード. 
004600*--<    No.19 >                                                   
004610        MOVE  入力１－契約ＮＯ１      TO  Ｄ６４２－契約番号１.   
004620*--<    No.20 >                                                   
004630        MOVE  入力１－契約ＮＯ２      TO  Ｄ６４２－契約番号２.   
004640*--<    No.21 >                                                   
004650        MOVE  入力１－契約ＮＯ３      TO  Ｄ６４２－契約番号３.   
004660*--<    No.22 >                                                   
004670        MOVE  入力１－契約ＮＯ４      TO  Ｄ６４２－契約番号４.   
004680*--<    No.23 >                                                   
004690        MOVE  入力１－契約ＮＯ５      TO  Ｄ６４２－契約番号５.   
004700*--<    No.24 >                                                   
004710        MOVE  入力１－契約ＮＯ６      TO  Ｄ６４２－契約番号６.   
004720*--<    No.25 >                                                   
004730        MOVE  入力１－契約ＮＯ７      TO  Ｄ６４２－契約番号７.   
004740*--<    No.26 >                                                   
004750        MOVE  入力１－契約ＮＯ８      TO  Ｄ６４２－契約番号８.   
004760*--<    No.27 >                                                   
004770        MOVE  入力１－契約ＮＯ９      TO  Ｄ６４２－契約番号９.   
004780*--<    No.28>                                                    
004790        MOVE  入力１－契約ＮＯ１０    TO  Ｄ６４２－契約番号１０. 
004800*--<    No.29 >                                                   
004810        MOVE  入力２－備考欄          TO  Ｄ６４２－備考欄.       
004820*--<    No.30>                                                    
004830        MOVE  ZERO                    TO  Ｄ６４２－手形内容種別. 
004840*--<    No.31 >                                                   
004850        MOVE  Ｗ－システム日付        TO  Ｄ６４２－登録年月日.   
004860*--<    No.32 >                                                   
004870        MOVE  Ｗ－システム時刻        TO  Ｄ６４２－登録時間.     
004880*--<    No.33 >                                                   
004890        MOVE  Ｗ－担当者              TO  Ｄ６４２－登録担当者.   
004900*--<    No.34 >                                                   
004910        MOVE  Ｗ－システム日付        TO  Ｄ６４２－更新年月日.   
004920*--<    No.35 >                                                   
004930        MOVE  Ｗ－システム時刻        TO  Ｄ６４２－更新時間.     
004940*--<    No.36 >                                                   
004950        MOVE  Ｗ－担当者              TO  Ｄ６４２－更新者.       
004960*--<    No.37 >                                                   
004970        MOVE  Ｗ－担当者          TO  Ｄ６４２－入力担当者コード. 
004980*--<    No.38 >                                                   
004990        MOVE  ZERO                    TO  Ｄ６４２－売却代金区分. 
005000*--<    No.39 AND No.40 >                                         
005010        PERFORM 振出人取引先コードと契約先コード項目抽出.         
005020        MOVE  ＩＫＯ００１－新取引先コード                        
005030                                  TO Ｄ６４２－振出人取引先コード.
005040        MOVE  ＩＫＯ００１－枝番  TO Ｄ６４２－振出人契約先コード.
005050*--<    No.41>                                                    
005060        MOVE  入力２－名称漢字        TO  Ｄ６４２－振出人名称.   
005070*--<    No.42 >                                                   
005080        MOVE  入力２－名称カナ        TO Ｄ６４２－振出人名称カナ.
005090*                                                                 
005100 受取手形テーブル編集－ＥＸＩＴ.                                  
005110******************************************************************
005120*     取引先コードと契約先コード項目抽出                         *
005130******************************************************************
005140 取引先コードと契約先コード項目抽出   SECTION.                    
005150 取引先コードと契約先コード項目抽出－ＳＴＡＲＴ.                  
005160     
      *    EXEC SQL                                                     
005170*       SELECT  新取引先コード                                    
005180*              ,枝番                                              
005190*         INTO :ＩＫＯ００１－新取引先コード ,                    
005200*              :ＩＫＯ００１－枝番                                
005210*         FROM  IKOTBL001                                         
005220*        WHERE  取引先コード = :ＷＳ－取引先コード                
005230*          AND  目的ＣＤ     = :ＷＳ－目的ＣＤ                    
005240*    END-EXEC.
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
               ＷＳ－取引先コード
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＷＳ－目的ＣＤ
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
005250*----------------------------------------------------------------*
005260*    取引先コードと契約先コード項目抽出確認                      *
005270*----------------------------------------------------------------*
005280     EVALUATE   SQLCODE                                           
005290        WHEN   定数－ＳＱＬＯＫ                                   
005300*--<       正常 >                                                 
005310           CONTINUE                                               
005320        WHEN   OTHER                                              
005330*--<       取引先コードと契約先コード項目抽出失敗>                
005340           MOVE      SPACE         TO ＩＫＯ００１－新取引先コード
005350           MOVE      SPACE         TO ＩＫＯ００１－枝番          
005360           MOVE      -60           TO  Ｗ－エラーコード           
005370           PERFORM   エラー処理                                   
005380     END-EVALUATE.                                                
005390*                                                                 
005400 取引先コードと契約先コード項目抽出－ＥＸＩＴ.                    
005410******************************************************************
005420*     主契約区分項目抽出                                         *
005430******************************************************************
005440 主契約区分項目抽出                   SECTION.                    
005450 主契約区分項目抽出－ＳＴＡＲＴ.                                  
005460     
      *    EXEC SQL                                                     
005470*       SELECT  主契約区分                                        
005480*         INTO :ＩＫＯ００２－主契約区分                          
005490*         FROM  IKOTBL002                                         
005500*        WHERE  契約ＮＯ = :ＷＳ－契約ＮＯ                        
005510*    END-EXEC.
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
           CALL "SQLADR" USING
               ＩＫＯ００２－主契約区分
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＷＳ－契約ＮＯ
               SQL-SQHSTV(2)
           MOVE 9 TO SQL-SQHSTL(2)
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
005520*----------------------------------------------------------------*
005530*    主契約区分項目抽出確認                                      *
005540*----------------------------------------------------------------*
005550     EVALUATE   SQLCODE                                           
005560        WHEN   定数－ＳＱＬＯＫ                                   
005570*--<       正常 >                                                 
005580           CONTINUE                                               
005590        WHEN   定数－ＳＱＬＬＯＴ                                 
005600*--<       正常 >                                                 
005610           CONTINUE                                               
005620        WHEN   OTHER                                              
005630*--<       主契約区分項目抽出失敗>                                
005640           MOVE      SPACE            TO ＩＫＯ００２－主契約区分 
005650           MOVE      -70              TO  Ｗ－エラーコード        
005660           PERFORM   エラー処理                                   
005670     END-EVALUATE.                                                
005680*                                                                 
005690 主契約区分項目抽出－ＥＸＩＴ.                                    
005700******************************************************************
005710*     日期処理                                                   *
005720******************************************************************
005730 日期処理                             SECTION.                    
005740 日期処理－ＳＴＡＲＴ.                                            
005750*                                                                 
005760	   EVALUATE Ｗ－入力日期                                        
005770        WHEN  ZERO                                                
005780	         MOVE   ZERO                TO Ｗ－出力日期             
005790        WHEN  OTHER                                               
005800           EVALUATE  Ｗ－入力日期(1:1)                            
005810              WHEN  "1"                                           
005820	               MOVE "20"            TO Ｗ－出力日期(1:2)        
005830              WHEN  "0"                                           
005840	               MOVE "19"            TO Ｗ－出力日期(1:2)        
005850           END-EVALUATE                                           
005860	         MOVE Ｗ－入力日期(2:6)     TO Ｗ－出力日期(3:6)        
005870     END-EVALUATE.                                                
005880*                                                                 
005890 日期処理－ＥＸＩＴ.                                              
005900******************************************************************
005910*     振出人取引先コードと契約先コード項目抽出                   *
005920******************************************************************
005930 振出人取引先コードと契約先コード項目抽出  SECTION.               
005940 振出人取引先コードと契約先コード項目抽出－ＳＴＡＲＴ.            
005950     
      *    EXEC SQL                                                     
005960*       SELECT  新取引先コード                                    
005970*              ,枝番                                              
005980*         INTO :ＩＫＯ００１－新取引先コード ,                    
005990*              :ＩＫＯ００１－枝番                                
006000*         FROM  IKOTBL001                                         
006010*        WHERE  取引先コード = :ＷＳ－支払人コード                
006020*          AND  目的ＣＤ     = :ＷＳ－目的ＣＤ                    
006030*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 121 TO SQL-OFFSET
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
               ＷＳ－支払人コード
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＷＳ－目的ＣＤ
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
006040*----------------------------------------------------------------*
006050*    振出人取引先コードと契約先コード項目抽出確認                *
006060*----------------------------------------------------------------*
006070     EVALUATE   SQLCODE                                           
006080        WHEN   定数－ＳＱＬＯＫ                                   
006090*--<       正常 >                                                 
006100           CONTINUE                                               
006110        WHEN   OTHER                                              
006120*--<       振出人取引先コードと契約先コード項目抽出失敗>          
006130           MOVE      SPACE         TO ＩＫＯ００１－新取引先コード
006140           MOVE      SPACE         TO ＩＫＯ００１－枝番          
006150           MOVE      -80           TO  Ｗ－エラーコード           
006160           PERFORM   エラー処理                                   
006170     END-EVALUATE.                                                
006180*                                                                 
006190 振出人取引先コードと契約先コード項目抽出－ＥＸＩＴ.              
006200******************************************************************
006210*     受取手形展開テーブル編集                                   *
006220******************************************************************
006230 受取手形展開テーブル編集             SECTION.                    
006240 受取手形展開テーブル編集－ＳＴＡＲＴ.                            
006250*----------------------------------------------------------------*
006260*       初期化処理                                               *
006270*----------------------------------------------------------------*
006280        MOVE  SPACE                   TO  受取手形展開.           
006290        INITIALIZE                        受取手形展開.           
006300*----------------------------------------------------------------*
006310*       項目編集処理                                             *
006320*----------------------------------------------------------------*
006330*--<    No.01 >                                                   
006340        MOVE  入力１－契約ＮＯ        TO  Ｄ６４５－代表契約番号. 
006350*--<    No.02 >                                                   
006360        MOVE  入力２－束数            TO  Ｄ６４５－束数.         
006370*--<    No.03 >                                                   
006380        IF     Ｗ－Ｎ－契約ＮＯ１ = Ｗ－Ｏ－契約ＮＯ１            
006390           AND Ｗ－Ｎ－束数       = Ｗ－Ｏ－束数                  
006400              COMPUTE  Ｗ－連番  =  Ｗ－連番  +  1                
006410        ELSE                                                      
006420              MOVE  1                 TO  Ｗ－連番                
006430        END-IF.                                                   
006440        MOVE  Ｗ－連番                TO  Ｄ６４５－連番          
006450*--<    No.04 >                                                   
006460        MOVE  入力２－手形ＮＯ        TO  Ｄ６４５－手形番号.     
006470*--<    No.05 >                                                   
006480        MOVE  入力２－期日            TO  Ｗ－入力日期.           
006490        PERFORM 日期処理.                                         
006500        MOVE  Ｗ－出力日期            TO  Ｄ６４５－期日.         
006510*--<    No.06 >                                                   
006520        MOVE  入力２－金額            TO  Ｄ６４５－金額.         
006530*--<    No.07 >                                                   
006540        MOVE  ＩＫＯ００１－新取引先コード                        
006550                                  TO Ｄ６４５－振出人取引先コード.
006560*--<    No.08 >                                                   
006570        MOVE  ＩＫＯ００１－枝番  TO Ｄ６４５－振出人契約先コード.
006580*--<    No.09 >                                                   
006590        MOVE  入力２－名称漢字        TO  Ｄ６４５－振出人名称.   
006600*--<    No.10 >                                                   
006610        MOVE  入力２－名称カナ       TO  Ｄ６４５－振出人名称カナ.
006620*--<    No.31 >                                                   
006630        MOVE  Ｗ－システム日付        TO  Ｄ６４５－登録年月日.   
006640*--<    No.32 >                                                   
006650        MOVE  Ｗ－システム時刻        TO  Ｄ６４５－登録時間.     
006660*--<    No.33 >                                                   
006670        MOVE  Ｗ－担当者              TO  Ｄ６４５－登録担当者.   
006680*--<    No.34 >                                                   
006690        MOVE  Ｗ－システム日付        TO  Ｄ６４５－更新年月日.   
006700*--<    No.35 >                                                   
006710        MOVE  Ｗ－システム時刻        TO  Ｄ６４５－更新時間.     
006720*--<    No.36 >                                                   
006730        MOVE  Ｗ－担当者              TO  Ｄ６４５－更新者.       
006740*--<    No.37 >                                                   
006750        MOVE  Ｗ－担当者          TO  Ｄ６４５－入力担当者コード. 
006760*--<    No.37 >                                                   
006770        MOVE  入力２－手形区分        TO  Ｄ６４５－手形状態.     
006780*                                                                 
006790 受取手形展開テーブル編集－ＥＸＩＴ.                              
006800******************************************************************
006810*    受取手形テーブル出力                                        *
006820******************************************************************
006830 受取手形テーブル出力                 SECTION.                    
006840 受取手形テーブル出力－ＳＴＡＲＴ.                                
006850*                                                                 
006860       
      *      EXEC  SQL                                                  
006870*       INSERT  INTO  D642UTG_TBL                                 
006880*          ( 代表契約番号                                         
006890*           ,束数                                                 
006900*           ,取引先コード                                         
006910*           ,契約先コード                                         
006920*           ,契約先名称                                           
006930*           ,契約先名称カナ                                       
006940*           ,部店コード                                           
006950*           ,主契約区分                                           
006960*           ,手形状態                                             
006970*           ,取引日                                               
006980*           ,伝票発行日                                           
006990*           ,手形種類                                             
007000*           ,期日基準日                                           
007010*           ,期日サイクル                                         
007020*           ,束合計金額                                           
007030*           ,手形枚数                                             
007040*           ,取立銀行コード                                       
007050*           ,支払銀行コード                                       
007060*           ,契約番号１                                           
007070*           ,契約番号２                                           
007080*           ,契約番号３                                           
007090*           ,契約番号４                                           
007100*           ,契約番号５                                           
007110*           ,契約番号６                                           
007120*           ,契約番号７                                           
007130*           ,契約番号８                                           
007140*           ,契約番号９                                           
007150*           ,契約番号１０                                         
007160*           ,備考欄                                               
007170*           ,手形内容種別                                         
007180*           ,登録年月日                                           
007190*           ,登録時間                                             
007200*           ,登録担当者                                           
007210*           ,更新年月日                                           
007220*           ,更新時間                                             
007230*           ,更新者                                               
007240*           ,入力担当者コード                                     
007250*           ,売却代金区分                                         
007260*           ,振出人取引先コード                                   
007270*           ,振出人契約先コード                                   
007280*           ,振出人名称                                           
007290*           ,振出人名称カナ )                                     
007300*     VALUES                                                      
007310*          ( :Ｄ６４２－代表契約番号                              
007320*           ,:Ｄ６４２－束数                                      
007330*           ,:Ｄ６４２－取引先コード                              
007340*           ,:Ｄ６４２－契約先コード                              
007350*           ,:Ｄ６４２－契約先名称                                
007360*           ,:Ｄ６４２－契約先名称カナ                            
007370*           ,:Ｄ６４２－部店コード                                
007380*           ,:Ｄ６４２－主契約区分                                
007390*           ,:Ｄ６４２－手形状態                                  
007400*           ,:Ｄ６４２－取引日                                    
007410*           ,:Ｄ６４２－伝票発行日                                
007420*           ,:Ｄ６４２－手形種類                                  
007430*           ,:Ｄ６４２－期日基準日                                
007440*           ,:Ｄ６４２－期日サイクル                              
007450*           ,:Ｄ６４２－束合計金額                                
007460*           ,:Ｄ６４２－手形枚数                                  
007470*           ,:Ｄ６４２－取立銀行コード                            
007480*           ,:Ｄ６４２－支払銀行コード                            
007490*           ,:Ｄ６４２－契約番号１                                
007500*           ,:Ｄ６４２－契約番号２                                
007510*           ,:Ｄ６４２－契約番号３                                
007520*           ,:Ｄ６４２－契約番号４                                
007530*           ,:Ｄ６４２－契約番号５                                
007540*           ,:Ｄ６４２－契約番号６                                
007550*           ,:Ｄ６４２－契約番号７                                
007560*           ,:Ｄ６４２－契約番号８                                
007570*           ,:Ｄ６４２－契約番号９                                
007580*           ,:Ｄ６４２－契約番号１０                              
007590*           ,:Ｄ６４２－備考欄                                    
007600*           ,:Ｄ６４２－手形内容種別                              
007610*           ,:Ｄ６４２－登録年月日                                
007620*           ,:Ｄ６４２－登録時間                                  
007630*           ,:Ｄ６４２－登録担当者                                
007640*           ,:Ｄ６４２－更新年月日                                
007650*           ,:Ｄ６４２－更新時間                                  
007660*           ,:Ｄ６４２－更新者                                    
007670*           ,:Ｄ６４２－入力担当者コード                          
007680*           ,:Ｄ６４２－売却代金区分                              
007690*           ,:Ｄ６４２－振出人取引先コード                        
007700*           ,:Ｄ６４２－振出人契約先コード                        
007710*           ,:Ｄ６４２－振出人名称                                
007720*           ,:Ｄ６４２－振出人名称カナ )                          
007730*    END-EXEC.
             CALL "SQLADR" USING SQ0004 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 152 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 Ｄ６４２－代表契約番号 IN
                 受取手形
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 Ｄ６４２－束数 IN
                 受取手形
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 Ｄ６４２－取引先コード IN
                 受取手形
                 SQL-SQHSTV(3)
             MOVE 9 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 Ｄ６４２－契約先コード IN
                 受取手形
                 SQL-SQHSTV(4)
             MOVE 5 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 Ｄ６４２－契約先名称 IN
                 受取手形
                 SQL-SQHSTV(5)
             MOVE 40 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 Ｄ６４２－契約先名称カナ IN
                 受取手形
                 SQL-SQHSTV(6)
             MOVE 40 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 Ｄ６４２－部店コード IN
                 受取手形
                 SQL-SQHSTV(7)
             MOVE 4 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 Ｄ６４２－主契約区分 IN
                 受取手形
                 SQL-SQHSTV(8)
             MOVE 1 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 Ｄ６４２－手形状態 IN
                 受取手形
                 SQL-SQHSTV(9)
             MOVE 1 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 Ｄ６４２－取引日 IN
                 受取手形
                 SQL-SQHSTV(10)
             MOVE 8 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 Ｄ６４２－伝票発行日 IN
                 受取手形
                 SQL-SQHSTV(11)
             MOVE 8 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 Ｄ６４２－手形種類 IN
                 受取手形
                 SQL-SQHSTV(12)
             MOVE 1 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 Ｄ６４２－期日基準日 IN
                 受取手形
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 Ｄ６４２－期日サイクル IN
                 受取手形
                 SQL-SQHSTV(14)
             MOVE 2 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 Ｄ６４２－束合計金額 IN
                 受取手形
                 SQL-SQHSTV(15)
             MOVE 7 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 Ｄ６４２－手形枚数 IN
                 受取手形
                 SQL-SQHSTV(16)
             MOVE 3 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 Ｄ６４２－取立銀行コード IN
                 受取手形
                 SQL-SQHSTV(17)
             MOVE 7 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 Ｄ６４２－支払銀行コード IN
                 受取手形
                 SQL-SQHSTV(18)
             MOVE 7 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号１ IN
                 受取手形
                 SQL-SQHSTV(19)
             MOVE 10 TO SQL-SQHSTL(19)
             MOVE 0 TO SQL-SQHSTS(19)
             MOVE 0 TO SQL-SQINDV(19)
             MOVE 0 TO SQL-SQINDS(19)
             MOVE 0 TO SQL-SQHARM(19)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号２ IN
                 受取手形
                 SQL-SQHSTV(20)
             MOVE 10 TO SQL-SQHSTL(20)
             MOVE 0 TO SQL-SQHSTS(20)
             MOVE 0 TO SQL-SQINDV(20)
             MOVE 0 TO SQL-SQINDS(20)
             MOVE 0 TO SQL-SQHARM(20)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号３ IN
                 受取手形
                 SQL-SQHSTV(21)
             MOVE 10 TO SQL-SQHSTL(21)
             MOVE 0 TO SQL-SQHSTS(21)
             MOVE 0 TO SQL-SQINDV(21)
             MOVE 0 TO SQL-SQINDS(21)
             MOVE 0 TO SQL-SQHARM(21)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号４ IN
                 受取手形
                 SQL-SQHSTV(22)
             MOVE 10 TO SQL-SQHSTL(22)
             MOVE 0 TO SQL-SQHSTS(22)
             MOVE 0 TO SQL-SQINDV(22)
             MOVE 0 TO SQL-SQINDS(22)
             MOVE 0 TO SQL-SQHARM(22)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号５ IN
                 受取手形
                 SQL-SQHSTV(23)
             MOVE 10 TO SQL-SQHSTL(23)
             MOVE 0 TO SQL-SQHSTS(23)
             MOVE 0 TO SQL-SQINDV(23)
             MOVE 0 TO SQL-SQINDS(23)
             MOVE 0 TO SQL-SQHARM(23)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号６ IN
                 受取手形
                 SQL-SQHSTV(24)
             MOVE 10 TO SQL-SQHSTL(24)
             MOVE 0 TO SQL-SQHSTS(24)
             MOVE 0 TO SQL-SQINDV(24)
             MOVE 0 TO SQL-SQINDS(24)
             MOVE 0 TO SQL-SQHARM(24)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号７ IN
                 受取手形
                 SQL-SQHSTV(25)
             MOVE 10 TO SQL-SQHSTL(25)
             MOVE 0 TO SQL-SQHSTS(25)
             MOVE 0 TO SQL-SQINDV(25)
             MOVE 0 TO SQL-SQINDS(25)
             MOVE 0 TO SQL-SQHARM(25)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号８ IN
                 受取手形
                 SQL-SQHSTV(26)
             MOVE 10 TO SQL-SQHSTL(26)
             MOVE 0 TO SQL-SQHSTS(26)
             MOVE 0 TO SQL-SQINDV(26)
             MOVE 0 TO SQL-SQINDS(26)
             MOVE 0 TO SQL-SQHARM(26)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号９ IN
                 受取手形
                 SQL-SQHSTV(27)
             MOVE 10 TO SQL-SQHSTL(27)
             MOVE 0 TO SQL-SQHSTS(27)
             MOVE 0 TO SQL-SQINDV(27)
             MOVE 0 TO SQL-SQINDS(27)
             MOVE 0 TO SQL-SQHARM(27)
             CALL "SQLADR" USING
                 Ｄ６４２－契約番号１０ IN
                 受取手形
                 SQL-SQHSTV(28)
             MOVE 10 TO SQL-SQHSTL(28)
             MOVE 0 TO SQL-SQHSTS(28)
             MOVE 0 TO SQL-SQINDV(28)
             MOVE 0 TO SQL-SQINDS(28)
             MOVE 0 TO SQL-SQHARM(28)
             CALL "SQLADR" USING
                 Ｄ６４２－備考欄 IN
                 受取手形
                 SQL-SQHSTV(29)
             MOVE 40 TO SQL-SQHSTL(29)
             MOVE 0 TO SQL-SQHSTS(29)
             MOVE 0 TO SQL-SQINDV(29)
             MOVE 0 TO SQL-SQINDS(29)
             MOVE 0 TO SQL-SQHARM(29)
             CALL "SQLADR" USING
                 Ｄ６４２－手形内容種別 IN
                 受取手形
                 SQL-SQHSTV(30)
             MOVE 1 TO SQL-SQHSTL(30)
             MOVE 0 TO SQL-SQHSTS(30)
             MOVE 0 TO SQL-SQINDV(30)
             MOVE 0 TO SQL-SQINDS(30)
             MOVE 0 TO SQL-SQHARM(30)
             CALL "SQLADR" USING
                 Ｄ６４２－登録年月日 IN
                 受取手形
                 SQL-SQHSTV(31)
             MOVE 8 TO SQL-SQHSTL(31)
             MOVE 0 TO SQL-SQHSTS(31)
             MOVE 0 TO SQL-SQINDV(31)
             MOVE 0 TO SQL-SQINDS(31)
             MOVE 0 TO SQL-SQHARM(31)
             CALL "SQLADR" USING
                 Ｄ６４２－登録時間 IN
                 受取手形
                 SQL-SQHSTV(32)
             MOVE 8 TO SQL-SQHSTL(32)
             MOVE 0 TO SQL-SQHSTS(32)
             MOVE 0 TO SQL-SQINDV(32)
             MOVE 0 TO SQL-SQINDS(32)
             MOVE 0 TO SQL-SQHARM(32)
             CALL "SQLADR" USING
                 Ｄ６４２－登録担当者 IN
                 受取手形
                 SQL-SQHSTV(33)
             MOVE 8 TO SQL-SQHSTL(33)
             MOVE 0 TO SQL-SQHSTS(33)
             MOVE 0 TO SQL-SQINDV(33)
             MOVE 0 TO SQL-SQINDS(33)
             MOVE 0 TO SQL-SQHARM(33)
             CALL "SQLADR" USING
                 Ｄ６４２－更新年月日 IN
                 受取手形
                 SQL-SQHSTV(34)
             MOVE 8 TO SQL-SQHSTL(34)
             MOVE 0 TO SQL-SQHSTS(34)
             MOVE 0 TO SQL-SQINDV(34)
             MOVE 0 TO SQL-SQINDS(34)
             MOVE 0 TO SQL-SQHARM(34)
             CALL "SQLADR" USING
                 Ｄ６４２－更新時間 IN
                 受取手形
                 SQL-SQHSTV(35)
             MOVE 8 TO SQL-SQHSTL(35)
             MOVE 0 TO SQL-SQHSTS(35)
             MOVE 0 TO SQL-SQINDV(35)
             MOVE 0 TO SQL-SQINDS(35)
             MOVE 0 TO SQL-SQHARM(35)
             CALL "SQLADR" USING
                 Ｄ６４２－更新者 IN
                 受取手形
                 SQL-SQHSTV(36)
             MOVE 8 TO SQL-SQHSTL(36)
             MOVE 0 TO SQL-SQHSTS(36)
             MOVE 0 TO SQL-SQINDV(36)
             MOVE 0 TO SQL-SQINDS(36)
             MOVE 0 TO SQL-SQHARM(36)
             CALL "SQLADR" USING
                 Ｄ６４２－入力担当者コード IN
                 受取手形
                 SQL-SQHSTV(37)
             MOVE 8 TO SQL-SQHSTL(37)
             MOVE 0 TO SQL-SQHSTS(37)
             MOVE 0 TO SQL-SQINDV(37)
             MOVE 0 TO SQL-SQINDS(37)
             MOVE 0 TO SQL-SQHARM(37)
             CALL "SQLADR" USING
                 Ｄ６４２－売却代金区分 IN
                 受取手形
                 SQL-SQHSTV(38)
             MOVE 1 TO SQL-SQHSTL(38)
             MOVE 0 TO SQL-SQHSTS(38)
             MOVE 0 TO SQL-SQINDV(38)
             MOVE 0 TO SQL-SQINDS(38)
             MOVE 0 TO SQL-SQHARM(38)
             CALL "SQLADR" USING
                 Ｄ６４２－振出人取引先コード IN
                 受取手形
                 SQL-SQHSTV(39)
             MOVE 9 TO SQL-SQHSTL(39)
             MOVE 0 TO SQL-SQHSTS(39)
             MOVE 0 TO SQL-SQINDV(39)
             MOVE 0 TO SQL-SQINDS(39)
             MOVE 0 TO SQL-SQHARM(39)
             CALL "SQLADR" USING
                 Ｄ６４２－振出人契約先コード IN
                 受取手形
                 SQL-SQHSTV(40)
             MOVE 5 TO SQL-SQHSTL(40)
             MOVE 0 TO SQL-SQHSTS(40)
             MOVE 0 TO SQL-SQINDV(40)
             MOVE 0 TO SQL-SQINDS(40)
             MOVE 0 TO SQL-SQHARM(40)
             CALL "SQLADR" USING
                 Ｄ６４２－振出人名称 IN
                 受取手形
                 SQL-SQHSTV(41)
             MOVE 40 TO SQL-SQHSTL(41)
             MOVE 0 TO SQL-SQHSTS(41)
             MOVE 0 TO SQL-SQINDV(41)
             MOVE 0 TO SQL-SQINDS(41)
             MOVE 0 TO SQL-SQHARM(41)
             CALL "SQLADR" USING
                 Ｄ６４２－振出人名称カナ IN
                 受取手形
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
007740*                                                                 
007750*----------------------------------------------------------------*
007760*    受取手形テーブル出力(追加)処理を確認                        *
007770*----------------------------------------------------------------*
007780     EVALUATE  SQLCODE                                            
007790        WHEN   定数－ＳＱＬＯＫ                                   
007800*--<       追加成功 >                                             
007810           COMPUTE  Ｗ－出力－件数１  =  Ｗ－出力－件数１  +  1   
007820        WHEN   OTHER                                              
007830*--<       追加処理エラー >                                       
007840           MOVE     -90               TO  Ｗ－エラーコード        
007850           PERFORM  エラー処理                                    
007860     END-EVALUATE.                                                
007870*                                                                 
007880 受取手形テーブル出力－ＥＸＩＴ.                                  
007890     EXIT.                                                        
007900******************************************************************
007910*    受取手形展開テーブル出力                                    *
007920******************************************************************
007930 受取手形展開テーブル出力             SECTION.                    
007940 受取手形展開テーブル出力－ＳＴＡＲＴ.                            
007950*                                                                 
007960     
      *    EXEC  SQL                                                    
007970*       INSERT  INTO  D645UTT_TBL                                 
007980*          ( 代表契約番号                                         
007990*           ,束数                                                 
008000*           ,連番                                                 
008010*           ,手形番号                                             
008020*           ,期日                                                 
008030*           ,金額                                                 
008040*           ,振出人取引先コード                                   
008050*           ,振出人契約先コード                                   
008060*           ,振出人名称                                           
008070*           ,振出人名称カナ                                       
008080*           ,登録年月日                                           
008090*           ,登録時間                                             
008100*           ,登録担当者                                           
008110*           ,更新年月日                                           
008120*           ,更新時間                                             
008130*           ,更新者                                               
008140*           ,入力担当者コード                                     
008150*           ,手形状態 )                                           
008160*       VALUES                                                    
008170*          ( :Ｄ６４５－代表契約番号                              
008180*           ,:Ｄ６４５－束数                                      
008190*           ,:Ｄ６４５－連番                                      
008200*           ,:Ｄ６４５－手形番号                                  
008210*           ,:Ｄ６４５－期日                                      
008220*           ,:Ｄ６４５－金額                                      
008230*           ,:Ｄ６４５－振出人取引先コード                        
008240*           ,:Ｄ６４５－振出人契約先コード                        
008250*           ,:Ｄ６４５－振出人名称                                
008260*           ,:Ｄ６４５－振出人名称カナ                            
008270*           ,:Ｄ６４５－登録年月日                                
008280*           ,:Ｄ６４５－登録時間                                  
008290*           ,:Ｄ６４５－登録担当者                                
008300*           ,:Ｄ６４５－更新年月日                                
008310*           ,:Ｄ６４５－更新時間                                  
008320*           ,:Ｄ６４５－更新者                                    
008330*           ,:Ｄ６４５－入力担当者コード                          
008340*           ,:Ｄ６４５－手形状態 )                                
008350*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 335 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｄ６４５－代表契約番号 IN
               受取手形展開
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｄ６４５－束数 IN
               受取手形展開
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｄ６４５－連番 IN
               受取手形展開
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｄ６４５－手形番号 IN
               受取手形展開
               SQL-SQHSTV(4)
           MOVE 10 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｄ６４５－期日 IN
               受取手形展開
               SQL-SQHSTV(5)
           MOVE 8 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               Ｄ６４５－金額 IN
               受取手形展開
               SQL-SQHSTV(6)
           MOVE 7 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               Ｄ６４５－振出人取引先コード IN
               受取手形展開
               SQL-SQHSTV(7)
           MOVE 9 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               Ｄ６４５－振出人契約先コード IN
               受取手形展開
               SQL-SQHSTV(8)
           MOVE 5 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               Ｄ６４５－振出人名称 IN
               受取手形展開
               SQL-SQHSTV(9)
           MOVE 40 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               Ｄ６４５－振出人名称カナ IN
               受取手形展開
               SQL-SQHSTV(10)
           MOVE 40 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               Ｄ６４５－登録年月日 IN
               受取手形展開
               SQL-SQHSTV(11)
           MOVE 8 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               Ｄ６４５－登録時間 IN
               受取手形展開
               SQL-SQHSTV(12)
           MOVE 8 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               Ｄ６４５－登録担当者 IN
               受取手形展開
               SQL-SQHSTV(13)
           MOVE 8 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               Ｄ６４５－更新年月日 IN
               受取手形展開
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               Ｄ６４５－更新時間 IN
               受取手形展開
               SQL-SQHSTV(15)
           MOVE 8 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               Ｄ６４５－更新者 IN
               受取手形展開
               SQL-SQHSTV(16)
           MOVE 8 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               Ｄ６４５－入力担当者コード IN
               受取手形展開
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               Ｄ６４５－手形状態 IN
               受取手形展開
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
008360*                                                                 
008370*----------------------------------------------------------------*
008380*    受取手形展開テーブル出力(追加)処理を確認                    *
008390*----------------------------------------------------------------*
008400     EVALUATE  SQLCODE                                            
008410        WHEN   定数－ＳＱＬＯＫ                                   
008420*--<       追加成功 >                                             
008430           COMPUTE  Ｗ－出力－件数２ =  Ｗ－出力－件数２ +  1     
008440        WHEN   OTHER                                              
008450*--<       追加処理エラー >                                       
008460           MOVE     -100              TO  Ｗ－エラーコード        
008470           PERFORM  エラー処理                                    
008480     END-EVALUATE.                                                
008490*                                                                 
008500 受取手形展開テーブル出力－ＥＸＩＴ.                              
008510     EXIT.                                                        
008520******************************************************************
008530*    終了処理                                                    *
008540******************************************************************
008550 終了処理                             SECTION.                    
008560 終了処理－ＳＴＡＲＴ.                                            
008570*                                                                 
008580     PERFORM  ファイルクローズ処理.                               
008590*                                                                 
008600     PERFORM  ＤＢコミット処理.                                   
008610*                                                                 
008620     PERFORM  件数メッセージ出力処理                              
008630*                                                                 
008640     PERFORM  終了メッセージ出力                                  
008650*                                                                 
008660*--< プログラム正常終了 >                                         
008670     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
008680*                                                                 
008690 終了処理－ＥＸＩＴ.                                              
008700     EXIT.                                                        
008710******************************************************************
008720*    ファイルクローズ処理                                        *
008730******************************************************************
008740 ファイルクローズ処理                 SECTION.                    
008750 ファイルクローズ処理－ＳＴＡＲＴ.                                
008760*                                                                 
008770     CLOSE  入力ファイル１.                                       
008780     CLOSE  入力ファイル２.                                       
008790*                                                                 
008800 ファイルクローズ処理－ＥＸＩＴ.                                  
008810     EXIT.                                                        
008820******************************************************************
008830*    件数メッセージ出力処理                                      *
008840******************************************************************
008850 件数メッセージ出力処理               SECTION.                    
008860 件数メッセージ出力処理－ＳＴＡＲＴ.                              
008870*                                                                 
008880*----------------------------------------------------------------*
008890*    件数メッセージ出力処理                                      *
008900*----------------------------------------------------------------*
008910     INITIALIZE                       IF-CHOCO001.                
008920     MOVE  "3"                        TO  共１－イベント種別.     
008930     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
008940     MOVE  "0"                        TO  共１－復帰コード.       
008950     MOVE  "FFUIS630"                 TO  共１－処理テーブルＩＤ. 
008960     MOVE  "COUNT"                    TO  共１－処理識別.         
008970     MOVE  Ｗ－入力－件数１           TO  共１－データ内容.       
008980     MOVE  "手形基本読込件数"         TO  共１－その他メッセージ. 
008990     CALL  CLOCO001                USING  IF-CHOCO001.            
009000*                                                                 
009010     INITIALIZE                       IF-CHOCO001.                
009020     MOVE  "3"                        TO  共１－イベント種別.     
009030     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
009040     MOVE  "0"                        TO  共１－復帰コード.       
009050     MOVE  "FFUIS631"                 TO  共１－処理テーブルＩＤ. 
009060     MOVE  "COUNT"                    TO  共１－処理識別.         
009070     MOVE  Ｗ－入力－件数２           TO  共１－データ内容.       
009080     MOVE  "受取手形読込件数"         TO  共１－その他メッセージ. 
009090     CALL  CLOCO001                USING  IF-CHOCO001.            
009100*                                                                 
009110     INITIALIZE                       IF-CHOCO001.                
009120     MOVE  "3"                        TO  共１－イベント種別.     
009130     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
009140     MOVE  "0"                        TO  共１－復帰コード.       
009150     MOVE  "D642UTG"                  TO  共１－処理テーブルＩＤ. 
009160     MOVE  "COUNT"                    TO  共１－処理識別.         
009170     MOVE  Ｗ－出力－件数１           TO  共１－データ内容.       
009180     MOVE  "受取手形出力件数"         TO  共１－その他メッセージ. 
009190     CALL  CLOCO001                USING  IF-CHOCO001.            
009200*                                                                 
009210     INITIALIZE                       IF-CHOCO001.                
009220     MOVE  "3"                        TO  共１－イベント種別.     
009230     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
009240     MOVE  "0"                        TO  共１－復帰コード.       
009250     MOVE  "D645UTT"                  TO  共１－処理テーブルＩＤ. 
009260     MOVE  "COUNT"                    TO  共１－処理識別.         
009270     MOVE  Ｗ－出力－件数２           TO  共１－データ内容.       
009280     MOVE  "受取手形展開出力件数"     TO  共１－その他メッセージ. 
009290     CALL  CLOCO001                USING  IF-CHOCO001.            
009300*                                                                 
009310 件数メッセージ出力処理－ＥＸＩＴ.                                
009320     EXIT.                                                        
009330******************************************************************
009340*    終了メッセージ出力                                          *
009350******************************************************************
009360 終了メッセージ出力                   SECTION.                    
009370 終了メッセージ出力－ＳＴＡＲＴ.                                  
009380*                                                                 
009390*----------------------------------------------------------------*
009400*    終了メッセージ出力                                          *
009410*----------------------------------------------------------------*
009420     INITIALIZE                       IF-CHOCO001.                
009430     MOVE  "3"                        TO  共１－イベント種別.     
009440     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
009450     MOVE  "0"                        TO  共１－復帰コード.       
009460     MOVE  "END"                      TO  共１－処理識別.         
009470     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
009480     CALL  CLOCO001                USING  IF-CHOCO001.            
009490*                                                                 
009500 終了メッセージ出力－ＥＸＩＴ.                                    
009510     EXIT.                                                        
009520******************************************************************
009530*    ＤＢコミット処理                                            *
009540******************************************************************
009550 ＤＢコミット処理                     SECTION.                    
009560 ＤＢコミット処理－ＳＴＡＲＴ.                                    
009570*                                                                 
009580     
      *    EXEC  SQL                                                    
009590*       COMMIT  WORK  RELEASE                                     
009600*    END-EXEC.
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
009610*                                                                 
009620     INITIALIZE                       IF-CHOCO001.                
009630     MOVE  "3"                        TO  共１－イベント種別.     
009640     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
009650     MOVE  "0"                        TO  共１－復帰コード.       
009660     MOVE  "COMMIT"                   TO  共１－処理識別.         
009670     MOVE  "コミット実施"             TO  共１－その他メッセージ. 
009680     CALL  CLOCO001                USING  IF-CHOCO001.            
009690*                                                                 
009700 ＤＢコミット処理－ＥＸＩＴ.                                      
009710     EXIT.                                                        
009720******************************************************************
009730*    ＤＢロールバック処理                                        *
009740******************************************************************
009750 ＤＢロールバック処理                 SECTION.                    
009760 ＤＢロールバック処理－ＳＴＡＲＴ.                                
009770*                                                                 
009780     
      *    EXEC  SQL                                                    
009790*       ROLLBACK WORK  RELEASE                                    
009800*    END-EXEC.
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
009810*                                                                 
009820     INITIALIZE                       IF-CHOCO001.                
009830     MOVE  "1"                        TO  共１－イベント種別.     
009840     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
009850     MOVE  "9"                        TO  共１－復帰コード.       
009860     MOVE  "ROLLBACK"                 TO  共１－処理識別.         
009870     MOVE  "ロールバック実施"         TO  共１－その他メッセージ. 
009880     CALL  CLOCO001                USING  IF-CHOCO001.            
009890*                                                                 
009900 ＤＢロールバック処理－ＥＸＩＴ.                                  
009910     EXIT.                                                        
009920******************************************************************
009930*    エラー処理                                                  *
009940******************************************************************
009950 エラー処理                           SECTION.                    
009960 エラー処理－ＳＴＡＲＴ.                                          
009970*                                                                 
009980     MOVE  "Y"                        TO Ｗ－異常終了－フラグ.    
009990     INITIALIZE                          IF-CHOCO001.             
010000*                                                                 
010010     EVALUATE  Ｗ－エラーコード                                   
010020        WHEN  -10                                                 
010030*--<       ＯＲＡＣＬＥ接続失敗 >                                 
010040           MOVE  "1"                  TO  共１－イベント種別      
010050           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010060           MOVE  "9"                  TO  共１－復帰コード        
010070           MOVE  "CONNECT"            TO  共１－処理識別          
010080           MOVE  SQLCODE              TO  共１－データ内容        
010090           MOVE  SQLERRMC             TO  共１－その他メッセージ  
010100           CALL  CLOCO001          USING  IF-CHOCO001             
010110*                                                                 
010120        WHEN  -20                                                 
010130*--<       入力ファイル１オープン失敗 >                           
010140           MOVE  "1"                  TO  共１－イベント種別      
010150           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010160           MOVE  "9"                  TO  共１－復帰コード        
010170           MOVE  "FFUIS630"           TO  共１－処理テーブルＩＤ  
010180           MOVE  "OPEN"               TO  共１－処理識別          
010190           MOVE  Ｗ－状態             TO  共１－データ内容        
010200           MOVE  "入力ファイル１オープン失敗(手形基本ファイル)"   
010210                                      TO  共１－その他メッセージ  
010220           CALL  CLOCO001          USING  IF-CHOCO001             
010230*                                                                 
010240        WHEN  -30                                                 
010250*--<       入力ファイル２ルオープン失敗 >                         
010260           MOVE  "1"                  TO  共１－イベント種別      
010270           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010280           MOVE  "9"                  TO  共１－復帰コード        
010290           MOVE  "FFUIS631"           TO  共１－処理テーブルＩＤ  
010300           MOVE  "OPEN"               TO  共１－処理識別          
010310           MOVE  Ｗ－状態             TO  共１－データ内容        
010320           MOVE  "入力ファイル２オープン失敗(受取手形ファイル)"   
010330                                      TO  共１－その他メッセージ  
010340           CALL  CLOCO001          USING  IF-CHOCO001             
010350*                                                                 
010360        WHEN  -40                                                 
010370*--<       手形基本ファイル読込エラー >                           
010380           MOVE  "1"                  TO  共１－イベント種別      
010390           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010400           MOVE  "9"                  TO  共１－復帰コード        
010410           MOVE  "FFUIS630"           TO  共１－処理テーブルＩＤ  
010420           MOVE  "READ"               TO  共１－処理識別          
010430           MOVE  Ｗ－状態             TO  共１－データ内容        
010440           MOVE  "手形基本ファイル読込エラー "                    
010450                                      TO  共１－その他メッセージ  
010460           CALL  CLOCO001          USING  IF-CHOCO001             
010470*                                                                 
010480        WHEN  -50                                                 
010490*--<       受取手形ファイル読込エラー >                           
010500           MOVE  "1"                  TO  共１－イベント種別      
010510           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010520           MOVE  "9"                  TO  共１－復帰コード        
010530           MOVE  "FFUIS631"           TO  共１－処理テーブルＩＤ  
010540           MOVE  "READ"               TO  共１－処理識別          
010550           MOVE  Ｗ－状態             TO  共１－データ内容        
010560           MOVE  "受取手形ファイル読込エラー "                    
010570                                      TO  共１－その他メッセージ  
010580           CALL  CLOCO001          USING  IF-CHOCO001             
010590*                                                                 
010600        WHEN  -60                                                 
010610*--<       取引先コードと契約先コード項目抽出エラー >             
010620           MOVE  "2"                  TO  共１－イベント種別      
010630           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010640           MOVE  "9"                  TO  共１－復帰コード        
010650           MOVE  "IKOTBL01"          TO  共１－処理テーブルＩＤ   
010660           MOVE  "SELECT"             TO  共１－処理識別          
010670           MOVE  SQLCODE              TO  共１－データ内容        
010680           MOVE  SQLERRMC  	    TO  共１－その他メッセージ  
010690           CALL  CLOCO001          USING  IF-CHOCO001             
010700           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010710*                                                                 
010720        WHEN  -70                                                 
010730*--<       主契約区分項目抽出エラー >                             
010740           MOVE  "2"                  TO  共１－イベント種別      
010750           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010760           MOVE  "9"                  TO  共１－復帰コード        
010770           MOVE  "IKOTBL02"          TO  共１－処理テーブルＩＤ   
010780           MOVE  "SELECT"             TO  共１－処理識別          
010790           MOVE  SQLCODE              TO  共１－データ内容        
010800           MOVE  SQLERRMC  	    TO  共１－その他メッセージ  
010810           CALL  CLOCO001          USING  IF-CHOCO001             
010820           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010830*                                                                 
010840        WHEN  -80                                                 
010850*--<       振出人取引先コードと契約先コード項目抽出エラー >       
010860           MOVE  "2"                  TO  共１－イベント種別      
010870           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
010880           MOVE  "9"                  TO  共１－復帰コード        
010890           MOVE  "IKOTBL01"          TO  共１－処理テーブルＩＤ   
010900           MOVE  "SELECT"             TO  共１－処理識別          
010910           MOVE  SQLCODE              TO  共１－データ内容        
010920           MOVE  SQLERRMC  	    TO  共１－その他メッセージ  
010930           CALL  CLOCO001          USING  IF-CHOCO001             
010940           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010950*                                                                 
010960        WHEN  -90                                                 
010970*--<       受取手形テーブル出力(追加)失敗 >                       
010980           MOVE  "1"                  TO  共１－イベント種別      
010990           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
011000           MOVE  "9"                  TO  共１－復帰コード        
011010           MOVE  "D642UTG"            TO  共１－処理テーブルＩＤ  
011020           MOVE  "INSERT"             TO  共１－処理識別          
011030           MOVE  SQLCODE              TO  共１－データ内容        
011040           MOVE  SQLERRMC             TO  共１－その他メッセージ  
011050           CALL  CLOCO001          USING  IF-CHOCO001             
011060*                                                                 
011070        WHEN  -100                                                
011080*--<       受取手形展開テーブル出力(追加)失敗 >                   
011090           MOVE  "1"                  TO  共１－イベント種別      
011100           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
011110           MOVE  "9"                  TO  共１－復帰コード        
011120           MOVE  "D645UTT"            TO  共１－処理テーブルＩＤ  
011130           MOVE  "INSERT"             TO  共１－処理識別          
011140           MOVE  SQLCODE              TO  共１－データ内容        
011150           MOVE  SQLERRMC             TO  共１－その他メッセージ  
011160           CALL  CLOCO001          USING  IF-CHOCO001             
011170*                                                                 
011180        WHEN  OTHER                                               
011190           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
011200     END-EVALUATE.                                                
011210*                                                                 
011220     IF Ｗ－異常終了－フラグ  =  "Y"                              
011230        PERFORM  ＤＢロールバック処理                             
011240*                                                                 
011250        PERFORM  件数メッセージ出力処理                           
011260*                                                                 
011270        PERFORM  終了メッセージ出力                               
011280*                                                                 
011290*--<    プログラム異常終了のリターンコード >                      
011300        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
011310*                                                                 
011320        EXIT  PROGRAM                                             
011330     END-IF.                                                      
011340*                                                                 
011350 エラー処理－ＥＸＩＴ.                                            
011360     EXIT.                                                        
011370******************************************************************
011380*                  END OF PROGRAM                                *
011390******************************************************************
