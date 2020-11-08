000010******************************************************************
000020*         ＜海輝軟件(大連)＞                                     *
000030*      1. プログラム名  : 保険料率マスタ移行処理                 *
000040*      2. プログラムID  : COBIS230                               *
000050*      3. 処理概要      : SUMMITコードマスタ(動産総合保険料率)全 *
000060*                         件を主体として、保険料率マスタを作成   *
000070*                         する。                                 *
000080*                                                                *
000090*      4. 作成者        : 崔鳳娟                                 *
000100*      5. 作成日        : 2005.4.01                              *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140******************************************************************
000150*                                                                 
000160******************************************************************
000170*    ＩＤＥＮＴＩＦＩＣＡＴＩＯＮ  ＤＩＶＩＳＩＯＮ              *
000180******************************************************************
000190 IDENTIFICATION                       DIVISION.                   
000200*                                                                 
000210 PROGRAM-ID.                          COBIS230.                   
000220******************************************************************
000230*    ＥＮＶＩＲＯＮＭＥＮＴ        ＤＩＶＩＳＩＯＮ              *
000240******************************************************************
000250 ENVIRONMENT                          DIVISION.                   
000260******************************************************************
000270*    INPUT-OUTPUT                     SECTION                    *
000280******************************************************************
000290 INPUT-OUTPUT                         SECTION.                    
000300*                                                                 
000310 FILE-CONTROL.                                                    
000320     SELECT  入力ファイル             ASSIGN     TO       U01     
000330     FILE    STATUS         IS        Ｗ－状態                    
000340     ORGANIZATION           IS        LINE        SEQUENTIAL.     
000350******************************************************************
000360*    ＤＡＴＡ                      ＤＩＶＩＳＩＯＮ              *
000370******************************************************************
000380 DATA                                 DIVISION.                   
000390******************************************************************
000400*            入力ファイル                                        *
000410******************************************************************
000420 FILE                                 SECTION.                    
000430 FD  入力ファイル                                                 
000440     LABEL    RECORD        IS        STANDARD                    
000450     BLOCK   CONTAINS       0         RECORDS.                    
000460*                                                                 
000470 01  入力ーレコード.                                              
000480    COPY   CPBIS018   REPLACING   ==()==  BY  ==入力ー==.         
000490******************************************************************
000500*  ＷＯＲＫＩＮＧ－ＳＴＯＲＡＧＥ  ＳＥＣＴＩＯＮ                *
000510******************************************************************
000520  WORKING-STORAGE                     SECTION.                    
000530*----------------------------------------------------------------*
000540*    ホスト変数定義エリア                                        *
000550*----------------------------------------------------------------*
000560*                                                                 
000570     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\COBIS230\CO
      -    "BIS230.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(64) VALUE "select 物件名   into :b1  from MS
      -    "T_DOSO where 動総保険コード=:b2".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE  "insert into D10HKR_TBL(保険会社
      -    "区分,適用開始日,保険料率,保険会社区分名称,更新日時,更新者,入
      -    "力担当者コード,圏内区分,文言連番,保険会社識別コード,特定取引
      -    "先コード,".

           02  FILLER PIC X(131) VALUE  "登録年月日,登録時間,登録担当者,
      -    "更新年月日,更新時間) values (:b1,:b2,:b3,:b4,:b5,:b6,:b7,:b8
      -    ",:b9,:b10,:b11,:b12,:b13,:b14,:b15,:b16)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +148525596.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +241.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +64.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +320.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +90.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +291.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +420.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +8.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +169.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +498.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +184.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +14.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +568.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000580*                                                                 
000590 01  ＷＳ－更新日時                   PIC  X(16)  VALUE  ZERO.    
000600 01  ＷＳ－圏内区分                   PIC  X(01)  VALUE  ZERO.    
000610 01  ＷＳ－文言連番                   PIC S9(03)  VALUE  ZERO.    
000620*--< ＯＲＡＣＬＥ共通変数 >                                       
000630     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000640*                                                                 
000650*--< ＯＲＡＣＬＥ  ＳＱＬ実行情報 >                               
000010*--＜ＳＱＬ共通変数＞
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000660     
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
000670*                                                                 
000680*--< 保険マスタ_動総>                                             
000690     
      *    EXEC  SQL  INCLUDE  MST_DOSO.CBL          END-EXEC.
