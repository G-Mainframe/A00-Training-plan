000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名    ：資産情報移行<SUMMIT>                 *
000040*      2. プログラムID    ：COBIS770                             *
000050*      3. 処理概要        ：資産明細、新物件番号採番テーブルより *
000060*                           資産情報テーブルを更新する           *
000070*      4. 作成者          ：劉  忻                               *
000080*      5. 作成日          ：2005.04.05                           *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS770.                   
000170******************************************************************
000180*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    ＩＮＰＵＴ−ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000230******************************************************************
000240 INPUT-OUTPUT                         SECTION.                    
000250 FILE-CONTROL.                                                    
000260*                                                                 
000270     SELECT         入力ファイル      ASSIGN    TO   U01          
000280     FILE   STATUS    IS     Ｗ−状態                             
000290     ORGANIZATION   IS     LINE       SEQUENTIAL.                 
000300*                                                                 
000310******************************************************************
000320*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000330******************************************************************
000340 DATA                                 DIVISION.                   
000350******************************************************************
000360*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000370******************************************************************
000380 FILE                                 SECTION.                    
000390*----------------------------------------------------------------*
000400*    入力ファイル                                                *
000410*----------------------------------------------------------------*
000420 FD  入力ファイル                                                 
000430     LABEL  RECORD    IS              STANDARD                    
000440     BLOCK  CONTAINS  0               RECORDS.                    
000450*                                                                 
000460 01  入力−レコード.                                              
000470     COPY   CPBIS165   REPLACING      ==()==  BY  ==入力−==.     
000480*                                                                 
000490******************************************************************
000500*  ＷＯＲＫＩＮＧ−ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000510******************************************************************
000520 WORKING-STORAGE                      SECTION.                    
000530*----------------------------------------------------------------*
000540*    ホスト変数定義エリア                                        *
000550*----------------------------------------------------------------*
000560     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS770\CO
      -    "BIS770.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(99) VALUE "select 新物件番号   into :b1  fro
      -     "m IKOTBL010 where ((契約番号=:b2 and 物件番号=:b3) and 解約
      -    "日=:b4)".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(159) VALUE "update D921SIJ_TBL  set 動総保険
      -    "＿動総付保区分=:b1,動総保険＿付保日=:b2,動総保険＿動総付保開
      -    "始年月日=:b3,動総保険＿動総保険料=:b4,動総保険＿事故有無=:b5
      -     ",動総保".

           02  FILLER PIC X(160) VALUE  "険＿事故日=:b6,動総保険＿保険継
      -     "続=:b7,動総保険＿保険料率=:b8,動総保険＿保険価格=:b9,動総保
      -    "険＿返戻保険料=:b10,動総保険＿動総保険証券番号=:b11,動総保険
      -    "＿付保率=:".

           02  FILLER PIC X(160) VALUE "b12,動総保険＿継続リース償却対象
      -    "額=:b13,動総保険＿設置場所名カナ=:b14,信用保険＿信用保険会社
      -    "コード=:b15,信用保険＿機械類分類コード=:b16,信用保険＿通知書
      -    "発送日=:".

           02  FILLER PIC X(160) VALUE "b17,信用保険＿保険料=:b18,信用保
      -    "険＿符号=:b19,固定資産税＿前年度納付先コード=:b20,固定資産税
      -    "＿納付先コード=:b21,固定資産税＿年税額=:b22,固定資産税＿前年
      -    "度評価額".

           02  FILLER PIC X(160) VALUE "=:b23,固定資産税＿前年度理論簿価
      -    "=:b24,固定資産税＿当年度評価額=:b25,固定資産税＿当年度理論簿
      -    "価=:b26,会社理論＿償却停止フラグ=:b27,会社理論＿償却停止日=:
      -    "b28,会社".

           02  FILLER PIC X(160) VALUE "理論＿前期末簿価=:b29,会社理論＿
      -    "前期迄償却額累計=:b30,会社理論＿前月迄償却額累計=:b31,会社理
      -    "論＿現在簿価=:b32,会社理論＿除却簿価=:b33,会社理論＿当月迄償
      -    "却額累計".

           02  FILLER PIC X(160) VALUE "=:b34,会社理論＿当期償却額=:b35,
      -    "管理会計＿前期末簿価=:b36,管理会計＿前期迄償却額累計=:b37,管
      -    "理会計＿前月迄償却額累計=:b38,管理会計＿現在簿価=:b39,管理会
      -    "計＿当月".

           02  FILLER PIC X(160) VALUE "迄償却額累計=:b40,管理会計＿当期
      -    "償却額=:b41,税務＿割増償却=:b42,税務＿割増償却費=:b43,税務＿
      -    "特別償却率分子=:b44,税務＿特別償却率分母=:b45,税務＿特別償却
      -    "費=:b46,".

           02  FILLER PIC X(160) VALUE "税務＿前期末実施額簿価=:b47,税務
      -    "＿前期実施額累計=:b48,税務＿前期繰越超過額=:b49,税務＿前期償
      -    "却不足額=:b50,税務＿当期償却限度額=:b51,税務＿当期償却実施額
      -    "=:b52,税".

           02  FILLER PIC X(160) VALUE "務＿当期償却実施額累計=:b53,税務
      -    "＿当期償却不足額=:b54,税務＿当期償却超過額=:b55,税務＿当期償
      -    "却への振替額=:b56,税務＿当期末実施額簿価=:b57,税務＿前期末法
      -     "定簿価=:".

           02  FILLER PIC X(89) VALUE "b58,税務＿当期末法定簿価=:b59 whe
      -    "re (キー情報＿契約番号=:b60 and キー情報＿物件番号=:b61)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148295772.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +61.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 61 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 61 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(159) VALUE  "select D921SIJ_TBL.キー情報＿契
      -    "約番号  ,D921SIJ_TBL.キー情報＿物件番号  ,D921SIJ_TBL.物件＿
      -    "物件取得価額  ,D921SIJ_TBL.会社理論＿現在簿価  ,D921SIJ_TBL.
      -     "税務＿当".

           02  FILLER PIC X(160) VALUE "期末法定簿価   from D921SIJ_TBL 
      -    "where (D921SIJ_TBL.キー情報＿契約番号>'0' and D921SIJ_TBL.キ
      -     "ー情報＿物件番号>'0') order by D921SIJ_TBL.キー情報＿契約番
      -    "号,D921SI".

           02  FILLER PIC X(35) VALUE "J_TBL.キー情報＿物件番号         
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
           02     FILLER PIC S9(4) COMP-5 VALUE +227.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +231.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +99.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +310.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +98.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +354.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +361.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +113.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +388.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +148.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +1688.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +813.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +61.
           02     FILLER PIC S9(4) COMP-5 VALUE +61.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +407.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +945.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +422.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +979.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000570*                                                                 
000580*--< テーブル共通変数 >                                           
000590 01  ＷＳ−物件番号                   PIC  9(04).                 
000600 01  ＷＳ−解約日                     PIC  X(07).                 
000610 01  ＷＳ−世紀１                     PIC  X(02).                 
000620*                                                                 
000630*--< キーエリア >                                                 
000640 01  ＫＥＹ−エリア.                                              
000650     03  ＮＥＷキー.                                              
000660         05  ＷＳ−Ｎ−契約番号       PIC  X(10).                 
000670         05  ＷＳ−Ｎ−新物件番号     PIC S9(04) COMP-3.          
000680     03  ＯＬＤキー.                                              
000690         05  ＷＳ−Ｏ−契約番号       PIC  X(10).                 
000700         05  ＷＳ−Ｏ−新物件番号     PIC S9(04) COMP-3.          
000710*                                                                 
000720*--< ＯＲＡＣＬＥ共通変数 >                                       
000730     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000740*	                                                            
000750*--< 新物件番号採番テーブル >                                     
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000760     
      *    EXEC  SQL  INCLUDE  IKOTBL010.CBL         END-EXEC.
000770*                                                                 
000780*--< 資産情報テーブル >                                           
000010************************************************
000020* 新物件番号採番テーブル(IKOTBL010)
000030************************************************
000040 01  ＩＫＯ０１０−契約番号 PIC  X(010).
000050 01  ＩＫＯ０１０−物件番号 PIC S9(004) COMP-3.
000060 01  ＩＫＯ０１０−解約日 PIC  X(007).
000070 01  ＩＫＯ０１０−西暦解約日 PIC  X(008).
000080 01  ＩＫＯ０１０−新物件番号 PIC S9(004) COMP-3.
000090 01  ＩＫＯ０１０−ＩＮ区分 PIC  X(001).
000790     
      *    EXEC  SQL  INCLUDE  D921SIJ.CBL           END-EXEC.
