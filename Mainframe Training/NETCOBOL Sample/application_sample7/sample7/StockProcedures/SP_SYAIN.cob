      ***********************************************************************
      * プログラム名 : SP_SYAIN
      * 概要         : 社員テーブルにアクセスし認証を行うストアドプロシージャ
      *
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       CLASS-ID. CLASS-1 AS "StockProcedures.SP_SYAIN".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE CA-SQLPROCEDURE CLASS CLASS-SQLPROCEDURE
           .
       REPOSITORY.
           CLASS CLASS-SQLPROCEDURE AS "Microsoft.SqlServer.Server.SqlProcedureAttribute"
           CLASS CLASS-STRING AS "System.String".
       STATIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       METHOD-ID. PROCEDURE-1 AS "SP_SYAIN" CUSTOM-ATTRIBUTE CA-SQLPROCEDURE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *=================================================================
      *  ホスト変数宣言
      *=================================================================      
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 SQLSTATE     PIC X(5).
       01 SQLMSG       PIC X(128).
       
       01 SYAPF-REC.
         02  SYACD      PIC S9(9) COMP-5.
         02  SYANA      PIC N(20).
         02  PASS       PIC N(6).
         02  BUSYO      PIC S9(9) COMP-5.
         02  SDATE      PIC S9(9) COMP-5.
         02  SNAME      PIC N(20).
      
       01  S-SYACD      PIC S9(9) COMP-5.
           EXEC SQL END DECLARE SECTION END-EXEC.      
       01  W-PASS       PIC N(20).
       LINKAGE SECTION.
       01  P_EmployeeCode           BINARY-LONG. 
       01  P_Password               OBJECT REFERENCE CLASS-STRING. 
       01  R_ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION USING BY VALUE
                           P_EmployeeCode   *>社員コード
                           P_Password       *>パスワード
                           RETURNING
                           R_ReturnCode.    *>戻り値(エラーコード)
           MOVE P_EmployeeCode TO S-SYACD
      
      *    SQL実行
           EXEC SQL
           SELECT SYACD, PASS
               INTO :SYACD, :PASS FROM SYAPF WHERE SYACD = :S-SYACD
           END-EXEC
      *    パスワード比較
           SET W-PASS TO P_Password
           IF SQLSTATE = "00000" AND PASS = W-PASS THEN
               MOVE 0 TO R_ReturnCode
           ELSE
               MOVE 3 TO R_ReturnCode
           END-IF
       END METHOD PROCEDURE-1.
      
       END STATIC.
      
       END CLASS CLASS-1.
