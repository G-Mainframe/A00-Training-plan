000090 IDENTIFICATION                  DIVISION.
000100 PROGRAM-ID.  CSVOUT.
000110*
000120 ENVIRONMENT                     DIVISION.
000130 INPUT-OUTPUT                    SECTION.
000140 FILE-CONTROL.
000150*
000160     SELECT 在庫ファイル  ASSIGN  TO  STOCKFL
000170     ORGANIZATION  IS  INDEXED
000180     RECORD  KEY   IS  製品番号 WITH DUPLICATES.
000190*
000200     SELECT 出力ファイル  ASSIGN  TO  CSVFILE
000210     ORGANIZATION  IS  LINE   SEQUENTIAL.
000220*
000230 DATA                            DIVISION.
000240 FILE                            SECTION.
000250   FD 在庫ファイル .
000260    01 在庫レコード.
000270      03 製品番号                PIC 9(4).
000280      03 製品名                  PIC X(20).
000290      03 在庫数量                PIC S9(2).
000300      03 倉庫番号                PIC 9(4).
000310      03 定価                    PIC 9(9).
000320      03 仕切率                  PIC S999V99.
000330*
000340   FD 出力ファイル
000350      RECORD IS VARYING IN SIZE FROM 1 TO 50 CHARACTERS
000360                        DEPENDING ON R-LENG.
000370    01 出力レコード.
000380      03 CS-DATA PIC X OCCURS 1 TO 50 TIMES
000390                        DEPENDING ON R-LENG.
000400*
000410 WORKING-STORAGE                 SECTION.
000420    01 R-LENG                    PIC 9(03) BINARY.
000430    01 R-COUNT                   PIC 9(04) VALUE 0.
000440    01 R-COUNT-Z                 PIC ZZZ9.
000450    01 END-FLAG                  PIC X(03).
000460    01 区切文字                  PIC X(01) VALUE ",".
000470    01 位置                      PIC 9(02) VALUE 1.
000480    01 変換. 
000490      03 仕切率変換              PIC 999.99. 
000500*
000510    01 符号２.
000520      03 符号在庫数量            PIC S9(3) LEADING SEPARATE.
000530*
000540*出力ファイル編集用レコード
000550    01 CSV-REC.
000560      03 CSV-DATA1               PIC X(4).
000570      03 KUGIRIA                 PIC X.
000580      03 CSV-DATA2.
000590        05  CSV-DATA21           PIC X OCCURS 1 TO 20 TIMES
000600                        DEPENDING ON LENG-B.
000610      03 KUGIRIB                 PIC X.
000620      03 CSV-DATA3               PIC X(3).
000630*
000640      03 KUGIRIC                 PIC X.
000650      03 CSV-DATA4               PIC X(4).
000660*
000670      03 KUGIRID                 PIC X.
000680      03 CSV-DATA5               PIC X(9).
000690*
000700      03 KUGIRIE                 PIC X.
000710      03 CSV-DATA6               PIC X(7).
000720*
000730*出力ファイル各項目長
000740    01 LENG-A                    PIC 9(03) VALUE 4. *>製品番号
000750    01 LENG-B                    PIC 9(03) BINARY.  *>製品名
000760    01 LENG-C                    PIC 9(03) VALUE 3. *>在庫数量
000770    01 LENG-D                    PIC 9(03) VALUE 4. *>倉庫番号
000780    01 LENG-E                    PIC 9(03) VALUE 9. *>定価
000790    01 LENG-F                    PIC 9(03) VALUE 8. *>仕切率
000800*
000810****************************************************************
000820*　　　データコンバート
000830****************************************************************
000840 PROCEDURE DIVISION.
000850 MAIN-SHORI.
000860*
000870      DISPLAY   "*** CSVOUT START ****".
000880*ファイルのオープン
000890      OPEN INPUT 在庫ファイル.
000900      OPEN OUTPUT 出力ファイル.
000910*ファイルの読込み
000920      READ 在庫ファイル
000930         AT END
000940           MOVE "END"            TO  END-FLAG
000950      END-READ.
000960*
000970      PERFORM DATA-SHORI UNTIL END-FLAG = "END".
000980*ファイルのクローズ
000990      CLOSE 在庫ファイル.
001000      CLOSE 出力ファイル.
001010      MOVE R-COUNT               TO  R-COUNT-Z.
001020      DISPLAY R-COUNT-Z "件のデータを変換しました"
001030      DISPLAY   "*** CSVOUT END   ****".
001040      EXIT  PROGRAM.
001050*
001060*データコンバート(COBOL索引ファイル→CSV)
001070 DATA-SHORI.
001080      MOVE 製品番号              TO  CSV-DATA1.
001090*
001100      COMPUTE LENG-B = FUNCTION STORED-CHAR-LENGTH(製品名).
001110      MOVE 製品名                TO  CSV-DATA2.
001120*
001130      MOVE 在庫数量              TO  符号在庫数量.
001140      MOVE 符号２                TO  CSV-DATA3.
001150*      
001160      MOVE 倉庫番号              TO  CSV-DATA4.
001170*
001180      MOVE 定価                  TO  CSV-DATA5.
001190*
001200      MOVE 仕切率                TO  仕切率変換.
001210      MOVE 変換                  TO  CSV-DATA6.
001220*
001230      MOVE ","                   TO  KUGIRIA
001240                                     KUGIRIB
001250                                     KUGIRIC
001260                                     KUGIRID
001270                                     KUGIRIE.
001280*
001290      COMPUTE R-LENG = 5 + LENG-A + LENG-B + LENG-C + LENG-D + LENG-E + LENG-F.
001300*
001310*ファイルの書出し
001320      WRITE 出力レコード   FROM  CSV-REC.
001330      COMPUTE R-COUNT = R-COUNT + 1.
001340*ファイルの読込み
001350      READ  在庫ファイル  AT END MOVE "END"  TO END-FLAG
001360      END-READ.
001370