000800*                                                                 
000810*--< ＯＲＡＣＬＥ ＳＱＬ実行情報 (SQLCA) >                        
      *****************************************************************
      *   資産情報テーブル(D921SIJ_TBL)
      *****************************************************************
       01  資産情報テーブル.
           03  Ｄ９２１−キー情報−契約番号
                                     PIC  X(010).
           03  Ｄ９２１−キー情報−契約種類
                                     PIC  X(003).
           03  Ｄ９２１−キー情報−物件番号
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ９２１−契約内容−再リース回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−契約内容−主契約区分
                                     PIC  X(001).
           03  Ｄ９２１−契約内容−契約区分
                                     PIC  X(001).
           03  Ｄ９２１−契約内容−協調区分
                                     PIC  X(001).
           03  Ｄ９２１−契約内容−契約開始日
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−契約終了日
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−期間
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−契約内容−引渡年月日
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−検収処理年月
                                     PIC  X(006).
           03  Ｄ９２１−契約内容−契約処理年月
                                     PIC  X(006).
           03  Ｄ９２１−契約内容−成約年月日
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−検収取消年月日
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−検収取消処理年月
                                     PIC  X(006).
           03  Ｄ９２１−契約内容−検収取消エントリ日
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−担当部課コード
                                     PIC  X(004).
           03  Ｄ９２１−契約内容−担当者コード
                                     PIC  X(008).
           03  Ｄ９２１−契約内容−取引先コード
                                     PIC  X(009).
           03  Ｄ９２１−契約内容−契約先コード
                                     PIC  X(005).
           03  Ｄ９２１−契約内容−顧客区分
                                     PIC  X(002).
           03  Ｄ９２１−債権−勘定処理コード
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−物件−取得年月日
                                     PIC  X(008).
           03  Ｄ９２１−物件−移動年月日
                                     PIC  X(008).
           03  Ｄ９２１−物件−状態フラグ
                                     PIC  X(001).
           03  Ｄ９２１−物件−移動理由
                                     PIC  X(002).
           03  Ｄ９２１−物件−物件処分連番
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−物件−取得価額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−取消取得価額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−物件取得価額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−残価区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−契約残価設定額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−他社購入額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−他社残価設定額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−定額−月額償却費
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−定額−月額償却費端数
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−物件リース料
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−物件−数量  PIC S9(005) PACKED-DECIMAL.
           03  Ｄ９２１−物件−資産種類
                                     PIC  X(007).
           03  Ｄ９２１−物件−耐用年数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−物件−物件種類
                                     PIC  X(002).
           03  Ｄ９２１−物件−自他社区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−ソフト区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−少額資産区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−中古資産区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−会社償却区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−固定資産税区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−海外設置場所区分
                                     PIC  X(001).
           03  Ｄ９２１−物件−旧契約番号
                                     PIC  X(010).
           03  Ｄ９２１−物件−旧物件番号
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ９２１−物件−分割年月日
                                     PIC  X(008).
           03  Ｄ９２１−物件−分割元物件番号
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ９２１−物件−物件名称
                                     PIC  X(060).
           03  Ｄ９２１−物件−Ｆ型名
                                     PIC  X(025).
           03  Ｄ９２１−物件−ディーラ取引先
                                     PIC  X(009).
           03  Ｄ９２１−物件−ディーラコード
                                     PIC  X(005).
           03  Ｄ９２１−解約満了−解約申請フラグ
                                     PIC  X(001).
           03  Ｄ９２１−解約満了−解約フラグ
                                     PIC  X(001).
           03  Ｄ９２１−解約満了−解約年月日
                                     PIC  X(008).
           03  Ｄ９２１−解約満了−解約処理年月
                                     PIC  X(006).
           03  Ｄ９２１−解約満了−解約取消処理年月
                                     PIC  X(006).
           03  Ｄ９２１−解約満了−解約理由
                                     PIC  X(002).
           03  Ｄ９２１−解約満了−解約区分
                                     PIC  X(001).
           03  Ｄ９２１−解約満了−解約月数
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−解約満了−解約取消フラグ
                                     PIC  X(001).
           03  Ｄ９２１−解約満了−取消解約日
                                     PIC  X(008).
           03  Ｄ９２１−解約満了−満了処理年月
                                     PIC  X(006).
           03  Ｄ９２１−解約満了−満了取消処理年月
                                     PIC  X(006).
           03  Ｄ９２１−物件処分−売廃フラグ
                                     PIC  X(001).
           03  Ｄ９２１−物件処分−物件処分区分
                                     PIC  X(001).
           03  Ｄ９２１−物件処分−申請状態フラグ
                                     PIC  X(001).
           03  Ｄ９２１−物件処分−物件処分申請連番
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−物件処分−処分先取引先コード
                                     PIC  X(009).
           03  Ｄ９２１−物件処分−処分先コード
                                     PIC  X(005).
           03  Ｄ９２１−物件処分−売廃年月日
                                     PIC  X(008).
           03  Ｄ９２１−物件処分−売廃処理年月
                                     PIC  X(006).
           03  Ｄ９２１−物件処分−売廃月数
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−物件処分−売廃理由
                                     PIC  X(002).
           03  Ｄ９２１−物件処分−売廃取消区分
                                     PIC  X(001).
           03  Ｄ９２１−物件処分−売廃取消処理年月
                                     PIC  X(006).
           03  Ｄ９２１−承継−承継フラグ
                                     PIC  X(001).
           03  Ｄ９２１−承継−承継二次済フラグ
                                     PIC  X(001).
           03  Ｄ９２１−承継−承継元契約番号
                                     PIC  X(010).
           03  Ｄ９２１−承継−承継元物件番号
                                     PIC S9(004) PACKED-DECIMAL.
           03  Ｄ９２１−承継−承継処理年月
                                     PIC  X(006).
           03  Ｄ９２１−承継−承継日
                                     PIC  X(008).
           03  Ｄ９２１−承継−承継時簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−承継−承継時償却累計額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−承継−承継取消年月日
                                     PIC  X(008).
           03  Ｄ９２１−動総保険−動総付保区分
                                     PIC  X(001).
           03  Ｄ９２１−動総保険−付保日
                                     PIC  X(008).
           03  Ｄ９２１−動総保険−付保日数
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−動総付保開始年月日
                                     PIC  X(008).
           03  Ｄ９２１−動総保険−動総保険料
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−事故有無
                                     PIC  X(001).
           03  Ｄ９２１−動総保険−事故日
                                     PIC  X(008).
           03  Ｄ９２１−動総保険−保険継続
                                     PIC  X(001).
           03  Ｄ９２１−動総保険−保険料率
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−保険価格
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−返戻保険料
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−動総保険証券番号
                                     PIC  X(011).
           03  Ｄ９２１−動総保険−付保率
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−継続リース償却対象額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−動総保険−設置場所名カナ
                                     PIC  X(080).
           03  Ｄ９２１−動総保険−賠償保険区分
                                     PIC  X(001).
           03  Ｄ９２１−信用保険−信用保険区分
                                     PIC  X(001).
           03  Ｄ９２１−信用保険−保険会社区分
                                     PIC  X(004).
           03  Ｄ９２１−信用保険−信用保険会社コード
                                     PIC  X(001).
           03  Ｄ９２１−信用保険−機械類分類コード
                                     PIC  X(002).
           03  Ｄ９２１−信用保険−通知書発送日
                                     PIC  X(008).
           03  Ｄ９２１−信用保険−通知書番号
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−信用保険−保険料
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−信用保険−符号
                                     PIC  X(005).
           03  Ｄ９２１−信用保険−契約総額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−信用保険−控除すべき金額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−信用保険−以降回収サイト
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−残存率
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−前年度納付先コード
                                     PIC  X(011).
           03  Ｄ９２１−固定資産税−納付先コード
                                     PIC  X(006).
           03  Ｄ９２１−固定資産税−固定資産税率
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−対象取得価額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−年税額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−前年度評価額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−前年度理論簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−当年度評価額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−当年度理論簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−固定資産税−残存到達フラグ
                                     PIC  X(001).
           03  Ｄ９２１−固定資産税−残存到達年月
                                     PIC  X(006).
           03  Ｄ９２１−固定資産税−申告フラグ
                                     PIC  X(001).
           03  Ｄ９２１−前月−前月状態フラグ
                                     PIC  X(001).
           03  Ｄ９２１−前月−前月検収処理年月
                                     PIC  X(006).
           03  Ｄ９２１−前月−前月契約開始日
                                     PIC  X(008).
           03  Ｄ９２１−前月−前月再リース回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−前月−前月解約日
                                     PIC  X(008).
           03  Ｄ９２１−前月−前月解約年月
                                     PIC  X(006).
           03  Ｄ９２１−前月−前月売廃日
                                     PIC  X(008).
           03  Ｄ９２１−前月−前月売廃年月
                                     PIC  X(006).
           03  Ｄ９２１−前月−前月売廃理由
                                     PIC  X(002).
           03  Ｄ９２１−前月−取消解約理由
                                     PIC  X(002).
           03  Ｄ９２１−前月−前期解約年月日
                                     PIC  X(008).
           03  Ｄ９２１−前月−遡及処理区分
                                     PIC  X(001).
           03  Ｄ９２１−前月−遡及処理年月
                                     PIC  X(006).
           03  Ｄ９２１−前月−前月経過月数
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−共通−期末年月
                                     PIC  X(006).
           03  Ｄ９２１−共通−期首年月
                                     PIC  X(006).
           03  Ｄ９２１−共通−月次年月
                                     PIC  X(006).
           03  Ｄ９２１−共通−追加減少フラグ
                                     PIC  X(001).
           03  Ｄ９２１−共通−取得年度
                                     PIC  X(004).
           03  Ｄ９２１−共通−償却月数
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−共通−当月迄償却経過月数
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−共通−当期償却月数
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−共通−処理区分
                                     PIC  X(001).
           03  Ｄ９２１−共通−当月償却対象フラグ
                                     PIC  X(001).
           03  Ｄ９２１−共通−定率償却調整可能フラグ
                                     PIC  X(001).
           03  Ｄ９２１−会社理論−償却停止フラグ
                                     PIC  X(001).
           03  Ｄ９２１−会社理論−償却停止日
                                     PIC  X(008).
           03  Ｄ９２１−会社理論−前期末簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−前期迄償却額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−償却残価設定額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−前月償却額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−前月迄償却額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−現在簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−除却簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−当月迄償却額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−当月償却額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−会社理論−当期償却額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−前期末簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−前期迄償却額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−前月償却額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−前月迄償却額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−現在簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−当月迄償却額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−当月償却額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理会計−当期償却額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−償却率
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  Ｄ９２１−税務−割増償却
                                     PIC  X(002).
           03  Ｄ９２１−税務−割増償却率
                                     PIC S9(002)V9(007) PACKED-DECIMAL.
           03  Ｄ９２１−税務−割増償却費
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−特別償却率分子
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ９２１−税務−特別償却率分母
                                     PIC S9(003) PACKED-DECIMAL.
           03  Ｄ９２１−税務−特別償却費
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−前期末実施額簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−前期実施額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−前期繰越超過額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−前期償却不足額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期償却限度額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期償却実施額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期償却実施額累計
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期償却不足額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期償却超過額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期償却への振替額
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期末実施額簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−申告残存到達フラグ
                                     PIC  X(001).
           03  Ｄ９２１−税務−税務申告残存到達年月
                                     PIC  X(006).
           03  Ｄ９２１−税務−前期末法定簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−税務−当期末法定簿価
                                     PIC S9(013) PACKED-DECIMAL.
           03  Ｄ９２１−管理情報−登録年月日
                                     PIC  X(008).
           03  Ｄ９２１−管理情報−登録時間
                                     PIC  X(008).
           03  Ｄ９２１−管理情報−登録担当者
                                     PIC  X(008).
           03  Ｄ９２１−管理情報−更新年月日
                                     PIC  X(008).
           03  Ｄ９２１−管理情報−更新時間
                                     PIC  X(008).
           03  Ｄ９２１−管理情報−更新者
                                     PIC  X(008).
           03  Ｄ９２１−管理情報−入力担当者コード
                                     PIC  X(008).
