       IDENTIFICATION              DIVISION.
       PROGRAM-ID.                 ORDERS.
      *
       ENVIRONMENT                 DIVISION.
      *
       DATA                        DIVISION.
      *
       WORKING-STORAGE             SECTION.
      *
       EXEC SQL INCLUDE SQLCA END-EXEC.
       EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01  ORDER-TABLE-KEY.
          EXEC SQL INCLUDE ORDERKEY END-EXEC.
          EXEC SQL INCLUDE ORDERS    END-EXEC.
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
               MOVE  LENGTH OF DCLORDERS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  IO-AREA(1:LENGTH OF DCLORDERS)  TO DCLORDERS
             EXEC  SQL
              INSERT  INTO    ETPUSER.TBLORDERS
              (    ORDERNO
                 , CUSTOMERNO
                 , ORDERDATE
                 , SHIPDATE
                 , SHIPSTREET
                 , SHIPCITY
                 , SHIPZIP
              )
              VALUES (
                   :DCLORDERS.ORDERNO
                 , :DCLORDERS.CUSTOMERNO
                 , :DCLORDERS.ORDERDATE
                 , :DCLORDERS.SHIPDATE
                 , :DCLORDERS.SHIPSTREET
                 , :DCLORDERS.SHIPCITY
                 , :DCLORDERS.SHIPZIP
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
               ORDERNO , CUSTOMERNO , ORDERDATE , SHIPDATE , SHIPSTREET ,
               SHIPCITY  , SHIPZIP
             FROM  ETPUSER.TBLORDERS
             FOR UPDATE OF
               ORDERNO , CUSTOMERNO , ORDERDATE ,
               SHIPDATE , SHIPSTREET ,
               SHIPCITY  , SHIPZIP
           END-EXEC
           EVALUATE  OPTION  OF  COMMAND-AREA
             WHEN CS-OPEN
               EXEC  SQL  OPEN  K000_CUR  END-EXEC
             WHEN CS-FETCH
               EXEC  SQL  FETCH K000_CUR  INTO
                   :DCLORDERS.ORDERNO
                 , :DCLORDERS.CUSTOMERNO
                 , :DCLORDERS.ORDERDATE
                 , :DCLORDERS.SHIPDATE
                 , :DCLORDERS.SHIPSTREET
                 , :DCLORDERS.SHIPCITY
                 , :DCLORDERS.SHIPZIP
               END-EXEC
               MOVE  LENGTH OF DCLORDERS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  DCLORDERS
                 TO  IO-AREA(1:LENGTH OF DCLORDERS)
             WHEN CS-UPDATE
               MOVE  LENGTH OF DCLORDERS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  IO-AREA(1:LENGTH OF DCLORDERS)
                 TO  DCLORDERS
               EXEC  SQL  UPDATE  ETPUSER.TBLORDERS SET
                ORDERNO = :DCLORDERS.ORDERNO,
                CUSTOMERNO = :DCLORDERS.CUSTOMERNO,
                ORDERDATE = :DCLORDERS.ORDERDATE,
                SHIPDATE = :DCLORDERS.SHIPDATE,
                SHIPSTREET = :DCLORDERS.SHIPSTREET,
                SHIPCITY = :DCLORDERS.SHIPCITY,
                SHIPZIP = :DCLORDERS.SHIPZIP
                 WHERE CURRENT OF K000_CUR  END-EXEC
             WHEN CS-DELETE
               EXEC  SQL  DELETE  FROM  ETPUSER.TBLORDERS
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
               MOVE LENGTH OF ORDER-KEY
                 TO KEY-LENGTH OF COMMAND-AREA
               MOVE KEY-AREA(1:LENGTH OF ORDER-KEY)  TO ORDER-KEY
             EXEC  SQL
              SELECT
               ORDERNO       ,  CUSTOMERNO   ,
               ORDERDATE  ,  SHIPDATE   ,
               SHIPSTREET    ,  SHIPCITY    ,
               SHIPZIP
             INTO  :DCLORDERS.ORDERNO
                 , :DCLORDERS.CUSTOMERNO
                 , :DCLORDERS.ORDERDATE
                 , :DCLORDERS.SHIPDATE
                 , :DCLORDERS.SHIPSTREET
                 , :DCLORDERS.SHIPCITY
                 , :DCLORDERS.SHIPZIP
             FROM  TBLORDERS
             WHERE ORDERNO    = :ORDER-S000-KEY.ORDERNO
             END-EXEC
               MOVE  LENGTH OF DCLORDERS
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  DCLORDERS TO  IO-AREA(1:LENGTH OF DCLORDERS )
           ELSE
               MOVE  CS-3      TO  PATTERN-FLG   OF COMMAND-AREA
           END-IF.
        S000-RTN-END.
           EXIT.