000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名  : 受取手形移行処理                       *
000040*      2. プログラムID  : COBIS630                               *
000050*      3. 処理概要      : ＜受取手形テーブル＞受取手形の情報を代 *
000060*                         表契約番号、束数位で管理したもの       *
000070*                         ＜受取手形展開テーブル＞受取手形の情報 *
000080*                         を代表契約番号、束数、連番（代表契約番 *
000090*                         号、束数単位)単位で管理したもの        *
000100*      4. 作成者        : 柳占鋒                                 *
000110*      5. 作成日        : 2005.04.04                             *
000120******************************************************************
000130*                                                                 
000140******************************************************************
000150*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000160******************************************************************
000170 IDENTIFICATION                       DIVISION.                   
000180*                                                                 
000190 PROGRAM-ID.                          COBIS630.                   
000200******************************************************************
000210*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000220******************************************************************
000230 ENVIRONMENT                          DIVISION.                   
000240******************************************************************
000250*    ＩＮＰＵＴ－ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000260******************************************************************
000270 INPUT-OUTPUT                         SECTION.                    
000280*                                                                 
000290 FILE-CONTROL.                                                    
000300     SELECT    入力ファイル１         ASSIGN    TO     U01        
000310     FILE      STATUS     IS          Ｗ－状態                    
000320     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000330*                                                                 
000340     SELECT    入力ファイル２         ASSIGN    TO     U02        
000350     FILE      STATUS     IS          Ｗ－状態                    
000360     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000370*                                                                 
000380******************************************************************
000390*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000400******************************************************************
000410 DATA                                 DIVISION.                   
000420******************************************************************
000430*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000440******************************************************************
000450 FILE                                 SECTION.                    
000460*----------------------------------------------------------------*
000470*    入力ファイル                                                *
000480*----------------------------------------------------------------*
000490 FD  入力ファイル１                                               
000500     LABEL     RECORD     IS          STANDARD                    
000510     BLOCK     CONTAINS   0           RECORDS.                    
000520*                                                                 
000530 01  入力－レコード１.                                            
000540     COPY  CPBIS061  REPLACING  ==()==  BY  ==入力１－==.         
000550*                                                                 
000560 FD  入力ファイル２                                               
000570     LABEL     RECORD     IS          STANDARD                    
000580     BLOCK     CONTAINS   0           RECORDS.                    
000590*                                                                 
000600 01  入力－レコード２.                                            
000610     COPY  CPBIS062  REPLACING  ==()==  BY  ==入力２－==.         
000620*                                                                 
000630******************************************************************
000640*  ＷＯＲＫＩＮＧ－ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000650******************************************************************
000660  WORKING-STORAGE                     SECTION.                    
000670*----------------------------------------------------------------*
000680*    ホスト変数定義エリア                                        *
000690*----------------------------------------------------------------*
000700     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS630.PCO".

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

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +287973.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +457.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +489.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +573.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +666.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +771.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +919.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +939.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000710*                                                                 
000720 01  ＷＳ－取引先コード               PIC  X(08).                 
000730 01  ＷＳ－目的ＣＤ                   PIC  X(01)  VALUE "2".      
000740 01  ＷＳ－契約ＮＯ                   PIC  X(09).                 
000750 01  ＷＳ－支払人コード               PIC  X(08).                 
000760*--< ＯＲＡＣＬＥ共通変数 >                                       
000770     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000780*                                                                 
000790*--< ＯＲＡＣＬＥ  ＳＱＬ実行情報 >                               
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000800     
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
000810*                                                                 
000820*--< 受取手形テーブル >                                           
000830     
      *    EXEC  SQL  INCLUDE  D642UTG.CBL           END-EXEC.
000840*                                                                 
000850*--< 受取手形展開テーブル >                                       
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
000860     
      *    EXEC  SQL  INCLUDE  D645UTT.CBL           END-EXEC.
000870*                                                                 
000880*--< 変換テーブル >                                               
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
000890     
      *    EXEC  SQL  INCLUDE  IKOTBL001.CBL         END-EXEC.
