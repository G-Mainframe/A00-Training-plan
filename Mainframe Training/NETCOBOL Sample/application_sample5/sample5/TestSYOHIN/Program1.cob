       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program1 AS "TestSYOHIN.Program1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  商品レコード.
           02  商品コード  PIC 9(5).
           02  商品名      PIC N(20).
           02  売価        PIC 9(8).
           02  原価        PIC 9(8).      
      
       01 W-Msg            PIC N(20).
       01 W-ReturnCode     BINARY-LONG.
       PROCEDURE DIVISION.
      *    商品コード設定
           MOVE 10024 TO 商品コード.
           DISPLAY "商品コード:" 商品コード " の情報を検索します。" 
      *    商品レコード検索     
           CALL "SYOHIN" USING 商品レコード W-Msg RETURNING W-ReturnCode.
           
           DISPLAY 商品コード " " 商品名 " " 売価 " " 原価           
       END PROGRAM Program1.
