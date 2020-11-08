      ***********************************************************************
      * プログラム名 : ZAIKO
      * 概要         : 入出庫ファイルから入出庫明細を取得する。
      *                ZAIKO COPYRIGHT FUJITSU LIMITED 2005 
      ***********************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZAIKO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *---入出庫ファイル----------------
            SELECT  SYOIOLF1       ASSIGN TO SYOIOLF1
            ORGANIZATION           IS  INDEXED
            RECORD KEY             IS  商品コード OF 入出庫レコード
                                       入出庫日   OF 入出庫レコード
            FILE STATUS            IS  FILE-STS1 FILE-STS2
            ACCESS MODE            IS  SEQUENTIAL.
      *----------------------------------------
      *  データ部
      *----------------------------------------
       DATA DIVISION.
       FILE SECTION.
      *
         FD SYOIOLF1 IS EXTERNAL.
               COPY SYOIOPF OF XFDLIB.
       WORKING-STORAGE SECTION.
      
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
       
       01  OPEN-FLG                 PIC X(03).
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
               IF MEISAI-FLG = "MAX" THEN
                   MOVE 1 TO P-Next
               END-IF
               IF MEISAI-FLG = "END" AND P-Cnt = 0 THEN
                   *>商品コードはあったが、該当する年月のレコードなし
                   MOVE 8 TO R-ReturnCode
               END-IF
           END-IF.               
           PERFORM END-SEC.      
           EXIT PROGRAM.
      *----------------------------------------
      *  初期処理
      *----------------------------------------
       INIT-SEC SECTION.
      *---作業領域の初期化
           MOVE 0 TO R-ReturnCode
           MOVE SPACE TO FILE-STS1.           
           MOVE SPACE TO OPEN-FLG.
           MOVE SPACE TO MEISAI-FLG.
           MOVE SPACE TO END-FLG.
           
           MOVE 0 TO W-RECCNT.
           MOVE 0 TO P-Cnt.
           
      *----入出庫ファイル
           OPEN INPUT SYOIOLF1.
           IF FILE-STS1 NOT = ZERO THEN
      *         DISPLAY   "*** SYALF1  OPEN ERR (STS1:" FILE-STS1 ") ***"
               MOVE "ERR" TO OPEN-FLG
               MOVE 9 TO R-ReturnCode
               PERFORM END-SEC
               EXIT PROGRAM
           END-IF.
           
      *---入出庫ファイルの位置決め------
           MOVE    M-SYOCD  TO    商品コード OF 入出庫レコード.
           MOVE    M-Y      TO    W-IOY.
           MOVE    M-M      TO    W-IOM.
           MOVE    1        TO    W-IOD.
           MOVE    W-IOYMD  TO    入出庫日   OF 入出庫レコード.
      
           START    SYOIOLF1  KEY  >=  商品コード OF 入出庫レコード  入出庫日   OF 入出庫レコード.                      
      *     23レコードが見つかりません。
           IF FILE-STS1 = 23 THEN
               MOVE 8 TO R-ReturnCode
               PERFORM END-SEC
               EXIT PROGRAM
           END-IF.
       
      *----------------------------------------
      *  終了処理
      *----------------------------------------
       END-SEC SECTION.
      *  社員ファイル
           IF R-ReturnCode > 1 THEN
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
           END-IF.
      
           IF OPEN-FLG = SPACE THEN
               CLOSE SYOIOLF1
           END-IF.
           
      *---------------------------------------------------------------
      *　入出庫ファイル読込処理
      *---------------------------------------------------------------
       SYOIOLF1-READ-SEC SECTION.
      *
           READ SYOIOLF1.
      
           IF FILE-STS1 = ZERO THEN
               MOVE 入出庫日 OF 入出庫レコード TO W-IOYMD
               IF ( M-SYOCD  =  商品コード OF 入出庫レコード )  AND
                  ( M-Y      =  W-IOY    )                      AND
                  ( M-M      =  W-IOM    )
               THEN
                   COMPUTE W-RECCNT = W-RECCNT + 1
               ELSE
                   MOVE "END" TO MEISAI-FLG
               END-IF
           ELSE
               IF FILE-STS1 = "10" THEN
                   MOVE "END" TO MEISAI-FLG
               ELSE
      *             DISPLAY "*** SYOIOLF1 READ ERR (STS1:" FILE-STS1 " ) ***"
                   MOVE "ERR" TO END-FLG
               END-IF
           END-IF.
      
      *
      *---------------------------------------------------------------
      *　主処理
      *---------------------------------------------------------------
       MAIN-SEC SECTION.      
      *---入出庫ファイルを読み、対象レコードに対して処理
           PERFORM SYOIOLF1-READ-SEC
      *    ループ
           PERFORM UNTIL (END-FLG = "ERR") OR (MEISAI-FLG = "END") OR (MEISAI-FLG = "MAX")
               
               IF W-RECCNT >= P-Start THEN
                   COMPUTE P-Cnt = P-Cnt + 1
                   EVALUATE 伝票区分コード OF 入出庫レコード
      
                   WHEN    ZERO
                       CONTINUE
      
      *          *** 納品系処理区分（１１～２９）
                   WHEN    11  THRU  19
                       EVALUATE   伝票区分コード OF 入出庫レコード
                           WHEN    11
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    19
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
                   WHEN    21  THRU  29
                       EVALUATE    伝票区分コード OF 入出庫レコード
                           WHEN    21
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
      *          ***仕入系処理区分（３１～４９）
                   WHEN    31  THRU  39
                       EVALUATE   伝票区分コード OF 入出庫レコード
                           WHEN    39
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-GENKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           END-EVALUATE
      
                   WHEN    41  THRU  49
                       EVALUATE    伝票区分コード OF 入出庫レコード
                           WHEN    49
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-GENKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
      *          *** 社内良品系処理区分（５１～６９）
                   WHEN    51  THRU  59
                       EVALUATE    伝票区分コード OF 入出庫レコード
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
                       EVALUATE    伝票区分コード OF 入出庫レコード
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
      
      *          ***社外不良品系処理区分（７１～８９）
                   WHEN    71  THRU  79
                       EVALUATE    伝票区分コード OF 入出庫レコード
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
                       EVALUATE    伝票区分コード OF 入出庫レコード
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
      
                   MOVE  納品日   OF 入出庫レコード        TO  M-NODATE(P-Cnt)
                   MOVE  伝票番号 OF 入出庫レコード        TO  M-DENBAN(P-Cnt)
                   MOVE  伝票区分コード OF 入出庫レコード   TO  M-KUBUN(P-Cnt)
                   MOVE  KUBUN-ID(伝票区分コード OF 入出庫レコード) 
                                                       TO  M-KUBUNN(P-Cnt)
      
                   EVALUATE S-TANGEN
                   WHEN S-TANKA
                       MOVE M-TANKA  TO M-KAKAKU(P-Cnt)
                   WHEN S-GENKA
                       MOVE M-GENKA  TO M-KAKAKU(P-Cnt)
                   WHEN S-MUKA
                       MOVE 0        TO M-KAKAKU(P-Cnt)
                   END-EVALUATE
      
                   IF S-NYUSYU = S-NYUKO THEN
                       MOVE 入出庫数 OF 入出庫レコード   TO M-ISU(P-Cnt)
                   ELSE
                       MOVE 入出庫数 OF 入出庫レコード   TO M-OSU(P-Cnt)
                   END-IF
               END-IF
      *        明細行数を越えたら終了         
               IF P-Cnt >= LINEMAX THEN
                   MOVE "MAX" TO MEISAI-FLG                  
      *            最後に1件読んで次の行があるか確認する
               END-IF
               PERFORM SYOIOLF1-READ-SEC
           END-PERFORM.                      
       END PROGRAM ZAIKO.