000900*                                                                 
000910*--< 契約種類等変換テーブル >                                     
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
000920     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
000930*                                                                 
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
000940     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000950*                                                                 
000960*----------------------------------------------------------------*
000970*    ＷＯＲＫエリア                                              *
000980*----------------------------------------------------------------*
000990 01  ＷＯＲＫ－エリア.                                            
001000*--< エラー判定用 >                                               
001010     03  Ｗ－エラーコード             PIC S9(04).                 
001020*--< 日期処理 >                                                   
001021     03  Ｗ－入力日期                 PIC  X(07).                 
001022     03  Ｗ－出力日期                 PIC  X(08).                 
001023*                                                                 
001030*--< フラグアリア >                                               
001040     03  フラグアリア.                                            
001050         05  Ｗ－終了－フラグ１       PIC  X(01).                 
001060         05  Ｗ－終了－フラグ２       PIC  X(01).                 
001070         05  Ｗ－異常終了－フラグ     PIC  X(01).                 
001080*                                                                 
001090*--< 件数エリア >                                                 
001100     03  件数エリア.                                              
001110         05  Ｗ－入力－件数１         PIC  9(09).                 
001120         05  Ｗ－入力－件数２         PIC  9(09).                 
001130         05  Ｗ－出力－件数１         PIC  9(09).                 
001140         05  Ｗ－出力－件数２         PIC  9(09).                 
001150*                                                                 
001160*--< 連番エリア >                                                 
001170     03  連番エリア.                                              
001220         05  Ｗ－連番                 PIC S9(03).                 
001230*                                                                 
001240*--< ファイル状態 >                                               
001250     03  Ｗ－状態エリア.                                          
001260         05  Ｗ－状態                 PIC  X(02).                 
001270*--< キーエリア >                                                 
001280     03  ＫＥＹ－エリア.                                          
001290         05  ＮＥＷキー.                                          
001292             07 Ｗ－契約ＮＯ１        PIC  X(09).                 
001300             07 Ｗ－契約ＮＯ２        PIC  X(09).                 
001311             07 Ｎ－束数              PIC S9(02).                 
001312         05  ＯＬＤキー.                                          
001313             07 Ｏ－契約ＮＯ１        PIC  X(09).                 
001314             07 Ｏ－束数              PIC S9(02).                 
001316*                                                                 
001320*--< 共通情報 >                                                   
001330 01  Ｗ－共通情報.                                                
001340     03  Ｗ－システム日付.                                        
001350         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001360         05  Ｗ－年月日               PIC  X(06).                 
001370     03  Ｗ－システム時刻             PIC  X(08).                 
001380     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001390*                                                                 
001400*----------------------------------------------------------------*
001410*    サブルーチン名                                              *
001420*----------------------------------------------------------------*
001430 01  CALL-AREA.                                                   
001440*--< 共通ログサブルーチン >                                       
001450     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001460     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001470*                                                                 
001480*----------------------------------------------------------------*
001490*    ＣＯＰＹ領域                                                *
001500*----------------------------------------------------------------*
001510*--< 共通ログ用パラメータ >                                       
001520 01  IF-CHOCO001.                                                 
001530     COPY  CHOCO001  REPLACING  ==()==  BY  ==共通－==.           
001540*                                                                 
001550*----------------------------------------------------------------*
001560*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001570*----------------------------------------------------------------*
001580 01  PARA-AREA.                                                   
001590     COPY CPBCO001.                                               
001600*                                                                 
001610******************************************************************
001620*    定数用データ定義エリア                                      *
001630******************************************************************
001640 CONSTANT                             SECTION.                    
001650 01  定数領域.                                                    
001660     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS630".
001670     03  定数－プログラム名           PIC  X(80)                  
001680                                        VALUE  "受取手形移行処理".
001690     03  定数－ＳＱＬＯＫ             PIC S9(04)  VALUE  ZERO.    
001700     03  定数－ＳＱＬＣＤＤＥＯＫ     PIC S9(04)  VALUE -2112.    
001710     03  定数－ＳＱＬＥＮＤ           PIC S9(04)  VALUE  0100.    
001720     03  定数－正常状態               PIC S9(04)  VALUE  ZERO.    
001731     03  定数－異常状態               PIC S9(04)  VALUE  0009.    
001740******************************************************************
001750*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001760******************************************************************
001770 PROCEDURE                            DIVISION.                   
001780*                                                                 
001790     PERFORM  初期処理.                                           
001800*                                                                 
001810     PERFORM  主処理  UNTIL  (Ｗ－終了－フラグ１  =  "Y"          
001820                        AND   Ｗ－終了－フラグ２  =  "Y").        
001830*                                                                 
001840     PERFORM  終了処理.                                           
001850*                                                                 
001860     STOP     RUN.                                                
001870*                                                                 
001880******************************************************************
001890*    初期処理                                                    *
001900******************************************************************
001910 初期処理                             SECTION.                    
001920 初期処理－ＳＴＡＲＴ.                                            
001930*                                                                 
001940*----------------------------------------------------------------*
001950*    開始メッセージ出力処理                                      *
001960*----------------------------------------------------------------*
001970     INITIALIZE                       IF-CHOCO001.                
001980     MOVE  "3"                        TO  共通－イベント種別.     
001990     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
002000     MOVE  "0"                        TO  共通－復帰コード.       
002010     MOVE  "START"                    TO  共通－処理識別.         
002020     MOVE  定数－プログラム名         TO  共通－その他メッセージ. 
002030     CALL  CLOCO001                USING  IF-CHOCO001.            
002040*                                                                 
002050*----------------------------------------------------------------*
002060*    作業領域の初期値処理                                        *
002070*----------------------------------------------------------------*
002080     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
002090     INITIALIZE                           ＷＯＲＫ－エリア.       
002100*                                                                 
002110*--< ＣＰＵ日付を取得 >                                           
002120     ACCEPT  Ｗ－年月日               FROM  DATE.                 
002130*                                                                 
002140*--< ＣＰＵ時刻を取得 >                                           
002150     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
002160*                                                                 
002170     PERFORM  手形基本ファイルオープン.                           
002180*                                                                 
002190     PERFORM  受取手形ファイルオープン.                           
002200*                                                                 
002210     PERFORM  ＯＲＡＣＬＥ接続.                                   
002220*                                                                 
002230*--< 手形基本ファイル読込(１件目) >                               
002240     PERFORM  手形基本ファイル読込処理.                           
002250*                                                                 
002260*--< 受取手形ファイル読込(１件目) >                               
002270     PERFORM  受取手形ファイル読込処理.                           
002280*                                                                 
002290 初期処理－ＥＸＩＴ.                                              
002300     EXIT.                                                        
002310******************************************************************
002320*    ＯＲＡＣＬＥ接続                                            *
002330******************************************************************
002340 ＯＲＡＣＬＥ接続                     SECTION.                    
002350 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
002360*                                                                 
002370*--< ＤＢ接続用情報を取得処理 >                                   
002380     CALL  COBCO001                USING  PARA-AREA.              
002390*                                                                 
002400     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002410     MOVE  PARA-USERNAME              TO  USERNAME.               
002420     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002430*                                                                 
002440*----------------------------------------------------------------*
002450*    開始接続                                                    *
002460*----------------------------------------------------------------*
002470     IF    DB-STRING  =  SPACE                                    
002480        
      *       EXEC SQL                                                  
002490*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002500*       END-EXEC 
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
002510     ELSE                                                         
002520        
      *       EXEC SQL                                                  
