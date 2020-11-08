000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名  : 変則払転移行処理                       *
000040*      2. プログラムID  : COBIS410                               *
000050*      3. 処理概要      : 変則払の転リースデータを作成する。     *
000060*                                                                *
000070*      4. 作成者        : 王軍                                   *
000080*      5. 作成日        : 2005.04.04                             *
000090******************************************************************
000100*                                                                 
000110******************************************************************
000120*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000130******************************************************************
000140 IDENTIFICATION                       DIVISION.                   
000150*                                                                 
000160 PROGRAM-ID.                          COBIS410.                   
000170******************************************************************
000180*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000190******************************************************************
000200 ENVIRONMENT                          DIVISION.                   
000210******************************************************************
000220*    ＩＮＰＵＴ－ＯＵＴＰＵＴ      ＳＥＣＴＩＯＮ                *
000230******************************************************************
000240 INPUT-OUTPUT                         SECTION.                    
000250*                                                                 
000260 FILE-CONTROL.                                                    
000270     SELECT    入力ファイル１         ASSIGN    TO     U01        
000280     FILE      STATUS     IS          Ｗ－状態                    
000290     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000300*                                                                 
000310     SELECT    入力ファイル２         ASSIGN    TO     U02        
000320     FILE      STATUS     IS          Ｗ－状態                    
000330     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000340*                                                                 
000350******************************************************************
000360*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000370******************************************************************
000380 DATA                                 DIVISION.                   
000390******************************************************************
000400*    ＦＩＬＥ                      ＳＥＣＴＩＯＮ                *
000410******************************************************************
000420 FILE                                 SECTION.                    
000430*----------------------------------------------------------------*
000440*    出力ファイル                                                *
000450*----------------------------------------------------------------*
000460 FD  入力ファイル１                                               
000470     LABEL     RECORD     IS          STANDARD                    
000480     BLOCK     CONTAINS   0           RECORDS.                    
000490*                                                                 
000500 01  入力１－レコード.                                            
000510     COPY  CPBIS043  REPLACING  ==()==  BY  ==入力１－==.         
000520*                                                                 
000530 FD  入力ファイル２                                               
000540     LABEL     RECORD     IS          STANDARD                    
000550     BLOCK     CONTAINS   0           RECORDS.                    
000560*                                                                 
000570 01  入力２－レコード.                                            
000580     COPY  CPBIS042  REPLACING  ==()==  BY  ==入力２－==.         
000590*                                                                 
000600******************************************************************
000610*  ＷＯＲＫＩＮＧ－ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000620******************************************************************
000630  WORKING-STORAGE                     SECTION.                    
000640*----------------------------------------------------------------*
000650*    ホスト変数定義エリア                                        *
000660*----------------------------------------------------------------*
000670     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "COBIS410.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(134) VALUE "select 再リース回数  ,契約種類  
      -     " into :b1,:b2  from IKOTBL002 where ((契約ＮＯ=:b3 and 再リ
      -    "ースコード=:b4) and 債務勘定処理コード=:b5)".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE "insert into D343HTN_TBL(契約番号
      -    ",再リース回数,契約種類,開始回,開始年月,終了回,終了年月,金額,
      -     "消費税,更新年月日,更新時間,更新者,入力担当者コード,登録年月
      -    "日,登録時".

           02  FILLER PIC X(94) VALUE "間,登録担当者) values (:b1,:b2,:b
      -    "3,:b4,:b5,:b6,:b7,:b8,:b9,:b10,:b11,:b12,:b13,:b14,:b15,:b16
      -    ")".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +287781.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +16.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 16 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 16 TIMES.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +272.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +276.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +134.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +496.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +102.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +254.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +603.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +16.
           02     FILLER PIC S9(4) COMP-5 VALUE +16.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +181.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +690.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +196.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +710.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000680*                                                                 
000690*--< 債務契約ＮＯ>                                                
000700 01  ＷＳ－債務契約ＮＯ               PIC  X(09).                 
000710*--< 再リースコード>                                              
000720 01  ＷＳ－再リースコード             PIC  9(01).                 
000730*--< 債務勘定処理コード>                                          
000740 01  ＷＳ－債務勘定処理コード         PIC  9(02).                 
000750*                                                                 
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
000820*--< 変則払転レコード>                                            
000830     
      *    EXEC  SQL  INCLUDE  D343HTN.CBL           END-EXEC.
000840*                                                                 
000850*--< 契約種類等変換テーブル>                                      
      *****************************************************************
      *   変則払転(D343HTN_TBL)
      *****************************************************************
       01  変則払転.
           03  Ｄ３４３－契約番号    PIC  X(010).
           03  Ｄ３４３－再リース回数
                                     PIC S9(002) PACKED-DECIMAL.
           03  Ｄ３４３－契約種類    PIC  X(003).
           03  Ｄ３４３－開始回      PIC S9(003) PACKED-DECIMAL.
           03  Ｄ３４３－開始年月    PIC  X(006).
           03  Ｄ３４３－終了回      PIC S9(003) PACKED-DECIMAL.
           03  Ｄ３４３－終了年月    PIC  X(006).
           03  Ｄ３４３－金額        PIC S9(013) PACKED-DECIMAL.
           03  Ｄ３４３－消費税      PIC S9(013) PACKED-DECIMAL.
           03  Ｄ３４３－更新年月日  PIC  X(008).
           03  Ｄ３４３－更新時間    PIC  X(008).
           03  Ｄ３４３－更新者      PIC  X(008).
           03  Ｄ３４３－入力担当者コード
                                     PIC  X(008).
           03  Ｄ３４３－登録年月日  PIC  X(008).
           03  Ｄ３４３－登録時間    PIC  X(008).
           03  Ｄ３４３－登録担当者  PIC  X(008).
000860     
      *    EXEC  SQL  INCLUDE  IKOTBL002.CBL         END-EXEC.