000700*                                                                 
000710*--< 保険料率マスタ >                                             
000010************************************************
000020* (MST_DOSO)
000030************************************************
000040 01  ＭＳＴ－ＤＯＳＯ－動総保険コード PIC  X(004).
000050 01  ＭＳＴ－ＤＯＳＯ－適用日－１ PIC  X(008).
000060 01  ＭＳＴ－ＤＯＳＯ－動総保険料率－１ PIC S9(002)V9(8) COMP-3.
000070 01  ＭＳＴ－ＤＯＳＯ－適用日－２ PIC  X(008).
000080 01  ＭＳＴ－ＤＯＳＯ－動総保険料率－２ PIC S9(002)V9(8) COMP-3.
000090 01  ＭＳＴ－ＤＯＳＯ－適用日－３ PIC  X(008).
000100 01  ＭＳＴ－ＤＯＳＯ－動総保険料率－３ PIC S9(002)V9(8) COMP-3.
000110 01  ＭＳＴ－ＤＯＳＯ－適用日－４ PIC  X(008).
000120 01  ＭＳＴ－ＤＯＳＯ－動総保険料率－４ PIC S9(002)V9(8) COMP-3.
000130 01  ＭＳＴ－ＤＯＳＯ－適用日－５ PIC  X(008).
000140 01  ＭＳＴ－ＤＯＳＯ－動総保険料率－５ PIC S9(002)V9(8) COMP-3.
000150 01  ＭＳＴ－ＤＯＳＯ－登録日 PIC  X(008).
000160 01  ＭＳＴ－ＤＯＳＯ－登録時刻 PIC  X(006).
000170 01  ＭＳＴ－ＤＯＳＯ－登録担当者コード PIC  X(004).
000180 01  ＭＳＴ－ＤＯＳＯ－更新日 PIC  X(008).
000190 01  ＭＳＴ－ＤＯＳＯ－更新時刻 PIC  X(006).
000200 01  ＭＳＴ－ＤＯＳＯ－更新担当者コード PIC  X(004).
000210 01  ＭＳＴ－ＤＯＳＯ－取引先区分 PIC  X(001).
000220 01  ＭＳＴ－ＤＯＳＯ－保険会社名 PIC  X(040).
000230 01  ＭＳＴ－ＤＯＳＯ－物件名 PIC  X(060).
000720     
      *    EXEC  SQL  INCLUDE  D10HKR.CBL            END-EXEC.
000730*                                                                 
      *****************************************************************
      *   保険料率マスタ(D10HKR_TBL)
      *****************************************************************
       01  保険料率マスタ.
           03  Ｄ１０－保険会社区分  PIC  X(004).
           03  Ｄ１０－適用開始日    PIC  X(008).
           03  Ｄ１０－保険料率      PIC S9(002)V9(008) PACKED-DECIMAL.
           03  Ｄ１０－保険会社区分名称
                                     PIC  X(080).
           03  Ｄ１０－更新日時      PIC  X(016).
           03  Ｄ１０－更新者        PIC  X(008).
           03  Ｄ１０－入力担当者コード
                                     PIC  X(008).
           03  Ｄ１０－圏内区分      PIC  X(001).
           03  Ｄ１０－文言連番      PIC S9(003) PACKED-DECIMAL.
           03  Ｄ１０－保険会社識別コード
                                     PIC  X(002).
           03  Ｄ１０－特定取引先コード
                                     PIC  X(002).
           03  Ｄ１０－登録年月日    PIC  X(008).
           03  Ｄ１０－登録時間      PIC  X(008).
           03  Ｄ１０－登録担当者    PIC  X(008).
           03  Ｄ１０－更新年月日    PIC  X(008).
           03  Ｄ１０－更新時間      PIC  X(008).