002530*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002540*            USING  :DB-STRING                                    
002550*       END-EXEC 
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
002560     END-IF.                                                      
002570*                                                                 
002580*----------------------------------------------------------------*
002590*    接続確認                                                    *
002600*----------------------------------------------------------------*
002610     EVALUATE  SQLCODE                                            
002620        WHEN   定数－ＳＱＬＯＫ                                   
002630           CONTINUE                                               
002640        WHEN   OTHER                                              
002650*--<       接続エラー >                                           
002660           MOVE     -10               TO  Ｗ－エラーコード        
002670           PERFORM  エラー判定処理                                
002680     END-EVALUATE.                                                
002690*                                                                 
002700 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
002710     EXIT.                                                        
002720******************************************************************
002730*    手形基本、受取手形ファイルオープン                          *
002740******************************************************************
002750*                                                                 
002760*----------------------------------------------------------------*
002770*    手形基本ファイルのオープン                                  *
002780*----------------------------------------------------------------*
002790 手形基本ファイルオープン             SECTION.                    
002800 手形基本ファイルオープン－ＳＴＡＲＴ.                            
002810*                                                                 
002820     OPEN  INPUT   入力ファイル１.                                
002830*                                                                 
002840*--< 入力ファイル１オープンの状態判定 >                           
002850     EVALUATE  Ｗ－状態                                           
002860        WHEN  ZERO                                                
002870           CONTINUE                                               
002880        WHEN  OTHER                                               
002890*--<       入力ファイル１オープンエラー >                         
002900           MOVE     -1                TO  Ｗ－エラーコード        
002910           PERFORM  エラー判定処理                                
002920     END-EVALUATE.                                                
002930*                                                                 
002940 手形基本ファイルオープン－ＥＸＩＴ.                              
002950     EXIT.                                                        
002960*----------------------------------------------------------------*
002970*    受取手形ファイルのオープン                                  *
002980*----------------------------------------------------------------*
002990 受取手形ファイルオープン             SECTION.                    
003000 受取手形ファイルオープン－ＳＴＡＲＴ.                            
003010*                                                                 
003020     OPEN  INPUT    入力ファイル２.                               
003030*                                                                 
003040*--< 入力ファイル２オープンの状態判定 >                           
003050     EVALUATE  Ｗ－状態                                           
003060        WHEN  ZERO                                                
003070           CONTINUE                                               
003080        WHEN  OTHER                                               
003090*--<       入力ファイル２オープンエラー >                         
003100           MOVE     -2                TO  Ｗ－エラーコード        
003110           PERFORM  エラー判定処理                                
003120     END-EVALUATE.                                                
003130*                                                                 
003140 受取手形ファイルオープン－ＥＸＩＴ.                              
003150     EXIT.                                                        
003160******************************************************************
003170*    手形基本、受取手形ファイル読込処理                          *
003180******************************************************************
003190*                                                                 
003200*----------------------------------------------------------------*
003210*    手形基本ファイル読込処理                                    *
003220*----------------------------------------------------------------*
003230 手形基本ファイル読込処理             SECTION.                    
003240 手形基本ファイル読込処理－ＳＴＡＲＴ.                            
003250*                                                                 
003260     READ  入力ファイル１                                         
003270        AT END                                                    
003280           MOVE  "Y"                  TO  Ｗ－終了－フラグ１      
003290           MOVE  HIGH-VALUE           TO  Ｗ－契約ＮＯ１          
003300           GO    TO   手形基本ファイル読込処理－ＥＸＩＴ          
003310     END-READ.                                                    
003320*                                                                 
003330*--< 手形基本ファイル読込状態判定 >                               
003340     EVALUATE  Ｗ－状態                                           
003350        WHEN  ZERO                                                
003360           MOVE  入力１－契約ＮＯ     TO  Ｗ－契約ＮＯ１          
003371           MOVE  入力１－契約ＮＯ     TO  ＷＳ－契約ＮＯ          
003372           MOVE  入力１－取引先コード TO  ＷＳ－取引先コード      
003374*--<       手形基本ファイル入力件数のカウント >                   
003380           COMPUTE  Ｗ－入力－件数１  =  Ｗ－入力－件数１ + 1     
003390        WHEN  OTHER                                               
003400*--<       手形基本ファイル読込エラー >                           
003410           MOVE     -3                TO  Ｗ－エラーコード        
003420           PERFORM  エラー判定処理                                
003430     END-EVALUATE.                                                
003440*                                                                 
003450 手形基本ファイル読込処理－ＥＸＩＴ.                              
003460     EXIT.                                                        
003470*----------------------------------------------------------------*
003480*    受取手形ファイル読込処理                                    *
003490*----------------------------------------------------------------*
003500 受取手形ファイル読込処理             SECTION.                    
003510 受取手形ファイル読込処理－ＳＴＡＲＴ.                            
003520*                                                                 
003530     READ  入力ファイル２                                         
003540        AT END                                                    
003550           MOVE  "Y"                  TO  Ｗ－終了－フラグ２      
003560           MOVE  HIGH-VALUE           TO  Ｗ－契約ＮＯ２          
003570           GO    TO   受取手形ファイル読込処理－ＥＸＩＴ          
003580     END-READ.                                                    
003590*                                                                 
003600*--< 受取手形ファイル読込状態判定 >                               
003610     EVALUATE  Ｗ－状態                                           
003620        WHEN  ZERO                                                
003630           MOVE  入力２－契約ＮＯ     TO  Ｗ－契約ＮＯ２          
003640           MOVE  入力２－束数         TO  Ｎ－束数                
003641           MOVE  入力２－支払人コード TO  ＷＳ－支払人コード      
003642*--<       受取手形ファイル入力件数のカウント >                   
003650           COMPUTE  Ｗ－入力－件数２  =  Ｗ－入力－件数２ + 1     
003660        WHEN  OTHER                                               
003670*--<       受取手形ファイル読込エラー >                           
003680           MOVE     -4                TO  Ｗ－エラーコード        
003690           PERFORM  エラー判定処理                                
003700     END-EVALUATE.                                                
003710*                                                                 
003720 受取手形ファイル読込処理－ＥＸＩＴ.                              
003730     EXIT.                                                        
003740*                                                                 
003750******************************************************************
003760*    主処理                                                      *
003770******************************************************************
003780 主処理                               SECTION.                    
003790 主処理－ＳＴＡＲＴ.                                              
003800*                                                                 
003810     EVALUATE  TRUE                                               
003820*--<    ファイルのみの場合 >                                      
003830        WHEN  Ｗ－契約ＮＯ１ > Ｗ－契約ＮＯ２                     
003840           PERFORM  受取手形ファイル読込処理                      
003850*                                                                 
003860*--<    マッチングの場合 >                                        
003870        WHEN  Ｗ－契約ＮＯ１ = Ｗ－契約ＮＯ２                     
003880           PERFORM  編集出力処理                                  
003890*                                                                 
003900           PERFORM  受取手形ファイル読込処理                      
003910*                                                                 
003920*--<    ファイルのみの場合 >                                      
003930        WHEN  Ｗ－契約ＮＯ１ < Ｗ－契約ＮＯ２                     
003950*                                                                 
003960           IF Ｗ－契約ＮＯ１ NOT  =  Ｏ－契約ＮＯ１               
003970		    DISPLAY "***** COBIS630:受取手形ファイルなし ",     
003980                      "契約ＮＯ=" , Ｗ－契約ＮＯ１                
003990           END-IF                                                 
004000           PERFORM  手形基本ファイル読込処理                      
004001*                                                                 
004010     END-EVALUATE.                                                
004020*                                                                 
004030 主処理－ＥＸＩＴ.                                                
004040     EXIT.                                                        
004050******************************************************************
004060*     手形基本、受取手形編集出力処理                             *
004070******************************************************************
004080 編集出力処理                         SECTION.                    
004090 編集出力処理－ＳＴＡＲＴ.                                        
004100*                                                                 
004110     PERFORM  受取手形編集処理.                                   
004120*                                                                 
004140     PERFORM  受取手形展開編集処理.                               
004142     IF     Ｗ－契約ＮＯ１ = Ｏ－契約ＮＯ１                       
004143        AND Ｎ－束数       = Ｏ－束数                             
004144        PERFORM  受取手形展開出力処理                             
004145     ELSE                                                         
004146*                                                                 
004150        PERFORM  受取手形出力処理                                 
004161        PERFORM  受取手形展開出力処理                             
004162     END-IF.                                                      
004180*                                                                 
004190     MOVE Ｗ－契約ＮＯ１              TO  Ｏ－契約ＮＯ１.         
004191     MOVE Ｎ－束数                    TO  Ｏ－束数.               
004194*                                                                 
004195 編集出力処理－ＥＸＩＴ.                                          
004200     EXIT.                                                        
004210*                                                                 
004220******************************************************************
004230*    受取手形、受取手形展開編集処理                              *
004240******************************************************************
004250 受取手形編集処理                     SECTION.                    
004260 受取手形編集処理－ＳＴＡＲＴ.                                    
004270*----------------------------------------------------------------*
004280*       初期化処理                                               *
004290*----------------------------------------------------------------*
004300        MOVE  SPACE                   TO  受取手形.               
004310        INITIALIZE                        受取手形.               
004320*----------------------------------------------------------------*
004330*       項目編集処理                                             *
004340*----------------------------------------------------------------*
004350*                                                                 
004400*--< No.01 >                                                      
004410     MOVE  入力１－契約ＮＯ           TO  Ｄ６４２－代表契約番号. 
004420*--< No.02 >                                                      
004430     MOVE  入力２－束数               TO  Ｄ６４２－束数.         
004440*--< No.03 >                                                      
004450*----------------------------------------------------------------*
004460     
      *    EXEC  SQL                                                    