000870*                                                                 
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
000880     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000890*----------------------------------------------------------------*
000900*    ＷＯＲＫエリア                                              *
000910*----------------------------------------------------------------*
000920 01  ＷＯＲＫ－エリア.                                            
000930*                                                                 
000940*--< ワークエリア項目>                                            
000950     03  Ｗ－実支払額                 PIC S9(03).                 
000960     03  Ｗ－支払回数番号             PIC S9(04).                 
000970     03  Ｗ－支払年月                 PIC X(6).                   
000980*                                                                 
000990*--< ファイル状態 >                                               
001000     03  Ｗ－状態エリア.                                          
001010         05  Ｗ－状態                 PIC  X(02).                 
001020*                                                                 
001030*--< 出力判定用>                                                  
001040     03  Ｗ－出力フラグ               PIC  X(01).                 
001050*                                                                 
001060*--< エラー判定用 >                                               
001070     03  Ｗ－エラーコード             PIC S9(04).                 
001080*                                                                 
001090*--< フラグアリア >                                               
001100     03  フラグアリア.                                            
001110         05  Ｗ－終了－フラグ１       PIC  X(01).                 
001120         05  Ｗ－終了－フラグ２       PIC  X(01).                 
001130         05  Ｗ－異常終了－フラグ     PIC  X(01).                 
001140*                                                                 
001150*--< キーエリア >                                                 
001160     03  Ｗ－キーエリア.                                          
001170         05  Ｗ－ＫＥＹ－債務明細.                                
001180             07  Ｗ－債務契約ＮＯ１   PIC  X(10).                 
001190             07  Ｗ－再リースコード１ PIC  S9(1).                 
001200             07  Ｗ－契約明細ＮＯ１   PIC  S9(2).                 
001210             07  Ｗ－レコードシーケンス１                         
001220                                      PIC  S9(1).                 
001230*                                                                 
001240         05  Ｗ－ＫＥＹ－債務展開.                                
001250             07  Ｗ－債務契約ＮＯ２   PIC  X(10).                 
001260             07  Ｗ－再リースコード２ PIC  S9(1).                 
001270             07  Ｗ－契約明細ＮＯ２   PIC  S9(2).                 
001280             07  Ｗ－レコードシーケンス２                         
001290                                      PIC  S9(1).                 
001300*                                                                 
001310*--< 件数エリア >                                                 
001320     03  件数エリア.                                              
001330         05  Ｗ－入力－件数１         PIC  9(09).                 
001340         05  Ｗ－入力－件数２         PIC  9(09).                 
001350         05  Ｗ－出力－件数           PIC  9(09).                 
001360*                                                                 
001370*--< 共通情報 >                                                   
001380 01  Ｗ－共通情報.                                                
001390     03  Ｗ－システム日付.                                        
001400         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001410         05  Ｗ－年月日               PIC  X(06).                 
001420     03  Ｗ－システム時刻             PIC  X(08).                 
001430     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001440*                                                                 
001450*----------------------------------------------------------------*
001460*    サブルーチン名                                              *
001470*----------------------------------------------------------------*
001480 01  CALL-AREA.                                                   
001490*--< 共通ログサブルーチン >                                       
001500     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001510     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001520*                                                                 
001530*----------------------------------------------------------------*
001540*    ＣＯＰＹ領域                                                *
001550*----------------------------------------------------------------*
001560*--< 共通ログ用パラメータ >                                       
001570 01  IF-CHOCO001.                                                 
001580     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１－==.           
001590*                                                                 
001600*----------------------------------------------------------------*
001610*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001620*----------------------------------------------------------------*
001630 01  PARA-AREA.                                                   
001640     COPY CPBCO001.                                               
001650******************************************************************
001660*    定数用データ定義エリア                                      *
001670******************************************************************
001680 CONSTANT                             SECTION.                    
001690 01  定数領域.                                                    
001700     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS410".
001710     03  定数－プログラム名           PIC  X(80) VALUE            
001720                                               "変則払転移行処理".
001730     03  定数－ＳＱＬＯＫ             PIC S9(04)  VALUE  ZERO.    
001740     03  定数－ＳＱＬＥＮＤ           PIC S9(04)  VALUE  0100.    
001750     03  定数－正常状態               PIC S9(04)  VALUE  ZERO.    
001760     03  定数－異常状態               PIC S9(04)  VALUE  0009.    
001770******************************************************************
001780*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001790******************************************************************
001800 PROCEDURE                            DIVISION.                   
001810*                                                                 
001820     PERFORM  初期処理.                                           
001830*                                                                 
001840     PERFORM  主処理  UNTIL  Ｗ－終了－フラグ１  =  "Y"           
001850                        AND  Ｗ－終了－フラグ２  =  "Y".          
001860*                                                                 
001870     PERFORM  終了処理.                                           
001880*                                                                 
001890     STOP     RUN.                                                
001900*                                                                 
001910******************************************************************
001920*    初期処理                                                    *
001930******************************************************************
001940 初期処理                             SECTION.                    
001950 初期処理－ＳＴＡＲＴ.                                            
001960*                                                                 
001970*----------------------------------------------------------------*
001980*    開始メッセージ出力処理                                  1.1 *
001990*----------------------------------------------------------------*
002000     INITIALIZE                       IF-CHOCO001.                
002010     MOVE  "3"                        TO  共１－イベント種別.     
002020     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
002030     MOVE  "0"                        TO  共１－復帰コード.       
002040     MOVE  "START"                    TO  共１－処理識別.         
002050     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
002060     CALL  CLOCO001                USING  IF-CHOCO001.            
002070*                                                                 
002080*----------------------------------------------------------------*
002090*    作業領域の初期値処理                                    1.2 *
002100*----------------------------------------------------------------*
002110     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
002120     INITIALIZE                           ＷＯＲＫ－エリア.       
002130*                                                                 
002140*--< 出力レコードの初期化処理 >                                   
002150     MOVE  SPACE                      TO  変則払転.               
002160     INITIALIZE                           変則払転.               
002170*                                                                 
002180*--< ＣＰＵ日付を取得 >                                           
002190     ACCEPT  Ｗ－年月日               FROM  DATE.                 
002200*                                                                 
002210*--< ＣＰＵ時刻を取得 >                                           
002220     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
002230*                                                                 
002240*----------------------------------------------------------------*
002250*    ＯＲＡＣＬＥ接続                                        1.3 *
002260*----------------------------------------------------------------*
002270     PERFORM  ＯＲＡＣＬＥ接続.                                   
002280*----------------------------------------------------------------*
002290*    ファイルオープン                                        1.4 *
002300*----------------------------------------------------------------*
002310     PERFORM  ファイルオープン.                                   
002320*----------------------------------------------------------------*
002330*    債務明細レコード読込処理（１件目）                      1.5 *
002340*----------------------------------------------------------------*
002350     PERFORM  債務明細レコード読込処理.                           
002360*----------------------------------------------------------------*
002370*    債務展開レコード読込処理（１件目）                      1.6 *
002380*----------------------------------------------------------------*
002390     PERFORM  債務展開レコード読込処理.                           
002400*                                                                 
002410*--< 対象抽出判定>                                                
002420     IF    (入力１－債務協調コード = "45"                         
002430        OR  入力１－債務協調コード = "46"                         
002440        OR  入力１－債務協調コード = "55"                         
002450        OR  入力１－債務協調コード = "56")                        
002460        AND    入力１－計算方式 = "2"                             
002470        CONTINUE                                                  
002480     ELSE                                                         
002490        IF  Ｗ－終了－フラグ１  NOT =  "Y"                        
002500           PERFORM  債務明細レコード読込処理                      
002510     END-IF.                                                      
002520*                                                                 
002530 初期処理－ＥＸＩＴ.                                              
002540     EXIT.                                                        
002550******************************************************************
002560*    ＯＲＡＣＬＥ接続                                            *
002570******************************************************************
002580 ＯＲＡＣＬＥ接続                     SECTION.                    
002590 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
002600*                                                                 
002610*--< ＤＢ接続用情報を取得処理 >                                   
002620     CALL  COBCO001                USING  PARA-AREA.              
002630*                                                                 
002640     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002650     MOVE  PARA-USERNAME              TO  USERNAME.               
002660     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002670*                                                                 
002680*----------------------------------------------------------------*
002690*    開始接続                                                    *
002700*----------------------------------------------------------------*
002710     IF    DB-STRING  =  SPACE                                    
002720        
      *       EXEC SQL                                                  