000740     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000750*                                                                 
000760*----------------------------------------------------------------*
000770*    ＷＯＲＫエリア                                              *
000780*----------------------------------------------------------------*
000790*                                                                 
000800 01  W-FLAG                           PIC  9(02).                 
000810 01  W-VINT                           PIC  9(02).                 
000820*                                                                 
000830 01  ＷＯＲＫ－エリア.                                            
000840*--< エラー判定用 >                                               
000850     03  Ｗ－エラーコード             PIC S9(04).                 
000860     03  Ｗ－状態                     PIC X(02).                  
000870*                                                                 
000880*--< フラグアリア >                                               
000890     03  フラグアリア.                                            
000900         05  Ｗ－終了－フラグ         PIC  X(01).                 
000910         05  Ｗ－異常終了－フラグ     PIC  X(01).                 
000920*                                                                 
000930*--< 件数エリア >                                                 
000940     03  件数エリア.                                              
000950         05  Ｗ－入力－件数           PIC  9(09).                 
000960         05  Ｗ－出力－件数           PIC  9(09).                 
000970*----------------------------------------------------------------*
000980*   処理時間定義                                                 *
000990*----------------------------------------------------------------*
001000*--< 共通情報 >                                                   
001010 01  Ｗ－共通情報.                                                
001020     03  Ｗ－システム日付.                                        
001030         05  Ｗ－世紀                 PIC  X(02) VALUE  "20".     
001040         05  Ｗ－年月日               PIC  X(06).                 
001050     03  Ｗ－システム時刻             PIC  X(08).                 
001060     03  Ｗ－担当者                   PIC  X(08) VALUE "IKOPG   ".
001070*                                                                 
001080*----------------------------------------------------------------*
001090*    サブルーチン名                                              *
001100*----------------------------------------------------------------*
001110 01  CALL-AREA.                                                   
001120*--< 共通ログサブルーチン >                                       
001130     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001140     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001150*                                                                 
001160*----------------------------------------------------------------*
001170*    ＣＯＰＹ領域                                                *
001180*----------------------------------------------------------------*
001190*--< 共通ログ用パラメータ >                                       
001200 01  IF-CHOCO001.                                                 
001210     COPY  CHOCO001  REPLACING  ==()==  BY  ==共１－==.           
001220*                                                                 
001230*----------------------------------------------------------------*
001240*    ＩＮＩファイル読込サブルーチン用パラメタ領域                *
001250*----------------------------------------------------------------*
001260 01  PARA-AREA.                                                   
001270     COPY CPBCO001.                                               
001280******************************************************************
001290*    定数用データ定義エリア                                      *
001300******************************************************************
001310 CONSTANT                             SECTION.                    
001320 01  定数領域.                                                    
001330     03  定数－プログラムＩＤ         PIC  X(08) VALUE "COBIS230".
001340     03  定数－プログラム名           PIC  X(80)                  
001350                                  VALUE  "保険料率マスタ移行処理".
001360     03  定数－ＳＱＬＯＫ             PIC S9(04)  VALUE  ZERO.    
001370     03  定数－ＳＱＬＥＮＤ           PIC S9(04)  VALUE  0100.    
001380     03  定数－正常状態               PIC S9(04)  VALUE  ZERO.    
001390     03  定数－異常状態               PIC S9(04)  VALUE  0009.    
001400******************************************************************
001410*    ＰＲＯＣＥＤＵＲＥ            ＤＩＶＩＳＩＯＮ              *
001420******************************************************************
001430 PROCEDURE                            DIVISION.                   
001440*                                                                 
001450     PERFORM  初期処理.                                           
001460*                                                                 
001470     PERFORM  主処理  UNTIL  Ｗ－終了－フラグ  =  "Y".            
001480*                                                                 
001490     PERFORM  終了処理.                                           
001500*                                                                 
001510     STOP     RUN.                                                
001520*                                                                 
001530******************************************************************
001540*    初期処理                                                    *
001550******************************************************************
001560 初期処理                             SECTION.                    
001570 初期処理－ＳＴＡＲＴ.                                            
001580*                                                                 
001590*--< 開始メッセージ出力 >                                         
001600     PERFORM   開始メッセージ出力.                                
001610*                                                                 
001620*----------------------------------------------------------------*
001630*    作業領域の初期値設定                                        *
001640*----------------------------------------------------------------*
001650     MOVE  SPACE                      TO  ＷＯＲＫ－エリア.       
001660     INITIALIZE                           ＷＯＲＫ－エリア.       
001670     MOVE  ZERO                       TO  Ｗ－入力－件数.         
001680     MOVE  ZERO                       TO  Ｗ－出力－件数.         
001690     MOVE  "N"                        TO  Ｗ－終了－フラグ.       
001700*                                                                 
001710*--< ＣＰＵ日付を取得 >                                           
001720     ACCEPT  Ｗ－年月日               FROM  DATE.                 
001730*                                                                 
001740*--< ＣＰＵ時刻を取得 >                                           
001750     ACCEPT  Ｗ－システム時刻         FROM  TIME.                 
001760*                                                                 
001770*--< ＯＲＡＣＬＥ接続 >                                           
001780     PERFORM  ＯＲＡＣＬＥ接続.                                   
001790*                                                                 
001800*--< ファイルオープン >                                           
001810     OPEN  INPUT  入力ファイル.                                   
001820*                                                                 
001830*----------------------------------------------------------------*
001840*    ファイルオープン状態判定                                    *
001850*----------------------------------------------------------------*
001860     EVALUATE  Ｗ－状態                                           
001870        WHEN  ZERO                                                
001880           CONTINUE                                               
001890        WHEN  OTHER                                               
001900*--<       ファイルオープンエラー >                               
001910           MOVE     -20               TO  Ｗ－エラーコード        
001920           PERFORM  エラー判定処理                                
001930     END-EVALUATE.                                                
001940*                                                                 
001950*----------------------------------------------------------------*
001960*    コードマスタ動産総合保険料率読込処理(１件目)                *
001970*----------------------------------------------------------------*
001980     PERFORM   動産総合保険料率読込処理.                          
001990*                                                                 
002000 初期処理－ＥＸＩＴ.                                              
002010     EXIT.                                                        
002020*                                                                 
002030******************************************************************
002040*    開始メッセージ出力                                          *
002050******************************************************************
002060 開始メッセージ出力                   SECTION.                    
002070 開始メッセージ出力－ＳＴＡＲＴ.                                  
002080*                                                                 
002090     INITIALIZE                       IF-CHOCO001.                
002100     MOVE  "3"                        TO  共１－イベント種別.     
002110     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
002120     MOVE  "0"                        TO  共１－復帰コード.       
002130     MOVE  "START"                    TO  共１－処理識別.         
002140     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
002150     CALL  CLOCO001                USING  IF-CHOCO001.            
002160*                                                                 
002170 開始メッセージ出力－ＥＸＩＴ.                                    
002180     EXIT.                                                        
002190*                                                                 
002200******************************************************************
002210*    ＯＲＡＣＬＥ接続                                            *
002220******************************************************************
002230 ＯＲＡＣＬＥ接続                     SECTION.                    
002240 ＯＲＡＣＬＥ接続－ＳＴＡＲＴ.                                    
002250*                                                                 
002260*--< ＤＢ接続用情報を取得処理 >                                   
002270     CALL  COBCO001                USING  PARA-AREA.              
002280*                                                                 
002290     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002300     MOVE  PARA-USERNAME              TO  USERNAME.               
002310     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002320*                                                                 
002330*----------------------------------------------------------------*
002340*    開始接続                                                    *
002350*----------------------------------------------------------------*
002360     IF    DB-STRING  =  SPACE                                    
002370        
      *       EXEC SQL                                                  