004470*       SELECT  新取引先コード                                    
004480*              ,枝番                                              
004490*         INTO :ＩＫＯ００１－新取引先コード                      
004500*             ,:ＩＫＯ００１－枝番                                
004510*         FROM  IKOTBL001                                         
004520*        WHERE  取引先コード  =  :ＷＳ－取引先コード              
004530*          AND  目的ＣＤ      =  :ＷＳ－目的ＣＤ                  
004540*    END-EXEC.
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
004550*                                                                 
004560     EVALUATE  SQLCODE                                            
004570        WHEN   定数－ＳＱＬＯＫ                                   
004580*--<       正常 >                                                 
004590           CONTINUE                                               
004600        WHEN   OTHER                                              
004610*--<       項目抽出失敗 >                                         
004620           MOVE      -7               TO  Ｗ－エラーコード        
004630           PERFORM   エラー判定処理                               
004640     END-EVALUATE.                                                
004650*----------------------------------------------------------------*
004660     MOVE  ＩＫＯ００１－新取引先コード                           
004670                                      TO  Ｄ６４２－取引先コード. 
004680*--< No.04 >                                                      
004690     MOVE  ＩＫＯ００１－枝番         TO  Ｄ６４２－契約先コード. 
004700*--< No.05 >                                                      
004710     MOVE  入力１－名称漢字           TO  Ｄ６４２－契約先名称.   
004720*--< No.06 >                                                      
004730     MOVE  入力１－名称カナ          TO  Ｄ６４２－契約先名称カナ.
004740*--< No.07 >                                                      
004750     MOVE  入力１－事業所コード       TO  Ｄ６４２－部店コード.   
004760*--< No.08 >                                                      
004770*----------------------------------------------------------------*
004790     
      *    EXEC  SQL                                                    
004800*       SELECT  主契約区分                                        
004810*         INTO :ＩＫＯ００２－主契約区分                          
004820*         FROM  IKOTBL002                                         
004830*        WHERE  契約ＮＯ  =  :ＷＳ－契約ＮＯ                      
004840*    END-EXEC.
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
004850*                                                                 
004860     EVALUATE  SQLCODE                                            
004870        WHEN   定数－ＳＱＬＯＫ                                   
004880*--<       正常 >                                                 
004890           CONTINUE                                               
004900        WHEN   定数－ＳＱＬＣＤＤＥＯＫ                           
004910*--<       正常 >                                                 
004920           CONTINUE                                               
004930        WHEN   OTHER                                              
004940*--<       項目抽出失敗 >                                         
004950           MOVE      -8               TO  Ｗ－エラーコード        
004960           PERFORM   エラー判定処理                               
004970     END-EVALUATE.                                                
004980*----------------------------------------------------------------*
004990     MOVE  ＩＫＯ００２－主契約区分   TO  Ｄ６４２－主契約区分.   
005000*--< No.09 >                                                      
005010     MOVE  ZERO                       TO  Ｄ６４２－手形状態.     
005020*--< No.10 >                                                      
005030     MOVE  入力２－取引日             TO  Ｄ６４２－取引日.       
005040*--< No.11>                                                       
005050     MOVE  入力２－伝票発行日         TO  Ｄ６４２－伝票発行日.   
005060*--< No.12 >                                                      
005070     MOVE  入力２－手形種類           TO  Ｄ６４２－手形種類.     
005080*--< No.13 >                                                      
005090     MOVE  入力２－期日基準日         TO  Ｄ６４２－期日基準日.   
005100*--< No.14 >                                                      
005110     MOVE  入力２－期日サイクル       TO  Ｄ６４２－期日サイクル. 
005120*--< No.15 >                                                      
005130     MOVE  入力２－束合計金額         TO  Ｄ６４２－束合計金額.   
005140*--< No.16 >                                                      
005150     MOVE  入力２－手形枚数           TO  Ｄ６４２－手形枚数.     
005160*--< No.17 >                                                      
005170     MOVE  入力２－取立依頼銀行コード                             
005180                                     TO  Ｄ６４２－取立銀行コード.
005190*--< No.18 >                                                      
005200     MOVE  入力２－支払人コード      TO  Ｄ６４２－支払銀行コード.
005210*--< No.19 >                                                      
005220     MOVE  入力１－契約ＮＯ１         TO  Ｄ６４２－契約番号１.   
005230*--< No.20 >                                                      
005240     MOVE  入力１－契約ＮＯ２         TO  Ｄ６４２－契約番号２.   
005250*--< No.21 >                                                      
005260     MOVE  入力１－契約ＮＯ３         TO  Ｄ６４２－契約番号３.   
005270*--< No.22 >                                                      
005280     MOVE  入力１－契約ＮＯ４         TO  Ｄ６４２－契約番号４.   
005290*--< No.23 >                                                      
005300     MOVE  入力１－契約ＮＯ５         TO  Ｄ６４２－契約番号５.   
005310*--< No.24 >                                                      
005320     MOVE  入力１－契約ＮＯ６         TO  Ｄ６４２－契約番号６.   
005330*--< No.25 >                                                      
005340     MOVE  入力１－契約ＮＯ７         TO  Ｄ６４２－契約番号７.   
005350*--< No.26 >                                                      
005360     MOVE  入力１－契約ＮＯ８         TO  Ｄ６４２－契約番号８.   
005370*--< No.27 >                                                      
005380     MOVE  入力１－契約ＮＯ９         TO  Ｄ６４２－契約番号９.   
005390*--< No.28 >                                                      
005400     MOVE  入力１－契約ＮＯ１０       TO  Ｄ６４２－契約番号１０. 
005410*--< No.29 >                                                      
005420     MOVE  入力２－備考欄             TO  Ｄ６４２－備考欄.       
005430*--< No.30 >                                                      
005440     MOVE  ZERO                       TO  Ｄ６４２－手形内容種別. 
005450*--< No.31 >                                                      
005460     MOVE  Ｗ－システム日付           TO  Ｄ６４２－登録年月日.   
005470*--< No.32 >                                                      
005480     MOVE  Ｗ－システム時刻           TO  Ｄ６４２－登録時間.     
005490*--< No.33 >                                                      
005500     MOVE  Ｗ－担当者                 TO  Ｄ６４２－登録担当者.   
005510*--< No.34 >                                                      
005520     MOVE  Ｗ－システム日付           TO  Ｄ６４２－更新年月日.   
005530*--< No.35 >                                                      
005540     MOVE  Ｗ－システム時刻           TO  Ｄ６４２－更新時間.     
005550*--< No.36 >                                                      
005560     MOVE  Ｗ－担当者                 TO  Ｄ６４２－更新者.       
005570*--< No.37 >                                                      
005580     MOVE  Ｗ－担当者              TO  Ｄ６４２－入力担当者コード.
005590*--< No.38 >                                                      
005600     MOVE  ZERO                       TO  Ｄ６４２－売却代金区分. 
005610*--< No.39 >                                                      
005620*----------------------------------------------------------------*
005640     
      *    EXEC  SQL                                                    