000820     
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
000830*                                                                 
000840*                                                                 
000850     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
000860*                                                                 
000870*----------------------------------------------------------------*
000880*    ＷＯＲＫエリア                                              *
000890*----------------------------------------------------------------*
000900 01  ＷＯＲＫ−エリア.                                            
000910*                                                                 
000920*--< エラー判定用 >                                               
000930     03  Ｗ−エラーコード             PIC S9(04).                 
000940*                                                                 
000950*--< ファイル状態 >                                               
000960     03  Ｗ−状態エリア.                                          
000970         05  Ｗ−状態                 PIC  X(02).                 
000980*                                                                 
000990*--< フラグアリア >                                               
001000     03  フラグアリア.                                            
001010         05  Ｗ−終了−フラグ         PIC  X(01).                 
001020         05  Ｗ−異常終了−フラグ     PIC  X(01).                 
001030*                                                                 
001040*--< 件数エリア >                                                 
001050     03  件数エリア.                                              
001060         05  Ｗ−入力−件数１         PIC  9(09).                 
001070         05  Ｗ−入力−件数２         PIC  9(09).                 
001080         05  Ｗ−更新−件数           PIC  9(09).                 
001090*                                                                 
001100*--< 共通情報 >                                                   
001110 01  Ｗ−共通情報.                                                
001120     03  Ｗ−システム日付.                                        
001130         05  Ｗ−世紀                 PIC  X(02) VALUE  "20".     
001140         05  Ｗ−年月日               PIC  X(06).                 
001150     03  Ｗ−システム時刻             PIC  X(08).                 
001160     03  Ｗ−担当者                   PIC  X(08) VALUE "IKOPG   ".
001170*                                                                 
001180*----------------------------------------------------------------*
001190*    サブルーチン名                                              *
001200*----------------------------------------------------------------*
001210 01  CALL-AREA.                                                   
001220*--< 共通ログサブルーチン >                                       
001230     03  CLOCO001                     PIC X(08) VALUE "CLOCO001". 
001240     03  COBCO001                     PIC X(08) VALUE "COBCO001". 
001250*                                                                 
001260*----------------------------------------------------------------*
001270*    ＣＯＰＹ領域                                                *
001280*----------------------------------------------------------------*
001290*--< 共通ログ用パラメータ >                                       
001300 01  IF-CHOCO001.                                                 
001310     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１−==.           
001320*                                                                 
001330*----------------------------------------------------------------*
001340*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001350*----------------------------------------------------------------*
001360 01  PARA-AREA.                                                   
001370     COPY CPBCO001.                                               
001380******************************************************************
001390*    定数用データ定義エリア                                      *
001400******************************************************************
001410 CONSTANT                             SECTION.                    
001420 01  定数領域.                                                    
001430     03  定数−プログラムＩＤ         PIC X(08) VALUE "COBIS770". 
001440     03  定数−プログラム名           PIC X(80)                   
001450                                    VALUE  "資産情報移行<SUMMIT>".
001460     03  定数−ＳＱＬＯＫ             PIC S9(04)  VALUE  ZERO.    
001470     03  定数−ＳＱＬＥＮＤ           PIC S9(04)  VALUE  0100.    
001480     03  定数−正常状態               PIC S9(04)  VALUE  ZERO.    
001490     03  定数−異常状態               PIC S9(04)  VALUE  0009.    
001500******************************************************************
001510*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001520******************************************************************
001530 PROCEDURE                            DIVISION.                   
001540*                                                                 
001550     PERFORM  初期処理.                                           
001560*                                                                 
001570     PERFORM  主処理  UNTIL  Ｗ−終了−フラグ  =  "Y".            
001580*                                                                 
001590     PERFORM  終了処理.                                           
001600*                                                                 
001610     STOP     RUN.                                                
001620*                                                                 
001630******************************************************************
001640*    初期処理                                        <1.0>       *
001650******************************************************************
001660 初期処理                             SECTION.                    
001670 初期処理−ＳＴＡＲＴ.                                            
001680*----------------------------------------------------------------*
001690*    開始メッセージ出力処理                          <1.1>       *
001700*----------------------------------------------------------------*
001710     INITIALIZE                       IF-CHOCO001.                
001720     MOVE  "3"                        TO  共１−イベント種別.     
001730     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
001740     MOVE  "0"                        TO  共１−復帰コード.       
001750     MOVE  "START"                    TO  共１−処理識別.         
001760     MOVE  定数−プログラム名         TO  共１−その他メッセージ. 
001770     CALL  CLOCO001                USING  IF-CHOCO001.            
001780*                                                                 
001790*----------------------------------------------------------------*
001800*    作業領域の初期値処理                            <1.2>       *
001810*----------------------------------------------------------------*
001820     MOVE  SPACE                      TO  ＷＯＲＫ−エリア.       
001830     INITIALIZE                           ＷＯＲＫ−エリア.       
001840*                                                                 
001850*--< ＣＰＵ日付を取得 >                                           
001860     ACCEPT  Ｗ−年月日               FROM  DATE.                 
001870*--< ＣＰＵ時刻を取得 >                                           
001880     ACCEPT  Ｗ−システム時刻         FROM  TIME.                 
001890*                                                                 
001900*--< ＯＲＡＣＬＥ接続 >                                           
001910     PERFORM   ＯＲＡＣＬＥ接続.                                  
001920*                                                                 
001930*--< ファイルオープン >                                           
001940     PERFORM  ファイルオープン.                                   
001950*                                                                 
001960*--< ファイル読込処理 >                                           
001970     PERFORM  ファイル読込処理.                                   
001980*                                                                 
001990*--< 新物件番号採番 >                                             
002000     PERFORM  新物件番号採番.                                     
002010*                                                                 
002020*--< カーソル宣言 >                                               
002030     PERFORM  カーソル宣言.                                       
002040*                                                                 
002050*--< テーブルカーソル読込>                                        
002060     PERFORM  テーブルカーソル読込.                               
002070*                                                                 
002080 初期処理−ＥＸＩＴ.                                              
002090*                                                                 
002100******************************************************************
002110*    ＯＲＡＣＬＥ接続                                <1.3>       *
002120******************************************************************
002130 ＯＲＡＣＬＥ接続                     SECTION.                    
002140 ＯＲＡＣＬＥ接続−ＳＴＡＲＴ.                                    
002150*                                                                 
002160*--< ＤＢ接続用情報を取得処理 >                                   
002170     CALL  COBCO001                USING  PARA-AREA.              
002180*                                                                 
002190     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002200     MOVE  PARA-USERNAME              TO  USERNAME.               
002210     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002220*                                                                 
002230*----------------------------------------------------------------*
002240*    開始接続                                                    *
002250*----------------------------------------------------------------*
002260     IF    DB-STRING  =  SPACE                                    
002270        
      *       EXEC SQL                                                  
002280*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002290*       END-EXEC 
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
002300     ELSE                                                         
002310        
      *       EXEC SQL                                                  
002320*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002330*            USING  :DB-STRING                                    
002340*       END-EXEC 
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
002350     END-IF.                                                      
002360*                                                                 
002370*----------------------------------------------------------------*
002380*    接続確認                                                    *
002390*----------------------------------------------------------------*
002400     EVALUATE  SQLCODE                                            
002410        WHEN   定数−ＳＱＬＯＫ                                   
002420           CONTINUE                                               
002430        WHEN   OTHER                                              
002440*--<       接続エラー >                                           
002450           MOVE     -10               TO  Ｗ−エラーコード        
002460           PERFORM  エラー処理                                    
002470     END-EVALUATE.                                                
002480*                                                                 
002490 ＯＲＡＣＬＥ接続−ＥＸＩＴ.                                      
002500     EXIT.                                                        
002510******************************************************************
002520*    ファイルオープン                                <1.4>       *
002530******************************************************************
002540*                                                                 
002550 ファイルオープン                     SECTION.                    
002560 ファイルオープン−ＳＴＡＲＴ.                                    
002570*                                                                 
002580     OPEN  INPUT   入力ファイル.                                  
002590*                                                                 
002600*----------------------------------------------------------------*
002610*    ファイルオープン状態判定                                    *
002620*----------------------------------------------------------------*
002630     EVALUATE  Ｗ−状態                                           
002640        WHEN  ZERO                                                
002650           CONTINUE                                               
002660        WHEN  OTHER                                               
002670*--<       ファイルオープンエラー >                               
002680           MOVE     -20                TO  Ｗ−エラーコード       
002690           PERFORM  エラー処理                                    
002700     END-EVALUATE.                                                
002710 ファイルオープン−ＥＸＩＴ.                                      
002720     EXIT.                                                        
002730*                                                                 
002740******************************************************************
002750*    ファイル読込処理                                <1.5>       *
002760******************************************************************
002770 ファイル読込処理                 SECTION.                        
002780 ファイル読込処理−ＳＴＡＲＴ.                                    
002790*                                                                 
002800     READ  入力ファイル                                           
002810        AT END                                                    
002820           MOVE  "Y"                  TO  Ｗ−終了−フラグ        
002830           MOVE  HIGH-VALUE           TO  ＷＳ−Ｎ−契約番号      
002840           GO  TO  ファイル読込処理−ＥＸＩＴ                     
002850     END-READ.                                                    
002860*                                                                 
002870*--< ファイル読込状態判定 >                                       
002880     EVALUATE  Ｗ−状態                                           
002890        WHEN  ZERO                                                
002900*--<       ファイルマッチングキーのセット >                       
002910           MOVE  入力−契約ＮＯ       TO  ＷＳ−Ｎ−契約番号      
002920           MOVE  入力−物件ＮＯ       TO  ＷＳ−物件番号          
002930           MOVE  入力−ＫＥＹ−解約日 TO  ＷＳ−解約日            
002940*--<       ファイル入力件数の加算 >                               
002950           COMPUTE   Ｗ−入力−件数１ =  Ｗ−入力−件数１ + 1     
002960        WHEN  OTHER                                               
002970*--<       ファイル読込エラー >                                   
002980           MOVE     -30               TO  Ｗ−エラーコード        
002990           PERFORM  エラー処理                                    
003000     END-EVALUATE.                                                
003010*                                                                 
003020 ファイル読込処理−ＥＸＩＴ.                                      
003030     EXIT.                                                        
003040******************************************************************
003050*   新物件番号採番                                   <1.6>       *
003060******************************************************************
003070 新物件番号採番                       SECTION.                    
003080 新物件番号採番−ＳＴＡＲＴ.                                      
003090*                                                                 
003100     
      *    EXEC  SQL                                                    
003110*       SELECT  新物件番号                                        
003120*         INTO :ＷＳ−Ｎ−新物件番号                              
003130*         FROM  IKOTBL010                                         
003140*        WHERE  契約番号 = :ＷＳ−Ｎ−契約番号                    
003150*          AND  物件番号 = :ＷＳ−物件番号                        
003160*          AND  解約日 = :ＷＳ−解約日                        
003170*    END-EXEC.
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
               ＷＳ−Ｎ−新物件番号 IN
               ＮＥＷキー IN
               ＫＥＹ−エリア
               SQL-SQHSTV(1)
           MOVE 3 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＷＳ−Ｎ−契約番号 IN
               ＮＥＷキー IN
               ＫＥＹ−エリア
               SQL-SQHSTV(2)
           MOVE 10 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               ＷＳ−物件番号
               SQL-SQHSTV(3)
           MOVE 4 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＷＳ−解約日
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
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
003180*                                                                 
003190*----------------------------------------------------------------*
003200*    新物件番号採番読込確認                                      *
003210*----------------------------------------------------------------*
003220     EVALUATE  SQLCODE                                            
003230        WHEN  定数−ＳＱＬＯＫ                                    
003240*--<       新物件番号採番件数の加算 >                             
003250           COMPUTE   Ｗ−入力−件数２ =  Ｗ−入力−件数２ + 1     
003260        WHEN  OTHER                                               
003270*--<       新物件番号採番エラー >                                 
003280           MOVE      -40              TO  Ｗ−エラーコード        
003290           PERFORM   エラー処理                                   
003300     END-EVALUATE.                                                
003310*                                                                 
003320 新物件番号採番−ＥＸＩＴ.                                        
003330     EXIT.                                                        
003340*                                                                 
003350******************************************************************
003360*    カーソル宣言                                    <1.7>       *
003370******************************************************************
003380 カーソル宣言                         SECTION.                    
003390 カーソル宣言−ＳＴＡＲＴ.                                        
003400*                                                                 
003410*----------------------------------------------------------------*
003420*    カーソル宣言                                                 
003430*----------------------------------------------------------------*
003440     
      *    EXEC  SQL                                                    
003450*       DECLARE CUR1  CURSOR FOR                                  
003460*          SELECT  D921SIJ_TBL.キー情報＿契約番号                 
003470*                 ,D921SIJ_TBL.キー情報＿物件番号                 
003480*                 ,D921SIJ_TBL.物件＿物件取得価額                 
003490*                 ,D921SIJ_TBL.会社理論＿現在簿価                 
003500* 	        ,D921SIJ_TBL.税務＿当期末法定簿価               
003510*            FROM  D921SIJ_TBL                                    
003520*           WHERE  D921SIJ_TBL.キー情報＿契約番号 > '0'           
003530*             AND  D921SIJ_TBL.キー情報＿物件番号 > '0'           
003540*        ORDER BY  D921SIJ_TBL.キー情報＿契約番号                 
003550*                 ,D921SIJ_TBL.キー情報＿物件番号                 
003560*    END-EXEC.
003570*                                                                 
003580*----------------------------------------------------------------*
003590*    カーソルＯＰＥＮ処理                                        *
003600*----------------------------------------------------------------*
003610     
      *    EXEC  SQL                                                    
003620*       OPEN  CUR1                                                
003630*    END-EXEC.
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

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
003640*                                                                 
003650*----------------------------------------------------------------*
003660*    カーソルＯＰＥＮ確認                                        *
003670*----------------------------------------------------------------*
003680     EVALUATE  SQLCODE                                            
003690        WHEN  定数−ＳＱＬＯＫ                                    
003700*--<       正常 >                                                 
003710           CONTINUE                                               
003720        WHEN  OTHER                                               
003730*--<       カーソルＯＰＥＮエラー >                               
003740           MOVE -50                   TO  Ｗ−エラーコード        
003750           PERFORM  エラー処理                                    
003760     END-EVALUATE.                                                
003770*                                                                 
003780 カーソル宣言−ＥＸＩＴ.                                          
003790     EXIT.                                                        
003800*                                                                 
003810******************************************************************
003820*    テーブルカーソル読込                        <1.8>           *
003830******************************************************************
003840 テーブルカーソル読込             SECTION.                        
003850 テーブルカーソル読込−ＳＴＡＲＴ.                                
003860*                                                                 
003870*--< テーブルカーソル読込 >                                       
003880     
      *    EXEC SQL                                                     
