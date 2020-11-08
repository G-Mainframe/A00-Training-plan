      ***********************************************************************
      * プログラム名 : ZAIKO
      * 概要         : ZaikoClassら入出庫明細を取得する。
      *
      ***********************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZAIKO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
           CLASS ZAIKO-CLASS          AS "ZaikoClass"
           CLASS CLASS-Exception      AS "System.Exception"
           
           PROPERTY PROP-MESSAGE AS "Message".
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-ZAIKO OBJECT REFERENCE ZAIKO-CLASS.
       01 W-EXCEPTION  OBJECT REFERENCE CLASS-Exception.
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
           TRY
               INVOKE ZAIKO-CLASS "NEW" RETURNING W-ZAIKO
               INVOKE W-ZAIKO "INIT-SEC" USING M-AREA P-Cnt RETURNING R-ReturnCode
               IF R-ReturnCode = 0 THEN
                   INVOKE W-ZAIKO "MAIN-SEC" USING M-AREA P-Start P-Cnt P-Next RETURNING R-ReturnCode
               END-IF
               INVOKE W-ZAIKO "END-SEC" USING P-Msg R-ReturnCode
      *    例外処理
           CATCH 
      *        例外メッセージを戻り値に格納
               SET P-Msg TO PROP-MESSAGE OF W-EXCEPTION
               MOVE 99 TO R-ReturnCode
      *    終了処理
           FINALLY
               INVOKE W-ZAIKO "Dispose"
           END-TRY
       END PROGRAM ZAIKO.