005650*       SELECT  新取引先コード                                    
005660*              ,枝番                                              
005670*         INTO :ＩＫＯ００１－新取引先コード                      
005680*             ,:ＩＫＯ００１－枝番                                
005690*         FROM  IKOTBL001                                         
005700*        WHERE  取引先コード  =  :ＷＳ－支払人コード              
005710*          AND  目的ＣＤ      =  :ＷＳ－目的ＣＤ                  
005720*    END-EXEC.
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
005730*                                                                 
005740     EVALUATE  SQLCODE                                            
005750        WHEN   定数－ＳＱＬＯＫ                                   
005760*--<       正常 >                                                 
005770           CONTINUE                                               
005780        WHEN   OTHER                                              
005790*--<       項目抽出失敗 >                                         
005800           MOVE      -9               TO  Ｗ－エラーコード        
005810           PERFORM   エラー判定処理                               
005820     END-EVALUATE.                                                
005830*----------------------------------------------------------------*
005840     MOVE  ＩＫＯ００１－新取引先コード                           
005850                                 TO  Ｄ６４２－振出人取引先コード.
005860*--< No.40 >                                                      
005870     MOVE  ＩＫＯ００１－枝番    TO  Ｄ６４２－振出人契約先コード.
005880*--< No.41 >                                                      
005890     MOVE  入力２－名称漢字           TO  Ｄ６４２－振出人名称.   
005900*--< No.42 >                                                      
005910     MOVE  入力２－名称カナ          TO  Ｄ６４２－振出人名称カナ.
005920 受取手形編集処理－ＥＸＩＴ.                                      
005930     EXIT.                                                        
005940*----------------------------------------------------------------*
005950 受取手形展開編集処理                 SECTION.                    
005960 受取手形展開編集処理－ＳＴＡＲＴ.                                
005970*----------------------------------------------------------------*
005980*       初期化処理                                               *
005990*----------------------------------------------------------------*
006000        MOVE  SPACE                   TO  受取手形展開.           
006010        INITIALIZE                        受取手形展開.           
006020*----------------------------------------------------------------*
006030*       項目編集処理                                             *
006040*----------------------------------------------------------------*
006050*                                                                 
006110*--< No.01 >                                                      
006120     MOVE  入力１－契約ＮＯ           TO  Ｄ６４５－代表契約番号. 
006130*--< No.02 >                                                      
006140     MOVE  入力２－束数               TO  Ｄ６４５－束数.         
006150*--< No.03 >                                                      
006160     IF    ( Ｗ－契約ＮＯ１ = Ｏ－契約ＮＯ１                      
006170        AND  Ｎ－束数       = Ｏ－束数 )                          
006180        COMPUTE      Ｗ－連番  =  Ｗ－連番 + 1                    
006190     ELSE                                                         
006200        MOVE    1                     TO  Ｗ－連番                
006210     END-IF.                                                      
006220     MOVE  Ｗ－連番                   TO  Ｄ６４５－連番.         
006230*--< No.04 >                                                      
006240     MOVE  入力２－手形ＮＯ           TO  Ｄ６４５－手形番号.     
006250*--< No.05 >                                                      
006260     MOVE  入力２－期日               TO  Ｄ６４５－期日.         
006270*--< No.06 >                                                      
006280     MOVE  入力２－金額               TO  Ｄ６４５－金額.         
006290*--< No.07 >                                                      
006300     MOVE  ＩＫＯ００１－新取引先コード                           
006310                                 TO  Ｄ６４５－振出人取引先コード.
006320*--< No.08 >                                                      
006330     MOVE  ＩＫＯ００１－枝番    TO  Ｄ６４５－振出人契約先コード.
006340*--< No.09 >                                                      
006350     MOVE  入力２－名称漢字           TO  Ｄ６４５－振出人名称.   
006360*--< No.10 >                                                      
006370     MOVE  入力２－名称カナ          TO  Ｄ６４５－振出人名称カナ.
006380*--< No.11 >                                                      
006390     MOVE  Ｗ－システム日付           TO  Ｄ６４５－登録年月日.   
006400*--< No.12 >                                                      
006410     MOVE  Ｗ－システム時刻           TO  Ｄ６４５－登録時間.     
006420*--< No.13 >                                                      
006430     MOVE  Ｗ－担当者                 TO  Ｄ６４５－登録担当者.   
006440*--< No.14 >                                                      
006450     MOVE  Ｗ－システム日付           TO  Ｄ６４５－更新年月日.   
006460*--< No.15 >                                                      
006470     MOVE  Ｗ－システム時刻           TO  Ｄ６４５－更新時間.     
006480*--< No.16 >                                                      
006490     MOVE  Ｗ－担当者                 TO  Ｄ６４５－更新者.       
006500*--< No.17 >                                                      
006510     MOVE  Ｗ－担当者              TO  Ｄ６４５－入力担当者コード.
006520*--< No.18 >                                                      
006530     MOVE  入力２－手形区分           TO  Ｄ６４５－手形状態.     
006540 受取手形編集処理－ＥＸＩＴ.                                      
006550     EXIT.                                                        
006560******************************************************************
006570*    出力処理                                                    *
006580******************************************************************
006590 受取手形出力処理                     SECTION.                    
006600 受取手形出力処理－ＳＴＡＲＴ.                                    
006610*                                                                 
006620     
      *    EXEC  SQL                                                    
