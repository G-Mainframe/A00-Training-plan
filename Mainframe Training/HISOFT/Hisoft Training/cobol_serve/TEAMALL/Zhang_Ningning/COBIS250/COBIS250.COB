000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名  : 資産種類マスタ移行処理                 *
000040*      2. プログラムID  : COBIS250                               *
000050*      3. 処理概要      : 物件の形態・使用目的・種類を表したもの *
000060*                         （法定耐用年数とリンク）               *
000070*                                                                *
000080*      4. 作成者        : 張寧寧                                 *
000090*      5. 作成日        : 2005.04.10                             *
000100******************************************************************
000110*                                                                 
000120******************************************************************
000130*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000140******************************************************************
000150 IDENTIFICATION                       DIVISION.                   
000160*                                                                 
000170 PROGRAM-ID.                          COBIS250.                   
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
000280     SELECT         入力ファイル      ASSIGN    TO   U01          
000290     FILE STATUS    IS     Ｗ－状態                               
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
000480     COPY   CPBIS122   REPLACING      ==()==  BY  ==入力－==.     
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
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +47.
           02  SQLFPN-FILENAME PIC X(47) VALUE "Z:\TEAMALL\ZHANG_NINGNIN
      -    "G\COBIS250\COBIS250.PCO".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D12SIB_TBL(資産種類,
      -     "適用年月日,資産大分類名称,資産名称,耐用年数,税法区分,更新日
      -    "時,更新者,申告用判定コード,開示用判定コード,年次統計用判定コ
      -     "ード,入力".

           02  FILLER PIC X(160) VALUE "担当者コード,資産名称カナ,資産略
      -    "称,資産略称カナ,登録年月日,登録時間,登録担当者,更新年月日,更
      -    "新時間) values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b1
      -    "1,:b12,:".

           02  FILLER PIC X(39) VALUE "b13,:b14,:b15,:b16,:b17,:b18,:b19
      -    ",:b20)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +309369382.


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
           02  FILLER PIC X(160) VALUE "select LTRCDM0010.資産コード  ,L
      -    "TRCDM0010.識別コード  ,適用年月日ＦＲＯＭ＿年月日１  ,適用年
      -    "月日ＦＲＯＭ＿年月日２  ,LTRCDM0010.適用年月日ＦＲＯＭ＿年月
      -    "日３  ,L".

           02  FILLER PIC X(160) VALUE "TRCDM0010.適用年月日ＦＲＯＭ＿年
      -    "月日４  ,LTRCDM0010.適用年月日ＦＲＯＭ＿年月日５  ,LTRCDM001
      -    "0.適用年月日ＦＲＯＭ＿世紀１  ,LTRCDM0010.適用年月日ＦＲＯＭ
      -    "＿世紀２".

           02  FILLER PIC X(160) VALUE "  ,LTRCDM0010.適用年月日ＦＲＯＭ
      -    "＿世紀３  ,LTRCDM0010.適用年月日ＦＲＯＭ＿世紀４  ,LTRCDM001
      -    "0.適用年月日ＦＲＯＭ＿世紀５  ,LTRCDM0010.耐用年数１  ,LTRCD
      -    "M0010.耐".

           02  FILLER PIC X(160) VALUE "用年数２  ,LTRCDM0010.耐用年数３
      -    "  ,LTRCDM0010.耐用年数４  ,LTRCDM0010.耐用年数５   from LTRC
      -    "DM0010 where LTRCDM0010.識別コード='0010' order by LTRCDM001
      -    "0.資産コ".

           02  FILLER PIC X(15) VALUE "ード           ".

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
           02     FILLER PIC S9(4) COMP-5 VALUE +286.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +290.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +655.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +400.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +426.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +17.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +165.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +359.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +660.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +20.
           02     FILLER PIC S9(4) COMP-5 VALUE +20.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +260.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +727.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +275.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +739.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +290.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +759.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580*                                                                 
000590*--< ＯＲＡＣＬＥ共通変数 >                                       
000600     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000610*                                                                 
000620*--< コードマスタ(耐用年数) >                                     
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000630     
      *    EXEC  SQL  INCLUDE  LTRCDM0010.CBL        END-EXEC.
000640*                                                                 
000650*--< 資産種類マスタ>                                              
000010************************************************
000020* コードマスタ(耐用年数)(LTRCDM0010)
000030************************************************
000040 01  ＬＴＲＣＤＭ００１０－識別コード PIC  X(004).
000050 01  ＬＴＲＣＤＭ００１０－資産コード PIC  X(007).
000060 01  ＬＴＲＣＤＭ００１０－ダミー００１ PIC  X(004).
000070 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀１ 
                                             PIC S9(001) COMP-3.
000080 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日１ 
                                             PIC  X(006).
000090 01  ＬＴＲＣＤＭ００１０－耐用年数１ PIC S9(002) COMP-3.
000100 01  ＬＴＲＣＤＭ００１０－ダミー１ PIC  X(021).
000110 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀２ 
                                             PIC S9(001) COMP-3.
000120 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日２ 
                                             PIC  X(006).
000130 01  ＬＴＲＣＤＭ００１０－耐用年数２ PIC S9(002) COMP-3.
000140 01  ＬＴＲＣＤＭ００１０－ダミー２ PIC  X(021).
000150 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀３ 
                                             PIC S9(001) COMP-3.
000160 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日３ 
                                             PIC  X(006).
000170 01  ＬＴＲＣＤＭ００１０－耐用年数３ PIC S9(002) COMP-3.
000180 01  ＬＴＲＣＤＭ００１０－ダミー３ PIC  X(021).
000190 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀４ 
                                             PIC S9(001) COMP-3.
000200 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日４ 
                                             PIC  X(006).
000210 01  ＬＴＲＣＤＭ００１０－耐用年数４ PIC S9(002) COMP-3.
000220 01  ＬＴＲＣＤＭ００１０－ダミー４ PIC  X(021).
000230 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀５ 
                                             PIC S9(001) COMP-3.
000240 01  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日５ 
                                             PIC  X(006).
000250 01  ＬＴＲＣＤＭ００１０－耐用年数５ PIC S9(002) COMP-3.
000260 01  ＬＴＲＣＤＭ００１０－ダミー５ PIC  X(021).
000270 01  ＬＴＲＣＤＭ００１０－共通情報 PIC  X(035).
000660     
      *    EXEC  SQL  INCLUDE  D12SIB.CBL            END-EXEC.
000670*                                                                 
000680*--< ＯＲＡＣＬＥ ＳＱＬ実行情報 (SQLCA) >                        
      *****************************************************************
      *   資産種類マスタ(D12SIB_TBL)
      *****************************************************************
       01  資産種類マスタ.
           03  Ｄ１２－資産種類      PIC  X(007).
           03  Ｄ１２－適用年月日    PIC  X(008).
           03  Ｄ１２－資産大分類名称
                                     PIC  X(040).
           03  Ｄ１２－資産名称      PIC  X(060).
           03  Ｄ１２－耐用年数      PIC S9(002) PACKED-DECIMAL.
           03  Ｄ１２－税法区分      PIC  X(001).
           03  Ｄ１２－更新日時      PIC  X(016).
           03  Ｄ１２－更新者        PIC  X(008).
           03  Ｄ１２－申告用判定コード
                                     PIC  X(001).
           03  Ｄ１２－開示用判定コード
                                     PIC  X(001).
           03  Ｄ１２－年次統計用判定コード
                                     PIC  X(001).
           03  Ｄ１２－入力担当者コード
                                     PIC  X(008).
           03  Ｄ１２－資産名称カナ  PIC  X(040).
           03  Ｄ１２－資産略称      PIC  X(010).
           03  Ｄ１２－資産略称カナ  PIC  X(012).
           03  Ｄ１２－登録年月日    PIC  X(008).
           03  Ｄ１２－登録時間      PIC  X(008).
           03  Ｄ１２－登録担当者    PIC  X(008).
           03  Ｄ１２－更新年月日    PIC  X(008).
           03  Ｄ１２－更新時間      PIC  X(008).
000690     
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
000700*                                                                 
000710     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000720*----------------------------------------------------------------*
000730*   作業領域定義                                                 *
000740*----------------------------------------------------------------*
000750 01  ＷＯＲＫ－エリア.                                            
000760*                                                                 
000770*--< エラーコード >                                               
000780     03  Ｗ－エラーコード             PIC S9(04).                 
000790*                                                                 
000800*--< Ｗ－状態>                                                    
000810     03  Ｗ－状態                     PIC  X(02).                 
000820*                                                                 
000830*--< 件数エリア >                                                 
000840     03  件数エリア.                                              
000850         05  Ｗ－入力－件数１         PIC  9(09).                 
000860         05  Ｗ－入力－件数２         PIC  9(09).                 
000870         05  Ｗ－出力－件数           PIC  9(09).                 
000880*                                                                 
000890*--< フラグアリア >                                               
000900     03  フラグ－エリア.                                          
000910         05  Ｗ－終了－フラグ１       PIC  X(01).                 
000920         05  Ｗ－終了－フラグ２       PIC  X(01).                 
000930         05  Ｗ－異常終了－フラグ     PIC  X(01).                 
000940*                                                                 
000950*--< キーエリア >                                                 
000960     03  ＫＥＹ－エリア.                                          
000970        05   Ｗ－キー１.                                          
000980            07  Ｗ－資産コード１      PIC  X(07).                 
000990            07  Ｗ－識別コード１      PIC  X(04).                 
001000        05   Ｗ－キー２.                                          
001010            07  Ｗ－資産コード２      PIC  X(07).                 
001020            07  Ｗ－識別コード２      PIC  X(04).                 
001030*                                                                 
001040*--< 適用年月日耐用年数エリア >                                   
001050     03  Ｗ－適耐  OCCURS  5.                                     
001060        05   Ｗ－適用年月日ＦＲＯＭ.                              
001070            07  Ｗ－適耐世紀           PIC  X(02).                
001080            07  Ｗ－適耐年月日         PIC  X(06).                
001090        05   Ｗ－耐用年数              PIC  X(02).                
001100        05   Ｗ－世紀Ｍ                PIC  9(01).                
001110*                                                                 
001120*--< 中間エリア >                                                 
001130     03  Ｗ－資産分類名称ＦＬＡＧ     PIC  X(01).                 
001140     03  Ｗ－適用年月日               PIC  X(08).                 
001150     03  Ｗ－耐用年数Ｍ               PIC  X(02).                 
001160     03  Ｗ－資産大分類名称           PIC  X(40).                 
001170     03  I                            PIC  9(01).                 
001180*----------------------------------------------------------------*
001190*   処理時間定義                                                 *
001200*----------------------------------------------------------------*
001210*--< 共通情報 >                                                   
001220 01  Ｗ－共通情報.                                                
001230     03  Ｗ－システム日付.                                        
001240         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001250         05  Ｗ－年月日               PIC  X(06).                 
001260     03  Ｗ－システム時刻             PIC  X(08).                 
001270     03  Ｗ－更新者                   PIC  X(08) VALUE "IKOPG   ".
001280     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001290     03  Ｗ－登録担当者               PIC  X(08) VALUE "IKOPG   ".
001300*----------------------------------------------------------------*
001310*    サブルーチン名                                              *
001320*----------------------------------------------------------------*
001330 01  CALL-AREA.                                                   
001340*--< 共通ログサブルーチン >                                       
001350     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001360     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001370*----------------------------------------------------------------*
001380*--< 共通ログ用パラメータ >                                       
001390 01  IF-CHOCO001.                                                 
001400     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１－==.           
001410*                                                                 
001420*----------------------------------------------------------------*
001430*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001440*----------------------------------------------------------------*
001450 01  PARA-AREA.                                                   
001460     COPY CPBCO001.                                               
001470******************************************************************
001480*    定数用データ定義エリア                                      *
001490******************************************************************
001500 CONSTANT                             SECTION.                    
001510 01  定数領域.                                                    
001520     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS250".
001530     03  定数－プログラム名           PIC  X(80)                  
001540                                VALUE  "資産種類マスタ移行処理".  
001550     03  定数－ＳＱＬＯＫ             PIC  9(04)  VALUE  0000.    
001560     03  定数－ＳＱＬＥＮＤ           PIC  9(04)  VALUE  0100.    
001570     03  定数－正常状態               PIC  9(04)  VALUE  ZERO.    
001580     03  定数－異常状態               PIC  9(04)  VALUE  0009.    
001590******************************************************************
001600*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001610******************************************************************
001620 PROCEDURE                            DIVISION.                   
001630*                                                                 
001640     PERFORM   初期処理.                                          
001650*                                                                 
001660     PERFORM   主処理    UNTIL    Ｗ－終了－フラグ１ = "Y"        
001670*                           AND  (Ｗ－終了－フラグ２ = "Y").       
001680*                                                                 
001690     PERFORM   終了処理.                                          
001700*                                                                 
001710     STOP RUN.                                                    
001720*                                                                 
001730******************************************************************
001740*    初期処理                                                    *
001750******************************************************************
001760 初期処理                             SECTION.                    
001770 初期処理－ＳＴＡＲＴ.                                            
001780*                                                                 
001790*----------------------------------------------------------------*
001800*    開始メッセージ出力                                          *
001810*----------------------------------------------------------------*
001820     INITIALIZE                       IF-CHOCO001.                
001830     MOVE  "3"                        TO  共１－イベント種別.     
001840     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
001850     MOVE  "0"                        TO  共１－復帰コード.       
001860     MOVE  "START"                    TO  共１－処理識別.         
001870     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
001880     CALL  CLOCO001                USING  IF-CHOCO001.            
001890*                                                                 
001900*----------------------------------------------------------------*
001910*    作業領域の初期値設定                                        *
001920*----------------------------------------------------------------*
001930     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
001940     INITIALIZE                           ＷＯＲＫ－エリア.       
001950*                                                                 
001960*--< ＣＰＵ日付を取得 >                                           
001970     ACCEPT  Ｗ－年月日               FROM  DATE.                 
001980*                                                                 
001990*--< ＣＰＵ時刻を取得 >                                           
002000     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
002010*                                                                 
002020*--< ＯＲＡＣＬＥ接続 >                                           
002030     PERFORM   ＯＲＡＣＬＥ接続.                                  
002040*                                                                 
002050*--< ファイルオープン >                                           
002060     PERFORM  ファイルオープン.                                   
002070*                                                                 
002080*--< 名称マスタ(資産名)ファイル読込(１件目) >                     
002090     PERFORM  入力ファイル読込.                                   
002100*                                                                 
002110*--< テーブルカーソル定義 >                                       
002120     PERFORM  テーブルカーソル定義.                               
002130*                                                                 
002140*--< テーブルカーソル読込(１件目) >                               
002150     PERFORM  テーブルカーソル読込.                               
002160*                                                                 
002170 初期処理－ＥＸＩＴ.                                              
002180     EXIT.                                                        
002190******************************************************************
002200*   主処理                                                       *
002210******************************************************************
002220 主処理                               SECTION.                    
002230 主処理－ＳＴＡＲＴ.                                              
002240*                                                                 
002250     EVALUATE  TRUE                                               
002260*--<    名称マスタ(資産名)ファイルのみの場合 >                    
002270        WHEN  Ｗ－資産コード１         >   Ｗ－資産コード２       
002280           PERFORM  テーブルカーソル読込                          
002290*                                                                 
002300*--<    マッチングの場合 >                                        
002310        WHEN  Ｗ－資産コード１        =   Ｗ－資産コード２        
002320*                                                                 
002330           PERFORM   編集出力処理                                 
002340*                                                                 
002350           PERFORM   入力ファイル読込                             
002360*                                                                 
002370           PERFORM   テーブルカーソル読込                         
002380*--<    コードマスタ(耐用年数)のみの場合 >                        
002390        WHEN   Ｗ－資産コード１       <   Ｗ－資産コード２        
002400           MOVE  ZERO                 TO  Ｄ１２－適用年月日      
002410*                                                                 
002420           MOVE   -50                 TO  Ｗ－エラーコード        
002430           PERFORM  エラー処理                                    
002440*                                                                 
002450           PERFORM   入力ファイル読込                             
002460     END-EVALUATE.                                                
002470*                                                                 
002480 主処理－ＥＸＩＴ.                                                
002490     EXIT.                                                        
002500******************************************************************
002510*    終了処理                                                    *
002520******************************************************************
002530 終了処理                             SECTION.                    
002540 終了処理－ＳＴＡＲＴ.                                            
002550*                                                                 
002560     PERFORM  ＤＢクローズ処理.                                   
002570*                                                                 
002580     PERFORM  ＤＢコミット処理.                                   
002590*                                                                 
002600     CLOSE  入力ファイル.                                         
002610*                                                                 
002620     PERFORM  終了メッセージ出力処理.                             
002630*                                                                 
002640*--< プログラム正常終了 >                                         
002650     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
002660*                                                                 
002670 終了処理－ＥＸＩＴ.                                              
002680     EXIT.                                                        
002690******************************************************************
002700*    ＯＲＡＣＬＥ接続                                            *
002710******************************************************************
002720 ＯＲＡＣＬＥ接続                     SECTION.                    
002730 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
002740*                                                                 
002750*--< ＤＢ接続用情報を取得処理 >                                   
002760     CALL  COBCO001                USING  PARA-AREA.              
002770*                                                                 
002780     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002790     MOVE  PARA-USERNAME              TO  USERNAME.               
002800     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002810*                                                                 
002820*----------------------------------------------------------------*
002830*    開始接続                                                    *
002840*----------------------------------------------------------------*
002850     IF    DB-STRING  =  SPACE                                    
002860        
      *       EXEC SQL                                                  
002870*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002880*       END-EXEC 
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
002890     ELSE                                                         
002900        
      *       EXEC SQL                                                  
002910*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002920*            USING  :DB-STRING                                    
002930*       END-EXEC 
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
002940     END-IF.                                                      
002950*                                                                 
002960*----------------------------------------------------------------*
002970*    接続確認                                                    *
002980*----------------------------------------------------------------*
002990     EVALUATE  SQLCODE                                            
003000        WHEN   定数－ＳＱＬＯＫ                                   
003010           CONTINUE                                               
003020        WHEN   OTHER                                              
003030*--<       接続エラー >                                           
003040           MOVE     -10               TO  Ｗ－エラーコード        
003050           PERFORM  エラー処理                                    
003060     END-EVALUATE.                                                
003070*                                                                 
003080 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
003090     EXIT.                                                        
003100******************************************************************
003110*    ファイルオープン                                            *
003120******************************************************************
003130 ファイルオープン             SECTION.                            
003140 ファイルオープン－ＳＴＡＲＴ.                                    
003150*                                                                 
003160     OPEN  INPUT   入力ファイル.                                  
003170*                                                                 
003180*----------------------------------------------------------------*
003190*    Ｗ－状態判定                                                *
003200*----------------------------------------------------------------*
003210     EVALUATE  Ｗ－状態                                           
003220        WHEN  ZERO                                                
003230           CONTINUE                                               
003240        WHEN  OTHER                                               
003250*--<       ファイルオープンエラー >                               
003260           MOVE     1                 TO  Ｗ－エラーコード        
003270           PERFORM  エラー処理                                    
003280     END-EVALUATE.                                                
003290*                                                                 
003300 ファイルオープン－ＥＸＩＴ.                                      
003310     EXIT.                                                        
003320******************************************************************
003330*   名称マスタ(資産名)ファイル読込処理                           *
003340******************************************************************
003350 入力ファイル読込                     SECTION.                    
003360 入力ファイル読込－ＳＴＡＲＴ.                                    
003370     READ  入力ファイル                                           
003380        AT  END                                                   
003390            MOVE  "Y"  TO  Ｗ－終了－フラグ１                     
003400            GO  TO  入力ファイル読込－ＥＸＩＴ                    
003410     END-READ.                                                    
003420*--< ファイル読込状態判定>                                        
003430     EVALUATE Ｗ－状態                                            
003440        WHEN ZERO                                                 
003450*--<       正常 >                                                 
003460           MOVE  入力－資産コード     TO  Ｗ－資産コード１        
003470           MOVE  入力－識別コード     TO  Ｗ－識別コード１        
003480*--<       ファイル入力件数を加算>                                
003490           COMPUTE  Ｗ－入力－件数１ =  Ｗ－入力－件数１ + 1      
003500        WHEN OTHER                                                
003510*--<       ファイル読込エラー>                                    
003520           MOVE 2                     TO Ｗ－エラーコード         
003530           PERFORM エラー処理                                     
003540     END-EVALUATE.                                                
003550*                                                                 
003560*--<  取得判定処理 >                                              
003570     IF  Ｗ－識別コード１ = "0010"                                
003580        CONTINUE                                                  
003590     ELSE                                                         
003600        PERFORM  入力ファイル読込                                 
003610     END-IF.                                                      
003620 入力ファイル読込－ＥＸＩＴ.                                      
003630     EXIT.                                                        
003640******************************************************************
003650*    テーブルカーソル定義                                        *
003660******************************************************************
003670 テーブルカーソル定義                 SECTION.                    
003680 テーブルカーソル定義－ＳＴＡＲＴ.                                
003690*                                                                 
003700*----------------------------------------------------------------*
003710*    カーソルＯＰＥＮ処理                                        *
003720*----------------------------------------------------------------*
003730     
      *    EXEC SQL                                                     
003740*       DECLARE CUR1  CURSOR FOR                                  
003750*          SELECT  LTRCDM0010.資産コード                          
003760*                 ,LTRCDM0010.識別コード                          
003770*                 ,適用年月日ＦＲＯＭ＿年月日１                   
003780*                 ,適用年月日ＦＲＯＭ＿年月日２                   
003790*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿年月日３        
003800*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿年月日４        
003810*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿年月日５        
003820*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿世紀１          
003830*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿世紀２          
003840*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿世紀３          
003850*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿世紀４          
003860*                 ,LTRCDM0010.適用年月日ＦＲＯＭ＿世紀５          
003870*                 ,LTRCDM0010.耐用年数１                          
003880*                 ,LTRCDM0010.耐用年数２                          
003890*                 ,LTRCDM0010.耐用年数３                          
003900*                 ,LTRCDM0010.耐用年数４                          
003910*                 ,LTRCDM0010.耐用年数５                          
003920*           FROM   LTRCDM0010                                     
003930*          WHERE   LTRCDM0010.識別コード = '0010'                 
003940*       ORDER BY   LTRCDM0010.資産コード                          
003950*     END-EXEC.
003960*                                                                 
003970*----------------------------------------------------------------*
003980*    カーソルＯＰＥＮ処理                                        *
003990*----------------------------------------------------------------*
004000     
      *    EXEC  SQL                                                    
004010*       OPEN  CUR1                                                
004020*    END-EXEC.
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
004030*                                                                 
004040*----------------------------------------------------------------*
004050*    カーソルＯＰＥＮ確認                                        *
004060*----------------------------------------------------------------*
004070*                                                                 
004080     EVALUATE  SQLCODE                                            
004090        WHEN  定数－ＳＱＬＯＫ                                    
004100*--<       正常 >                                                 
004110           CONTINUE                                               
004120        WHEN  OTHER                                               
004130*--<       カーソルＯＰＥＮエラー >                               
004140           MOVE -20                   TO  Ｗ－エラーコード        
004150           PERFORM  エラー処理                                    
004160     END-EVALUATE.                                                
004170 テーブルカーソル定義－ＥＸＩＴ.                                  
004180     EXIT.                                                        
004190******************************************************************
004200*    テーブルカーソル読込                                        *
004210******************************************************************
004220 テーブルカーソル読込                 SECTION.                    
004230 テーブルカーソル読込－ＳＴＡＲＴ.                                
004240*                                                                 
004250*--< テーブルカーソル読込 >                                       
004260     
      *    EXEC SQL                                                     
004270*        FETCH  CUR1                                              
004280*         INTO :ＬＴＲＣＤＭ００１０－資産コード                  
004290*             ,:ＬＴＲＣＤＭ００１０－識別コード                  
004300*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日１
004310*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日２
004320*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日３
004330*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日４
004340*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日５
004350*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀１  
004360*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀２  
004370*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀３  
004380*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀４  
004390*             ,:ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀５  
004400*             ,:ＬＴＲＣＤＭ００１０－耐用年数１                  
004410*             ,:ＬＴＲＣＤＭ００１０－耐用年数２                  
004420*             ,:ＬＴＲＣＤＭ００１０－耐用年数３                  
004430*             ,:ＬＴＲＣＤＭ００１０－耐用年数４                  
004440*             ,:ＬＴＲＣＤＭ００１０－耐用年数５                  
004450*     END-EXEC.
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
               ＬＴＲＣＤＭ００１０－資産コード
               SQL-SQHSTV(1)
           MOVE 7 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－識別コード
               SQL-SQHSTV(2)
           MOVE 4 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日１
               SQL-SQHSTV(3)
           MOVE 6 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日２
               SQL-SQHSTV(4)
           MOVE 6 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日３
               SQL-SQHSTV(5)
           MOVE 6 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日４
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日５
               SQL-SQHSTV(7)
           MOVE 6 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀１
               SQL-SQHSTV(8)
           MOVE 1 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀２
               SQL-SQHSTV(9)
           MOVE 1 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀３
               SQL-SQHSTV(10)
           MOVE 1 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀４
               SQL-SQHSTV(11)
           MOVE 1 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀５
               SQL-SQHSTV(12)
           MOVE 1 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－耐用年数１
               SQL-SQHSTV(13)
           MOVE 2 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－耐用年数２
               SQL-SQHSTV(14)
           MOVE 2 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－耐用年数３
               SQL-SQHSTV(15)
           MOVE 2 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－耐用年数４
               SQL-SQHSTV(16)
           MOVE 2 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               ＬＴＲＣＤＭ００１０－耐用年数５
               SQL-SQHSTV(17)
           MOVE 2 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
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
004460*                                                                 
004470*----------------------------------------------------------------*
004480*    テーブルカーソル読込を確認                                  *
004490*----------------------------------------------------------------*
004500     EVALUATE  SQLCODE                                            
004510        WHEN  定数－ＳＱＬＯＫ                                    
004520*--<       正常 >                                                 
004530           MOVE  ＬＴＲＣＤＭ００１０－資産コード                 
004540                                      TO  Ｗ－資産コード２        
004550           MOVE  ＬＴＲＣＤＭ００１０－識別コード                 
004560                                      TO  Ｗ－識別コード２        
004570*--<       入力件数を加算>                                        
004580           COMPUTE  Ｗ－入力－件数２ =  Ｗ－入力－件数２ + 1      
004590        WHEN   定数－ＳＱＬＥＮＤ                                 
004600*--<       読込終了 >                                             
004610           MOVE  "Y"                  TO  Ｗ－終了－フラグ２      
004620           MOVE  HIGH-VALUE           TO  Ｗ－資産コード２        
004630        WHEN  OTHER                                               
004640*--<       カーソル読込エラー >                                   
004650           MOVE -30                   TO  Ｗ－エラーコード        
004660           PERFORM  エラー処理                                    
004670     END-EVALUATE.                                                
004680 テーブルカーソル読込－ＥＸＩＴ.                                  
004690     EXIT.                                                        
004700******************************************************************
004710*    編集出力処理                                                *
004720******************************************************************
004730 編集出力処理                         SECTION.                    
004740 編集出力処理－ＳＴＡＲＴ.                                        
004750*                                                                 
004760     PERFORM  資産分類名称取得処理.                               
004770*                                                                 
004780*--< Ｗ－適耐年月日、Ｗ－耐用年数項目取得 >                       
004790     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日１     
004800                                      TO  Ｗ－適耐年月日(1).      
004810     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日２     
004820                                      TO  Ｗ－適耐年月日(2).      
004830     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日３     
004840                                      TO  Ｗ－適耐年月日(3).      
004850     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日４     
004860                                      TO  Ｗ－適耐年月日(4).      
004870     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－年月日５     
004880                                      TO  Ｗ－適耐年月日(5).      
004890     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀１       
004900                                      TO  Ｗ－世紀Ｍ(1).          
004910     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀２       
004920                                      TO  Ｗ－世紀Ｍ(2).          
004930     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀３       
004940                                      TO  Ｗ－世紀Ｍ(3).          
004950     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀４       
004960                                      TO  Ｗ－世紀Ｍ(4).          
004970     MOVE  ＬＴＲＣＤＭ００１０－適用年月日ＦＲＯＭ－世紀５       
004980                                      TO  Ｗ－世紀Ｍ(5).          
004990     MOVE  ＬＴＲＣＤＭ００１０－耐用年数１                       
005000                                      TO  Ｗ－耐用年数(1).        
005010     MOVE  ＬＴＲＣＤＭ００１０－耐用年数２                       
005020                                      TO  Ｗ－耐用年数(2).        
005030     MOVE  ＬＴＲＣＤＭ００１０－耐用年数３                       
005040                                      TO  Ｗ－耐用年数(3).        
005050     MOVE  ＬＴＲＣＤＭ００１０－耐用年数４                       
005060                                      TO  Ｗ－耐用年数(4).        
005070     MOVE  ＬＴＲＣＤＭ００１０－耐用年数５                       
005080                                      TO  Ｗ－耐用年数(5).        
005090*                                                                 
005100*--< 初期化処理 >                                                 
005110     MOVE  SPACE                 TO  資産種類マスタ.              
005120     INITIALIZE                      資産種類マスタ.              
005130*                                                                 
005140     PERFORM  資産種類マスタ項目編集出力処理        VARYING       
005150                                      I FROM 1 BY 1 UNTIL I > 5.  
005160*                                                                 
005170 編集出力処理－ＥＸＩＴ.                                          
005180     EXIT.                                                        
005190******************************************************************
005200*    資産種類マスタ項目編集出力処理                              *
005210******************************************************************
005220 資産種類マスタ項目編集出力処理       SECTION.                    
005230 資産種類マスタ項目編集出力処理－ＳＴＡＲＴ.                      
005240*                                                                 
005250*----------------------------------------------------------------*
005260*    日付処理                                                    *
005270*----------------------------------------------------------------*
005280     IF  Ｗ－適耐年月日(I)            =   ZERO                    
005290        MOVE  ZERO                     TO                         
005300                                         Ｗ－適用年月日ＦＲＯＭ(I)
005310     ELSE                                                         
005320        IF Ｗ－世紀Ｍ(I)              =   0                       
005330           MOVE  "19"                 TO  Ｗ－適耐世紀(I)         
005340        ELSE                                                      
005350           MOVE  "20"                 TO  Ｗ－適耐世紀(I)         
005360     END-IF.                                                      
005370     MOVE  Ｗ－適用年月日ＦＲＯＭ(I)  TO  Ｗ－適用年月日.         
005380*                                                                 
005390     MOVE  Ｗ－耐用年数(I)            TO  Ｗ－耐用年数Ｍ.         
005400*                                                                 
005410*----------------------------------------------------------------*
005420*    資産種類マスタ項目編集処理                                  *
005430*----------------------------------------------------------------*
005440*--< No.01 >                                                      
005450     MOVE  入力－資産コード           TO  Ｄ１２－資産種類.       
005460*                                                                 
005470*--< No.02 >                                                      
005480     MOVE  Ｗ－適用年月日             TO  Ｄ１２－適用年月日.     
005490*                                                                 
005500*--< No.03 >                                                      
005510     MOVE  Ｗ－資産大分類名称         TO  Ｄ１２－資産大分類名称. 
005520*                                                                 
005530*--< No.04 >                                                      
005540     MOVE  入力－名称                 TO  Ｄ１２－資産名称.       
005550*                                                                 
005560*--< No.05 >                                                      
005570     MOVE   Ｗ－耐用年数Ｍ            TO   Ｄ１２－耐用年数.      
005580*                                                                 
005590*--< No.06 >                                                      
005600     MOVE  ZERO                       TO  Ｄ１２－税法区分.       
005610*                                                                 
005620*--< No.07 >                                                      
005630     MOVE  ZERO                       TO  Ｄ１２－更新日時.       
005640*                                                                 
005650*--< No.08 >                                                      
005660     MOVE  Ｗ－更新者                 TO  Ｄ１２－更新者.         
005670*                                                                 
005680*--< No.09 >                                                      
005690     MOVE  ZERO                       TO  Ｄ１２－申告用判定コード.
005700*                                                                 
005710*--< No.10 >                                                      
005720     MOVE  ZERO                       TO  Ｄ１２－開示用判定コード.
005730*                                                                 
005740*--< No.11 >                                                      
005750     MOVE  ZERO                       TO                          
005760                                      Ｄ１２－年次統計用判定コード.
005770*                                                                 
005780*--< No.12 >                                                      
005790     MOVE  Ｗ－担当者                 TO  Ｄ１２－入力担当者コード.
005800*                                                                 
005810*--< No.13 >                                                      
005820     MOVE  入力－名称カナ             TO  Ｄ１２－資産名称カナ.   
005830*                                                                 
005840*--< No.14 >                                                      
005850     MOVE  入力－略称                 TO  Ｄ１２－資産略称.       
005860*                                                                 
005870*--< No.15 >                                                      
005880     MOVE  入力－略称カナ             TO  Ｄ１２－資産略称カナ.   
005890*                                                                 
005900*--< No.16 >                                                      
005910     MOVE  Ｗ－システム日付           TO  Ｄ１２－登録年月日.     
005920*                                                                 
005930*--< No.17 >                                                      
005940     MOVE  Ｗ－システム時刻           TO  Ｄ１２－登録時間.       
005950*                                                                 
005960*--< No.18 >                                                      
005970     MOVE  Ｗ－登録担当者             TO  Ｄ１２－登録担当者.     
005980*                                                                 
005990*--< No.19 >                                                      
006000     MOVE  Ｗ－システム日付           TO  Ｄ１２－更新年月日.     
006010*                                                                 
006020*--< No.20 >                                                      
006030     MOVE  Ｗ－システム時刻           TO  Ｄ１２－更新時間.       
006040*----------------------------------------------------------------*
006050*    資産種類マスタ項目出力処理                                  *
006060*----------------------------------------------------------------*
006070*                                                                 
006080     IF  Ｄ１２－適用年月日  NOT =  ZERO                          
006090        PERFORM  出力処理                                         
006100     END-IF.                                                      
006110 資産種類マスタ項目編集出力処理－ＥＸＩＴ.                        
006120     EXIT.                                                        
006130******************************************************************
006140*    No.03.資産分類名称取得処理                                  *
006150******************************************************************
006160 資産分類名称取得処理                 SECTION.                    
006170 資産分類名称取得処理－ＳＴＡＲＴ.                                
006180*                                                                 
006190     MOVE 入力－資産コード            TO Ｗ－資産分類名称ＦＬＡＧ.
006200     EVALUATE   Ｗ－資産分類名称ＦＬＡＧ                          
006210*                                                                 
006220        WHEN  "0"                                                 
006230           MOVE  "無形資産"      TO  Ｗ－資産大分類名称           
006240*                                                                 
006250        WHEN  "1"                                                 
006260           MOVE  "建物"          TO  Ｗ－資産大分類名称           
006270*                                                                 
006280        WHEN  "2"                                                 
006290           MOVE  "建物付属設備"  TO  Ｗ－資産大分類名称           
006300*                                                                 
006310        WHEN  "3"                                                 
006320            MOVE  "構築物"        TO  Ｗ－資産大分類名称          
006330*                                                                 
006340        WHEN  "4"                                                 
006350           MOVE  "船舶"          TO  Ｗ－資産大分類名称           
006360*                                                                 
006370        WHEN  "5"                                                 
006380           MOVE  "航空機"        TO  Ｗ－資産大分類名称           
006390*                                                                 
006400        WHEN  "6"                                                 
006410           MOVE "車両及び運搬具" TO  Ｗ－資産大分類名称           
006420*                                                                 
006430        WHEN  "7"                                                 
006440           MOVE  "工具"          TO  Ｗ－資産大分類名称           
006450*                                                                 
006460        WHEN  "8"                                                 
006470           MOVE  "器具及び備品"  TO  Ｗ－資産大分類名称           
006480*                                                                 
006490        WHEN  OTHER                                               
006500           MOVE  SPACE           TO  Ｗ－資産大分類名称           
006510     END-EVALUATE.                                                
006520 資産分類名称取得処理－ＥＸＩＴ.                                  
006530     EXIT.                                                        
006540******************************************************************
006550*    出力処理                                                    *
006560******************************************************************
006570 出力処理               SECTION.                                  
006580 出力処理－ＳＴＡＲＴ.                                            
006590*                                                                 
006600       
      *      EXEC  SQL                                                  
006610*       INSERT  INTO  D12SIB_TBL                                  
006620*          ( 資産種類                                             
006630*           ,適用年月日                                           
006640*           ,資産大分類名称                                       
006650*           ,資産名称                                             
006660*           ,耐用年数                                             
006670*           ,税法区分                                             
006680*           ,更新日時                                             
006690*           ,更新者                                               
006700*           ,申告用判定コード                                     
006710*           ,開示用判定コード                                     
006720*           ,年次統計用判定コード                                 
006730*           ,入力担当者コード                                     
006740*           ,資産名称カナ                                         
006750*           ,資産略称                                             
006760*           ,資産略称カナ                                         
006770*           ,登録年月日                                           
006780*           ,登録時間                                             
006790*           ,登録担当者                                           
006800*           ,更新年月日                                           
006810*           ,更新時間)                                            
006820*      VALUES                                                     
006830*          ( :Ｄ１２－資産種類                                    
006840*           ,:Ｄ１２－適用年月日                                  
006850*           ,:Ｄ１２－資産大分類名称                              
006860*           ,:Ｄ１２－資産名称                                    
006870*           ,:Ｄ１２－耐用年数                                    
006880*           ,:Ｄ１２－税法区分                                    
006890*           ,:Ｄ１２－更新日時                                    
006900*           ,:Ｄ１２－更新者                                      
006910*           ,:Ｄ１２－申告用判定コード                            
006920*           ,:Ｄ１２－開示用判定コード                            
006930*           ,:Ｄ１２－年次統計用判定コード                        
006940*           ,:Ｄ１２－入力担当者コード                            
006950*           ,:Ｄ１２－資産名称カナ                                
006960*           ,:Ｄ１２－資産略称                                    
006970*           ,:Ｄ１２－資産略称カナ                                
006980*           ,:Ｄ１２－登録年月日                                  
006990*           ,:Ｄ１２－登録時間                                    
007000*           ,:Ｄ１２－登録担当者                                  
007010*           ,:Ｄ１２－更新年月日                                  
007020*           ,:Ｄ１２－更新時間)                                   
007030*    END-EXEC.
             CALL "SQLADR" USING SQ0002 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 165 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 Ｄ１２－資産種類 IN
                 資産種類マスタ
                 SQL-SQHSTV(1)
             MOVE 7 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 Ｄ１２－適用年月日 IN
                 資産種類マスタ
                 SQL-SQHSTV(2)
             MOVE 8 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 Ｄ１２－資産大分類名称 IN
                 資産種類マスタ
                 SQL-SQHSTV(3)
             MOVE 40 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 Ｄ１２－資産名称 IN
                 資産種類マスタ
                 SQL-SQHSTV(4)
             MOVE 60 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 Ｄ１２－耐用年数 IN
                 資産種類マスタ
                 SQL-SQHSTV(5)
             MOVE 2 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 Ｄ１２－税法区分 IN
                 資産種類マスタ
                 SQL-SQHSTV(6)
             MOVE 1 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 Ｄ１２－更新日時 IN
                 資産種類マスタ
                 SQL-SQHSTV(7)
             MOVE 16 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 Ｄ１２－更新者 IN
                 資産種類マスタ
                 SQL-SQHSTV(8)
             MOVE 8 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 Ｄ１２－申告用判定コード IN
                 資産種類マスタ
                 SQL-SQHSTV(9)
             MOVE 1 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 Ｄ１２－開示用判定コード IN
                 資産種類マスタ
                 SQL-SQHSTV(10)
             MOVE 1 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 Ｄ１２－年次統計用判定コード IN
                 資産種類マスタ
                 SQL-SQHSTV(11)
             MOVE 1 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 Ｄ１２－入力担当者コード IN
                 資産種類マスタ
                 SQL-SQHSTV(12)
             MOVE 8 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 Ｄ１２－資産名称カナ IN
                 資産種類マスタ
                 SQL-SQHSTV(13)
             MOVE 40 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 Ｄ１２－資産略称 IN
                 資産種類マスタ
                 SQL-SQHSTV(14)
             MOVE 10 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 Ｄ１２－資産略称カナ IN
                 資産種類マスタ
                 SQL-SQHSTV(15)
             MOVE 12 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 Ｄ１２－登録年月日 IN
                 資産種類マスタ
                 SQL-SQHSTV(16)
             MOVE 8 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
             CALL "SQLADR" USING
                 Ｄ１２－登録時間 IN
                 資産種類マスタ
                 SQL-SQHSTV(17)
             MOVE 8 TO SQL-SQHSTL(17)
             MOVE 0 TO SQL-SQHSTS(17)
             MOVE 0 TO SQL-SQINDV(17)
             MOVE 0 TO SQL-SQINDS(17)
             MOVE 0 TO SQL-SQHARM(17)
             CALL "SQLADR" USING
                 Ｄ１２－登録担当者 IN
                 資産種類マスタ
                 SQL-SQHSTV(18)
             MOVE 8 TO SQL-SQHSTL(18)
             MOVE 0 TO SQL-SQHSTS(18)
             MOVE 0 TO SQL-SQINDV(18)
             MOVE 0 TO SQL-SQINDS(18)
             MOVE 0 TO SQL-SQHARM(18)
             CALL "SQLADR" USING
                 Ｄ１２－更新年月日 IN
                 資産種類マスタ
                 SQL-SQHSTV(19)
             MOVE 8 TO SQL-SQHSTL(19)
             MOVE 0 TO SQL-SQHSTS(19)
             MOVE 0 TO SQL-SQINDV(19)
             MOVE 0 TO SQL-SQINDS(19)
             MOVE 0 TO SQL-SQHARM(19)
             CALL "SQLADR" USING
                 Ｄ１２－更新時間 IN
                 資産種類マスタ
                 SQL-SQHSTV(20)
             MOVE 8 TO SQL-SQHSTL(20)
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
007040*                                                                 
007050*----------------------------------------------------------------*
007060*    追加処理を確認                                              *
007070*----------------------------------------------------------------*
007080     EVALUATE  SQLCODE                                            
007090        WHEN   定数－ＳＱＬＯＫ                                   
007100*--<       追加成功 >                                             
007110           COMPUTE  Ｗ－出力－件数  =  Ｗ－出力－件数  +  1       
007120        WHEN   OTHER                                              
007130*--<       追加処理エラー >                                       
007140           MOVE     -40               TO  Ｗ－エラーコード        
007150           PERFORM  エラー処理                                    
007160     END-EVALUATE.                                                
007170*                                                                 
007180 出力処理－ＥＸＩＴ.                                              
007190     EXIT.                                                        
007200******************************************************************
007210*    ＤＢクローズ処理                                            *
007220******************************************************************
007230 ＤＢクローズ処理                     SECTION.                    
007240 ＤＢクローズ処理－ＳＴＡＲＴ.                                    
007250*                                                                 
007260*--< カーソルのクローズ >                                         
007270     
      *    EXEC  SQL                                                    
007280*       CLOSE  CUR1                                               
007290*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 260 TO SQL-OFFSET
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
007300*                                                                 
007310 ＤＢクローズ処理－ＥＸＩＴ.                                      
007320     EXIT.                                                        
007330******************************************************************
007340*    ＤＢコミット処理                                            *
007350******************************************************************
007360 ＤＢコミット処理                     SECTION.                    
007370 ＤＢコミット処理－ＳＴＡＲＴ.                                    
007380*                                                                 
007390     
      *    EXEC  SQL                                                    
007400*       COMMIT  WORK  RELEASE                                     
007410*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 275 TO SQL-OFFSET
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
007420*                                                                 
007430     INITIALIZE                       IF-CHOCO001.                
007440     MOVE  "3"                        TO  共１－イベント種別.     
007450     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007460     MOVE  "0"                        TO  共１－復帰コード.       
007470     MOVE  "COMMIT"                   TO  共１－処理識別.         
007480     MOVE  "コミット実施"             TO  共１－その他メッセージ. 
007490     CALL  CLOCO001                USING  IF-CHOCO001.            
007500*                                                                 
007510 ＤＢコミット処理－ＥＸＩＴ.                                      
007520     EXIT.                                                        
007530******************************************************************
007540*    ＤＢロールバック処理                                        *
007550******************************************************************
007560 ＤＢロールバック処理                 SECTION.                    
007570 ＤＢロールバック処理－ＳＴＡＲＴ.                                
007580*                                                                 
007590     
      *    EXEC  SQL                                                    
007600*       ROLLBACK WORK  RELEASE                                    
007610*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 290 TO SQL-OFFSET
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
007620*                                                                 
007630     INITIALIZE                       IF-CHOCO001.                
007640     MOVE  "1"                        TO  共１－イベント種別.     
007650     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007660     MOVE  "9"                        TO  共１－復帰コード.       
007670     MOVE  "ROLLBACK"                 TO  共１－処理識別.         
007680     MOVE  "ロールバック実施"         TO  共１－その他メッセージ. 
007690     CALL  CLOCO001                USING  IF-CHOCO001.            
007700*                                                                 
007710 ＤＢロールバック処理－ＥＸＩＴ.                                  
007720     EXIT.                                                        
007730******************************************************************
007740*    終了メッセージ出力処理                                      *
007750******************************************************************
007760 終了メッセージ出力処理               SECTION.                    
007770 終了メッセージ出力処理－ＳＴＡＲＴ.                              
007780*                                                                 
007790*----------------------------------------------------------------*
007800*   名称マスタ(資産名)読込件数                                   *
007810*----------------------------------------------------------------*
007820     INITIALIZE                       IF-CHOCO001.                
007830     MOVE  "3"                        TO  共１－イベント種別.     
007840     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007850     MOVE  "0"                        TO  共１－復帰コード.       
007860     MOVE  "FFUIS250"                 TO  共１－処理テーブルＩＤ. 
007870     MOVE  "COUNT"                    TO  共１－処理識別.         
007880     MOVE  Ｗ－入力－件数１           TO  共１－データ内容.       
007890     MOVE  "名称マスタ(資産名)読込件数"                           
007900                                      TO  共１－その他メッセージ. 
007910     CALL  CLOCO001                USING  IF-CHOCO001.            
007920*                                                                 
007930*----------------------------------------------------------------*
007940*    コードマスタ(耐用年数)読込件数                              *
007950*----------------------------------------------------------------*
007960     INITIALIZE                       IF-CHOCO001.                
007970     MOVE  "3"                        TO  共１－イベント種別.     
007980     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007990     MOVE  "0"                        TO  共１－復帰コード.       
008000     MOVE  "LTRCDM"                   TO  共１－処理テーブルＩＤ. 
008010     MOVE  "COUNT"                    TO  共１－処理識別.         
008020     MOVE  Ｗ－入力－件数２           TO  共１－データ内容.       
008030     MOVE  "コードマスタ(耐用年数)読込件数"                        
008040                                      TO  共１－その他メッセージ. 
008050     CALL  CLOCO001                USING  IF-CHOCO001.            
008060*                                                                 
008070*----------------------------------------------------------------*
008080*    資産種類出力件数                                            *
008090*----------------------------------------------------------------*
008100     INITIALIZE                       IF-CHOCO001.                
008110     MOVE  "3"                        TO  共１－イベント種別.     
008120     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
008130     MOVE  "0"                        TO  共１－復帰コード.       
008140     MOVE  "D12SIB"                   TO  共１－処理テーブルＩＤ. 
008150     MOVE  "COUNT"                    TO  共１－処理識別.         
008160     MOVE  Ｗ－出力－件数             TO  共１－データ内容.       
008170     MOVE  "資産種類出力件数"         TO  共１－その他メッセージ. 
008180     CALL  CLOCO001                USING  IF-CHOCO001.            
008190*                                                                 
008200*----------------------------------------------------------------*
008210*    終了メッセージ 出力                                         *
008220*----------------------------------------------------------------*
008230     INITIALIZE                       IF-CHOCO001.                
008240     MOVE  "3"                        TO  共１－イベント種別.     
008250     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
008260     MOVE  "0"                        TO  共１－復帰コード.       
008270     MOVE  "END"                      TO  共１－処理識別.         
008280     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
008290     CALL  CLOCO001                USING  IF-CHOCO001.            
008300*                                                                 
008310 終了メッセージ出力処理－ＥＸＩＴ.                                
008320     EXIT.                                                        
008330******************************************************************
008340*    エラー処理                                                  *
008350******************************************************************
008360 エラー処理                           SECTION.                    
008370 エラー処理－ＳＴＡＲＴ.                                          
008380*                                                                 
008390     MOVE  "Y"                        TO  Ｗ－異常終了－フラグ.   
008400     INITIALIZE                       IF-CHOCO001.                
008410*                                                                 
008420     EVALUATE  Ｗ－エラーコード                                   
008430        WHEN  1                                                   
008440*--<       ファイルオープンエラー >                               
008450           MOVE  "1"                  TO  共１－イベント種別      
008460           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008470           MOVE  "9"                  TO  共１－復帰コード        
008480           MOVE  "FFUIS250"           TO  共１－処理テーブルＩＤ  
008490           MOVE  "OPEN"               TO  共１－処理識別          
008500           MOVE  Ｗ－状態             TO  共１－データ内容        
008510           MOVE  "名称マスタ(資産名)" TO  共１－その他メッセージ  
008520           CALL  CLOCO001          USING  IF-CHOCO001             
008530*                                                                 
008540        WHEN  2                                                   
008550*--<       ファイル出力エラー >                                   
008560           MOVE  "1"                  TO  共１－イベント種別      
008570           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008580           MOVE  "9"                  TO  共１－復帰コード        
008590           MOVE  "FFUIS250"           TO  共１－処理テーブルＩＤ  
008600           MOVE  "READ"               TO  共１－処理識別          
008610           MOVE  Ｗ－状態             TO  共１－データ内容        
008620           MOVE  "名称マスタ(資産名)" TO  共１－その他メッセージ  
008630           CALL  CLOCO001          USING  IF-CHOCO001             
008640*                                                                 
008650        WHEN  -10                                                 
008660*--<       ＯＲＡＣＬＥ接続失敗 >                                 
008670           MOVE  "1"                  TO  共１－イベント種別      
008680           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008690           MOVE  "9"                  TO  共１－復帰コード        
008700           MOVE  "CONNECT"            TO  共１－処理識別          
008710           MOVE  SQLCODE              TO  共１－データ内容        
008720           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008730           CALL  CLOCO001          USING  IF-CHOCO001             
008740*                                                                 
008750        WHEN  -20                                                 
008760*--<       テーブルカーソルオープン失敗 >                         
008770           MOVE  "1"                  TO  共１－イベント種別      
008780           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008790           MOVE  "9"                  TO  共１－復帰コード        
008800           MOVE  "LTRCDM"             TO  共１－処理テーブルＩＤ  
008810           MOVE  "OPEN"               TO  共１－処理識別          
008820           MOVE  SQLCODE              TO  共１－データ内容        
008830           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008840           CALL  CLOCO001          USING  IF-CHOCO001             
008850*                                                                 
008860        WHEN  -30                                                 
008870*--<       テーブルカーソルオープン失敗 >                         
008880           MOVE  "1"                  TO  共１－イベント種別      
008890           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008900           MOVE  "9"                  TO  共１－復帰コード        
008910           MOVE  "LTRCDM"             TO  共１－処理テーブルＩＤ  
008920           MOVE  "FETCH"              TO  共１－処理識別          
008930           MOVE  SQLCODE              TO  共１－データ内容        
008940           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008950           CALL  CLOCO001          USING  IF-CHOCO001             
008960*                                                                 
008970        WHEN  -40                                                 
008980*--<       資産種類マスタＤＢ追加失敗 >                           
008990           MOVE  "1"                  TO  共１－イベント種別      
009000           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
009010           MOVE  "9"                  TO  共１－復帰コード        
009020           MOVE  "D12SIB"             TO  共１－処理テーブルＩＤ  
009030           MOVE  "INSERT"             TO  共１－処理識別          
009040           MOVE  SQLCODE              TO  共１－データ内容        
009050           MOVE  SQLERRMC             TO  共１－その他メッセージ  
009060           CALL  CLOCO001          USING  IF-CHOCO001             
009070*                                                                 
009080        WHEN  -50                                                 
009090*--<       耐用年数を取得させるない >                            
009100           MOVE  "2"                  TO  共１－イベント種別      
009110           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
009120           MOVE  "9"                  TO  共１－復帰コード        
009130           MOVE  "LTRCDM"             TO  共１－処理テーブルＩＤ  
009140           MOVE  "SELECT"             TO  共１－処理識別          
009150           MOVE  "耐用年数を取得させるない"                       
009160                                      TO  共１－その他メッセージ  
009170           CALL  CLOCO001          USING  IF-CHOCO001             
009180           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
009190*                                                                 
009200        WHEN  OTHER                                               
009210           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
009220     END-EVALUATE.                                                
009230*                                                                 
009240     IF Ｗ－異常終了－フラグ  =  "Y"                              
009250        PERFORM  ＤＢロールバック処理                             
009260*                                                                 
009270        PERFORM  終了メッセージ出力処理                           
009280*                                                                 
009290*--<    プログラム異常終了のリターンコード >                      
009300        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
009310*                                                                 
009320        EXIT  PROGRAM                                             
009330     END-IF.                                                      
009340*                                                                 
009350 エラー処理－ＥＸＩＴ.                                            
009360      EXIT.                                                       
009370******************************************************************
009380*                  END OF PROGRAM                                *
009390******************************************************************