002730*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002740*       END-EXEC 
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
002750     ELSE                                                         
002760        
      *       EXEC SQL                                                  
002770*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002780*            USING  :DB-STRING                                    
002790*       END-EXEC 
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
002800     END-IF.                                                      
002810*                                                                 
002820*----------------------------------------------------------------*
002830*    接続確認                                                    *
002840*----------------------------------------------------------------*
002850     EVALUATE  SQLCODE                                            
002860        WHEN   定数－ＳＱＬＯＫ                                   
002870           CONTINUE                                               
002880        WHEN   OTHER                                              
002890*--<       接続エラー >                                           
002900           MOVE     -1                TO  Ｗ－エラーコード        
002910           PERFORM  エラー処理                                    
002920     END-EVALUATE.                                                
002930*                                                                 
002940 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
002950     EXIT.                                                        
002960******************************************************************
002970*    ファイルオープン                                            *
002980******************************************************************
002990 ファイルオープン                     SECTION.                    
003000 ファイルオープン－ＳＴＡＲＴ.                                    
003010*                                                                 
003020*----------------------------------------------------------------*
003030*    債務明細レコードのオープン                                  *
003040*----------------------------------------------------------------*
003050     OPEN  INPUT   入力ファイル１.                                
003060*                                                                 
003070*--< ファイルオープンの状態判定 >                                 
003080     EVALUATE  Ｗ－状態                                           
003090        WHEN  ZERO                                                
003100           CONTINUE                                               
003110        WHEN  OTHER                                               
003120*--<       ファイルオープンエラー >                               
003130           MOVE     -2                TO  Ｗ－エラーコード        
003140           PERFORM  エラー処理                                    
003150     END-EVALUATE.                                                
003160*                                                                 
003170*----------------------------------------------------------------*
003180*    債務展開レコードのオープン                                  *
003190*----------------------------------------------------------------*
003200     OPEN  INPUT   入力ファイル２.                                
003210*                                                                 
003220*--< ファイルオープンの状態判定 >                                 
003230     EVALUATE  Ｗ－状態                                           
003240        WHEN  ZERO                                                
003250           CONTINUE                                               
003260        WHEN  OTHER                                               
003270*--<       ファイルオープンエラー >                               
003280           MOVE     -3                TO  Ｗ－エラーコード        
003290           PERFORM  エラー処理                                    
003300     END-EVALUATE.                                                
003310*                                                                 
003320 ファイルオープン－ＥＸＩＴ.                                      
003330     EXIT.                                                        
003340******************************************************************
003350*    債務明細レコード読込処理（１件目）                          *
003360******************************************************************
003370 債務明細レコード読込処理             SECTION.                    
003380 債務明細レコード読込処理－ＳＴＡＲＴ.                            
003390*                                                                 
003400     READ  入力ファイル１                                         
003410        AT END                                                    
003420           MOVE  "Y"                  TO  Ｗ－終了－フラグ１      
003430           MOVE  HIGH-VALUE           TO  Ｗ－ＫＥＹ－債務明細    
003440           GO    TO   債務明細レコード読込処理－ＥＸＩＴ          
003450     END-READ.                                                    
003460*                                                                 
003470*--< ファイル読込状態判定 >                                       
003480     EVALUATE  Ｗ－状態                                           
003490        WHEN  ZERO                                                
003500*--<       債務明細レコードマッチングキーのセット >               
003510           MOVE  入力１－債務契約ＮＯ                             
003520                                      TO  Ｗ－債務契約ＮＯ１      
003530           MOVE  入力１－再リースコード                           
003540                                      TO  Ｗ－再リースコード１    
003550           MOVE  入力１－契約明細ＮＯ                             
003560                                      TO  Ｗ－契約明細ＮＯ１      
003570           MOVE  入力１－レコードシーケンス                       
003580                                      TO  Ｗ－レコードシーケンス１
003590*--<       ＳＱＬ変数のセット>                                    
003600           MOVE  入力１－債務契約ＮＯ(2:9)                        
003610                                      TO  ＷＳ－債務契約ＮＯ      
003620           MOVE  入力１－再リースコード                           
003630                                      TO  ＷＳ－再リースコード    
003640           MOVE  入力１－債務勘定処理コード                       
003650                                      TO  ＷＳ－債務勘定処理コード
003660*--<       債務明細レコード入力件数のカウント >                   
003670           COMPUTE   Ｗ－入力－件数１  =  Ｗ－入力－件数１ + 1    
003680        WHEN  OTHER                                               
003690*--<       債務明細レコード読込エラー >                           
003700           MOVE     -4                TO  Ｗ－エラーコード        
003710           PERFORM  エラー処理                                    
003720     END-EVALUATE.                                                
003730*                                                                 
003740 債務明細レコード読込処理－ＥＸＩＴ.                              
003750     EXIT.                                                        
003760******************************************************************
003770*    債務展開レコード読込処理（１件目）                          *
003780******************************************************************
003790 債務展開レコード読込処理             SECTION.                    
003800 債務展開レコード読込処理－ＳＴＡＲＴ.                            
003810*                                                                 
003820     READ  入力ファイル２                                         
003830        AT END                                                    
003840           MOVE  "Y"                  TO  Ｗ－終了－フラグ２      
003850           MOVE  HIGH-VALUE           TO  Ｗ－ＫＥＹ－債務展開    
003860           GO    TO   債務展開レコード読込処理－ＥＸＩＴ          
003870     END-READ.                                                    
003880*                                                                 
003890*--< ファイル読込状態判定 >                                       
003900     EVALUATE  Ｗ－状態                                           
003910        WHEN  ZERO                                                
003920*--<       債務展開レコードマッチングキーのセット >               
003930           MOVE  入力２－債務契約ＮＯ                             
003940                                      TO  Ｗ－債務契約ＮＯ２      
003950           MOVE  入力２－再リースコード                           
003960                                      TO  Ｗ－再リースコード２    
003970           MOVE  入力２－契約明細ＮＯ                             
003980                                      TO  Ｗ－契約明細ＮＯ２      
003990           MOVE  入力２－レコードシーケンス                       
004000                                      TO  Ｗ－レコードシーケンス２
004010*--<       債務展開レコード入力件数のカウント >                   
004020           COMPUTE   Ｗ－入力－件数２  =  Ｗ－入力－件数２ + 1    
004030        WHEN  OTHER                                               
004040*--<       債務展開レコード読込エラー >                           
004050           MOVE     -5                TO  Ｗ－エラーコード        
004060           PERFORM  エラー処理                                    
004070     END-EVALUATE.                                                
004080*                                                                 
004090 債務展開レコード読込処理－ＥＸＩＴ.                              
004100     EXIT.                                                        
004110******************************************************************
004120*    主処理                                                      *
004130******************************************************************
004140 主処理                               SECTION.                    
004150 主処理－ＳＴＡＲＴ.                                              
004160*                                                                 
004170     EVALUATE  TRUE                                               
004180*--<    債務明細レコードのみの場合 >                              
004190        WHEN  Ｗ－ＫＥＹ－債務明細 > Ｗ－ＫＥＹ－債務展開         
004200           MOVE  入力２－支払回数番号 TO  Ｗ－支払回数番号        
004210           MOVE  入力２－実支払額     TO  Ｗ－実支払額            
004220           MOVE  入力２－支払データ作成日－年月日                 
004230                                      TO  Ｗ－支払年月            
004240           PERFORM  債務展開レコード読込処理                      
004250*                                                                 
004260*--<    マッチングの場合 >                                        
004270        WHEN  Ｗ－ＫＥＹ－債務明細 = Ｗ－ＫＥＹ－債務展開         
004280           PERFORM  マッチング編集出力処理                        
004290*                                                                 
004300           MOVE  入力２－支払回数番号 TO  Ｗ－支払回数番号        
004310           MOVE  入力２－実支払額     TO  Ｗ－実支払額            
004320           MOVE  入力２－支払データ作成日－年月日                 
004330                                      TO  Ｗ－支払年月            
004340           PERFORM  債務展開レコード読込処理                      
004350*                                                                 
004360*--<    債務展開レコードのみの場合 >                              
004370        WHEN  Ｗ－ＫＥＹ－債務明細 < Ｗ－ＫＥＹ－債務展開         
004380*                                                                 
004390           IF  Ｗ－出力フラグ = "N"                               
004400              PERFORM  出力処理                                   
004410           END-IF                                                 
004420*                                                                 
004430           PERFORM  債務明細レコード読込処理                      
004440*                                                                 
004450     END-EVALUATE.                                                
004460*                                                                 
004470 主処理－ＥＸＩＴ.                                                
004480     EXIT.                                                        
004490******************************************************************
004500*    マッチング編集出力処理                                      *
004510******************************************************************
004520 マッチング編集出力処理               SECTION.                    
004530 マッチング編集出力処理－ＳＴＡＲＴ.                              
004540*                                                                 
004550*--< 変則払転レコード基本項目の編集処理 >                         
004560*--<    No.04--No.09 >                                            
004570        PERFORM  展開編集.                                        
004580*--<    No.01 >                                                   
004590        MOVE  入力１－債務契約ＮＯ    TO  Ｄ３４３－契約番号.     
004600*--<    No.02 >                                                   
004610        PERFORM  共通処理.                                        
004620        MOVE  ＩＫＯ００２－再リース回数                          
004630                                      TO  Ｄ３４３－再リース回数. 
004640*--<    No.03 >                                                   
004650        MOVE  ＩＫＯ００２－契約種類  TO  Ｄ３４３－契約種類.     
004660*--<    No.10 >                                                   
004670        MOVE  Ｗ－システム日付        TO  Ｄ３４３－更新年月日.   
004680*--<    No.11 >                                                   
004690        MOVE  Ｗ－システム時刻        TO  Ｄ３４３－更新時間.     
004700*--<    No.12 >                                                   
004710        MOVE  Ｗ－担当者              TO  Ｄ３４３－更新者.       
004720*--<    No.13 >                                                   
004730        MOVE  Ｗ－担当者              TO                          
004740                                       Ｄ３４３－入力担当者コード.
004750*--<    No.14 >                                                   
004760        MOVE  Ｗ－システム日付        TO  Ｄ３４３－登録年月日.   
004770*--<    No.15 >                                                   
004780        MOVE  Ｗ－システム時刻        TO  Ｄ３４３－登録時間.     
004790*--<    No.16 >                                                   
004800        MOVE  Ｗ－担当者              TO  Ｄ３４３－登録担当者.   
004810*                                                                 
004820 マッチング編集出力処理－ＥＸＩＴ.                                
004830     EXIT.                                                        
004840******************************************************************
004850*    共通処理                                                    *
004860******************************************************************
004870 共通処理                             SECTION.                    
004880 共通処理－ＳＴＡＲＴ.                                            
004890*----------------------------------------------------------------*
004900*    契約種類等変換テーブル読込                                  *
004910*----------------------------------------------------------------*
004920*                                                                 
004930     INITIALIZE                       ＩＫＯ００２－再リース回数. 
004940     INITIALIZE                       ＩＫＯ００２－契約種類.     
004950*                                                                 
004960     
      *    EXEC SQL                                                     