006630*       INSERT  INTO  D642UTG_TBL                                 
006640*          ( 代表契約番号                                         
006650*           ,束数                                                 
006660*           ,取引先コード                                         
006670*           ,契約先コード                                         
006680*           ,契約先名称                                           
006690*           ,契約先名称カナ                                       
006700*           ,部店コード                                           
006710*           ,主契約区分                                           
006720*           ,手形状態                                             
006730*           ,取引日                                               
006740*           ,伝票発行日                                           
006750*           ,手形種類                                             
006760*           ,期日基準日                                           
006770*           ,期日サイクル                                         
006780*           ,束合計金額                                           
006790*           ,手形枚数                                             
006800*           ,取立銀行コード                                       
006810*           ,支払銀行コード                                       
006820*           ,契約番号１                                           
006830*           ,契約番号２                                           
006840*           ,契約番号３                                           
006850*           ,契約番号４                                           
006860*           ,契約番号５                                           
006870*           ,契約番号６                                           
006880*           ,契約番号７                                           
006890*           ,契約番号８                                           
006900*           ,契約番号９                                           
006910*           ,契約番号１０                                         
006920*           ,備考欄                                               
006930*           ,手形内容種別                                         
006940*           ,登録年月日                                           
006950*           ,登録時間                                             
006960*           ,登録担当者                                           
006970*           ,更新年月日                                           
006980*           ,更新時間                                             
006990*           ,更新者                                               
007000*           ,入力担当者コード                                     
007010*           ,売却代金区分                                         
007020*           ,振出人取引先コード                                   
007030*           ,振出人契約先コード                                   
007040*           ,振出人名称                                           
007050*           ,振出人名称カナ)                                      
007060*       VALUES                                                    
007070*          ( :Ｄ６４２－代表契約番号                              
007080*           ,:Ｄ６４２－束数                                      
007090*           ,:Ｄ６４２－取引先コード                              
007100*           ,:Ｄ６４２－契約先コード                              
007110*           ,:Ｄ６４２－契約先名称                                
007120*           ,:Ｄ６４２－契約先名称カナ                            
007130*           ,:Ｄ６４２－部店コード                                
007140*           ,:Ｄ６４２－主契約区分                                
007150*           ,:Ｄ６４２－手形状態                                  
007160*           ,:Ｄ６４２－取引日                                    
007170*           ,:Ｄ６４２－伝票発行日                                
007180*           ,:Ｄ６４２－手形種類                                  
007190*           ,:Ｄ６４２－期日基準日                                
007200*           ,:Ｄ６４２－期日サイクル                              
007210*           ,:Ｄ６４２－束合計金額                                
007220*           ,:Ｄ６４２－手形枚数                                  
007230*           ,:Ｄ６４２－取立銀行コード                            
007240*           ,:Ｄ６４２－支払銀行コード                            
007250*           ,:Ｄ６４２－契約番号１                                
007260*           ,:Ｄ６４２－契約番号２                                
007270*           ,:Ｄ６４２－契約番号３                                
007280*           ,:Ｄ６４２－契約番号４                                
007290*           ,:Ｄ６４２－契約番号５                                
007300*           ,:Ｄ６４２－契約番号６                                
007310*           ,:Ｄ６４２－契約番号７                                
007320*           ,:Ｄ６４２－契約番号８                                
007330*           ,:Ｄ６４２－契約番号９                                
007340*           ,:Ｄ６４２－契約番号１０                              
007350*           ,:Ｄ６４２－備考欄                                    
007360*           ,:Ｄ６４２－手形内容種別                              
007370*           ,:Ｄ６４２－登録年月日                                
007380*           ,:Ｄ６４２－登録時間                                  
007390*           ,:Ｄ６４２－登録担当者                                
007400*           ,:Ｄ６４２－更新年月日                                
007410*           ,:Ｄ６４２－更新時間                                  
007420*           ,:Ｄ６４２－更新者                                    
007430*           ,:Ｄ６４２－入力担当者コード                          
007440*           ,:Ｄ６４２－売却代金区分                              
007450*           ,:Ｄ６４２－振出人取引先コード                        
007460*           ,:Ｄ６４２－振出人契約先コード                        
007470*           ,:Ｄ６４２－振出人名称                                
007480*           ,:Ｄ６４２－振出人名称カナ)                           
007490*    END-EXEC.
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
007500*                                                                 
007510     EVALUATE  SQLCODE                                            
007520        WHEN   定数－ＳＱＬＯＫ                                   
007530*--<       追加成功 >                                             
007540           COMPUTE  Ｗ－出力－件数１  =  Ｗ－出力－件数１  +  1   
007550        WHEN   OTHER                                              
007560*--<       追加処理エラー >                                       
007570           MOVE     -5                TO  Ｗ－エラーコード        
007580           PERFORM  エラー判定処理                                
007590     END-EVALUATE.                                                
007600*                                                                 
007610 受取手形出力処理－ＥＸＩＴ.                                      
007620     EXIT.                                                        
007630*----------------------------------------------------------------*
007640 受取手形展開出力処理                 SECTION.                    
007650 受取手形展開出力処理－ＳＴＡＲＴ.                                
007660*                                                                 
007670     
      *    EXEC  SQL                                                    
