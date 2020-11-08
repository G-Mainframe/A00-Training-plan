       IDENTIFICATION                  DIVISION.
       PROGRAM-ID.  CSVOUT.
      *
       ENVIRONMENT                     DIVISION.
       INPUT-OUTPUT                    SECTION.
       FILE-CONTROL.
      *
           SELECT 在庫ファイル  ASSIGN  TO  STOCKFL
           ORGANIZATION  IS  INDEXED
           RECORD  KEY   IS  製品番号 WITH DUPLICATES.
      *
           SELECT 出力ファイル  ASSIGN  TO  CSVFILE
           ORGANIZATION  IS  LINE   SEQUENTIAL.
      *
       DATA                            DIVISION.
       FILE                            SECTION.
         FD 在庫ファイル .
          01 在庫レコード.
            03 製品番号                PIC 9(4).
            03 製品名                  PIC X(20).
            03 在庫数量                PIC S9(2).
            03 倉庫番号                PIC 9(4).
            03 定価                    PIC 9(9).
            03 仕切率                  PIC S999V99.
      *
         FD 出力ファイル
            RECORD IS VARYING IN SIZE FROM 1 TO 50 CHARACTERS
                              DEPENDING ON R-LENG.
          01 出力レコード.
            03 CS-DATA PIC X OCCURS 1 TO 50 TIMES
                              DEPENDING ON R-LENG.
      *
       WORKING-STORAGE                 SECTION.
          01 R-LENG                    PIC 9(03) BINARY.
          01 R-COUNT                   PIC 9(04) VALUE 0.
          01 R-COUNT-Z                 PIC ZZZ9.
          01 END-FLAG                  PIC X(03).
          01 区切文字                  PIC X(01) VALUE ",".
          01 位置                      PIC 9(02) VALUE 1.
          01 変換. 
            03 仕切率変換              PIC 999.99. 
      *
          01 符号２.
            03 符号在庫数量            PIC S9(3) SIGN LEADING SEPARATE.
      *
      *出力ファイル編集用レコード
          01 CSV-REC.
            03 CSV-DATA1               PIC X(4).
            03 KUGIRIA                 PIC X.
            03 CSV-DATA2.
              05  CSV-DATA21           PIC X OCCURS 1 TO 20 TIMES
                              DEPENDING ON LENG-B.
            03 KUGIRIB                 PIC X.
            03 CSV-DATA3               PIC X(3).
      *
            03 KUGIRIC                 PIC X.
            03 CSV-DATA4               PIC X(4).
      *
            03 KUGIRID                 PIC X.
            03 CSV-DATA5               PIC X(9).
      *
            03 KUGIRIE                 PIC X.
            03 CSV-DATA6               PIC X(7).
      *
      *出力ファイル各項目長
          01 LENG-A                    PIC 9(03) VALUE 4. *>製品番号
          01 LENG-B                    PIC 9(03) BINARY.  *>製品名
          01 LENG-C                    PIC 9(03) VALUE 3. *>在庫数量
          01 LENG-D                    PIC 9(03) VALUE 4. *>倉庫番号
          01 LENG-E                    PIC 9(03) VALUE 9. *>定価
          01 LENG-F                    PIC 9(03) VALUE 8. *>仕切率
      *
      ****************************************************************
      *　　　データコンバート
      ****************************************************************
       PROCEDURE DIVISION.
       MAIN-SHORI.
      *
            DISPLAY   "*** CSVOUT START ****".
      *ファイルのオープン
            OPEN INPUT 在庫ファイル.
            OPEN OUTPUT 出力ファイル.
      *ファイルの読込み
            READ 在庫ファイル
               AT END
                 MOVE "END"            TO  END-FLAG
            END-READ.
      *
            PERFORM DATA-SHORI UNTIL END-FLAG = "END".
      *ファイルのクローズ
            CLOSE 在庫ファイル.
            CLOSE 出力ファイル.
            MOVE R-COUNT               TO  R-COUNT-Z.
            DISPLAY R-COUNT-Z "件のデータを変換しました"
            DISPLAY   "*** CSVOUT END   ****".
            EXIT  PROGRAM.
      *
      *データコンバート(COBOL索引ファイル→CSV)
       DATA-SHORI.
            MOVE 製品番号              TO  CSV-DATA1.
      *
            COMPUTE LENG-B = FUNCTION STORED-CHAR-LENGTH(製品名).
            MOVE 製品名                TO  CSV-DATA2.
      *
            MOVE 在庫数量              TO  符号在庫数量.
            MOVE 符号２                TO  CSV-DATA3.
      *      
            MOVE 倉庫番号              TO  CSV-DATA4.
      *
            MOVE 定価                  TO  CSV-DATA5.
      *
            MOVE 仕切率                TO  仕切率変換.
            MOVE 変換                  TO  CSV-DATA6.
      *
            MOVE ","                   TO  KUGIRIA
                                           KUGIRIB
                                           KUGIRIC
                                           KUGIRID
                                           KUGIRIE.
      *
            COMPUTE R-LENG = 5 + LENG-A + LENG-B + LENG-C + LENG-D + LENG-E + LENG-F.
      *
      *ファイルの書出し
            WRITE 出力レコード   FROM  CSV-REC.
            COMPUTE R-COUNT = R-COUNT + 1.
      *ファイルの読込み
            READ  在庫ファイル  AT END MOVE "END"  TO END-FLAG
            END-READ.
       END PROGRAM CSVOUT. 
      