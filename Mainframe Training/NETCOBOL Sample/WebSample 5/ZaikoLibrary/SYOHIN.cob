      ***********************************************************************
      * プログラム名 : SYOHIN
      * 概要         : 商品ファイルにアクセスし、商品レコードの取得を行う。
      *                SYOHIN COPYRIGHT FUJITSU LIMITED 2005 
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYOHIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.      
      *---商品ファイル------------------
            SELECT  SYOLF1         ASSIGN TO SYOLF1
            ORGANIZATION           IS  INDEXED
            RECORD KEY             IS  商品コード OF 商品レコード
            FILE STATUS            IS  FILE-STS1 FILE-STS2
            ACCESS MODE            IS  RANDOM.
       
       DATA DIVISION.
       FILE SECTION.
         FD SYOLF1 IS EXTERNAL.
               COPY SYOPF OF XFDLIB.
       WORKING-STORAGE SECTION.
       01  FILE-STS-AREA.
         03  FILE-STS1               PIC  X(02).
         03  FILE-STS2               PIC  X(06).
       
       COPY MSGTBL.
       
       03  OPEN-FLG               PIC  X(03).       
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
       
           PERFORM INIT-SEC.
           PERFORM MAIN-SEC.
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
      *  社員ファイル
           OPEN INPUT SYOLF1.
           IF FILE-STS1 NOT = ZERO THEN
      *         DISPLAY   "*** SYALF1  OPEN ERR (STS1:" FILE-STS1 ") ***"
               MOVE "ERR" TO OPEN-FLG
               MOVE 10 TO R-ReturnCode
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
               CLOSE SYOLF1
           END-IF.
           
      *----------------------------------------
      *  主処理
      *----------------------------------------
       MAIN-SEC SECTION.
           MOVE SPACE TO 商品レコード
           MOVE P-SYOCD TO 商品コード OF 商品レコード. 
           READ SYOLF1.
      *    *** ファイルステータスチェック ***
           IF FILE-STS1 = ZERO THEN
               MOVE 商品レコード TO P-SYOHINREC
           ELSE
      *          *** 該当レコード無し OR ファイル異常 ***
               IF FILE-STS1 = "23" THEN
      *            該当レコード無し         
                   MOVE 5 TO R-ReturnCode
               ELSE
      *            ファイル異常         
                   MOVE 10 TO R-ReturnCode
               END-IF
           END-IF.
       END PROGRAM SYOHIN.