007680*       INSERT  INTO  D645UTT_TBL                                 
007690*          ( 代表契約番号                                         
007700*           ,束数                                                 
007710*           ,連番                                                 
007720*           ,手形番号                                             
007730*           ,期日                                                 
007740*           ,金額                                                 
007750*           ,振出人取引先コード                                   
007760*           ,振出人契約先コード                                   
007770*           ,振出人名称                                           
007780*           ,振出人名称カナ                                       
007790*           ,登録年月日                                           
007800*           ,登録時間                                             
007810*           ,登録担当者                                           
007820*           ,更新年月日                                           
007830*           ,更新時間                                             
007840*           ,更新者                                               
007850*           ,入力担当者コード                                     
007860*           ,手形状態)                                            
007870*       VALUES                                                    
007880*          ( :Ｄ６４５－代表契約番号                              
007890*           ,:Ｄ６４５－束数                                      
007900*           ,:Ｄ６４５－連番                                      
007910*           ,:Ｄ６４５－手形番号                                  
007920*           ,:Ｄ６４５－期日                                      
007930*           ,:Ｄ６４５－金額                                      
007940*           ,:Ｄ６４５－振出人取引先コード                        
007950*           ,:Ｄ６４５－振出人契約先コード                        
007960*           ,:Ｄ６４５－振出人名称                                
007970*           ,:Ｄ６４５－振出人名称カナ                            
007980*           ,:Ｄ６４５－登録年月日                                
007990*           ,:Ｄ６４５－登録時間                                  
008000*           ,:Ｄ６４５－登録担当者                                
008010*           ,:Ｄ６４５－更新年月日                                
008020*           ,:Ｄ６４５－更新時間                                  
008030*           ,:Ｄ６４５－更新者                                    
008040*           ,:Ｄ６４５－入力担当者コード                          
008050*           ,:Ｄ６４５－手形状態)                                 
008060*    END-EXEC.
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
008070*                                                                 
008080     EVALUATE  SQLCODE                                            
008090        WHEN   定数－ＳＱＬＯＫ                                   
008100*--<       追加成功 >                                             
008110           COMPUTE  Ｗ－出力－件数２  =  Ｗ－出力－件数２  +  1   
008120        WHEN   OTHER                                              
008130*--<       追加処理エラー >                                       
008140           MOVE     -6                TO  Ｗ－エラーコード        
008150           PERFORM  エラー判定処理                                
008160     END-EVALUATE.                                                
008170 受取手形展開出力処理－ＥＸＩＴ.                                  
008180     EXIT.                                                        
008190******************************************************************
008200*    終了処理                                                    *
008210******************************************************************
008220 終了処理                             SECTION.                    
008230 終了処理－ＳＴＡＲＴ.                                            
008240*                                                                 
008250     PERFORM  ファイルクローズ処理.                               
008260*                                                                 
008270     PERFORM  ＤＢコミット処理.                                   
008280*                                                                 
008290     PERFORM  終了メッセージ出力.                                 
008300*                                                                 
008310*--< プログラム正常終了 >                                         
008320     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
008330*                                                                 
008340 終了処理－ＥＸＩＴ.                                              
008350     EXIT.                                                        
008360******************************************************************
008370*    ファイルクローズ処理                                        *
008380******************************************************************
008390 ファイルクローズ処理                 SECTION.                    
008400 ファイルクローズ処理－ＳＴＡＲＴ.                                
008410*                                                                 
008420     CLOSE  入力ファイル１.                                       
008430     CLOSE  入力ファイル２.                                       
008440*                                                                 
008450 ファイルクローズ処理－ＥＸＩＴ.                                  
008460     EXIT.                                                        
008470******************************************************************
008480*    終了メッセージ出力                                          *
008490******************************************************************
008500 終了メッセージ出力                   SECTION.                    
008510 終了メッセージ出力－ＳＴＡＲＴ.                                  
008520*                                                                 
008530*----------------------------------------------------------------*
008540*    件数メッセージ出力処理                                      *
008550*----------------------------------------------------------------*
008560     INITIALIZE                       IF-CHOCO001.                
008570     MOVE  "3"                        TO  共通－イベント種別.     
008580     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
008590     MOVE  "0"                        TO  共通－復帰コード.       
008600     MOVE  "D411STK"                  TO  共通－処理テーブルＩＤ. 
008610     MOVE  "COUNT"                    TO  共通－処理識別.         
008620     MOVE  Ｗ－入力－件数１           TO  共通－データ内容.       
008630     MOVE  "手形基本読込件数"         TO  共通－その他メッセージ. 
008640     CALL  CLOCO001                USING  IF-CHOCO001.            
008650*                                                                 
008660     INITIALIZE                       IF-CHOCO001.                
008670     MOVE  "3"                        TO  共通－イベント種別.     
008680     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
008690     MOVE  "0"                        TO  共通－復帰コード.       
008700     MOVE  "D411STK"                  TO  共通－処理テーブルＩＤ. 
008710     MOVE  "COUNT"                    TO  共通－処理識別.         
008720     MOVE  Ｗ－入力－件数２           TO  共通－データ内容.       
008730     MOVE  "受取手形読込件数"         TO  共通－その他メッセージ. 
008740     CALL  CLOCO001                USING  IF-CHOCO001.            
008750*                                                                 
008760     INITIALIZE                       IF-CHOCO001.                
008770     MOVE  "3"                        TO  共通－イベント種別.     
008780     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
008790     MOVE  "0"                        TO  共通－復帰コード.       
008800     MOVE  "D34HNS"                   TO  共通－処理テーブルＩＤ. 
008810     MOVE  "COUNT"                    TO  共通－処理識別.         
008820     MOVE  Ｗ－出力－件数１           TO  共通－データ内容.       
008830     MOVE  "受取手形出力件数"         TO  共通－その他メッセージ. 
008840     CALL  CLOCO001                USING  IF-CHOCO001.            
008850*                                                                 
008860     INITIALIZE                       IF-CHOCO001.                
008870     MOVE  "3"                        TO  共通－イベント種別.     
008880     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
008890     MOVE  "0"                        TO  共通－復帰コード.       
008900     MOVE  "D34HNS"                   TO  共通－処理テーブルＩＤ. 
008910     MOVE  "COUNT"                    TO  共通－処理識別.         
008920     MOVE  Ｗ－出力－件数２           TO  共通－データ内容.       
008930     MOVE  "受取手形展開出力件数"     TO  共通－その他メッセージ. 
008950     CALL  CLOCO001                USING  IF-CHOCO001.            
008960*                                                                 
008970*----------------------------------------------------------------*
008980*    終了メッセージ出力                                          *
008990*----------------------------------------------------------------*
009000     INITIALIZE                       IF-CHOCO001.                
009010     MOVE  "3"                        TO  共通－イベント種別.     
009020     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
009030     MOVE  "0"                        TO  共通－復帰コード.       
009040     MOVE  "END"                      TO  共通－処理識別.         
009050     MOVE  定数－プログラム名         TO  共通－その他メッセージ. 
009060     CALL  CLOCO001                USING  IF-CHOCO001.            
009070*                                                                 
009080 終了メッセージ出力－ＥＸＩＴ.                                    
009090     EXIT.                                                        
009100******************************************************************
009110*    ＤＢコミット処理                                            *
009120******************************************************************
009130 ＤＢコミット処理                     SECTION.                    
009140 ＤＢコミット処理－ＳＴＡＲＴ.                                    
009150*                                                                 
009160     
      *    EXEC  SQL                                                    
009170*       COMMIT  WORK  RELEASE                                     
009180*    END-EXEC.
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
009190*                                                                 
009200     INITIALIZE                       IF-CHOCO001.                
009210     MOVE  "3"                        TO  共通－イベント種別.     
009220     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
009230     MOVE  "0"                        TO  共通－復帰コード.       
009240     MOVE  "COMMIT"                   TO  共通－処理識別.         
009250     MOVE  "コミット実施"             TO  共通－その他メッセージ. 
009260     CALL  CLOCO001                USING  IF-CHOCO001.            
009270*                                                                 
009280 ＤＢコミット処理－ＥＸＩＴ.                                      
009290     EXIT.                                                        
009300******************************************************************
009310*    ＤＢロールバック処理                                        *
009320******************************************************************
009330 ＤＢロールバック処理                 SECTION.                    
009340 ＤＢロールバック処理－ＳＴＡＲＴ.                                
009350*                                                                 
009360     
      *    EXEC  SQL                                                    
