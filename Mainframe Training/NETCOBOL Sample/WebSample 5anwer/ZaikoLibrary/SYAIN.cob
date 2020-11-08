      ***********************************************************************
      * プログラム名 : SYAIN
      * 概要         : 社員ファイルにアクセスし認証を行う。
      *                SYAIN COPYRIGHT FUJITSU LIMITED 2005       
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYAIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *---社員ファイル------------------
            SELECT  SYALF1         ASSIGN TO SYALF1
            ORGANIZATION           IS  INDEXED
            RECORD KEY             IS  社員コード OF 社員レコード
            FILE STATUS            IS  FILE-STS1 FILE-STS2
            ACCESS MODE            IS  RANDOM.
      *----------------------------------------
      *  データ部
      *----------------------------------------
       DATA DIVISION.
       FILE SECTION.
      *
         FD SYALF1 IS EXTERNAL.
           COPY SYAPF OF XFDLIB.
       WORKING-STORAGE SECTION.
       01  FILE-STS-AREA.
         03  FILE-STS1               PIC  X(02).
         03  FILE-STS2               PIC  X(06).
         
       COPY MSGTBL. 

       
       03  OPEN-FLG               PIC  X(03).
       LINKAGE                         SECTION.
       01  P-EmployeeCode           PIC X(06). 
       01  P-Password               PIC X(06). 
       01  P-Msg                    PIC N(20). 
       01  R-ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION USING
                           P-EmployeeCode   *>社員コード
                           P-Password       *>パスワード
                           P-Msg            *>メッセージ
                           RETURNING
                           R-ReturnCode.    *>戻り値(エラーコード)
       
           PERFORM    INIT-SEC.
           PERFORM    MAIN-SEC.
           PERFORM    END-SEC.      
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
           OPEN INPUT SYALF1.
           IF FILE-STS1 NOT = ZERO THEN
      *         DISPLAY   "*** SYALF1  OPEN ERR (STS1:" FILE-STS1 ") ***"
               MOVE "ERR" TO OPEN-FLG
               MOVE 9 TO R-ReturnCode
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
               CLOSE SYALF1
           END-IF.
           
      *----------------------------------------
      *  主処理
      *----------------------------------------
       MAIN-SEC SECTION.      
           MOVE P-EmployeeCode TO 社員コード OF 社員レコード. 
           READ SYALF1.
      *    *** ファイルステータスチェック ***
           IF FILE-STS1 = ZERO THEN
      *          *** パスワードチェック ***
               IF パスワード OF 社員レコード = P-Password THEN
                   MOVE 0 TO R-ReturnCode
               ELSE
                   MOVE 3 TO R-ReturnCode
               END-IF
           ELSE
      *          *** 該当レコード無し OR ファイル異常 ***
               IF FILE-STS1 = "23" THEN
                   MOVE 2 TO R-ReturnCode
               ELSE
                   MOVE 9 TO R-ReturnCode
               END-IF
           END-IF.
       END PROGRAM SYAIN.
