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
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *=================================================================
      *  ホスト変数宣言
      *=================================================================      
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 SQLSTATE     PIC X(5).
       01 SQLMSG       PIC X(128).
       
       01 SYOPF-REC.
         02  SYOCD      PIC S9(9) COMP-5.
         02  SYONA      PIC N(20).
         02  BAIKA      PIC S9(9) COMP-5.
         02  GENKA      PIC S9(9) COMP-5.
      
       01  S-SYOCD      PIC S9(9) COMP-5.
           EXEC SQL END DECLARE SECTION END-EXEC.            
       
       COPY MSGTBL.
       
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
      
           PERFORM MAIN-SEC.
           PERFORM END-SEC.
           EXIT PROGRAM.
      
       MAIN-SEC SECTION.
      *    レコードがなかった場合の動作 
           EXEC SQL WHENEVER NOT FOUND GO TO :P-NOTFOUND END-EXEC.
      
      *    DB接続
           EXEC SQL CONNECT TO DEFAULT END-EXEC.
      *    接続確認
           IF SQLSTATE = "00000" OR SQLSTATE = "01000" THEN           
               MOVE P-SYOCD OF P-SYOHINREC TO S-SYOCD
               
      *        SQL実行
               EXEC SQL
               SELECT SYOCD, SYONA, BAIKA, GENKA
                   INTO :SYOCD, :SYONA, :BAIKA, :GENKA FROM SYOPF WHERE SYOCD = :S-SYOCD
               END-EXEC
      
      *        取得データの転記         
               IF SQLSTATE = "00000" THEN
                   MOVE SYOCD TO P-SYOCD
                   MOVE SYONA TO P-SYONA
                   MOVE BAIKA TO P-BAIKA
                   MOVE GENKA TO P-GENKA
               END-IF
           END-IF.
      
       END-SEC SECTION.
      *    DBクローズ
           EXEC SQL DISCONNECT DEFAULT END-EXEC.
      *    メッセージ設定
           IF R-ReturnCode > 1 THEN
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
           END-IF.
      
       NOTFOUND-SEC SECTION.
       P-NOTFOUND.
      *    商品コードが見つからなかった場合の処理
           MOVE 5 TO R-ReturnCode.
           PERFORM END-SEC.
       END PROGRAM SYOHIN.