002380*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
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
      *       EXEC SQL                                                  
002420*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
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
002480*    接続確認                                                    *
002490*----------------------------------------------------------------*
002500     EVALUATE  SQLCODE                                            
002510        WHEN   定数－ＳＱＬＯＫ                                   
002520           CONTINUE                                               
002530        WHEN   OTHER                                              
002540*--<       接続エラー >                                           
002550           MOVE     -10               TO  Ｗ－エラーコード        
002560           PERFORM  エラー判定処理                                
002570     END-EVALUATE.                                                
002580*                                                                 
002590 ＯＲＡＣＬＥ接続－ＥＸＩＴ.                                      
002600     EXIT.                                                        
002610*                                                                 
002620******************************************************************
002630*    動産総合保険料率読込処理                                    *
002640******************************************************************
002650 動産総合保険料率読込処理             SECTION.                    
002660 動産総合保険料率読込処理－ＳＴＡＲＴ.                            
002670*                                                                 
002680*--<    動産総合保険料率読込 >                                    
002690        READ  入力ファイル                                        
002700           AT  END                                                
002710*--<          読込終了 >                                          
002720              MOVE  "Y"               TO  Ｗ－終了－フラグ        
002730              GO  TO  動産総合保険料率読込処理－ＥＸＩＴ          
002740           NOT  AT  END                                           
002750              COMPUTE  Ｗ－入力－件数 = Ｗ－入力－件数 + 1        
002760        END-READ.                                                 
002770*                                                                 
002780*----------------------------------------------------------------*
002790*    ファイルオープン状態判定                                    *
002800*----------------------------------------------------------------*
002810     EVALUATE  Ｗ－状態                                           
002820        WHEN  ZERO                                                
002830           CONTINUE                                               
002840        WHEN  OTHER                                               
002850*--<       読み込みエラー >                                       
002860           MOVE     -30               TO  Ｗ－エラーコード        
002870           PERFORM  エラー判定処理                                
002880     END-EVALUATE.                                                
002890*                                                                 
002900 動産総合保険料率読込処理－ＥＸＩＴ.                              
002910     EXIT.                                                        
002920*                                                                 
002930******************************************************************
002940*    主処理                                                      *
002950******************************************************************
002960 主処理                               SECTION.                    
002970 主処理－ＳＴＡＲＴ.                                              
002980*                                                                 
002990*--< 保険マスタ_動総SELECT >                                      
003000     PERFORM  保険マスタ動総読込処理.                             
003010*                                                                 
003020*--< 保険料率マスタ編集出力処理 >                                 
003030     PERFORM  保険料率マスタ編集出力処理.                         
003040*                                                                 
003050*--<動産総合保険料率読込処理（２件目以降) >                       
003060     PERFORM  動産総合保険料率読込処理.                           
003070*                                                                 
003080 主処理－ＥＸＩＴ.                                                
003090     EXIT.                                                        
003100*                                                                 
003110******************************************************************
003120*    保険マスタ_動総読込処理                                     *
003130******************************************************************
003140 保険マスタ動総読込処理               SECTION.                    
003150 保険マスタ動総読込処理－ＳＴＡＲＴ.                              
003160     MOVE  SPACE                      TO ＭＳＴ－ＤＯＳＯ－物件名.
003170     MOVE  入力ー動総保険コード       TO                          
003180                                 ＭＳＴ－ＤＯＳＯ－動総保険コード.
003190*--< 保険マスタ_動総読込 >                                        
003200     
      *    EXEC SQL                                                     