003890*        FETCH  CUR1                                              
003900*         INTO  :Ｄ９２１−キー情報−契約番号                     
003910*              ,:Ｄ９２１−キー情報−物件番号                     
003920*              ,:Ｄ９２１−物件−物件取得価額                     
003930*              ,:Ｄ９２１−会社理論−現在簿価                     
003940* 	     ,:Ｄ９２１−税務−当期末法定簿価                   
003950*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 113 TO SQL-OFFSET
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
               Ｄ９２１−キー情報−契約番号 IN
               資産情報テーブル
               SQL-SQHSTV(1)
           MOVE 10 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｄ９２１−キー情報−物件番号 IN
               資産情報テーブル
               SQL-SQHSTV(2)
           MOVE 3 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｄ９２１−物件−物件取得価額 IN
               資産情報テーブル
               SQL-SQHSTV(3)
           MOVE 7 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−現在簿価 IN
               資産情報テーブル
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期末法定簿価 IN
               資産情報テーブル
               SQL-SQHSTV(5)
           MOVE 7 TO SQL-SQHSTL(5)
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
003960*----------------------------------------------------------------*
003970*    テーブルカーソル読込を確認                                  *
003980*----------------------------------------------------------------*
003990     EVALUATE   SQLCODE                                           
004000        WHEN   定数−ＳＱＬＯＫ                                   
004010*--<       正常 >                                                 
004020           CONTINUE                                               
004030        WHEN   定数−ＳＱＬＥＮＤ                                 
004040*--<       読込終了 >                                             
004050           PERFORM  ファイル読込処理                              
004060        WHEN   OTHER                                              
004070*--<       読込エラー >                                           
004080           MOVE     -60               TO  Ｗ−エラーコード        
004090           PERFORM  エラー処理                                    
004100           PERFORM  ファイル読込処理                              
004110     END-EVALUATE.                                                
004120*                                                                 
004130 テーブルカーソル読込−ＥＸＩＴ.                                  
004140     EXIT.                                                        
004150*                                                                 
004160******************************************************************
004170*    主処理                                          <2.0>       *
004180******************************************************************
004190 主処理                               SECTION.                    
004200 主処理−ＳＴＡＲＴ.                                              
004210*                                                                 
004220     EVALUATE  TRUE                                               
004230        WHEN  Ｄ９２１−キー情報−契約番号 < ＷＳ−Ｎ−契約番号   
004240	         PERFORM  テーブルカーソル読込                      
004250        WHEN  Ｄ９２１−キー情報−契約番号 > ＷＳ−Ｎ−契約番号   
004260*--<       資産明細のみの場合>                                    
004270           IF  ＷＳ−Ｎ−契約番号 NOT = ＷＳ−Ｏ−契約番号        
004280           DISPLAY  "資産情報なし（全て資産明細の項目）：" ,      
004290	                  "契約番号＝" , ＷＳ−Ｎ−契約番号,            
004300                    "物件番号＝" , ＷＳ−物件番号,                
004310	                  "解約日＝" , ＷＳ−解約日                     
004320           END-IF                                                 
004330           PERFORM  ファイル読込処理                              
004340        WHEN  Ｄ９２１−キー情報−契約番号 = ＷＳ−Ｎ−契約番号   
004350           PERFORM  資産情報とマッチング                          
004370           PERFORM  ファイル読込処理                              
004380           PERFORM  新物件番号採番                                
004400	         PERFORM  テーブルカーソル読込                          
004410     END-EVALUATE.                                                
004420*                                                                 
004430 主処理−ＥＸＩＴ.                                                
004440     EXIT.                                                        
004450*                                                                 
004460******************************************************************
004470*    資産情報とマッチング                                        *
004480******************************************************************
004490 資産情報とマッチング                 SECTION.                    
004500 資産情報とマッチング−ＳＴＡＲＴ.                                
004510*                                                                 
004520 	   EVALUATE  TRUE                                           
004530        WHEN  Ｄ９２１−キー情報−物件番号 < ＷＳ−Ｎ−新物件番号 
004540           PERFORM  テーブルカーソル読込                          
004550        WHEN  Ｄ９２１−キー情報−物件番号 > ＷＳ−Ｎ−新物件番号 
004560	         PERFORM  ファイル読込処理                          
004570        WHEN  Ｄ９２１−キー情報−物件番号 = ＷＳ−Ｎ−新物件番号 
004580           PERFORM  資産情報のレコードを読み込む                  
004590           PERFORM  資産情報関連項目更新                          
004600     END-EVALUATE.                                                
004610*                                                                 
004620 資産情報とマッチング−ＥＸＩＴ.                                  
004630     EXIT.                                                        
004640******************************************************************
004650*    資産情報のレコードを読み込む                                *
004660******************************************************************
004670 資産情報のレコードを読み込む         SECTION.                    
004680 資産情報のレコードを読み込む−ＳＴＡＲＴ.                        
004690*                                                                 
004700*--< NO.91>                                                       
004710     MOVE  入力−付保区分−動産総合   TO                          
004720                               Ｄ９２１−動総保険−動総付保区分.  
004730*                                                                 
004740*--< NO.92>                                                       
004750     STRING  Ｗ−世紀 , 入力−付保日−年月日                      
004760        DELIMITED  BY  SIZE INTO  Ｄ９２１−動総保険−付保日.     
004770*                                                                 
004780*--< NO.94>                                                       
004790     PERFORM  ＮＯ９４移行処理.                                   
004800*                                                                 
004810*--< NO.95>                                                       
004820     MOVE  入力−動総保険料           TO                          
004830                                   Ｄ９２１−動総保険−動総保険料.
004840*                                                                 
004850*--< NO.96>                                                       
004860     MOVE  入力−事故有無区分         TO                          
004870                                       Ｄ９２１−動総保険−事故日.
004880*                                                                 
004890*--< NO.97>                                                       
004900     STRING  Ｗ−世紀 , 入力−事故日−年月日                      
004910        DELIMITED  BY  SIZE  INTO  Ｄ９２１−動総保険−事故日.    
004920*                                                                 
004930*--< NO.98>                                                       
004940     MOVE  入力−保険新規継続区分     TO                          
004950                                     Ｄ９２１−動総保険−保険継続.
004960*                                                                 
004970*--< NO.99>                                                       
004980     MOVE  入力−動総保険料率         TO                          
004990                                     Ｄ９２１−動総保険−保険料率.
005000*                                                                 
005010*--< NO.100>                                                      
005020     MOVE  入力−動総保険価格         TO                          
005030                                     Ｄ９２１−動総保険−保険価格.
005040*                                                                 
005050*--< NO.101>                                                      
005060     MOVE  入力−動総払戻し保険料     TO                          
005070                                   Ｄ９２１−動総保険−返戻保険料.
005080*                                                                 
005090*--< NO.102>                                                      
005100     MOVE  入力−動総保険証券番号     TO                          
005110                             Ｄ９２１−動総保険−動総保険証券番号.
005120*                                                                 
005130*--< NO.103>                                                      
005140     MOVE  入力−動総保険料率         TO                          
005150                                       Ｄ９２１−動総保険−付保率.
005160*                                                                 
005170*--< NO.104>                                                      
005180     MOVE  入力−残価情報−継続リース償却対象額      TO           
005190                         Ｄ９２１−動総保険−継続リース償却対象額.
005200*                                                                 
005210*--< NO.105>                                                      
005220     MOVE  入力−設置場所名カナ                      TO           
005230                               Ｄ９２１−動総保険−設置場所名カナ.
005240*                                                                 
005250*--< NO.109>                                                      
005260     MOVE  入力−保険情報−保険会社コード            TO           
005270                           Ｄ９２１−信用保険−信用保険会社コード.
005280*                                                                 
005290*--< NO.110>                                                      
005300     MOVE  入力−信用保険コード−機械区分            TO           
005310                             Ｄ９２１−信用保険−機械類分類コード.
005320*                                                                 
005330*--< NO.111>                                                      
005340     STRING  Ｗ−世紀 , 入力−通知書送付日−年月日                
005350        DELIMITED  BY  SIZE  INTO                                 
005360                               Ｄ９２１−信用保険−通知書発送日.  
005370*                                                                 
005380*--< NO.113>                                                      
005390     MOVE  入力−信用保険料           TO                          
005400                                       Ｄ９２１−信用保険−保険料.
005410*                                                                 
005420*--< NO.114>                                                      
005430     MOVE  入力−符号一連番号         TO Ｄ９２１−信用保険−符号.
005440*                                                                 
005450*--< NO.119>                                                      
005460     MOVE  入力−納付先コード         TO                          
005470                         Ｄ９２１−固定資産税−前年度納付先コード.
005480*                                                                 
005490*--< NO.120>                                                      
005500     MOVE  入力−納付先コード         TO                          
005510                               Ｄ９２１−固定資産税−納付先コード.
005520*                                                                 
005530*--< NO.123>                                                      
005540     MOVE  入力−年税額               TO                          
005550                                     Ｄ９２１−固定資産税−年税額.
005560*                                                                 
005570     MOVE  入力−前年度評価額         TO                          
005580                               Ｄ９２１−固定資産税−前年度評価額.
005590*                                                                 
005600*--< NO.125>                                                      
005610     MOVE  入力−前年度理論簿価       TO                          
005620                             Ｄ９２１−固定資産税−前年度理論簿価.
005630*                                                                 
005640*--< NO.126>                                                      
005650     MOVE  入力−当年度評価額         TO                          
005660                               Ｄ９２１−固定資産税−当年度評価額.
005670*                                                                 
005680*--< NO.127>                                                      
005690     MOVE  入力−当年度理論簿価       TO                          
005700                             Ｄ９２１−固定資産税−当年度理論簿価.
005710*                                                                 
005720*--< NO.156>                                                      
005730     PERFORM  ＮＯ１５６移行処理.                                 
005740*                                                                 
005750*--< NO.157>                                                      
005760     PERFORM  ＮＯ１５７移行処理.                                 
005770*                                                                 
005780*--< NO.158>                                                      
005790     MOVE  入力−会社前期末簿価       TO                          
005800                                   Ｄ９２１−会社理論−前期末簿価.
005810*                                                                 
005820*--< NO.159>                                                      
005830     COMPUTE  Ｄ９２１−会社理論−前期迄償却額累計 =              
005840              Ｄ９２１−物件−物件取得価額 - 入力−会社前期末簿価.
005850*                                                                 
005860*--< NO.162>                                                      
005870     COMPUTE  Ｄ９２１−会社理論−前月迄償却額累計 =              
005880                Ｄ９２１−物件−物件取得価額 - 入力−会社現在簿価.
005890*                                                                 
005900*--< NO.163>                                                      
005910     MOVE  入力−会社現在簿価         TO                          
005920                                     Ｄ９２１−会社理論−現在簿価.
005930*                                                                 
005940*--< NO.164>                                                      
005950     PERFORM  ＮＯ１６４移行処理.                                 
005960*                                                                 
005970*--< NO.165>                                                      
005980     COMPUTE  Ｄ９２１−会社理論−当月迄償却額累計 =              
005990                Ｄ９２１−物件−物件取得価額 - 入力−会社現在簿価.
006000*                                                                 
006010*--< NO.167>                                                      
006020     MOVE  入力−会社当期償却高       TO                          
006030                                   Ｄ９２１−会社理論−当期償却額.
006040*                                                                 
006050*--< NO.168>                                                      
006060     MOVE  入力−会社理論前期末簿価   TO                          
006070                                   Ｄ９２１−管理会計−前期末簿価.
006080*                                                                 
006090*--< NO.169>                                                      
006100     COMPUTE  Ｄ９２１−管理会計−前期迄償却額累計 =              
006110          Ｄ９２１−物件−物件取得価額 - 入力−会社理論前期末簿価.
006120*                                                                 
006130*--< NO.171>                                                      
006140     COMPUTE  Ｄ９２１−管理会計−前月迄償却額累計 =              
006150          Ｄ９２１−物件−物件取得価額 - 入力−会社理論当期末簿価.
006160*                                                                 
006170*--< NO.172>                                                      
006180     MOVE  入力−会社理論当期末簿価   TO                          
006190                                     Ｄ９２１−管理会計−現在簿価.
006200*                                                                 
006210*--< NO.173>                                                      
006220     COMPUTE  Ｄ９２１−管理会計−当月迄償却額累計 =              
006230          Ｄ９２１−物件−物件取得価額 - 入力−会社理論当期末簿価.
006240*                                                                 
006250*--< NO.175>                                                      
006260     COMPUTE  Ｄ９２１−管理会計−当期償却額 =                    
006270              入力−会社理論前期末簿価 - 入力−会社理論当期末簿価.
006280*                                                                 
006290*--< NO.177>                                                      
006300     MOVE  入力−税法割増区分         TO Ｄ９２１−税務−割増償却.
006310*                                                                 
006320*--< NO.179>                                                      
006330     MOVE  入力−税法割増償却費       TO                          
006340                                       Ｄ９２１−税務−割増償却費.
006350*                                                                 
006360*--< NO.180>                                                      
006370     MOVE  入力−税法特別償却率−分子 TO                          
006380                                   Ｄ９２１−税務−特別償却率分子.
006390*                                                                 
006400*--< NO.181>                                                      
006410     MOVE  入力−税法特別償却率−分母 TO                          
006420                                   Ｄ９２１−税務−特別償却率分母.
006430*                                                                 
006440*--< NO.182>                                                      
006450     MOVE  入力−税法特別償却費       TO                          
006460                                       Ｄ９２１−税務−特別償却費.
006470*                                                                 
006480*--< NO.183>                                                      
006490     MOVE  入力−税法前期末簿価法定   TO                          
006500                                 Ｄ９２１−税務−前期末実施額簿価.
006510*                                                                 
006520*--< NO.184>                                                      
006530     COMPUTE  Ｄ９２１−税務−前期実施額累計 =                    
006540          Ｄ９２１−物件−物件取得価額 - 入力−税法前期末簿価法定.
006550*                                                                 
006560*--< NO.185>                                                      
006570     MOVE  入力−税法繰越超過額       TO                          
006580                                   Ｄ９２１−税務−前期繰越超過額.
006590*                                                                 
006600*--< NO.186>                                                      
006610     PERFORM  ＮＯ１８６移行処理.                                 
006620*                                                                 
006630*--< NO.187>                                                      
006640     MOVE  入力−税法償却限度額       TO                          
006650                                   Ｄ９２１−税務−当期償却限度額.
006660*                                                                 
006670*--< NO.188>                                                      
006680     COMPUTE  Ｄ９２１−税務−当期償却実施額 =                    
006690                  入力−税法前期末簿価法定 - 入力−税法当期末簿価.
006700*                                                                 
006710*--< NO.189>                                                      
006720     COMPUTE  Ｄ９２１−税務−当期償却実施額累計 =                
006730                  入力−税法前期末簿価法定 - 入力−税法当期末簿価.
006740*                                                                 
006750*--< NO.190>                                                      
006760     PERFORM  ＮＯ１９０移行処理.                                 
006770*                                                                 
006780*--< NO.191>                                                      
006790     MOVE  入力−税法繰越超過額       TO                          
006800                                   Ｄ９２１−税務−当期償却超過額.
006810*                                                                 
006820*--< NO.192>                                                      
006830     PERFORM  ＮＯ１９２移行処理.                                 
006840*                                                                 
006850*--< NO.193>                                                      
006860     MOVE  入力−税法当期末簿価       TO                          
006870                                 Ｄ９２１−税務−当期末実施額簿価.
006880*                                                                 
006890*--< NO.196>                                                      
006900     MOVE  入力−税法前期末簿価法定   TO                          
006910                                   Ｄ９２１−税務−前期末法定簿価.
006920*                                                                 
006930*--< NO.197>                                                      
006940     MOVE  入力−税法当期末簿価       TO                          
006950                                   Ｄ９２１−税務−当期末法定簿価.
006960*                                                                 
006970 資産情報のレコードを読み込む−ＥＸＩＴ.                          
006980     EXIT.                                                        
006990*                                                                 
007000******************************************************************
007010*    ＮＯ．９４移行処理                                          *
007020******************************************************************
007030 ＮＯ９４移行処理                     SECTION.                    
007040 ＮＯ９４移行処理−ＳＴＡＲＴ.                                    
007050     IF  入力−付保日−世紀 = "0"                                 
007060         MOVE  "19"  TO  ＷＳ−世紀１                             
007070     ELSE                                                         
007080        IF  入力−付保日−世紀 = "1"                              
007090           MOVE  "20"  TO  ＷＳ−世紀１                           
007100        END-IF                                                    
007110     END-IF.                                                      
007120     STRING  ＷＳ−世紀１ , 入力−付保日−年月日                  
007130        DELIMITED  BY  SIZE INTO                                  
007140                           Ｄ９２１−動総保険−動総付保開始年月日.
007150 ＮＯ９４移行処理−ＥＸＩＴ.                                      
007160     EXIT.                                                        
007170*                                                                 
007180******************************************************************
007190*    ＮＯ．１５６移行処理                                        *
007200******************************************************************
007210 ＮＯ１５６移行処理                   SECTION.                    
007220 ＮＯ１５６移行処理−ＳＴＡＲＴ.                                  
007230     IF  入力−解約区分 = "0"                                     
007240        MOVE  "0"  TO  Ｄ９２１−会社理論−償却停止フラグ         
007250     ELSE                                                         
007260        MOVE  "1"  TO  Ｄ９２１−会社理論−償却停止フラグ         
007270     END-IF.                                                      
007280 ＮＯ１５６移行処理−ＥＸＩＴ.                                    
007290     EXIT.                                                        
007300*                                                                 
007310******************************************************************
007320*    ＮＯ．１５７移行処理                                        *
007330******************************************************************
007340 ＮＯ１５７移行処理                   SECTION.                    
007350 ＮＯ１５７移行処理−ＳＴＡＲＴ.                                  
007360     IF  入力−解約日−世紀 = "0"                                 
007370        MOVE  "19"  TO  ＷＳ−世紀１                              
007380     ELSE                                                         
007390        IF  入力−解約日−世紀 = "1"                              
007400           MOVE  "20"  TO  ＷＳ−世紀１                           
007410        END-IF                                                    
007420     END-IF.                                                      
007430     STRING  ＷＳ−世紀１ , 入力−解約日−年月日                  
007440        DELIMITED  BY  SIZE INTO                                  
007450                                 Ｄ９２１−会社理論−償却停止日.  
007460 ＮＯ１５７移行処理−ＥＸＩＴ.                                    
007470     EXIT.                                                        
007480*                                                                 
007490******************************************************************
007500*    ＮＯ．１６４移行処理                                        *
007510******************************************************************
007520 ＮＯ１６４移行処理                   SECTION.                    
007530 ＮＯ１６４移行処理−ＳＴＡＲＴ.                                  
007540     IF  Ｄ９２１−物件処分−売廃フラグ = "1"                     
007550        MOVE  入力−会社現在簿価      TO                          
007560                                    Ｄ９２１−会社理論−除却簿価  
007570     ELSE                                                         
007580        MOVE  ZERO  TO  Ｄ９２１−会社理論−除却簿価              
007590     END-IF.                                                      
007600 ＮＯ１６４移行処理−ＥＸＩＴ.                                    
007610     EXIT.                                                        
007620*                                                                 
007630******************************************************************
007640*    ＮＯ．１８６移行処理                                        *
007650******************************************************************
007660 ＮＯ１８６移行処理                   SECTION.                    
007670 ＮＯ１８６移行処理−ＳＴＡＲＴ.                                  
007680     IF  (入力−税法前期末簿価法定 - 入力−税法当期末簿価) <      
007690                                            入力−税法償却限度額  
007700         COMPUTE  Ｄ９２１−税務−前期償却不足額 =                
007710                                         入力−税法償却限度額 -   
007720				     (入力−税法前期末簿価法定 -          
007730                                            入力−税法当期末簿価) 
007740     ELSE                                                         
007750         MOVE  ZERO  TO  Ｄ９２１−税務−前期償却不足額           
007760     END-IF.                                                      
007770 ＮＯ１８６移行処理−ＥＸＩＴ.                                    
007780     EXIT.                                                        
007790*                                                                 
007800******************************************************************
007810*    ＮＯ．１９０移行処理                                        *
007820******************************************************************
007830 ＮＯ１９０移行処理                   SECTION.                    
007840 ＮＯ１９０移行処理−ＳＴＡＲＴ.                                  
007850     IF  入力−当期償却過不足額 < ZERO                            
007860        MOVE  入力−当期償却過不足額  TO                          
007870                                  Ｄ９２１−税務−当期償却不足額  
007880     ELSE                                                         
007890        MOVE  ZERO  TO  Ｄ９２１−税務−当期償却不足額            
007900     END-IF.                                                      
007910 ＮＯ１９０移行処理−ＥＸＩＴ.                                    
007920     EXIT.                                                        
007930*                                                                 
007940******************************************************************
007950*    ＮＯ．１９２移行処理                                        *
007960******************************************************************
007970 ＮＯ１９２移行処理                   SECTION.                    
007980 ＮＯ１９２移行処理−ＳＴＡＲＴ.                                  
007990     IF  Ｄ９２１−物件処分−売廃フラグ = "1"                     
008000        COMPUTE  Ｄ９２１−税務−当期償却への振替額 =             
008010                                   Ｄ９２１−会社理論−現在簿価 - 
008020			          Ｄ９２１−税務−当期末法定簿価        
008030     ELSE                                                         
008040        MOVE  ZERO  TO  Ｄ９２１−税務−当期償却への振替額        
008050     END-IF.                                                      
008060 ＮＯ１９２移行処理−ＥＸＩＴ.                                    
008070     EXIT.                                                        
008080*                                                                 
008090******************************************************************
008100*資産情報に関連項目を更新する                                    *
008110******************************************************************
008120 資産情報関連項目更新                 SECTION.                    
008130 資産情報関連項目更新−ＳＴＡＲＴ.                                
008140*                                                                 
008150     
      *    EXEC SQL                                                     
