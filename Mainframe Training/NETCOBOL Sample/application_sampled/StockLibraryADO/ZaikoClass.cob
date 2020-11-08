      ***********************************************************************
      * クラス名     : ZaikoClass
      * 概要         : 入出庫テーブルから入出庫明細を取得する。
      *
      ***********************************************************************
       IDENTIFICATION DIVISION.
       CLASS-ID. ZAIKO-CLASS AS "ZaikoClass".
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
           INTERFACE INTRFACE-IDisposable       AS "System.IDisposable"
           
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
      
       OBJECT. IMPLEMENTS INTRFACE-IDisposable.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SYOIOPF-REC.
         02  IODATE     PIC S9(9) COMP-5.
         02  SYOCD      PIC S9(9) COMP-5.
         02  NODATE     PIC S9(9) COMP-5.
         02  SYUBAN     PIC S9(9) COMP-5.
         02  TUBAN      PIC S9(9) COMP-5.
         02  KUBUN      PIC S9(9) COMP-5.
         02  IOSU       PIC S9(9) COMP-5.
      
       01  S-SIODATE    PIC S9(9) COMP-5.
       01  S-EIODATE    PIC S9(9) COMP-5.
       01  S-SYOCD      PIC S9(9) COMP-5.
      
       01  W-IODATE     PIC 9(8).
      
       01  W-DENPYO.
         03  W-SYUBAN   PIC 9(8).                                               
         03  W-TUBAN    PIC 9(4).                                               
      
      
      *---コードテーブル----------------
         01  S-CODE.
           03  S-TANKA                 PIC  X(4)  VALUE "0001".
           03  S-GENKA                 PIC  X(4)  VALUE "0002".
           03  S-MUKA                  PIC  X(4)  VALUE "0003".
           03  S-NYUKO                 PIC  X(4)  VALUE "0001".
           03  S-SYUKO                 PIC  X(4)  VALUE "0002".
      *
           03  S-TANGEN                PIC  X(4)  VALUE "0000".
           03  S-NYUSYU                PIC  X(4)  VALUE "0000".
           
      *---伝票区分コードテーブル--------
         01  KUBUN-AREA.
      *    01～10 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"　　　　　　　　　　　　　　　　　　　　".
      *    11～20 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"売上　　　　　　　　　　　　　　売訂　　".
      *    21～30 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"売返　　　　　　　　　　　　　　売訂　　".
      *    31～40 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"仕入送仕状仕加仕浮借浮仕委仕値増仕訂　　".
      *    41～50 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"仕返送返状返加返浮返浮戻委戻値引仕訂　　".
      *    51～60 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"貸出持出社出預出持越展出振出他出出訂　　".
      *    61～70 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"貸戻持戻社戻預戻持戻展戻振入他入入訂　　".
      *    70～80 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"返出振出　　　　　　　　　　　　　　　　".
      *    81～90 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"返入振入　　　　　　　　　　　　他入入訂".
      *    91～100**
           03  FILLER                  PIC  N(20) VALUE
                  NC"　　　　　　　　　　　　　　　　　　　　".
         01 KUBUN-TBL REDEFINES  KUBUN-AREA.
           03  KUBUN-ID          OCCURS 100 TIMES.
             05  FILLER                PIC  N(02).           
      
       01  FILE-STS-AREA.
         03  FILE-STS1               PIC  X(02).
         03  FILE-STS2               PIC  X(06).
        
      *---フラグ関連--------------------
         01  FLG-AREA.
           03  END-FLG                 PIC  X(03).
           03  MEISAI-FLG              PIC  X(03).      
      
      *---プログラム作業領域------
         01  W-AREA.
           03  W-KEY.
             05  W-Y                   PIC  9(04).
             05  W-M                   PIC  9(02).
             05  W-SYOCD               PIC  9(05).
           03  W-IOYMD.
             05  W-IOY                 PIC  9(04).
             05  W-IOM                 PIC  9(02).
             05  W-IOD                 PIC  9(02).
           03  W-RECCNT                PIC  9(03).
      
       01  LINEMAX                  PIC 9(03) VALUE 10.
      
       01  W-CONN       OBJECT REFERENCE CLASS-DbConnection.
       01  W-CMD        OBJECT REFERENCE CLASS-DbCommand .
       01  W-READER     OBJECT REFERENCE CALSS-DbDataReader.
       
       PROCEDURE DIVISION.
       
      *-----------------------------------------------------------------
       METHOD-ID. INIT-SEC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  W-CONNSTR    OBJECT REFERENCE CLASS-ConnectionStringSettings.
       01  W-PROVIDER   OBJECT REFERENCE CLASS-String.
       01  W-FACTORY    OBJECT REFERENCE CLASS-DbProviderFactory.
       01  W-DBPARAM    OBJECT REFERENCE CLASS-DbParameter.       
       01  W-DBTYPE		OBJECT REFERENCE ENUM-DbType.
       01  W-EXCEPTION  OBJECT REFERENCE CLASS-Exception.
       LINKAGE SECTION.
       COPY IODETAIL.      
       01 P-Cnt                     PIC 9(03).
       01 R-ReturnCode              BINARY-LONG.
       PROCEDURE DIVISION USING M-AREA P-Cnt RETURNING R-ReturnCode.
           MOVE 0 TO R-ReturnCode
           MOVE SPACE TO MEISAI-FLG.
           MOVE SPACE TO END-FLG.
           
           MOVE 0 TO W-RECCNT.
           MOVE 0 TO P-Cnt.
      
      *---入出庫レコードの検索条件------
           MOVE    M-SYOCD  TO    S-SYOCD.
           MOVE    M-Y      TO    W-IOY.
           MOVE    M-M      TO    W-IOM.
           MOVE    1        TO    W-IOD.
           MOVE    W-IOYMD  TO    W-IODATE.
           MOVE    W-IODATE TO    S-SIODATE.
           MOVE    31       TO    W-IOD.
           MOVE    W-IOYMD  TO    W-IODATE.
           MOVE    W-IODATE TO    S-EIODATE.
      
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
               SET PROP-COMMANDTEXT OF W-CMD TO
                 "SELECT * FROM SYOIOPF WHERE (IODATE BETWEEN @SDATE AND @EDATE) AND SYOCD = @SYOCD"
      *        パラメータ作成
               INVOKE W-CMD "CreateParameter" RETURNING W-DBPARAM
               SET PROP-PARAMETERNAME OF W-DBPARAM TO N"@SDATE"
               SET PROP-DBTYPE OF W-DBPARAM TO PROP-INT32 OF ENUM-DbType
               SET PROP-VALUE OF W-DBPARAM TO S-SIODATE
               INVOKE PROP-PARAMETERS OF W-CMD "Add" USING W-DBPARAM
      
               INVOKE W-CMD "CreateParameter" RETURNING W-DBPARAM
               SET PROP-PARAMETERNAME OF W-DBPARAM TO N"@EDATE"
               SET PROP-DBTYPE OF W-DBPARAM TO PROP-INT32 OF ENUM-DbType
               SET PROP-VALUE OF W-DBPARAM TO S-EIODATE
               INVOKE PROP-PARAMETERS OF W-CMD "Add" USING W-DBPARAM
      
               INVOKE W-CMD "CreateParameter" RETURNING W-DBPARAM
               SET PROP-PARAMETERNAME OF W-DBPARAM TO N"@SYOCD"
               SET PROP-DBTYPE OF W-DBPARAM TO PROP-INT32 OF ENUM-DbType
               SET PROP-VALUE OF W-DBPARAM TO S-SYOCD
               INVOKE PROP-PARAMETERS OF W-CMD "Add" USING W-DBPARAM
      
      *        DBオープン
               INVOKE W-CONN "Open"
      *   例外を設定    
           CATCH W-EXCEPTION
      *        データベースにアクセスできない場合
               MOVE 9 TO R-ReturnCode
           END-TRY.    
       END METHOD INIT-SEC.
      
      *-----------------------------------------------------------------
       METHOD-ID. END-SEC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY MSGTBL. 
       LINKAGE SECTION.
       01 P-Msg                     PIC N(20).
       01 P-ReturnCode              BINARY-LONG.
       PROCEDURE DIVISION USING P-Msg P-ReturnCode.
      *    DBクローズ
           INVOKE W-CONN "Close".
      *    メッセージ設定
           IF P-ReturnCode > 1 THEN
               MOVE MSG-DSP(P-ReturnCode) TO P-Msg
           END-IF.
       END METHOD END-SEC.
       
      *-----------------------------------------------------------------
       METHOD-ID. READ-SEC.
       DATA DIVISION.
       PROCEDURE DIVISION.
           IF W-READER::"Read" = B"1" THEN
               COMPUTE W-RECCNT = W-RECCNT + 1
               INVOKE W-READER "GetInt32"   USING 0 RETURNING IODATE
               INVOKE W-READER "GetInt32"   USING 1 RETURNING SYOCD
               INVOKE W-READER "GetInt32"   USING 2 RETURNING NODATE
               INVOKE W-READER "GetInt32"   USING 3 RETURNING SYUBAN
               INVOKE W-READER "GetInt32"   USING 4 RETURNING TUBAN
               INVOKE W-READER "GetInt32"   USING 5 RETURNING KUBUN
               INVOKE W-READER "GetInt32"   USING 6 RETURNING IOSU
           ELSE
               MOVE "END" TO MEISAI-FLG
           END-IF.
       END METHOD READ-SEC.
       
      *-----------------------------------------------------------------
       METHOD-ID. MAIN-SEC.
       DATA DIVISION.
       LINKAGE SECTION.
       COPY IODETAIL.      
       01 P-Start                   BINARY-SHORT.
       01 P-Cnt                     PIC 9(03).
       01 P-Next                    PIC 9(01).
       01 R-ReturnCode              BINARY-LONG.
       PROCEDURE DIVISION USING M-AREA P-Start P-Cnt P-Next RETURNING R-ReturnCode.
           INVOKE W-CMD "ExecuteReader" RETURNING W-READER.      
           INVOKE SELF "READ-SEC"
      *    ループ
           PERFORM UNTIL (END-FLG = "ERR") OR (MEISAI-FLG = "END") OR (MEISAI-FLG = "MAX")
               IF W-RECCNT >= P-Start THEN
                   COMPUTE P-Cnt = P-Cnt + 1
                   INVOKE SELF "CODE-SEC" USING M-AREA P-Cnt
               END-IF
      *        明細行数を越えたら終了   
               IF P-Cnt >= LINEMAX THEN
                   MOVE "MAX" TO MEISAI-FLG                  
      *            最後に1件読んで次の行があるか確認する
               END-IF               
               INVOKE SELF "READ-SEC"
           END-PERFORM.
           INVOKE W-READER "Close".
      
           IF MEISAI-FLG = "MAX" THEN
               MOVE 1 TO P-Next
           END-IF
           IF MEISAI-FLG = "END" AND P-Cnt = 0 THEN
               *>商品コードはあったが、該当する年月のレコードなし
               MOVE 8 TO R-ReturnCode
           END-IF
            
       END METHOD MAIN-SEC.
      
      *-----------------------------------------------------------------
       METHOD-ID. CODE-SEC.
       DATA DIVISION.
       LINKAGE SECTION.
       COPY IODETAIL.      
       01 P-Cnt                     PIC 9(03).
       PROCEDURE DIVISION USING M-AREA P-Cnt.
           EVALUATE KUBUN OF SYOIOPF-REC
       
           WHEN    ZERO
               CONTINUE
       
      *    *** 納品系処理区分（１１～２９）
           WHEN    11  THRU  19
               EVALUATE   KUBUN OF SYOIOPF-REC
                   WHEN    11
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    19
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
               END-EVALUATE
       
           WHEN    21  THRU  29
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    21
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
               END-EVALUATE
       
      *    ***仕入系処理区分（３１～４９）
           WHEN    31  THRU  39
               EVALUATE   KUBUN OF SYOIOPF-REC
                   WHEN    39
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-GENKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   END-EVALUATE
       
           WHEN    41  THRU  49
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    49
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-GENKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
               END-EVALUATE
       
      *    *** 社内良品系処理区分（５１～６９）
           WHEN    51  THRU  59
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    51
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    52
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    59
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
               END-EVALUATE
      *
           WHEN    61  THRU  69
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    61
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    62
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    69
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
               END-EVALUATE
       
      *    ***社外不良品系処理区分（７１～８９）
           WHEN    71  THRU  79
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    71  THRU  72
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    79
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
               END-EVALUATE
      *
           WHEN    81  THRU  89
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    81  THRU  82
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    89
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
               END-EVALUATE
           END-EVALUATE
       
           MOVE IODATE OF SYOIOPF-REC           TO M-IODATE(P-Cnt)
           MOVE SYUBAN OF SYOIOPF-REC           TO W-SYUBAN
           MOVE TUBAN OF SYOIOPF-REC            TO W-TUBAN
           MOVE W-DENPYO                        TO M-DENBAN(P-Cnt)
           MOVE KUBUN OF SYOIOPF-REC            TO M-KUBUN(P-Cnt)
           MOVE KUBUN-ID(KUBUN OF SYOIOPF-REC)  TO M-KUBUNN(P-Cnt)
       
           EVALUATE S-TANGEN
           WHEN S-TANKA
               MOVE M-TANKA  TO M-KAKAKU(P-Cnt)
           WHEN S-GENKA
               MOVE M-GENKA  TO M-KAKAKU(P-Cnt)
           WHEN S-MUKA
               MOVE 0        TO M-KAKAKU(P-Cnt)
           END-EVALUATE
       
           IF S-NYUSYU = S-NYUKO THEN
               MOVE IOSU OF SYOIOPF-REC TO M-ISU(P-Cnt)
           ELSE
               MOVE IOSU OF SYOIOPF-REC TO M-OSU(P-Cnt)
           END-IF
       END METHOD CODE-SEC.
      
      *-----------------------------------------------------------------
       METHOD-ID. DISPOSE AS "Dispose".
       PROCEDURE DIVISION.
      *    コマンド終了処理
           IF W-CMD NOT = NULL
               INVOKE W-CMD "Dispose"
           END-IF
      *    コネクション終了処理
           IF W-CONN NOT = NULL
               INVOKE W-CONN "Dispose"
           END-IF
       END METHOD DISPOSE.
       
       END OBJECT.
       END CLASS ZAIKO-CLASS.