003210*       SELECT  物件名                                            
003220*         INTO  :ＭＳＴ－ＤＯＳＯ－物件名                         
003230*         FROM  MST_DOSO                                          
003240*        WHERE  動総保険コード = :ＭＳＴ－ＤＯＳＯ－動総保険コード
003250*    END-EXEC.
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
               ＭＳＴ－ＤＯＳＯ－物件名
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ＭＳＴ－ＤＯＳＯ－動総保険コード
               SQL-SQHSTV(2)
           MOVE 4 TO SQL-SQHSTL(2)
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
003260*                                                                 
003270     EVALUATE  SQLCODE                                            
003280        WHEN  定数－ＳＱＬＯＫ                                    
003290*--<       正常 >                                                 
003300           CONTINUE                                               
003310        WHEN  OTHER                                               
003320*--<       存在しない >                                           
003330            MOVE     -50              TO  Ｗ－エラーコード        
003340            PERFORM  エラー判定処理                               
003350     END-EVALUATE.                                                
003360*                                                                 
003370 動産総合保険料率読込処理－ＥＸＩＴ.                              
003380     EXIT.                                                        
003390*                                                                 
003400******************************************************************
003410*    保険料率マスタ編集出力処理                                  *
003420******************************************************************
003430 保険料率マスタ編集出力処理           SECTION.                    
003440 保険料率マスタ編集出力処理－ＳＴＡＲＴ.                          
003450     MOVE 1                           TO  W-FLAG.                 
003460*--< NO.1 >                                                       
003470     MOVE  入力ー動総保険コード       TO  Ｄ１０－保険会社区分.   
003480*--< NO.4 >                                                       
003490     MOVE  ＭＳＴ－ＤＯＳＯ－物件名   TO                          
003500                                    Ｄ１０－保険会社区分名称.     
003510*--< NO.5 >                                                       
003520     MOVE  ＷＳ－更新日時             TO  Ｄ１０－更新日時.       
003530*--< NO.6 >                                                       
003540     MOVE  Ｗ－担当者                 TO  Ｄ１０－更新者.         
003550*--< NO.7 >                                                       
003560     MOVE  Ｗ－担当者                 TO                          
003570                                    Ｄ１０－入力担当者コード.     
003580*--< NO.8 >                                                       
003590     MOVE  ＷＳ－圏内区分             TO  Ｄ１０－圏内区分.       
003600*--< NO.9 >                                                       
003610     MOVE  ＷＳ－文言連番             TO  Ｄ１０－文言連番.       
003620*--< NO.10 >                                                      
003630     MOVE  入力ー保険会社コード       TO                          
003640                                    Ｄ１０－保険会社識別コード.   
003650*--< NO.11 >                                                      
003660     MOVE  ZERO                       TO                          
003670                                    Ｄ１０－特定取引先コード.     
003680*--< NO.12 >                                                      
003690     MOVE  Ｗ－システム日付           TO  Ｄ１０－登録年月日.     
003700*--< NO.13 >                                                      
003710     MOVE  Ｗ－システム時刻           TO  Ｄ１０－登録時間.       
003720*--< NO.14 >                                                      
003730     MOVE  Ｗ－担当者                 TO  Ｄ１０－登録担当者.     
003740*--< NO.15 >                                                      
003750     MOVE  Ｗ－システム日付           TO  Ｄ１０－更新年月日.     
003760*--< NO.16 >                                                      
003770     MOVE  Ｗ－システム時刻           TO  Ｄ１０－更新時間.       
003780*                                                                 
003790     PERFORM  入力ー適用年月日編集処理  VARYING  W-VINT  FROM  1  
003800                                        BY  1  UNTIL  W-VINT > 5. 
003810*                                                                 
003820 保険料率マスタ編集出力処理－ＥＸＩＴ.                            
003830     EXIT.                                                        
003840*                                                                 
003850******************************************************************
003860*    入力ー適用年月日編集処理                                    *
003870******************************************************************
003880 入力ー適用年月日編集処理             SECTION.                    
003890 入力ー適用年月日編集処理－ＳＴＡＲＴ.                            
003900*                                                                 
003910     MOVE ZERO                        TO  Ｄ１０－適用開始日.     
003920*                                                                 
003930     IF 入力ー適用年月日ＦＲＯＭ－年月日(W-FLAG) NOT = "000000"   
003940*--<    NO.2 >                                                    
003950        IF  入力ー適用年月日ＦＲＯＭ－世紀(W-FLAG) = ZERO         
003960           MOVE  "19"                 TO  Ｄ１０－適用開始日(1:2) 
003970        ELSE IF  入力ー適用年月日ＦＲＯＭ－世紀(W-FLAG) = "1"     
003980           MOVE  "20"                 TO  Ｄ１０－適用開始日(1:2) 
003990           END-IF                                                 
004000        END-IF                                                    
004010        MOVE  入力ー適用年月日ＦＲＯＭ－年月日(W-FLAG)            
004020                                      TO  Ｄ１０－適用開始日(3:6) 
004030*--<    NO.3 >                                                    
004040        MOVE  入力ー保険料率(W-FLAG)  TO  Ｄ１０－保険料率        
004050*                                                                 
004060        PERFORM  保険料率マスタ出力処理                           
004070*                                                                 
004080     END-IF.                                                      
004090     COMPUTE  W-FLAG = W-FLAG + 1.                                
004100*                                                                 
004110 入力ー適用年月日編集処理－ＥＸＩＴ.                              
004120     EXIT.                                                        
004130*                                                                 
004140******************************************************************
004150*    保険料率マスタ出力処理                                      *
004160******************************************************************
004170 保険料率マスタ出力処理               SECTION.                    
004180 保険料率マスタ出力処理－ＳＴＡＲＴ.                              
004190*                                                                 
004200     
      *    EXEC SQL                                                     