004970*       SELECT  再リース回数                                      
004980*              ,契約種類                                          
004990*         INTO :ＩＫＯ００２－再リース回数                        
005000*             ,:ＩＫＯ００２－契約種類                            
005010*         FROM  IKOTBL002                                         
005020*        WHERE  契約ＮＯ           = :ＷＳ－債務契約ＮＯ          
005030*          AND  再リースコード     = :ＷＳ－再リースコード        
005040*          AND  債務勘定処理コード = :ＷＳ－債務勘定処理コード    
005050*    END-EXEC.
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
               ＷＳ－債務契約ＮＯ
               SQL-SQHSTV(3)
           MOVE 9 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               ＷＳ－再リースコード
               SQL-SQHSTV(4)
           MOVE 1 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               ＷＳ－債務勘定処理コード
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
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
005060*----------------------------------------------------------------*
005070*    契約種類等変換テーブル検索を確認                            *
005080*----------------------------------------------------------------*
005090     EVALUATE   SQLCODE                                           
005100        WHEN   定数－ＳＱＬＯＫ                                   
005110*--<       正常の時 >                                             
005120           CONTINUE                                               
005130        WHEN   OTHER                                              
005140*--<       存在しない >                                           
005150           MOVE     -6                TO  Ｗ－エラーコード        
005160           PERFORM  エラー処理                                    
005170     END-EVALUATE.                                                
005180*                                                                 
005190 共通処理－ＥＸＩＴ.                                              
005200     EXIT.                                                        
005210******************************************************************
005220*    展開編集                                                    *
005230******************************************************************
005240 展開編集                             SECTION.                    
005250 展開編集－ＳＴＡＲＴ.                                            
005260*                                                                 
005270     IF  入力２－支払回数番号 = 1                                 
005280*--<    No.04>                                                    
005290        MOVE  入力２－支払回数番号    TO  Ｄ３４３－開始回        
005300*--<    No.05>                                                    
005310        MOVE  入力２－支払データ作成日－年月日                    
005320                                      TO  Ｄ３４３－開始年月      
005330*--<    No.06>                                                    
005340        MOVE  入力２－支払回数番号    TO  Ｄ３４３－終了回        
005350*--<    No.07>                                                    
005360        MOVE  入力２－支払データ作成日－年月日                    
005370                                      TO  Ｄ３４３－終了年月      
005380*--<    No.08>                                                    
005390        MOVE  入力２－実支払額        TO  Ｄ３４３－金額          
005400*--<    No.09>                                                    
005410        MOVE  入力２－消費税額        TO  Ｄ３４３－消費税        
005420*                                                                 
005430        MOVE  "N"                     TO  Ｗ－出力フラグ          
005440*                                                                 
005450        MOVE  入力２－支払回数番号    TO  Ｗ－支払回数番号        
005460        MOVE  入力２－実支払額        TO  Ｗ－実支払額            
005470        MOVE  入力２－支払データ作成日－年月日                    
005480                                      TO  Ｗ－支払年月            
005490*                                                                 
005500        MOVE  入力２－支払回数番号    TO  Ｗ－支払回数番号        
005510        MOVE  入力２－実支払額        TO  Ｗ－実支払額            
005520        MOVE  入力２－支払データ作成日－年月日                    
005530                                      TO  Ｗ－支払年月            
005540        PERFORM  債務展開レコード読込処理                         
005550*                                                                 
005560     ELSE                                                         
005570        IF  入力２－実支払額 NOT = Ｗ－実支払額                   
005580*                                                                 
005590           PERFORM  出力処理                                      
005600*                                                                 
005610*--<       No.04>                                                 
005620           MOVE  入力２－支払回数番号 TO  Ｄ３４３－開始回        
005630*--<       No.05>                                                 
005640           MOVE  入力２－支払データ作成日－年月日                 
005650                                      TO  Ｄ３４３－開始年月      
005660*--<       No.06>                                                 
005670           MOVE  入力２－支払回数番号 TO  Ｄ３４３－終了回        
005680*--<       No.07>                                                 
005690           MOVE  入力２－支払データ作成日－年月日                 
005700                                      TO  Ｄ３４３－終了年月      
005710*--<       No.08>                                                 
005720           MOVE  入力２－実支払額     TO  Ｄ３４３－金額          
005730*--<       No.09>                                                 
005740           MOVE  入力２－消費税額     TO  Ｄ３４３－消費税        
005750*                                                                 
005760        ELSE                                                      
005770*--<       No.06>                                                 
005780           MOVE  入力２－支払回数番号 TO  Ｄ３４３－終了回        
005790*--<       No.07>                                                 
005800           MOVE  入力２－支払データ作成日－年月日                 
005810                                      TO  Ｄ３４３－終了年月      
005820*                                                                 
005830           MOVE  入力２－支払回数番号 TO  Ｗ－支払回数番号        
005840           MOVE  入力２－実支払額     TO  Ｗ－実支払額            
005850           MOVE  入力２－支払データ作成日－年月日                 
005860                                      TO  Ｗ－支払年月            
005870*                                                                 
005880           MOVE  入力２－支払回数番号 TO  Ｗ－支払回数番号        
005890           MOVE  入力２－実支払額     TO  Ｗ－実支払額            
005900           MOVE  入力２－支払データ作成日－年月日                 
005910                                      TO  Ｗ－支払年月            
005920           PERFORM  債務展開レコード読込処理                      
005930     END-IF.                                                      
005940*                                                                 
005950 展開編集－ＥＸＩＴ.                                              
005960     EXIT.                                                        
005970******************************************************************
005980*    出力処理                                                    *
005990******************************************************************
006000 出力処理                             SECTION.                    
006010 出力処理－ＳＴＡＲＴ.                                            
006020*                                                                 
006030       
      *      EXEC  SQL                                                  
