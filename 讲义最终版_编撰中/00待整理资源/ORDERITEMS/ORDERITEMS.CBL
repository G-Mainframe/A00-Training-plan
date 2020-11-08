       IDENTIFICATION              DIVISION.
       PROGRAM-ID.                 ORDERITEMS.
      *
       ENVIRONMENT                 DIVISION.
      *
       DATA                        DIVISION.
      *
       WORKING-STORAGE             SECTION.
      *
       EXEC SQL INCLUDE SQLCA END-EXEC.
       EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01  CUSTOMER-TABLE-KEY.
          EXEC SQL INCLUDE ORDERITEMSKEY END-EXEC.
          EXEC SQL INCLUDE ORDERITEMS    END-EXEC.
       EXEC SQL END   DECLARE SECTION END-EXEC.
      *
       01 ACCESS-PATTERN.
          COPY PATTERN.
      *
       01 WK-AREA.
          03 WK-CNT.
             05 WK-SQL-CNT       PIC 9(03).
          03 WK-FLAG.
             05 WK-ENDFLAG       PIC X(03).
       LINKAGE                     SECTION.
       01 COMMAND-AREA.
          COPY COMMAND.
       01 KEY-AREA               PIC X(256).
       01 IO-AREA                PIC X(32768).
       PROCEDURE                   DIVISION USING COMMAND-AREA ,
                                                  KEY-AREA ,
                                                  IO-AREA.
       MAIN-PROCESS                SECTION.
       MAIN-START.
           MOVE  CS-0      TO  PATTERN-FLG       OF COMMAND-AREA.
           MOVE  ZERO      TO  SQLCODE-AREA      OF COMMAND-AREA.
           MOVE  SPACE     TO  SQLCA-AREA        OF COMMAND-AREA.
           MOVE  ZERO      TO  KEY-LENGTH        OF COMMAND-AREA.
           MOVE  ZERO      TO  TABLE-LENGTH      OF COMMAND-AREA.
      *
           EVALUATE  PATTERN  OF  COMMAND-AREA
             WHEN CS-I000
               PERFORM  I000-RTN
             WHEN CS-K000
               PERFORM  K000-RTN
              WHEN CS-S000
               PERFORM  S000-RTN
             WHEN  OTHER
               MOVE  CS-2      TO  PATTERN-FLG   OF COMMAND-AREA
           END-EVALUATE.
      *
           IF  PATTERN-FLG   OF COMMAND-AREA   = CS-0
             MOVE  SQLCODE     TO  SQLCODE-AREA  OF COMMAND-AREA
             MOVE  SQLCA       TO  SQLCA-AREA    OF COMMAND-AREA
             IF  SQLCODE NOT = ZERO
               MOVE  CS-1      TO  PATTERN-FLG   OF COMMAND-AREA
             END-IF
           END-IF.
       MAIN-EXIT.
           STOP "END".
           EXIT PROGRAM.
      **************************************
      * I000
      **************************************
       I000-RTN                SECTION.
       I000-RTN-START.
           IF  OPTION  OF COMMAND-AREA  = CS-INSERT
               MOVE  LENGTH OF DCLORDERITEMS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  IO-AREA(1:LENGTH OF DCLORDERITEMS)
               TO DCLORDERITEMS
             EXEC  SQL
              INSERT  INTO    ETPUSER.TBLORDERITEMS
              (    ORDERNO ,
                   ITEMNO ,
                   BOOKNO ,
                   QUANTITY
              )
              VALUES (
                   :DCLORDERITEMS.ORDERNO
                 , :DCLORDERITEMS.ITEMNO
                 , :DCLORDERITEMS.BOOKNO
                 , :DCLORDERITEMS.QUANTITY
              )
             END-EXEC
           ELSE
               MOVE  CS-3      TO  PATTERN-FLG   OF COMMAND-AREA
           END-IF.
       I000-RTN-END.
           EXIT.
      **************************************
      *    K000
      **************************************
       K000-RTN                SECTION.
       K000-RTN-START.
           EXEC  SQL  DECLARE  K000_CUR  CURSOR
            WITH HOLD FOR SELECT
               ORDERNO , ITEMNO , BOOKNO , QUANTITY
             FROM  ETPUSER.TBLORDERITEMS
             FOR UPDATE OF
               ORDERNO , ITEMNO ,
               BOOKNO , QUANTITY
           END-EXEC
           EVALUATE  OPTION  OF  COMMAND-AREA
             WHEN CS-OPEN
               EXEC  SQL  OPEN  K000_CUR  END-EXEC
             WHEN CS-FETCH
               EXEC  SQL  FETCH K000_CUR  INTO
                  :DCLORDERITEMS.ORDERNO
                 , :DCLORDERITEMS.ITEMNO
                 , :DCLORDERITEMS.BOOKNO
                 , :DCLORDERITEMS.QUANTITY
               END-EXEC
               MOVE  LENGTH OF DCLORDERITEMS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  DCLORDERITEMS
                 TO  IO-AREA(1:LENGTH OF DCLORDERITEMS)
             WHEN CS-UPDATE
               MOVE  LENGTH OF DCLORDERITEMS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  IO-AREA(1:LENGTH OF DCLORDERITEMS)
                 TO  DCLORDERITEMS
               EXEC  SQL  UPDATE  ETPUSER.TBLORDERITEMS SET
                ORDERNO = :DCLORDERITEMS.ORDERNO,
                ITEMNO = :DCLORDERITEMS.ITEMNO,
                BOOKNO = :DCLORDERITEMS.BOOKNO,
                QUANTITY = :DCLORDERITEMS.QUANTITY
                 WHERE CURRENT OF K000_CUR  END-EXEC
             WHEN CS-DELETE
               EXEC  SQL  DELETE  FROM  ETPUSER.TBLORDERITEMS
                 WHERE CURRENT OF K000_CUR  END-EXEC
             WHEN CS-CLOSE
               EXEC  SQL  CLOSE K000_CUR  END-EXEC
             WHEN OTHER
               MOVE  CS-3      TO  PATTERN-FLG   OF COMMAND-AREA
           END-EVALUATE.
       K000-RTN-END.
           EXIT.
      **************************************
      *    S000
      **************************************
       S000-RTN                SECTION.
       S000-RTN-START.
           IF  OPTION  OF  COMMAND-AREA = CS-SELECT
               MOVE LENGTH OF ORDERITEM-KEY
                 TO KEY-LENGTH OF COMMAND-AREA
               MOVE KEY-AREA(1:LENGTH OF ORDERITEM-KEY)
               TO   ORDERITEM-KEY
               MOVE LENGTH OF ITEM-KEY
                 TO KEY-LENGTH OF COMMAND-AREA
               MOVE KEY-AREA(1:LENGTH OF ITEM-KEY)
               TO ITEM-KEY
             EXEC  SQL
              SELECT
                 ORDERNO , ITEMNO ,
               BOOKNO , QUANTITY
             INTO :DCLORDERITEMS.ORDERNO
                 , :DCLORDERITEMS.ITEMNO
                 , :DCLORDERITEMS.BOOKNO
                 , :DCLORDERITEMS.QUANTITY
             FROM  TBLORDERITEMS
             WHERE ORDERNO    = :ORDERITEM-S000-KEY.ORDERNO
             AND   ITEMNO     = :ITEM-S000-KEY.ITEMNO
             END-EXEC
               MOVE  LENGTH OF DCLORDERITEMS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  DCLORDERITEMS
                 TO  IO-AREA(1:LENGTH OF DCLORDERITEMS )
           ELSE
               MOVE  CS-3      TO  PATTERN-FLG   OF COMMAND-AREA
           END-IF.
        S000-RTN-END.
           EXIT.