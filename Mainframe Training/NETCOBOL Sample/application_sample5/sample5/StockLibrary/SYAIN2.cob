      ***********************************************************************
      * プログラム名 : SYAIN2
      * 概要         : SP_SYAINを呼び出してし認証を行う。
      *
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYAIN2.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *=================================================================
      *  ホスト変数宣言
      *=================================================================      
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 SQLSTATE     PIC X(5).
       01 SQLMSG       PIC X(128).
       01 SQLINFOA.
          02 SQLERRD  PIC S9(9) COMP-5 OCCURS 6 TIMES.
       01  S-SYACD      PIC S9(9) COMP-5.
       01  S-PASS       PIC N(6).
           EXEC SQL END DECLARE SECTION END-EXEC.      
         
       COPY MSGTBL. 
       LINKAGE                         SECTION.
       01  P-EmployeeCode           PIC N(06). 
       01  P-Password               PIC N(06). 
       01  P-Msg                    PIC N(20). 
       01  R-ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION USING
                           P-EmployeeCode   *>社員コード
                           P-Password       *>パスワード
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
               MOVE FUNCTION DISPLAY-OF(P-EmployeeCode) TO S-SYACD
               MOVE P-Password TO S-PASS
      
      *        SQL実行
               EXEC SQL
               CALL "SP_SYAIN" (:S-SYACD, :S-PASS)
               END-EXEC
      *        ストアドプロシージャの戻り値を設定
               IF SQLSTATE = "00000"
                 MOVE SQLERRD(1) TO R-ReturnCode
               ELSE
                 MOVE 9 TO R-ReturnCode
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
      *    社員コードが見つからなかった場合の処理
           MOVE 2 TO R-ReturnCode.
           PERFORM END-SEC.
       END PROGRAM SYAIN2.