009370*       ROLLBACK WORK  RELEASE                                    
009380*    END-EXEC.
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
009390*                                                                 
009400     INITIALIZE                       IF-CHOCO001.                
009410     MOVE  "1"                        TO  共通－イベント種別.     
009420     MOVE  定数－プログラムＩＤ       TO  共通－ソースＩＤ.       
009430     MOVE  "9"                        TO  共通－復帰コード.       
009440     MOVE  "ROLLBACK"                 TO  共通－処理識別.         
009450     MOVE  "ロールバック実施"         TO  共通－その他メッセージ. 
009460     CALL  CLOCO001                USING  IF-CHOCO001.            
009470*                                                                 
009480 ＤＢロールバック処理－ＥＸＩＴ.                                  
009490     EXIT.                                                        
009500******************************************************************
009510*    エラー処理                                                  *
009520******************************************************************
009530 エラー判定処理                       SECTION.                    
009540 エラー判定処理－ＳＴＡＲＴ.                                      
009550*                                                                 
009560     MOVE  "Y"                        TO Ｗ－異常終了－フラグ.    
009570     INITIALIZE                           IF-CHOCO001.            
009580*                                                                 
009590     EVALUATE  Ｗ－エラーコード                                   
009600        WHEN  -1                                                  
009610*--<       手形基本ファイルオープンエラー >                       
009620           MOVE  "1"                  TO  共通－イベント種別      
009630           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
009640           MOVE  "9"                  TO  共通－復帰コード        
009650           MOVE  "FFUIS630"           TO  共通－処理テーブルＩＤ  
009660           MOVE  "OPEN"               TO  共通－処理識別          
009670           MOVE  Ｗ－状態             TO  共通－データ内容        
009680           MOVE  "手形基本ファイルオープンエラー "                
009690                                      TO  共通－その他メッセージ  
009700           CALL  CLOCO001          USING  IF-CHOCO001             
009710*                                                                 
009720        WHEN  -2                                                  
009730*--<       受取手形ファイルオープンエラー >                       
009740           MOVE  "1"                  TO  共通－イベント種別      
009750           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
009760           MOVE  "9"                  TO  共通－復帰コード        
009770           MOVE  "FFUIS631"           TO  共通－処理テーブルＩＤ  
009780           MOVE  "OPEN"               TO  共通－処理識別          
009790           MOVE  Ｗ－状態             TO  共通－データ内容        
009800           MOVE  "受取手形ファイルオープンエラー "                
009810                                      TO  共通－その他メッセージ  
009820           CALL  CLOCO001          USING  IF-CHOCO001             
009830*                                                                 
009840        WHEN  -3                                                  
009850*--<       手形基本ファイル読込エラー >                           
009860           MOVE  "1"                  TO  共通－イベント種別      
009870           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
009880           MOVE  "9"                  TO  共通－復帰コード        
009890           MOVE  "FFUIS630"           TO  共通－処理テーブルＩＤ  
009900           MOVE  "READ"               TO  共通－処理識別          
009910           MOVE  Ｗ－状態             TO  共通－データ内容        
009920           MOVE  "手形基本ファイル読込エラー "                    
009930                                      TO  共通－その他メッセージ  
009940           CALL  CLOCO001          USING  IF-CHOCO001             
009950*                                                                 
009960        WHEN  -4                                                  
009970*--<       受取手形ファイル読込エラー >                           
009980           MOVE  "1"                  TO  共通－イベント種別      
009990           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010000           MOVE  "9"                  TO  共通－復帰コード        
010010           MOVE  "FFUIS631"           TO  共通－処理テーブルＩＤ  
010020           MOVE  "READ"               TO  共通－処理識別          
010030           MOVE  Ｗ－状態             TO  共通－データ内容        
010040           MOVE  "受取手形ファイル読込エラー "                    
010050                                      TO  共通－その他メッセージ  
010060           CALL  CLOCO001          USING  IF-CHOCO001             
010070*                                                                 
010080        WHEN  -5                                                  
010090*--<       受取手形テーブル追加失敗 >                             
010100           MOVE  "1"                  TO  共通－イベント種別      
010110           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010120           MOVE  "9"                  TO  共通－復帰コード        
010130           MOVE  "D642UTG"            TO  共通－処理テーブルＩＤ  
010140           MOVE  "SELECT"             TO  共通－処理識別          
010150           MOVE  SQLCODE              TO  共通－データ内容        
010160           MOVE  SQLERRMC             TO  共通－その他メッセージ  
010170           CALL  CLOCO001          USING  IF-CHOCO001             
010180*                                                                 
010190        WHEN  -6                                                  
010200*--<       受取手形展開テーブル追加失敗 >                         
010210           MOVE  "1"                  TO  共通－イベント種別      
010220           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010230           MOVE  "9"                  TO  共通－復帰コード        
010240           MOVE  "D645UTT"            TO  共通－処理テーブルＩＤ  
010250           MOVE  "SELECT"             TO  共通－処理識別          
010260           MOVE  SQLCODE              TO  共通－データ内容        
010270           MOVE  SQLERRMC             TO  共通－その他メッセージ  
010280           CALL  CLOCO001          USING  IF-CHOCO001             
010290*                                                                 
010291        WHEN  -7                                                  
010292*--<       項目抽出失敗 >                                         
010293           MOVE  "2"                  TO  共通－イベント種別      
010294           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010295           MOVE  "9"                  TO  共通－復帰コード        
010296           MOVE  "IKOTL001"           TO  共通－処理テーブルＩＤ  
010297           MOVE  "SELECT"             TO  共通－処理識別          
010298           MOVE  SQLCODE              TO  共通－データ内容        
010299           MOVE  SQLERRMC             TO  共通－その他メッセージ  
010300           CALL  CLOCO001          USING  IF-CHOCO001             
010301           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010302*                                                                 
010303        WHEN  -8                                                  
010304*--<       項目抽出失敗 >                                         
010305           MOVE  "2"                  TO  共通－イベント種別      
010306           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010307           MOVE  "9"                  TO  共通－復帰コード        
010308           MOVE  "IKOTL002"           TO  共通－処理テーブルＩＤ  
010309           MOVE  "SELECT"             TO  共通－処理識別          
010310           MOVE  SQLCODE              TO  共通－データ内容        
010311           MOVE  SQLERRMC             TO  共通－その他メッセージ  
010312           CALL  CLOCO001          USING  IF-CHOCO001             
010313           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010314*                                                                 
010315        WHEN  -9                                                  
010316*--<       項目抽出失敗 >                                         
010317           MOVE  "2"                  TO  共通－イベント種別      
010318           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010319           MOVE  "9"                  TO  共通－復帰コード        
010320           MOVE  "IKOTL001"           TO  共通－処理テーブルＩＤ  
010321           MOVE  "SELECT"             TO  共通－処理識別          
010322           MOVE  SQLCODE              TO  共通－データ内容        
010323           MOVE  SQLERRMC             TO  共通－その他メッセージ  
010324           CALL  CLOCO001          USING  IF-CHOCO001             
010325           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010326*                                                                 
010327        WHEN  -10                                                 
010328*--<       ＯＲＡＣＬＥ接続失敗 >                                 
010329           MOVE  "1"                  TO  共通－イベント種別      
010330           MOVE  定数－プログラムＩＤ TO  共通－ソースＩＤ        
010340           MOVE  "9"                  TO  共通－復帰コード        
010350           MOVE  "CONNECT"            TO  共通－処理識別          
010360           MOVE  SQLCODE              TO  共通－データ内容        
010370           MOVE  SQLERRMC             TO  共通－その他メッセージ  
010380           CALL  CLOCO001          USING  IF-CHOCO001             
010750*                                                                 
010760        WHEN  OTHER                                               
010770           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
010780     END-EVALUATE.                                                
010790*                                                                 
010800*                                                                 
010810     IF  Ｗ－異常終了－フラグ  =  "Y"                             
010820        PERFORM  ＤＢロールバック処理                             
010830*                                                                 
010840        PERFORM  終了メッセージ出力                               
010850*                                                                 
010860*--<    プログラム異常終了のリターンコード >                      
010870        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
010880*                                                                 
010890        EXIT  PROGRAM                                             
010900     END-IF.                                                      
010910*                                                                 
010920 エラー判定処理－ＥＸＩＴ.                                        
010930     EXIT.                                                        
010940******************************************************************
010950*                  END OF PROGRAM                                *
010960******************************************************************
010970
