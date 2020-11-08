       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program1 AS "TestZAIKO.Program1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY IODETAIL.
       01 W-Msg                     PIC N(20).
       01 W-Next                    PIC 9(01).
       01 W-ReturnCode              BINARY-LONG.
       01 W-Cnt                     PIC 9(03). 
       01 W-Start                   BINARY-SHORT.
       01 W-IDX                     BINARY-LONG.
       PROCEDURE DIVISION.
           INITIALIZE M-AREA
           
      *    商品コード設定
           MOVE 10024 TO M-SYOCD.
      *    日付設定
           MOVE 2004 TO M-Y.
           MOVE 4 TO M-M.
      *    開始位置
           MOVE 1 TO W-Start.
           DISPLAY M-Y "年" M-M "月 商品コード:" M-SYOCD "の入出庫情報を検索します。"
      *    入出庫検索
           CALL "ZAIKO" USING M-AREA W-Start W-Cnt W-Next W-Msg RETURNING W-ReturnCode.
      
           PERFORM VARYING W-IDX  FROM 1 BY 1 UNTIL W-IDX > 10       
               DISPLAY M-IODATE(W-IDX) " " M-DENBAN(W-IDX) " " M-KUBUN(W-IDX)
                   " " M-KUBUNN(W-IDX) " " M-ISU(W-IDX) " " M-OSU(W-IDX)
           END-PERFORM.
       END PROGRAM Program1.