008160*     UPDATE  D921SIJ_TBL                                         
008170*        SET                                                      
008180*       動総保険＿動総付保区分 = :Ｄ９２１−動総保険−動総付保区分
008190*      ,動総保険＿付保日 = :Ｄ９２１−動総保険−付保日            
008200*      ,動総保険＿動総付保開始年月日 =                            
008210*                          :Ｄ９２１−動総保険−動総付保開始年月日
008220*      ,動総保険＿動総保険料 = :Ｄ９２１−動総保険−動総保険料    
008230*      ,動総保険＿事故有無 = :Ｄ９２１−動総保険−事故有無        
008240*      ,動総保険＿事故日 = :Ｄ９２１−動総保険−事故日            
008250*      ,動総保険＿保険継続 = :Ｄ９２１−動総保険−保険継続        
008260*      ,動総保険＿保険料率 = :Ｄ９２１−動総保険−保険料率        
008270*      ,動総保険＿保険価格 = :Ｄ９２１−動総保険−保険価格        
008280*      ,動総保険＿返戻保険料 = :Ｄ９２１−動総保険−返戻保険料    
008290*      ,動総保険＿動総保険証券番号 =                              
008300*                            :Ｄ９２１−動総保険−動総保険証券番号
008310*      ,動総保険＿付保率 = :Ｄ９２１−動総保険−付保率            
008320*      ,動総保険＿継続リース償却対象額 =                          
008330*                        :Ｄ９２１−動総保険−継続リース償却対象額
008340*      ,動総保険＿設置場所名カナ =                                
008350*                              :Ｄ９２１−動総保険−設置場所名カナ
008360*      ,信用保険＿信用保険会社コード =                            
008370*                          :Ｄ９２１−信用保険−信用保険会社コード
008380*      ,信用保険＿機械類分類コード =                              
008390*                          :Ｄ９２１−信用保険−機械類分類コード  
008400*      ,信用保険＿通知書発送日 = :Ｄ９２１−信用保険−通知書発送日
008410*      ,信用保険＿保険料 = :Ｄ９２１−信用保険−保険料            
008420*      ,信用保険＿符号 = :Ｄ９２１−信用保険−符号                
008430*      ,固定資産税＿前年度納付先コード =                          
008440*                        :Ｄ９２１−固定資産税−前年度納付先コード
008450*      ,固定資産税＿納付先コード =                                
008460*                              :Ｄ９２１−固定資産税−納付先コード
008470*      ,固定資産税＿年税額 = :Ｄ９２１−固定資産税−年税額        
008480*      ,固定資産税＿前年度評価額 =                                
008490*                              :Ｄ９２１−固定資産税−前年度評価額
008500*      ,固定資産税＿前年度理論簿価 =                              
008510*                            :Ｄ９２１−固定資産税−前年度理論簿価
008520*      ,固定資産税＿当年度評価額 =                                
008530*                              :Ｄ９２１−固定資産税−当年度評価額
008540*      ,固定資産税＿当年度理論簿価 =                              
008550*                            :Ｄ９２１−固定資産税−当年度理論簿価
008560*      ,会社理論＿償却停止フラグ =                                
008570*                              :Ｄ９２１−会社理論−償却停止フラグ
008580*      ,会社理論＿償却停止日 = :Ｄ９２１−会社理論−償却停止日    
008590*      ,会社理論＿前期末簿価 = :Ｄ９２１−会社理論−前期末簿価    
008600*      ,会社理論＿前期迄償却額累計 =                              
008610*                            :Ｄ９２１−会社理論−前期迄償却額累計
008620*      ,会社理論＿前月迄償却額累計 =                              
008630*                            :Ｄ９２１−会社理論−前月迄償却額累計
008640*      ,会社理論＿現在簿価 = :Ｄ９２１−会社理論−現在簿価        
008650*      ,会社理論＿除却簿価 = :Ｄ９２１−会社理論−除却簿価        
008660*      ,会社理論＿当月迄償却額累計 =                              
008670*                            :Ｄ９２１−会社理論−当月迄償却額累計
008680*      ,会社理論＿当期償却額 = :Ｄ９２１−会社理論−当期償却額    
008690*      ,管理会計＿前期末簿価 = :Ｄ９２１−管理会計−前期末簿価    
008700*      ,管理会計＿前期迄償却額累計 =                              
008710*                            :Ｄ９２１−管理会計−前期迄償却額累計
008720*      ,管理会計＿前月迄償却額累計 =                              
008730*                            :Ｄ９２１−管理会計−前月迄償却額累計
008740*      ,管理会計＿現在簿価 = :Ｄ９２１−管理会計−現在簿価        
008750*      ,管理会計＿当月迄償却額累計 =                              
008760*                            :Ｄ９２１−管理会計−当月迄償却額累計
008770*      ,管理会計＿当期償却額 = :Ｄ９２１−管理会計−当期償却額    
008780*      ,税務＿割増償却 = :Ｄ９２１−税務−割増償却                
008790*      ,税務＿割増償却費 = :Ｄ９２１−税務−割増償却費            
008800*      ,税務＿特別償却率分子 = :Ｄ９２１−税務−特別償却率分子    
008810*      ,税務＿特別償却率分母 = :Ｄ９２１−税務−特別償却率分母    
008820*      ,税務＿特別償却費 = :Ｄ９２１−税務−特別償却費            
008830*      ,税務＿前期末実施額簿価 = :Ｄ９２１−税務−前期末実施額簿価
008840*      ,税務＿前期実施額累計 = :Ｄ９２１−税務−前期実施額累計    
008850*      ,税務＿前期繰越超過額 = :Ｄ９２１−税務−前期繰越超過額    
008860*      ,税務＿前期償却不足額 = :Ｄ９２１−税務−前期償却不足額    
008870*      ,税務＿当期償却限度額 = :Ｄ９２１−税務−当期償却限度額    
008880*      ,税務＿当期償却実施額 = :Ｄ９２１−税務−当期償却実施額    
008890*      ,税務＿当期償却実施額累計 =                                
008900*                              :Ｄ９２１−税務−当期償却実施額累計
008910*      ,税務＿当期償却不足額 = :Ｄ９２１−税務−当期償却不足額    
008920*      ,税務＿当期償却超過額 = :Ｄ９２１−税務−当期償却超過額    
008930*      ,税務＿当期償却への振替額 =                                
008940*                              :Ｄ９２１−税務−当期償却への振替額
008950*      ,税務＿当期末実施額簿価 = :Ｄ９２１−税務−当期末実施額簿価
008960*      ,税務＿前期末法定簿価 = :Ｄ９２１−税務−前期末法定簿価    
008970*      ,税務＿当期末法定簿価 = :Ｄ９２１−税務−当期末法定簿価    
008980*    WHERE  キー情報＿契約番号 = :ＷＳ−Ｎ−契約番号              
008990*      AND  キー情報＿物件番号 = :ＷＳ−Ｎ−新物件番号        
009000*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 148 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−動総付保区分 IN
               資産情報テーブル
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−付保日 IN
               資産情報テーブル
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−動総付保開始年月日 IN
               資産情報テーブル
               SQL-SQHSTV(3)
           MOVE 8 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−動総保険料 IN
               資産情報テーブル
               SQL-SQHSTV(4)
           MOVE 7 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−事故有無 IN
               資産情報テーブル
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−事故日 IN
               資産情報テーブル
               SQL-SQHSTV(6)
           MOVE 8 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−保険継続 IN
               資産情報テーブル
               SQL-SQHSTV(7)
           MOVE 1 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−保険料率 IN
               資産情報テーブル
               SQL-SQHSTV(8)
           MOVE 5 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−保険価格 IN
               資産情報テーブル
               SQL-SQHSTV(9)
           MOVE 7 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−返戻保険料 IN
               資産情報テーブル
               SQL-SQHSTV(10)
           MOVE 7 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−動総保険証券番号 IN
               資産情報テーブル
               SQL-SQHSTV(11)
           MOVE 11 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−付保率 IN
               資産情報テーブル
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−継続リース償却対象額 IN
               資産情報テーブル
               SQL-SQHSTV(13)
           MOVE 7 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               Ｄ９２１−動総保険−設置場所名カナ IN
               資産情報テーブル
               SQL-SQHSTV(14)
           MOVE 80 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               Ｄ９２１−信用保険−信用保険会社コード IN
               資産情報テーブル
               SQL-SQHSTV(15)
           MOVE 1 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               Ｄ９２１−信用保険−機械類分類コード IN
               資産情報テーブル
               SQL-SQHSTV(16)
           MOVE 2 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               Ｄ９２１−信用保険−通知書発送日 IN
               資産情報テーブル
               SQL-SQHSTV(17)
           MOVE 8 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               Ｄ９２１−信用保険−保険料 IN
               資産情報テーブル
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               Ｄ９２１−信用保険−符号 IN
               資産情報テーブル
               SQL-SQHSTV(19)
           MOVE 5 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−前年度納付先コード IN
               資産情報テーブル
               SQL-SQHSTV(20)
           MOVE 11 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−納付先コード IN
               資産情報テーブル
               SQL-SQHSTV(21)
           MOVE 6 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−年税額 IN
               資産情報テーブル
               SQL-SQHSTV(22)
           MOVE 7 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−前年度評価額 IN
               資産情報テーブル
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−前年度理論簿価 IN
               資産情報テーブル
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−当年度評価額 IN
               資産情報テーブル
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               Ｄ９２１−固定資産税−当年度理論簿価 IN
               資産情報テーブル
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−償却停止フラグ IN
               資産情報テーブル
               SQL-SQHSTV(27)
           MOVE 1 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−償却停止日 IN
               資産情報テーブル
               SQL-SQHSTV(28)
           MOVE 8 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−前期末簿価 IN
               資産情報テーブル
               SQL-SQHSTV(29)
           MOVE 7 TO SQL-SQHSTL(29)
           MOVE 0 TO SQL-SQHSTS(29)
           MOVE 0 TO SQL-SQINDV(29)
           MOVE 0 TO SQL-SQINDS(29)
           MOVE 0 TO SQL-SQHARM(29)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−前期迄償却額累計 IN
               資産情報テーブル
               SQL-SQHSTV(30)
           MOVE 7 TO SQL-SQHSTL(30)
           MOVE 0 TO SQL-SQHSTS(30)
           MOVE 0 TO SQL-SQINDV(30)
           MOVE 0 TO SQL-SQINDS(30)
           MOVE 0 TO SQL-SQHARM(30)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−前月迄償却額累計 IN
               資産情報テーブル
               SQL-SQHSTV(31)
           MOVE 7 TO SQL-SQHSTL(31)
           MOVE 0 TO SQL-SQHSTS(31)
           MOVE 0 TO SQL-SQINDV(31)
           MOVE 0 TO SQL-SQINDS(31)
           MOVE 0 TO SQL-SQHARM(31)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−現在簿価 IN
               資産情報テーブル
               SQL-SQHSTV(32)
           MOVE 7 TO SQL-SQHSTL(32)
           MOVE 0 TO SQL-SQHSTS(32)
           MOVE 0 TO SQL-SQINDV(32)
           MOVE 0 TO SQL-SQINDS(32)
           MOVE 0 TO SQL-SQHARM(32)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−除却簿価 IN
               資産情報テーブル
               SQL-SQHSTV(33)
           MOVE 7 TO SQL-SQHSTL(33)
           MOVE 0 TO SQL-SQHSTS(33)
           MOVE 0 TO SQL-SQINDV(33)
           MOVE 0 TO SQL-SQINDS(33)
           MOVE 0 TO SQL-SQHARM(33)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−当月迄償却額累計 IN
               資産情報テーブル
               SQL-SQHSTV(34)
           MOVE 7 TO SQL-SQHSTL(34)
           MOVE 0 TO SQL-SQHSTS(34)
           MOVE 0 TO SQL-SQINDV(34)
           MOVE 0 TO SQL-SQINDS(34)
           MOVE 0 TO SQL-SQHARM(34)
           CALL "SQLADR" USING
               Ｄ９２１−会社理論−当期償却額 IN
               資産情報テーブル
               SQL-SQHSTV(35)
           MOVE 7 TO SQL-SQHSTL(35)
           MOVE 0 TO SQL-SQHSTS(35)
           MOVE 0 TO SQL-SQINDV(35)
           MOVE 0 TO SQL-SQINDS(35)
           MOVE 0 TO SQL-SQHARM(35)
           CALL "SQLADR" USING
               Ｄ９２１−管理会計−前期末簿価 IN
               資産情報テーブル
               SQL-SQHSTV(36)
           MOVE 7 TO SQL-SQHSTL(36)
           MOVE 0 TO SQL-SQHSTS(36)
           MOVE 0 TO SQL-SQINDV(36)
           MOVE 0 TO SQL-SQINDS(36)
           MOVE 0 TO SQL-SQHARM(36)
           CALL "SQLADR" USING
               Ｄ９２１−管理会計−前期迄償却額累計 IN
               資産情報テーブル
               SQL-SQHSTV(37)
           MOVE 7 TO SQL-SQHSTL(37)
           MOVE 0 TO SQL-SQHSTS(37)
           MOVE 0 TO SQL-SQINDV(37)
           MOVE 0 TO SQL-SQINDS(37)
           MOVE 0 TO SQL-SQHARM(37)
           CALL "SQLADR" USING
               Ｄ９２１−管理会計−前月迄償却額累計 IN
               資産情報テーブル
               SQL-SQHSTV(38)
           MOVE 7 TO SQL-SQHSTL(38)
           MOVE 0 TO SQL-SQHSTS(38)
           MOVE 0 TO SQL-SQINDV(38)
           MOVE 0 TO SQL-SQINDS(38)
           MOVE 0 TO SQL-SQHARM(38)
           CALL "SQLADR" USING
               Ｄ９２１−管理会計−現在簿価 IN
               資産情報テーブル
               SQL-SQHSTV(39)
           MOVE 7 TO SQL-SQHSTL(39)
           MOVE 0 TO SQL-SQHSTS(39)
           MOVE 0 TO SQL-SQINDV(39)
           MOVE 0 TO SQL-SQINDS(39)
           MOVE 0 TO SQL-SQHARM(39)
           CALL "SQLADR" USING
               Ｄ９２１−管理会計−当月迄償却額累計 IN
               資産情報テーブル
               SQL-SQHSTV(40)
           MOVE 7 TO SQL-SQHSTL(40)
           MOVE 0 TO SQL-SQHSTS(40)
           MOVE 0 TO SQL-SQINDV(40)
           MOVE 0 TO SQL-SQINDS(40)
           MOVE 0 TO SQL-SQHARM(40)
           CALL "SQLADR" USING
               Ｄ９２１−管理会計−当期償却額 IN
               資産情報テーブル
               SQL-SQHSTV(41)
           MOVE 7 TO SQL-SQHSTL(41)
           MOVE 0 TO SQL-SQHSTS(41)
           MOVE 0 TO SQL-SQINDV(41)
           MOVE 0 TO SQL-SQINDS(41)
           MOVE 0 TO SQL-SQHARM(41)
           CALL "SQLADR" USING
               Ｄ９２１−税務−割増償却 IN
               資産情報テーブル
               SQL-SQHSTV(42)
           MOVE 2 TO SQL-SQHSTL(42)
           MOVE 0 TO SQL-SQHSTS(42)
           MOVE 0 TO SQL-SQINDV(42)
           MOVE 0 TO SQL-SQINDS(42)
           MOVE 0 TO SQL-SQHARM(42)
           CALL "SQLADR" USING
               Ｄ９２１−税務−割増償却費 IN
               資産情報テーブル
               SQL-SQHSTV(43)
           MOVE 7 TO SQL-SQHSTL(43)
           MOVE 0 TO SQL-SQHSTS(43)
           MOVE 0 TO SQL-SQINDV(43)
           MOVE 0 TO SQL-SQINDS(43)
           MOVE 0 TO SQL-SQHARM(43)
           CALL "SQLADR" USING
               Ｄ９２１−税務−特別償却率分子 IN
               資産情報テーブル
               SQL-SQHSTV(44)
           MOVE 2 TO SQL-SQHSTL(44)
           MOVE 0 TO SQL-SQHSTS(44)
           MOVE 0 TO SQL-SQINDV(44)
           MOVE 0 TO SQL-SQINDS(44)
           MOVE 0 TO SQL-SQHARM(44)
           CALL "SQLADR" USING
               Ｄ９２１−税務−特別償却率分母 IN
               資産情報テーブル
               SQL-SQHSTV(45)
           MOVE 2 TO SQL-SQHSTL(45)
           MOVE 0 TO SQL-SQHSTS(45)
           MOVE 0 TO SQL-SQINDV(45)
           MOVE 0 TO SQL-SQINDS(45)
           MOVE 0 TO SQL-SQHARM(45)
           CALL "SQLADR" USING
               Ｄ９２１−税務−特別償却費 IN
               資産情報テーブル
               SQL-SQHSTV(46)
           MOVE 7 TO SQL-SQHSTL(46)
           MOVE 0 TO SQL-SQHSTS(46)
           MOVE 0 TO SQL-SQINDV(46)
           MOVE 0 TO SQL-SQINDS(46)
           MOVE 0 TO SQL-SQHARM(46)
           CALL "SQLADR" USING
               Ｄ９２１−税務−前期末実施額簿価 IN
               資産情報テーブル
               SQL-SQHSTV(47)
           MOVE 7 TO SQL-SQHSTL(47)
           MOVE 0 TO SQL-SQHSTS(47)
           MOVE 0 TO SQL-SQINDV(47)
           MOVE 0 TO SQL-SQINDS(47)
           MOVE 0 TO SQL-SQHARM(47)
           CALL "SQLADR" USING
               Ｄ９２１−税務−前期実施額累計 IN
               資産情報テーブル
               SQL-SQHSTV(48)
           MOVE 7 TO SQL-SQHSTL(48)
           MOVE 0 TO SQL-SQHSTS(48)
           MOVE 0 TO SQL-SQINDV(48)
           MOVE 0 TO SQL-SQINDS(48)
           MOVE 0 TO SQL-SQHARM(48)
           CALL "SQLADR" USING
               Ｄ９２１−税務−前期繰越超過額 IN
               資産情報テーブル
               SQL-SQHSTV(49)
           MOVE 7 TO SQL-SQHSTL(49)
           MOVE 0 TO SQL-SQHSTS(49)
           MOVE 0 TO SQL-SQINDV(49)
           MOVE 0 TO SQL-SQINDS(49)
           MOVE 0 TO SQL-SQHARM(49)
           CALL "SQLADR" USING
               Ｄ９２１−税務−前期償却不足額 IN
               資産情報テーブル
               SQL-SQHSTV(50)
           MOVE 7 TO SQL-SQHSTL(50)
           MOVE 0 TO SQL-SQHSTS(50)
           MOVE 0 TO SQL-SQINDV(50)
           MOVE 0 TO SQL-SQINDS(50)
           MOVE 0 TO SQL-SQHARM(50)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期償却限度額 IN
               資産情報テーブル
               SQL-SQHSTV(51)
           MOVE 7 TO SQL-SQHSTL(51)
           MOVE 0 TO SQL-SQHSTS(51)
           MOVE 0 TO SQL-SQINDV(51)
           MOVE 0 TO SQL-SQINDS(51)
           MOVE 0 TO SQL-SQHARM(51)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期償却実施額 IN
               資産情報テーブル
               SQL-SQHSTV(52)
           MOVE 7 TO SQL-SQHSTL(52)
           MOVE 0 TO SQL-SQHSTS(52)
           MOVE 0 TO SQL-SQINDV(52)
           MOVE 0 TO SQL-SQINDS(52)
           MOVE 0 TO SQL-SQHARM(52)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期償却実施額累計 IN
               資産情報テーブル
               SQL-SQHSTV(53)
           MOVE 7 TO SQL-SQHSTL(53)
           MOVE 0 TO SQL-SQHSTS(53)
           MOVE 0 TO SQL-SQINDV(53)
           MOVE 0 TO SQL-SQINDS(53)
           MOVE 0 TO SQL-SQHARM(53)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期償却不足額 IN
               資産情報テーブル
               SQL-SQHSTV(54)
           MOVE 7 TO SQL-SQHSTL(54)
           MOVE 0 TO SQL-SQHSTS(54)
           MOVE 0 TO SQL-SQINDV(54)
           MOVE 0 TO SQL-SQINDS(54)
           MOVE 0 TO SQL-SQHARM(54)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期償却超過額 IN
               資産情報テーブル
               SQL-SQHSTV(55)
           MOVE 7 TO SQL-SQHSTL(55)
           MOVE 0 TO SQL-SQHSTS(55)
           MOVE 0 TO SQL-SQINDV(55)
           MOVE 0 TO SQL-SQINDS(55)
           MOVE 0 TO SQL-SQHARM(55)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期償却への振替額 IN
               資産情報テーブル
               SQL-SQHSTV(56)
           MOVE 7 TO SQL-SQHSTL(56)
           MOVE 0 TO SQL-SQHSTS(56)
           MOVE 0 TO SQL-SQINDV(56)
           MOVE 0 TO SQL-SQINDS(56)
           MOVE 0 TO SQL-SQHARM(56)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期末実施額簿価 IN
               資産情報テーブル
               SQL-SQHSTV(57)
           MOVE 7 TO SQL-SQHSTL(57)
           MOVE 0 TO SQL-SQHSTS(57)
           MOVE 0 TO SQL-SQINDV(57)
           MOVE 0 TO SQL-SQINDS(57)
           MOVE 0 TO SQL-SQHARM(57)
           CALL "SQLADR" USING
               Ｄ９２１−税務−前期末法定簿価 IN
               資産情報テーブル
               SQL-SQHSTV(58)
           MOVE 7 TO SQL-SQHSTL(58)
           MOVE 0 TO SQL-SQHSTS(58)
           MOVE 0 TO SQL-SQINDV(58)
           MOVE 0 TO SQL-SQINDS(58)
           MOVE 0 TO SQL-SQHARM(58)
           CALL "SQLADR" USING
               Ｄ９２１−税務−当期末法定簿価 IN
               資産情報テーブル
               SQL-SQHSTV(59)
           MOVE 7 TO SQL-SQHSTL(59)
           MOVE 0 TO SQL-SQHSTS(59)
           MOVE 0 TO SQL-SQINDV(59)
           MOVE 0 TO SQL-SQINDS(59)
           MOVE 0 TO SQL-SQHARM(59)
           CALL "SQLADR" USING
               ＷＳ−Ｎ−契約番号 IN
               ＮＥＷキー IN
               ＫＥＹ−エリア
               SQL-SQHSTV(60)
           MOVE 10 TO SQL-SQHSTL(60)
           MOVE 0 TO SQL-SQHSTS(60)
           MOVE 0 TO SQL-SQINDV(60)
           MOVE 0 TO SQL-SQINDS(60)
           MOVE 0 TO SQL-SQHARM(60)
           CALL "SQLADR" USING
               ＷＳ−Ｎ−新物件番号 IN
               ＮＥＷキー IN
               ＫＥＹ−エリア
               SQL-SQHSTV(61)
           MOVE 3 TO SQL-SQHSTL(61)
           MOVE 0 TO SQL-SQHSTS(61)
           MOVE 0 TO SQL-SQINDV(61)
           MOVE 0 TO SQL-SQINDS(61)
           MOVE 0 TO SQL-SQHARM(61)
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
009010*                                                                 
009020     EVALUATE  SQLCODE                                            
009030        WHEN  定数−ＳＱＬＯＫ                                    
009040*--<       資産情報関連項目更新正常 >                             
009050           COMPUTE  Ｗ−更新−件数 = Ｗ−更新−件数 + 1           
009060        WHEN  OTHER                                               
009070*--<       資産情報関連項目更新ラー >                             
009080           MOVE -70                   TO  Ｗ−エラーコード        
009090           PERFORM  ＤＢロールバック処理                          
009100           PERFORM  エラー処理                                    
009110     END-EVALUATE.                                                
009120*                                                                 
009130 資産情報関連項目更新−ＥＸＩＴ.                                  
009140     EXIT.                                                        
009150*                                                                 
009160******************************************************************
009170*    終了処理                                        <3.0>       *
009180******************************************************************
009190 終了処理                             SECTION.                    
009200 終了処理−ＳＴＡＲＴ.                                            
009210*                                                                 
009220*----------------------------------------------------------------*
009230*    ファイルクローズ                                <3.1>       *
009240*----------------------------------------------------------------*
009250     CLOSE  入力ファイル.                                         
009260*                                                                 
009270     PERFORM  ＤＢクローズ処理.                                   
009280*                                                                 
009290     PERFORM  ＤＢコミット処理.                                   
009300*                                                                 
009310     PERFORM  件数メッセージ出力.                                 
009320*                                                                 
009330     PERFORM  終了メッセージ出力.                                 
009340*                                                                 
009350*--< プログラム正常終了 >                                         
009360     MOVE  定数−正常状態             TO  PROGRAM-STATUS.         
009370*                                                                 
009380 終了処理−ＥＸＩＴ.                                              
009390     EXIT.                                                        
009400******************************************************************
009410*    ＤＢクローズ                                    <3.2>       *
009420******************************************************************
009430 ＤＢクローズ処理                     SECTION.                    
009440 ＤＢクローズ処理−ＳＴＡＲＴ.                                    
009450*                                                                 
009460*--< カーソル クローズ >                                          
009470     
      *    EXEC SQL                                                     