006040*       INSERT  INTO  D343HTN_TBL                                 
006050*          ( 契約番号                                             
006060*           ,再リース回数                                         
006070*           ,契約種類                                             
006080*           ,開始回                                               
006090*           ,開始年月                                             
006100*           ,終了回                                               
006110*           ,終了年月                                             
006120*           ,金額                                                 
006130*           ,消費税                                               
006140*           ,更新年月日                                           
006150*           ,更新時間                                             
006160*           ,更新者                                               
006170*           ,入力担当者コード                                     
006180*           ,登録年月日                                           
006190*           ,登録時間                                             
006200*           ,登録担当者 )                                         
006210*      VALUES                                                     
006220*          ( :Ｄ３４３－契約番号                                  
006230*           ,:Ｄ３４３－再リース回数                              
006240*           ,:Ｄ３４３－契約種類                                  
006250*           ,:Ｄ３４３－開始回                                    
006260*           ,:Ｄ３４３－開始年月                                  
006270*           ,:Ｄ３４３－終了回                                    
006280*           ,:Ｄ３４３－終了年月                                  
006290*           ,:Ｄ３４３－金額                                      
006300*           ,:Ｄ３４３－消費税                                    
006310*           ,:Ｄ３４３－更新年月日                                
006320*           ,:Ｄ３４３－更新時間                                  
006330*           ,:Ｄ３４３－更新者                                    
006340*           ,:Ｄ３４３－入力担当者コード                          
006350*           ,:Ｄ３４３－登録年月日                                
006360*           ,:Ｄ３４３－登録時間                                  
006370*           ,:Ｄ３４３－登録担当者)                               
006380*    END-EXEC.
             CALL "SQLADR" USING SQ0002 SQL-STMT
             MOVE 1 TO SQL-ITERS
             MOVE 102 TO SQL-OFFSET
             MOVE 0 TO SQL-OCCURS
             CALL "SQLADR" USING
                 SQLCUD
                 SQL-CUD
             CALL "SQLADR" USING
                 SQLCA
                 SQL-SQLEST
             MOVE 256 TO SQL-SQLETY
             CALL "SQLADR" USING
                 Ｄ３４３－契約番号 IN
                 変則払転
                 SQL-SQHSTV(1)
             MOVE 10 TO SQL-SQHSTL(1)
             MOVE 0 TO SQL-SQHSTS(1)
             MOVE 0 TO SQL-SQINDV(1)
             MOVE 0 TO SQL-SQINDS(1)
             MOVE 0 TO SQL-SQHARM(1)
             CALL "SQLADR" USING
                 Ｄ３４３－再リース回数 IN
                 変則払転
                 SQL-SQHSTV(2)
             MOVE 2 TO SQL-SQHSTL(2)
             MOVE 0 TO SQL-SQHSTS(2)
             MOVE 0 TO SQL-SQINDV(2)
             MOVE 0 TO SQL-SQINDS(2)
             MOVE 0 TO SQL-SQHARM(2)
             CALL "SQLADR" USING
                 Ｄ３４３－契約種類 IN
                 変則払転
                 SQL-SQHSTV(3)
             MOVE 3 TO SQL-SQHSTL(3)
             MOVE 0 TO SQL-SQHSTS(3)
             MOVE 0 TO SQL-SQINDV(3)
             MOVE 0 TO SQL-SQINDS(3)
             MOVE 0 TO SQL-SQHARM(3)
             CALL "SQLADR" USING
                 Ｄ３４３－開始回 IN
                 変則払転
                 SQL-SQHSTV(4)
             MOVE 2 TO SQL-SQHSTL(4)
             MOVE 0 TO SQL-SQHSTS(4)
             MOVE 0 TO SQL-SQINDV(4)
             MOVE 0 TO SQL-SQINDS(4)
             MOVE 0 TO SQL-SQHARM(4)
             CALL "SQLADR" USING
                 Ｄ３４３－開始年月 IN
                 変則払転
                 SQL-SQHSTV(5)
             MOVE 6 TO SQL-SQHSTL(5)
             MOVE 0 TO SQL-SQHSTS(5)
             MOVE 0 TO SQL-SQINDV(5)
             MOVE 0 TO SQL-SQINDS(5)
             MOVE 0 TO SQL-SQHARM(5)
             CALL "SQLADR" USING
                 Ｄ３４３－終了回 IN
                 変則払転
                 SQL-SQHSTV(6)
             MOVE 2 TO SQL-SQHSTL(6)
             MOVE 0 TO SQL-SQHSTS(6)
             MOVE 0 TO SQL-SQINDV(6)
             MOVE 0 TO SQL-SQINDS(6)
             MOVE 0 TO SQL-SQHARM(6)
             CALL "SQLADR" USING
                 Ｄ３４３－終了年月 IN
                 変則払転
                 SQL-SQHSTV(7)
             MOVE 6 TO SQL-SQHSTL(7)
             MOVE 0 TO SQL-SQHSTS(7)
             MOVE 0 TO SQL-SQINDV(7)
             MOVE 0 TO SQL-SQINDS(7)
             MOVE 0 TO SQL-SQHARM(7)
             CALL "SQLADR" USING
                 Ｄ３４３－金額 IN
                 変則払転
                 SQL-SQHSTV(8)
             MOVE 7 TO SQL-SQHSTL(8)
             MOVE 0 TO SQL-SQHSTS(8)
             MOVE 0 TO SQL-SQINDV(8)
             MOVE 0 TO SQL-SQINDS(8)
             MOVE 0 TO SQL-SQHARM(8)
             CALL "SQLADR" USING
                 Ｄ３４３－消費税 IN
                 変則払転
                 SQL-SQHSTV(9)
             MOVE 7 TO SQL-SQHSTL(9)
             MOVE 0 TO SQL-SQHSTS(9)
             MOVE 0 TO SQL-SQINDV(9)
             MOVE 0 TO SQL-SQINDS(9)
             MOVE 0 TO SQL-SQHARM(9)
             CALL "SQLADR" USING
                 Ｄ３４３－更新年月日 IN
                 変則払転
                 SQL-SQHSTV(10)
             MOVE 8 TO SQL-SQHSTL(10)
             MOVE 0 TO SQL-SQHSTS(10)
             MOVE 0 TO SQL-SQINDV(10)
             MOVE 0 TO SQL-SQINDS(10)
             MOVE 0 TO SQL-SQHARM(10)
             CALL "SQLADR" USING
                 Ｄ３４３－更新時間 IN
                 変則払転
                 SQL-SQHSTV(11)
             MOVE 8 TO SQL-SQHSTL(11)
             MOVE 0 TO SQL-SQHSTS(11)
             MOVE 0 TO SQL-SQINDV(11)
             MOVE 0 TO SQL-SQINDS(11)
             MOVE 0 TO SQL-SQHARM(11)
             CALL "SQLADR" USING
                 Ｄ３４３－更新者 IN
                 変則払転
                 SQL-SQHSTV(12)
             MOVE 8 TO SQL-SQHSTL(12)
             MOVE 0 TO SQL-SQHSTS(12)
             MOVE 0 TO SQL-SQINDV(12)
             MOVE 0 TO SQL-SQINDS(12)
             MOVE 0 TO SQL-SQHARM(12)
             CALL "SQLADR" USING
                 Ｄ３４３－入力担当者コード IN
                 変則払転
                 SQL-SQHSTV(13)
             MOVE 8 TO SQL-SQHSTL(13)
             MOVE 0 TO SQL-SQHSTS(13)
             MOVE 0 TO SQL-SQINDV(13)
             MOVE 0 TO SQL-SQINDS(13)
             MOVE 0 TO SQL-SQHARM(13)
             CALL "SQLADR" USING
                 Ｄ３４３－登録年月日 IN
                 変則払転
                 SQL-SQHSTV(14)
             MOVE 8 TO SQL-SQHSTL(14)
             MOVE 0 TO SQL-SQHSTS(14)
             MOVE 0 TO SQL-SQINDV(14)
             MOVE 0 TO SQL-SQINDS(14)
             MOVE 0 TO SQL-SQHARM(14)
             CALL "SQLADR" USING
                 Ｄ３４３－登録時間 IN
                 変則払転
                 SQL-SQHSTV(15)
             MOVE 8 TO SQL-SQHSTL(15)
             MOVE 0 TO SQL-SQHSTS(15)
             MOVE 0 TO SQL-SQINDV(15)
             MOVE 0 TO SQL-SQINDS(15)
             MOVE 0 TO SQL-SQHARM(15)
             CALL "SQLADR" USING
                 Ｄ３４３－登録担当者 IN
                 変則払転
                 SQL-SQHSTV(16)
             MOVE 8 TO SQL-SQHSTL(16)
             MOVE 0 TO SQL-SQHSTS(16)
             MOVE 0 TO SQL-SQINDV(16)
             MOVE 0 TO SQL-SQINDS(16)
             MOVE 0 TO SQL-SQHARM(16)
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
006390*                                                                 
006400*----------------------------------------------------------------*
006410*    追加処理を確認                                              *
006420*----------------------------------------------------------------*
006430     EVALUATE  SQLCODE                                            
006440        WHEN   定数－ＳＱＬＯＫ                                   
006450*--<       追加成功 >                                             
006460           COMPUTE  Ｗ－出力－件数  =  Ｗ－出力－件数  +  1       
006470           MOVE  "Y"                  TO  Ｗ－出力フラグ          
006480        WHEN   OTHER                                              
006490*--<       追加処理エラー >                                       
006500           MOVE     -7                TO  Ｗ－エラーコード        
006510           PERFORM  エラー処理                                    
006520     END-EVALUATE.                                                
006530*                                                                 
006540 出力処理－ＥＸＩＴ.                                              
006550     EXIT.                                                        
006560******************************************************************
006570*    終了処理                                                    *
006580******************************************************************
006590 終了処理                             SECTION.                    
006600 終了処理－ＳＴＡＲＴ.                                            
006610*                                                                 
006620*----------------------------------------------------------------*
006630*    ファイルクローズ                                            *
006640*----------------------------------------------------------------*
006650     CLOSE  入力ファイル１                                        
006660            入力ファイル２.                                       
006670*----------------------------------------------------------------*
006680*    ＤＢコミット処理                                            *
006690*----------------------------------------------------------------*
006700     PERFORM  ＤＢコミット処理.                                   
006710*----------------------------------------------------------------*
006720*    件数メッセージ出力                                          *
006730*----------------------------------------------------------------*
006740     PERFORM  件数メッセージ出力処理.                             
006750*----------------------------------------------------------------*
006760*    終了メッセージ出力                                          *
006770*----------------------------------------------------------------*
006780     PERFORM  終了メッセージ出力.                                 
006790*--< プログラム正常終了 >                                         
006800     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
006810*                                                                 
006820 終了処理－ＥＸＩＴ.                                              
006830     EXIT.                                                        
006840******************************************************************
006850*    ＤＢコミット処理                                            *
006860******************************************************************
006870 ＤＢコミット処理                     SECTION.                    
006880 ＤＢコミット処理－ＳＴＡＲＴ.                                    
006890*                                                                 
006900     
      *    EXEC  SQL                                                    
