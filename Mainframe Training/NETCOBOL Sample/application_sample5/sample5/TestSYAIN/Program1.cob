       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program1 AS "TestSYAIN.Program1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WK-EmployeeCode           PIC N(06).
       01  WK-Password               PIC N(06).
       01  WK-Msg                    PIC N(20).
       01  WK-ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION.
      *    社員コードとパスワードの設定
           MOVE NC"200007" TO WK-EmployeeCode.
           MOVE NC"200007" TO WK-Password.
      
           DISPLAY "社員コード:" WK-EmployeeCode " パスワード:" WK-Password
               "で認証を行います。" 
      *    認証用のSYAINプログラム呼び出し
           CALL "SYAIN" USING WK-EmployeeCode WK-Password WK-Msg
               RETURNING WK-ReturnCode.
           IF WK-ReturnCode  =  0 THEN
      *        認証OK
               DISPLAY "認証に成功しました"
           ELSE
               DISPLAY "認証に失敗しました： " WK-Msg
           END-IF
       END PROGRAM Program1.