009480*       CLOSE  CUR1                                               
009490*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 407 TO SQL-OFFSET
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
009500                                                                  
009510 ＤＢクローズ処理−ＥＸＩＴ.                                      
009520     EXIT.                                                        
009530                                                                  
009540******************************************************************
009550*    ＤＢコミット処理                                <3.3>       *
009560******************************************************************
009570 ＤＢコミット処理                     SECTION.                    
009580 ＤＢコミット処理−ＳＴＡＲＴ.                                    
009590*                                                                 
009600     
      *    EXEC  SQL                                                    
009610*       COMMIT  WORK  RELEASE                                     
009620*    END-EXEC.
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
009630*                                                                 
009640     INITIALIZE                       IF-CHOCO001.                
009650     MOVE  "3"                        TO  共１−イベント種別.     
009660     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
009670     MOVE  "0"                        TO  共１−復帰コード.       
009680     MOVE  "COMMIT"                   TO  共１−処理識別.         
009690     MOVE  "コミット実施"             TO  共１−その他メッセージ. 
009700     CALL  CLOCO001                USING  IF-CHOCO001.            
009710*                                                                 
009720 ＤＢコミット処理−ＥＸＩＴ.                                      
009730     EXIT.                                                        
009740*                                                                 
009750******************************************************************
009760*    ＤＢロールバック処理                                        *
009770******************************************************************
009780 ＤＢロールバック処理                 SECTION.                    
009790 ＤＢロールバック処理−ＳＴＡＲＴ.                                
009800*                                                                 
009810     
      *    EXEC  SQL                                                    
