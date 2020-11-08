      ***********************************************************************
      * プログラム名 : SYOHIN
      * 概要         : 商品テーブルにアクセスし、商品レコードの取得を行う。
      *
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYOHIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
           CLASS CLASS-ConfigurationManager     AS "System.Configuration.ConfigurationManager"
           CLASS CLASS-ConnectionStringSettings AS "System.Configuration.ConnectionStringSettings"
           CLASS CLASS-String			        AS "System.String"
           CLASS CLASS-DbProviderFactories      AS "System.Data.Common.DbProviderFactories"
           CLASS CLASS-DbProviderFactory        AS "System.Data.Common.DbProviderFactory"
           CLASS CLASS-DbConnection             AS "System.Data.Common.DbConnection"
           CLASS CLASS-DbCommand                AS "System.Data.Common.DbCommand"
           CLASS CLASS-DbParameter			    AS "System.Data.Common.DbParameter"
           CLASS CALSS-DbDataReader             AS "System.Data.Common.DbDataReader"
           CLASS CLASS-Exception                AS "System.Exception"
           ENUM ENUM-DbType 			        AS "System.Data.DbType"
      
           PROPERTY PROP-PARAMETERS             AS "Parameters"
           PROPERTY PROP-VALUE                  AS "Value"
           PROPERTY PROP-MESSAGE                AS "Message"
           PROPERTY PROP-CONNECTIONSTRINGS      AS "ConnectionStrings"
           PROPERTY PROP-CONNECTIONSTRING       AS "ConnectionString"
           PROPERTY PROP-PROVIDERNAME AS "ProviderName"
           PROPERTY PROP-COMMANDTEXT AS "CommandText"
           PROPERTY PROP-INT32 AS "Int32"
           PROPERTY PROP-PARAMETERNAME AS "ParameterName"
           PROPERTY PROP-DBTYPE AS "DbType".
                 
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SYOPF-REC.
         02  SYOCD      PIC S9(9) COMP-5.
         02  SYONA      PIC N(20).
         02  BAIKA      PIC S9(9) COMP-5.
         02  GENKA      PIC S9(9) COMP-5.      
      
       COPY MSGTBL.
      
       01  W-CONNSTR    OBJECT REFERENCE CLASS-ConnectionStringSettings.
       01  W-PROVIDER   OBJECT REFERENCE CLASS-String.
       01  W-FACTORY    OBJECT REFERENCE CLASS-DbProviderFactory.
       01  W-CONN       OBJECT REFERENCE CLASS-DbConnection.
       01  W-CMD        OBJECT REFERENCE CLASS-DbCommand.
       01  W-DBPARAM    OBJECT REFERENCE CLASS-DbParameter.       
       01  W-DBTYPE		OBJECT REFERENCE ENUM-DbType.
       01  W-READER     OBJECT REFERENCE CALSS-DbDataReader.
       01  W-EXCEPTION  OBJECT REFERENCE CLASS-Exception.
       LINKAGE                         SECTION.
       01  P-SYOHINREC.
           02  P-SYOCD             PIC 9(5).
           02  P-SYONA             PIC N(20).
           02  P-BAIKA             PIC 9(8).
           02  P-GENKA             PIC 9(8). 
       01  P-Msg                   PIC N(20).
       01  R-ReturnCode            BINARY-LONG.
       PROCEDURE DIVISION USING
                           P-SYOHINREC      *>商品レコード
                           P-Msg            *>メッセージ
                           RETURNING
                           R-ReturnCode.    *>戻り値(エラーコード)
           TRY
      *        接続文字列取得
               INVOKE PROP-CONNECTIONSTRINGS OF CLASS-ConfigurationManager "get_Item" USING N"cobdb" RETURNING W-CONNSTR
      *        プロバイダファクトリ取得
               SET W-PROVIDER TO PROP-PROVIDERNAME OF W-CONNSTR
               INVOKE CLASS-DbProviderFactories "GetFactory" USING W-PROVIDER RETURNING W-FACTORY
      *        コネクション生成
               INVOKE W-FACTORY "CreateConnection" RETURNING W-CONN
               SET PROP-CONNECTIONSTRING OF W-CONN TO PROP-CONNECTIONSTRING OF W-CONNSTR
      *        コマンド生成
               INVOKE W-CONN "CreateCommand" RETURNING W-CMD
               SET PROP-COMMANDTEXT OF W-CMD TO N"SELECT SYOCD, SYONA, BAIKA, GENKA FROM SYOPF WHERE SYOCD = @CD"
      *        パラメータ作成
               INVOKE W-CMD "CreateParameter" RETURNING W-DBPARAM
               SET PROP-PARAMETERNAME OF W-DBPARAM TO N"@CD"
               SET PROP-DBTYPE OF W-DBPARAM TO PROP-INT32 OF ENUM-DbType
               SET PROP-VALUE OF W-DBPARAM TO P-SYOCD OF P-SYOHINREC
               INVOKE PROP-PARAMETERS OF W-CMD "Add" USING W-DBPARAM
      
      *        DBオープン
               INVOKE W-CONN "Open"
               
      *        DbDataReaderの構築
               INVOKE W-CMD "ExecuteReader" RETURNING W-READER
               IF W-READER::"Read" = B"1" THEN
                   INVOKE W-READER "GetInt32"   USING 0 RETURNING SYOCD
                   INVOKE W-READER "GetString"  USING 1 RETURNING P-SYONA
                   INVOKE W-READER "GetInt32"   USING 2 RETURNING BAIKA
                   INVOKE W-READER "GetInt32"   USING 3 RETURNING GENKA
                   MOVE SYOCD TO P-SYOCD
                   MOVE BAIKA TO P-BAIKA
                   MOVE GENKA TO P-GENKA
               ELSE
      *            見つからなかった場合
                   MOVE 5 TO R-ReturnCode
               END-IF
           
      *        DbDataReaderのクローズ
               INVOKE W-READER "Close"
      
      *        DBクローズ
               INVOKE W-CONN "Close"
      
      *        メッセージ設定
               IF R-ReturnCode > 1 THEN
                   MOVE MSG-DSP(R-ReturnCode) TO P-Msg
               END-IF
      *    例外処理
           CATCH W-EXCEPTION
      *        例外メッセージを戻り値に格納
               SET P-Msg TO PROP-MESSAGE OF W-EXCEPTION
               MOVE 99 TO R-ReturnCode
      *    終了処理
           FINALLY
      *        コマンド終了処理
               IF W-CMD NOT = NULL
                   INVOKE W-CMD "Dispose"
               END-IF
      *        コネクション終了処理
               IF W-CONN NOT = NULL
                 INVOKE W-CONN "Dispose"
               END-IF
           END-TRY.
       END PROGRAM SYOHIN.
      