006910*       COMMIT  WORK  RELEASE                                     
006920*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 181 TO SQL-OFFSET
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
006930*                                                                 
006940     INITIALIZE                       IF-CHOCO001.                
006950     MOVE  "3"                        TO  共１－イベント種別.     
006960     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
006970     MOVE  "0"                        TO  共１－復帰コード.       
006980     MOVE  "COMMIT"                   TO  共１－処理識別.         
006990     MOVE  "コミット実施"             TO  共１－その他メッセージ. 
007000     CALL  CLOCO001                USING  IF-CHOCO001.            
007010*                                                                 
007020 ＤＢコミット処理－ＥＸＩＴ.                                      
007030     EXIT.                                                        
007040******************************************************************
007050*    ＤＢロールバック処理                                        *
007060******************************************************************
007070 ＤＢロールバック処理                 SECTION.                    
007080 ＤＢロールバック処理－ＳＴＡＲＴ.                                
007090*                                                                 
007100     
      *    EXEC  SQL                                                    
007110*       ROLLBACK WORK  RELEASE                                    
007120*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 196 TO SQL-OFFSET
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
007130*                                                                 
007140     INITIALIZE                       IF-CHOCO001.                
007150     MOVE  "1"                        TO  共１－イベント種別.     
007160     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007170     MOVE  "9"                        TO  共１－復帰コード.       
007180     MOVE  "ROLLBACK"                 TO  共１－処理識別.         
007190     MOVE  "ロールバック実施"         TO  共１－その他メッセージ. 
007200     CALL  CLOCO001                USING  IF-CHOCO001.            
007210*                                                                 
007220 ＤＢロールバック処理－ＥＸＩＴ.                                  
007230     EXIT.                                                        
007240******************************************************************
007250*    件数メッセージ出力処理                                      *
007260******************************************************************
007270 件数メッセージ出力処理               SECTION.                    
007280 件数メッセージ出力処理－ＳＴＡＲＴ.                              
007290*                                                                 
007300*----------------------------------------------------------------*
007310*    債務明細レコード読込件数メッセージ出力                      *
007320*----------------------------------------------------------------*
007330     INITIALIZE                       IF-CHOCO001.                
007340     MOVE  "3"                        TO  共１－イベント種別.     
007350     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007360     MOVE  "0"                        TO  共１－復帰コード.       
007370     MOVE  "FFUSI410"                 TO  共１－処理テーブルＩＤ. 
007380     MOVE  "COUNT"                    TO  共１－処理識別.         
007390     MOVE  Ｗ－入力－件数１           TO  共１－データ内容.       
007400     MOVE  "債務明細レコード読込件数" TO  共１－その他メッセージ. 
007410     CALL  CLOCO001                USING  IF-CHOCO001.            
007420*                                                                 
007430*----------------------------------------------------------------*
007440*    債務展開レコード読込件数メッセージ出力                      *
007450*----------------------------------------------------------------*
007460     INITIALIZE                       IF-CHOCO001.                
007470     MOVE  "3"                        TO  共１－イベント種別.     
007480     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007490     MOVE  "0"                        TO  共１－復帰コード.       
007500     MOVE  "FFUSI412"                 TO  共１－処理テーブルＩＤ. 
007510     MOVE  "COUNT"                    TO  共１－処理識別.         
007520     MOVE  Ｗ－入力－件数２           TO  共１－データ内容.       
007530     MOVE  "債務展開レコード読込件数" TO  共１－その他メッセージ. 
007540     CALL  CLOCO001                USING  IF-CHOCO001.            
007550*                                                                 
007560*----------------------------------------------------------------*
007570*    変則払転レコード書込件数メッセージ出力                      *
007580*----------------------------------------------------------------*
007590     INITIALIZE                       IF-CHOCO001.                
007600     MOVE  "3"                        TO  共１－イベント種別.     
007610     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007620     MOVE  "0"                        TO  共１－復帰コード.       
007630     MOVE  "D343HTN"                  TO  共１－処理テーブルＩＤ. 
007640     MOVE  "COUNT"                    TO  共１－処理識別.         
007650     MOVE  Ｗ－出力－件数             TO  共１－データ内容.       
007660     MOVE  "変則払転レコード書込件数" TO  共１－その他メッセージ. 
007670     CALL  CLOCO001                USING  IF-CHOCO001.            
007680*                                                                 
007690 件数メッセージ出力処理－ＥＸＩＴ.                                
007700     EXIT.                                                        
007710******************************************************************
007720*    終了メッセージ出力処理                                      *
007730******************************************************************
007740 終了メッセージ出力                   SECTION.                    
007750 終了メッセージ出力－ＳＴＡＲＴ.                                  
007760*                                                                 
007770     INITIALIZE                       IF-CHOCO001.                
007780     MOVE  "3"                        TO  共１－イベント種別.     
007790     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
007800     MOVE  "0"                        TO  共１－復帰コード.       
007810     MOVE  "END"                      TO  共１－処理識別.         
007820     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
007830     CALL  CLOCO001                USING  IF-CHOCO001.            
007840*                                                                 
007850 終了メッセージ出力－ＥＸＩＴ.                                    
007860     EXIT.                                                        
007870******************************************************************
007880*    エラー処理                                                  *
007890******************************************************************
007900 エラー処理                           SECTION.                    
007910 エラー処理－ＳＴＡＲＴ.                                          
007920*                                                                 
007930     MOVE     "Y"                     TO  Ｗ－異常終了－フラグ    
007940     INITIALIZE                           IF-CHOCO001.            
007950*                                                                 
007960     EVALUATE  Ｗ－エラーコード                                   
007970        WHEN  -1                                                  
007980*--<       ＯＲＡＣＬＥ接続失敗 >                                 
007990           MOVE  "1"                  TO  共１－イベント種別      
008000           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008010           MOVE  "9"                  TO  共１－復帰コード        
008020           MOVE  "CONNECT"            TO  共１－処理識別          
008030           MOVE  SQLCODE              TO  共１－データ内容        
008040           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008050           CALL  CLOCO001          USING  IF-CHOCO001             
008060*                                                                 
008070        WHEN  -2                                                  
008080*--<       債務明細レコードのオープンエラー >                     
008090           MOVE  "1"                  TO  共１－イベント種別      
008100           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008110           MOVE  "9"                  TO  共１－復帰コード        
008120           MOVE  "FFUSI410"           TO  共１－処理テーブルＩＤ  
008130           MOVE  "OPEN"               TO  共１－処理識別          
008140           MOVE  Ｗ－状態             TO  共１－データ内容        
008150           MOVE  "債務明細レコードのオープンエラー"               
008160                                      TO  共１－その他メッセージ  
008170           CALL  CLOCO001          USING  IF-CHOCO001             
008180*                                                                 
008190        WHEN  -3                                                  
008200*--<       債務展開レコードのオープンエラー >                     
008210           MOVE  "1"                  TO  共１－イベント種別      
008220           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008230           MOVE  "9"                  TO  共１－復帰コード        
008240           MOVE  "FFUSI412"           TO  共１－処理テーブルＩＤ  
008250           MOVE  "OPEN"               TO  共１－処理識別          
008260           MOVE  Ｗ－状態             TO  共１－データ内容        
008270           MOVE  "債務展開レコードのオープンエラー"               
008280                                      TO  共１－その他メッセージ  
008290           CALL  CLOCO001          USING  IF-CHOCO001             
008300*                                                                 
008310        WHEN  -4                                                  
008320*--<       債務明細レコード読込エラー >                           
008330           MOVE  "1"                  TO  共１－イベント種別      
008340           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008350           MOVE  "9"                  TO  共１－復帰コード        
008360           MOVE  "FFUSI410"           TO  共１－処理テーブルＩＤ  
008370           MOVE  "READ"               TO  共１－処理識別          
008380           MOVE  Ｗ－状態             TO  共１－データ内容        
008390           MOVE  "債務明細レコード読込エラー "                    
008400                                      TO  共１－その他メッセージ  
008410           CALL  CLOCO001          USING  IF-CHOCO001             
008420*                                                                 
008430        WHEN  -5                                                  
008440*--<       債務展開レコード読込エラー >                           
008450           MOVE  "1"                  TO  共１－イベント種別      
008460           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008470           MOVE  "9"                  TO  共１－復帰コード        
008480           MOVE  "FFUSI412"           TO  共１－処理テーブルＩＤ  
008490           MOVE  "READ"               TO  共１－処理識別          
008500           MOVE  Ｗ－状態             TO  共１－データ内容        
008510           MOVE  "債務展開レコード読込エラー "                    
008520                                      TO  共１－その他メッセージ  
008530           CALL  CLOCO001          USING  IF-CHOCO001             
008540*                                                                 
008550        WHEN  -6                                                  
008560*--<       共通情報検索エラー >                                   
008570           MOVE  "1"                  TO  共１－イベント種別      
008580           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008590           MOVE  "9"                  TO  共１－復帰コード        
008600           MOVE  "IKOTBL002"          TO  共１－処理テーブルＩＤ  
008610           MOVE  "SELECT"             TO  共１－処理識別          
008620           MOVE  SQLCODE              TO  共１－データ内容        
008630           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008640           CALL  CLOCO001          USING  IF-CHOCO001             
008650           MOVE  "N"                  TO  Ｗ－異常終了－フラグ    
008660*                                                                 
008670        WHEN  -7                                                  
008680*--<       変則払転レコード追加失敗 >                             
008690           MOVE  "1"                  TO  共１－イベント種別      
008700           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
008710           MOVE  "9"                  TO  共１－復帰コード        
008720           MOVE  "D343HTN"            TO  共１－処理テーブルＩＤ  
008730           MOVE  "INSERT"             TO  共１－処理識別          
008740           MOVE  SQLCODE              TO  共１－データ内容        
008750           MOVE  SQLERRMC             TO  共１－その他メッセージ  
008760           CALL  CLOCO001          USING  IF-CHOCO001             
008770*                                                                 
008780        WHEN  OTHER                                               
008790           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
008800*                                                                 
008810     END-EVALUATE.                                                
008820*                                                                 
008830     IF Ｗ－異常終了－フラグ  =  "Y"                              
008840*                                                                 
008850*--<    ＤＢロールバック処理 >                                    
008860        PERFORM  ＤＢロールバック処理                             
008870*--<    件数メッセージ出力処理 >                                  
008880        PERFORM  件数メッセージ出力処理                           
008890*                                                                 
008900*--<    終了メッセージ出力処理 >                                  
008910        PERFORM  終了メッセージ出力                               
008920*                                                                 
008930*--<    プログラム異常終了のリターンコード >                      
008940        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
008950*                                                                 
008960        EXIT  PROGRAM                                             
008970     END-IF.                                                      
008980*                                                                 
008990 エラー処理－ＥＸＩＴ.                                            
009000     EXIT.                                                        
009010******************************************************************
009020*                  END OF PROGRAM                                *
009030******************************************************************