004210*       INSERT INTO  D10HKR_TBL                                   
004220*          (保険会社区分                                          
004230*          ,適用開始日                                            
004240*          ,保険料率                                              
004250*          ,保険会社区分名称                                      
004260*          ,更新日時                                              
004270*          ,更新者                                                
004280*          ,入力担当者コード                                      
004290*          ,圏内区分                                              
004300*          ,文言連番                                              
004310*          ,保険会社識別コード                                    
004320*          ,特定取引先コード                                      
004330*          ,登録年月日                                            
004340*          ,登録時間                                              
004350*          ,登録担当者                                            
004360*          ,更新年月日                                            
004370*          ,更新時間)                                             
004380*       VALUES                                                    
004390*          (:Ｄ１０－保険会社区分                                 
004400*          ,:Ｄ１０－適用開始日                                   
004410*          ,:Ｄ１０－保険料率                                     
004420*          ,:Ｄ１０－保険会社区分名称                             
004430*          ,:Ｄ１０－更新日時                                     
004440*          ,:Ｄ１０－更新者                                       
004450*          ,:Ｄ１０－入力担当者コード                             
004460*          ,:Ｄ１０－圏内区分                                     
004470*          ,:Ｄ１０－文言連番                                     
004480*          ,:Ｄ１０－保険会社識別コード                           
004490*          ,:Ｄ１０－特定取引先コード                             
004500*          ,:Ｄ１０－登録年月日                                   
004510*          ,:Ｄ１０－登録時間                                     
004520*          ,:Ｄ１０－登録担当者                                   
004530*          ,:Ｄ１０－更新年月日                                   
004540*          ,:Ｄ１０－更新時間)                                    
004550*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 90 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               Ｄ１０－保険会社区分 IN
               保険料率マスタ
               SQL-SQHSTV(1)
           MOVE 4 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               Ｄ１０－適用開始日 IN
               保険料率マスタ
               SQL-SQHSTV(2)
           MOVE 8 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               Ｄ１０－保険料率 IN
               保険料率マスタ
               SQL-SQHSTV(3)
           MOVE 6 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               Ｄ１０－保険会社区分名称 IN
               保険料率マスタ
               SQL-SQHSTV(4)
           MOVE 80 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               Ｄ１０－更新日時 IN
               保険料率マスタ
               SQL-SQHSTV(5)
           MOVE 16 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               Ｄ１０－更新者 IN
               保険料率マスタ
               SQL-SQHSTV(6)
           MOVE 8 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               Ｄ１０－入力担当者コード IN
               保険料率マスタ
               SQL-SQHSTV(7)
           MOVE 8 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               Ｄ１０－圏内区分 IN
               保険料率マスタ
               SQL-SQHSTV(8)
           MOVE 1 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               Ｄ１０－文言連番 IN
               保険料率マスタ
               SQL-SQHSTV(9)
           MOVE 2 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               Ｄ１０－保険会社識別コード IN
               保険料率マスタ
               SQL-SQHSTV(10)
           MOVE 2 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               Ｄ１０－特定取引先コード IN
               保険料率マスタ
               SQL-SQHSTV(11)
           MOVE 2 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               Ｄ１０－登録年月日 IN
               保険料率マスタ
               SQL-SQHSTV(12)
           MOVE 8 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               Ｄ１０－登録時間 IN
               保険料率マスタ
               SQL-SQHSTV(13)
           MOVE 8 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               Ｄ１０－登録担当者 IN
               保険料率マスタ
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               Ｄ１０－更新年月日 IN
               保険料率マスタ
               SQL-SQHSTV(15)
           MOVE 8 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               Ｄ１０－更新時間 IN
               保険料率マスタ
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
004560*                                                                 
004570*----------------------------------------------------------------*
004580*--< ＤＢ追加処理を確認 >                                        *
004590*----------------------------------------------------------------*
004600*                                                                 
004610     EVALUATE  SQLCODE                                            
004620*                                                                 
004630*--<    追加成功 >                                                
004640        WHEN  定数－ＳＱＬＯＫ                                    
004650           COMPUTE  Ｗ－出力－件数 = Ｗ－出力－件数 + 1           
004660*                                                                 
004670*--<    追加失敗>                                                 
004680        WHEN  OTHER                                               
004690           MOVE     -40               TO     Ｗ－エラーコード     
004700           PERFORM  エラー判定処理                                
004710     END-EVALUATE.                                                
004720*                                                                 
004730 保険料率マスタ出力処理－ＥＸＩＴ.                                
004740     EXIT.                                                        
004750******************************************************************
004760*    終了処理                                                    *
004770******************************************************************
004780 終了処理                             SECTION.                    
004790 終了処理－ＳＴＡＲＴ.                                            
004800*                                                                 
004810*--< ＤＢコミット処理 >                                           
004820     PERFORM  ＤＢコミット処理.                                   
004830*                                                                 
004840     PERFORM  終了メッセージ出力.                                 
004850*                                                                 
004860*--< プログラム正常終了 >                                         
004870     MOVE  定数－正常状態             TO  PROGRAM-STATUS.         
004880*                                                                 
004890 終了処理－ＥＸＩＴ.                                              
004900     EXIT.                                                        
004910*                                                                 
004920******************************************************************
004930*    ＤＢコミット処理                                            *
004940******************************************************************
004950 ＤＢコミット処理                     SECTION.                    
004960 ＤＢコミット処理－ＳＴＡＲＴ.                                    
004970*                                                                 
004980     
      *    EXEC  SQL                                                    