009820*       ROLLBACK WORK  RELEASE                                    
009830*    END-EXEC.
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
009840*                                                                 
009850     INITIALIZE                       IF-CHOCO001.                
009860     MOVE  "1"                        TO  共１−イベント種別.     
009870     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
009880     MOVE  "9"                        TO  共１−復帰コード.       
009890     MOVE  "ROLLBACK"                 TO  共１−処理識別.         
009900     MOVE  "ロールバック実施"         TO  共１−その他メッセージ. 
009910     CALL  CLOCO001                USING  IF-CHOCO001.            
009920*                                                                 
009930 ＤＢロールバック処理−ＥＸＩＴ.                                  
009940     EXIT.                                                        
009950*                                                                 
009960******************************************************************
009970*    件数メッセージ出力処理                          <3.4>       *
009980******************************************************************
009990 件数メッセージ出力                   SECTION.                    
010000 件数メッセージ出力−ＳＴＡＲＴ.                                  
010010*                                                                 
010020     INITIALIZE                       IF-CHOCO001.                
010030     MOVE  "3"                        TO  共１−イベント種別.     
010040     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
010050     MOVE  "0"                        TO  共１−復帰コード.       
010060     MOVE  "IKOTBL010"                TO  共１−処理テーブルＩＤ. 
010070     MOVE  "COUNT"                    TO  共１−処理識別.         
010080     MOVE  Ｗ−入力−件数２           TO  共１−データ内容.       
010090     MOVE  "新物件番号採番テーブル読込件数"                       
010100                                      TO  共１−その他メッセージ. 
010110     CALL  CLOCO001                USING  IF-CHOCO001.            
010120*                                                                 
010130     INITIALIZE                       IF-CHOCO001.                
010140     MOVE  "3"                        TO  共１−イベント種別.     
010150     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
010160     MOVE  "0"                        TO  共１−復帰コード.       
010170     MOVE  "FFUIS772"                 TO  共１−処理テーブルＩＤ. 
010180     MOVE  "COUNT"                    TO  共１−処理識別.         
010190     MOVE  Ｗ−入力−件数１           TO  共１−データ内容.       
010200     MOVE  "資産明細読読込件数"       TO  共１−その他メッセージ. 
010210     CALL  CLOCO001                USING  IF-CHOCO001.            
010220*                                                                 
010230     INITIALIZE                       IF-CHOCO001.                
010240     MOVE  "3"                        TO  共１−イベント種別.     
010250     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
010260     MOVE  "0"                        TO  共１−復帰コード.       
010270     MOVE  "D921SIJ"                  TO  共１−処理テーブルＩＤ. 
010280     MOVE  "COUNT"                    TO  共１−処理識別.         
010290     MOVE  Ｗ−更新−件数             TO  共１−データ内容.       
010300     MOVE  "資産情報テーブル更新件数" TO  共１−その他メッセージ. 
010310     CALL  CLOCO001                USING  IF-CHOCO001.            
010320*                                                                 
010330 件数メッセージ出力−ＥＸＩＴ.                                    
010340     EXIT.                                                        
010350*                                                                 
010360******************************************************************
010370*    終了メッセージ出力                              <3.5>       *
010380******************************************************************
010390 終了メッセージ出力                   SECTION.                    
010400 終了メッセージ出力−ＳＴＡＲＴ.                                  
010410*                                                                 
010420     INITIALIZE                       IF-CHOCO001.                
010430     MOVE  "3"                        TO  共１−イベント種別.     
010440     MOVE  定数−プログラムＩＤ       TO  共１−ソースＩＤ.       
010450     MOVE  "0"                        TO  共１−復帰コード.       
010460     MOVE  "END"                      TO  共１−処理識別.         
010470     MOVE  定数−プログラム名         TO  共１−その他メッセージ. 
010480     CALL  CLOCO001                USING  IF-CHOCO001.            
010490*                                                                 
010500 終了メッセージ出力−ＥＸＩＴ.                                    
010510     EXIT.                                                        
010520*                                                                 
010530******************************************************************
010540*    エラー処理                                          <4.0>   *
010550******************************************************************
010560 エラー処理                           SECTION.                    
010570 エラー処理−ＳＴＡＲＴ.                                          
010580*                                                                 
010590     MOVE  "Y"                        TO  Ｗ−異常終了−フラグ.   
010600     INITIALIZE                       IF-CHOCO001.                
010610*                                                                 
010620     EVALUATE  Ｗ−エラーコード                                   
010630        WHEN  -10                                                 
010640*--<       ＯＲＡＣＬＥ接続失敗 >                                 
010650           MOVE  "1"                  TO  共１−イベント種別      
010660           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
010670           MOVE  "9"                  TO  共１−復帰コード        
010680           MOVE  "CONNECT"            TO  共１−処理識別          
010690           MOVE  SQLCODE              TO  共１−データ内容        
010700           MOVE  SQLERRMC             TO  共１−その他メッセージ  
010710           CALL  CLOCO001          USING  IF-CHOCO001             
010720*                                                                 
010730        WHEN  -20                                                 
010740*--<       入力ファイルオープンエラー >                           
010750           MOVE  "1"                  TO  共１−イベント種別      
010760           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
010770           MOVE  "9"                  TO  共１−復帰コード        
010780           MOVE  "FFUIS772"           TO  共１−処理テーブルＩＤ  
010790           MOVE  "OPEN"               TO  共１−処理識別          
010800           MOVE  Ｗ−状態             TO  共１−データ内容        
010810           MOVE  "資産明細(入力)ファイルオープンエラー"           
010820                                      TO  共１−その他メッセージ  
010830           CALL  CLOCO001          USING  IF-CHOCO001             
010840*                                                                 
010850        WHEN  -30                                                 
010860*--<       ファイル読込エラー>                                    
010870           MOVE  "1"                  TO  共１−イベント種別      
010880           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
010890           MOVE  "9"                  TO  共１−復帰コード        
010900           MOVE  "FFUI772"            TO  共１−処理テーブルＩＤ  
010910           MOVE  "READ"               TO  共１−処理識別          
010920           MOVE  Ｗ−状態             TO  共１−データ内容        
010930           MOVE  "資産明細(入力)ファイル読込エラー"               
010940                                      TO  共１−その他メッセージ  
010950           CALL  CLOCO001          USING  IF-CHOCO001             
010960*                                                                 
010970        WHEN  -40                                                 
010980*--<       新物件番号採番失敗 >                                   
010990           MOVE  "2"                  TO  共１−イベント種別      
011000           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
011010           MOVE  "9"                  TO  共１−復帰コード        
011020           MOVE  "IKOTBL010"          TO  共１−処理テーブルＩＤ  
011030           MOVE  "SELECT"             TO  共１−処理識別          
011040           MOVE  SQLCODE              TO  共１−データ内容        
011050           MOVE  SQLERRMC             TO  共１−その他メッセージ  
011060           CALL  CLOCO001          USING  IF-CHOCO001             
011070           MOVE  "N"                  TO  Ｗ−異常終了−フラグ    
011080*                                                                 
011090        WHEN  -50                                                 
011100*--<       ブルカーソルオープン失敗 >                             
011110           MOVE  "1"                  TO  共１−イベント種別      
011120           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
011130           MOVE  "9"                  TO  共１−復帰コード        
011140           MOVE  "D921SIJ"            TO  共１−処理テーブルＩＤ  
011150           MOVE  "OPEN"               TO  共１−処理識別          
011160           MOVE  SQLCODE              TO  共１−データ内容        
011170           MOVE  SQLERRMC             TO  共１−その他メッセージ  
011180           CALL  CLOCO001          USING  IF-CHOCO001             
011190*                                                                 
011200        WHEN  -60                                                 
011210*--<       テーブルカーソル読込エラー >                           
011220           MOVE  "2"                  TO  共１−イベント種別      
011230           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
011240           MOVE  "9"                  TO  共１−復帰コード        
011250           MOVE  "D921SIJ"            TO  共１−処理テーブルＩＤ  
011260           MOVE  "FETCH"              TO  共１−処理識別          
011270           MOVE  SQLCODE              TO  共１−データ内容        
011280           MOVE  SQLERRMC             TO  共１−その他メッセージ  
011290           CALL  CLOCO001          USING  IF-CHOCO001             
011300           MOVE  "N"                  TO  Ｗ−異常終了−フラグ    
011310*                                                                 
011320        WHEN  -70                                                 
011330*--<       資産情報関連項目更新失敗 >                             
011340           MOVE  "2"                  TO  共１−イベント種別      
011350           MOVE  定数−プログラムＩＤ TO  共１−ソースＩＤ        
011360           MOVE  "9"                  TO  共１−復帰コード        
011370           MOVE  "D921SIJ"            TO  共１−処理テーブルＩＤ  
011380           MOVE  "UPDATE"             TO  共１−処理識別          
011390           MOVE  SQLCODE              TO  共１−データ内容        
011400           MOVE  SQLERRMC             TO  共１−その他メッセージ  
011410           CALL  CLOCO001          USING  IF-CHOCO001             
011420           MOVE  "N"                  TO  Ｗ−異常終了−フラグ    
011430*                                                                 
011440        WHEN  OTHER                                               
011450           MOVE  "N"                  TO  Ｗ−異常終了−フラグ    
011460     END-EVALUATE.                                                
011470*                                                                 
011480     IF  Ｗ−異常終了−フラグ  =  "Y"                             
011490*----------------------------------------------------------------*
011500*    終了メッセージ出力処理                                      *
011510*----------------------------------------------------------------*
011520        PERFORM  ＤＢクローズ処理                                 
011530*                                                                 
011540        PERFORM  件数メッセージ出力                               
011550*                                                                 
011560        PERFORM  終了メッセージ出力                               
011570*--<    プログラムリターンコード >                                
011580        MOVE  定数−異常状態          TO  PROGRAM-STATUS          
011590        EXIT  PROGRAM                                             
011600     END-IF.                                                      
011610*                                                                 
011620 エラー処理−ＥＸＩＴ.                                            
011630      EXIT.                                                       
011640******************************************************************
011650*                  END OF PROGRAM                                *
011660******************************************************************
