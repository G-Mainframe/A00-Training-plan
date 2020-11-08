      ***********************************************************************
      * プログラム名 : ZAIKO
      * 概要         : 入出庫テーブルから入出庫明細を取得する。
      *
      ***********************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZAIKO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
      
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *=================================================================
      *  ホスト変数宣言
      *=================================================================      
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 SQLSTATE     PIC X(5).
       01 SQLMSG       PIC X(128).
       
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
           EXEC SQL END DECLARE SECTION END-EXEC.
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
      
       COPY MSGTBL. 
       
       01  LINEMAX                  PIC 9(03) VALUE 10.
       LINKAGE SECTION.
       COPY IODETAIL.      
       01 P-Start                   BINARY-SHORT.
       01 P-Cnt                     PIC 9(03).
       01 P-Next                    PIC 9(01).
       01 P-Msg                     PIC N(20). 
       01 R-ReturnCode              BINARY-LONG.
       PROCEDURE DIVISION USING
                           M-AREA           *>明細領域
                           P-Start          *>開始行
                           P-Cnt            *>件数
                           P-Next           *>次のレコードがあるかどうか(ある場合は1)
                           P-Msg            *>メッセージ
                           RETURNING
                           R-ReturnCode.    *>戻り値(エラーコード)
           PERFORM INIT-SEC.      
           IF R-ReturnCode = 0 THEN
               PERFORM MAIN-SEC
           END-IF.
           PERFORM END-SEC.
           EXIT PROGRAM. 
      
      *-----------------------------------------------------------------
       INIT-SEC SECTION.
           MOVE 0 TO R-ReturnCode
           MOVE SPACE TO MEISAI-FLG.
           MOVE SPACE TO END-FLG.
           
           MOVE 0 TO W-RECCNT.
           MOVE 0 TO P-Cnt.
           
      *=================================================================
      *  カーソルを宣言します
      *=================================================================
           EXEC SQL
             DECLARE CUR1 CURSOR FOR SELECT * FROM SYOIOPF
               WHERE (IODATE BETWEEN :S-SIODATE AND :S-EIODATE) AND SYOCD = :S-SYOCD 
           END-EXEC.
           
      *    DB接続
           EXEC SQL CONNECT TO DEFAULT END-EXEC.
      *    接続確認
           IF SQLSTATE NOT = "00000" AND SQLSTATE NOT = "01000" THEN
               MOVE 9 TO R-ReturnCode
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
               EXIT PROGRAM
           END-IF.
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
      
      *-----------------------------------------------------------------
       END-SEC SECTION.           
      *    DBクローズ
           EXEC SQL DISCONNECT DEFAULT END-EXEC.
      *    メッセージ設定
           IF R-ReturnCode > 1 THEN
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
           END-IF. 
       
      *-----------------------------------------------------------------
       FETCH-SEC SECTION.
      *    フェッチ
           EXEC SQL FETCH CUR1 INTO :SYOIOPF-REC END-EXEC.
           IF SQLSTATE = "00000" THEN
      *        読込件数カウントアップ           
               COMPUTE W-RECCNT = W-RECCNT + 1
           ELSE
      *        レコードがない場合の動作     
               IF SQLSTATE = "02000" THEN
                   MOVE "END" TO MEISAI-FLG
               ELSE
                   MOVE "ERR" TO END-FLG
               END-IF
           END-IF.
       
      *-----------------------------------------------------------------
       MAIN-SEC SECTION.
      *    カーソルオープン
           EXEC SQL OPEN CUR1 END-EXEC.
           PERFORM FETCH-SEC.
      *    ループ
           PERFORM UNTIL (END-FLG = "ERR") OR (MEISAI-FLG = "END") OR (MEISAI-FLG = "MAX")
               IF W-RECCNT >= P-Start THEN
                   COMPUTE P-Cnt = P-Cnt + 1
                   PERFORM CODE-SEC
               END-IF
      *        明細行数を越えたら終了   
               IF P-Cnt >= LINEMAX THEN
                   MOVE "MAX" TO MEISAI-FLG                  
      *            最後に1件読んで次の行があるか確認する
               END-IF               
               PERFORM FETCH-SEC
           END-PERFORM.
      *    カーソルクローズ
           EXEC SQL CLOSE CUR1 END-EXEC.
      
           IF MEISAI-FLG = "MAX" THEN
               MOVE 1 TO P-Next
           END-IF
           IF MEISAI-FLG = "END" AND P-Cnt = 0 THEN
               *>商品コードはあったが、該当する年月のレコードなし
               MOVE 8 TO R-ReturnCode
           END-IF.
       
      *-----------------------------------------------------------------
       CODE-SEC SECTION.
      *    区分コード処理 
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
       END PROGRAM ZAIKO.