004990*       COMMIT  WORK  RELEASE                                     
005000*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 169 TO SQL-OFFSET
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
005010*                                                                 
005020     INITIALIZE                       IF-CHOCO001.                
005030     MOVE  "3"                        TO  共１－イベント種別.     
005040     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
005050     MOVE  "0"                        TO  共１－復帰コード.       
005060     MOVE  "COMMIT"                   TO  共１－処理識別.         
005070     MOVE  "コミット実施"             TO  共１－その他メッセージ. 
005080     CALL  CLOCO001                USING  IF-CHOCO001.            
005090*                                                                 
005100 ＤＢコミット処理－ＥＸＩＴ.                                      
005110     EXIT.                                                        
005120*                                                                 
005130******************************************************************
005140*    終了メッセージ出力                                          *
005150******************************************************************
005160 終了メッセージ出力                   SECTION.                    
005170 終了メッセージ出力－ＳＴＡＲＴ.                                  
005180*                                                                 
005190*--<ファイルクローズ >                                           *
005200*                                                                 
005210     CLOSE    入力ファイル.                                       
005220*                                                                 
005230*----------------------------------------------------------------*
005240*    件数メッセージ出力処理                                      *
005250*----------------------------------------------------------------*
005260*                                                                 
005270     INITIALIZE                       IF-CHOCO001.                
005280     MOVE  "3"                        TO  共１－イベント種別.     
005290     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
005300     MOVE  ZERO                       TO  共１－復帰コード.       
005310     MOVE  "FFUIS230"                 TO  共１－処理テーブルＩＤ. 
005320     MOVE  "COUNT"                    TO  共１－処理識別.         
005330     MOVE  Ｗ－入力－件数             TO  共１－データ内容.       
005340     MOVE  "コードマスタ動産総合保険料率読込件数"                 
005350                                      TO  共１－その他メッセージ. 
005360     CALL  CLOCO001                USING  IF-CHOCO001.            
005370*                                                                 
005380     INITIALIZE                       IF-CHOCO001.                
005390     MOVE  "3"                        TO  共１－イベント種別.     
005400     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
005410     MOVE  ZERO                       TO  共１－復帰コード.       
005420     MOVE  "D10HKR_TBL"               TO  共１－処理テーブルＩＤ. 
005430     MOVE  "COUNT"                    TO  共１－処理識別.         
005440     MOVE  Ｗ－出力－件数             TO  共１－データ内容.       
005450     MOVE  "保険料率マスタ出力件数"   TO  共１－その他メッセージ. 
005460     CALL  CLOCO001                USING  IF-CHOCO001.            
005470*                                                                 
005480*----------------------------------------------------------------*
005490*    終了メッセージ出力                                          *
005500*----------------------------------------------------------------*
005510     INITIALIZE                       IF-CHOCO001.                
005520     MOVE  "3"                        TO  共１－イベント種別.     
005530     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
005540     MOVE  "0"                        TO  共１－復帰コード.       
005550     MOVE  "END"                      TO  共１－処理識別.         
005560     MOVE  定数－プログラム名         TO  共１－その他メッセージ. 
005570     CALL  CLOCO001                USING  IF-CHOCO001.            
005580*                                                                 
005590 終了メッセージ出力－ＥＸＩＴ.                                    
005600     EXIT.                                                        
005610*                                                                 
005620******************************************************************
005630*    ＤＢロールバック処理                                        *
005640******************************************************************
005650 ＤＢロールバック処理                 SECTION.                    
005660 ＤＢロールバック処理－ＳＴＡＲＴ.                                
005670*                                                                 
005680     
      *    EXEC  SQL                                                    
005690*       ROLLBACK WORK  RELEASE                                    
005700*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 184 TO SQL-OFFSET
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
005710*                                                                 
005720     INITIALIZE                       IF-CHOCO001.                
005730     MOVE  "1"                        TO  共１－イベント種別.     
005740     MOVE  定数－プログラムＩＤ       TO  共１－ソースＩＤ.       
005750     MOVE  "9"                        TO  共１－復帰コード.       
005760     MOVE  "ROLLBACK"                 TO  共１－処理識別.         
005770     MOVE  "ロールバック実施"         TO  共１－その他メッセージ. 
005780     CALL  CLOCO001                USING  IF-CHOCO001.            
005790*                                                                 
005800 ＤＢロールバック処理－ＥＸＩＴ.                                  
005810     EXIT.                                                        
005820*                                                                 
005830******************************************************************
005840*    エラー処理                                                  *
005850******************************************************************
005860 エラー判定処理                       SECTION.                    
005870 エラー判定処理－ＳＴＡＲＴ.                                      
005880*                                                                 
005890     MOVE  "Y"                        TO  Ｗ－異常終了－フラグ.   
005900     INITIALIZE                           IF-CHOCO001.            
005910*                                                                 
005920     EVALUATE  Ｗ－エラーコード                                   
005930        WHEN  -10                                                 
005940*--<       ＯＲＡＣＬＥ接続失敗 >                                 
005950           MOVE  "1"                  TO  共１－イベント種別      
005960           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
005970           MOVE  "9"                  TO  共１－復帰コード        
005980           MOVE  "CONNECT"            TO  共１－処理識別          
005990           MOVE  SQLCODE              TO  共１－データ内容        
006000           MOVE  SQLERRMC             TO  共１－その他メッセージ  
006010           CALL  CLOCO001          USING  IF-CHOCO001             
006020*                                                                 
006030        WHEN  -20                                                 
006040*--<       入力ファイルオープン失敗 >                             
006050           MOVE  "1"                  TO  共１－イベント種別      
006060           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
006070           MOVE  "9"                  TO  共１－復帰コード        
006080           MOVE  "FFUIS230"           TO  共１－処理テーブルＩＤ  
006090           MOVE  "OPEN"               TO  共１－処理識別          
006100           MOVE  Ｗ－状態             TO  共１－データ内容        
006110           MOVE  "入力ファイルオープンエラー"                     
006120                                      TO  共１－その他メッセージ  
006130           CALL  CLOCO001          USING  IF-CHOCO001             
006140*                                                                 
006150        WHEN  -30                                                 
006160*--<       入カーソルオープン失敗 >                               
006170           MOVE  "1"                  TO  共１－イベント種別      
006180           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
006190           MOVE  "9"                  TO  共１－復帰コード        
006200           MOVE  "FFUIS230"           TO  共１－処理テーブルＩＤ  
006210           MOVE  "READ"               TO  共１－処理識別          
006220           MOVE  SQLCODE              TO  共１－データ内容        
006230           MOVE  SQLERRMC             TO  共１－その他メッセージ  
006240           CALL  CLOCO001          USING  IF-CHOCO001             
006250*                                                                 
006260        WHEN  -40                                                 
006270*--<       保険料率マスタ追加失敗 >                               
006280           MOVE  "1"                  TO  共１－イベント種別      
006290           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
006300           MOVE  "9"                  TO  共１－復帰コード        
006310           MOVE  "D10HKR"             TO  共１－処理テーブルＩＤ  
006320           MOVE  "INSERT"             TO  共１－処理識別          
006330           MOVE  SQLCODE              TO  共１－データ内容        
006340           MOVE  SQLERRMC             TO  共１－その他メッセージ  
006350           CALL  CLOCO001          USING  IF-CHOCO001             
006360*                                                                 
006370        WHEN  -50                                                 
006380*--<       保険マスタ_動総読込処理失敗 >                          
006390           MOVE  "2"                  TO  共１－イベント種別      
006400           MOVE  定数－プログラムＩＤ TO  共１－ソースＩＤ        
006410           MOVE  "9"                  TO  共１－復帰コード        
006420           MOVE  "MST_DOSO"           TO  共１－処理テーブルＩＤ  
006430           MOVE  "SELECT"             TO  共１－処理識別          
006440           MOVE  SQLCODE              TO  共１－データ内容        
006450           MOVE  SQLERRMC             TO  共１－その他メッセージ  
006460           CALL  CLOCO001          USING  IF-CHOCO001             
006470           MOVE  "N"                  TO  Ｗ－異常終了－フラグ    
006480*                                                                 
006490        WHEN  OTHER                                               
006500           MOVE  "N"                  TO Ｗ－異常終了－フラグ     
006510     END-EVALUATE.                                                
006520*                                                                 
006530     IF Ｗ－異常終了－フラグ  =  "Y"                              
006540        PERFORM  終了メッセージ出力                               
006550*                                                                 
006560*--< ロールバック処理>                                            
006570     PERFORM  ＤＢロールバック処理                                
006580*                                                                 
006590*--<    プログラム異常終了のリターンコード >                      
006600        MOVE  定数－異常状態          TO  PROGRAM-STATUS          
006610*                                                                 
006620        EXIT  PROGRAM                                             
006630*                                                                 
006640     END-IF.                                                      
006650*                                                                 
006660 エラー処理－ＥＸＩＴ.                                            
006670     EXIT.                                                        
006680******************************************************************
006690*                  END OF PROGRAM                                *
006700******************************************************************
