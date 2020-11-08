       IDENTIFICATION              DIVISION.
       PROGRAM-ID.                 CUSTOMER.
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
          EXEC SQL INCLUDE CUSTOMERKEY END-EXEC.
          EXEC SQL INCLUDE CUSTOMER    END-EXEC.
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
               MOVE  LENGTH OF DCLCUSTOMER
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  IO-AREA(1:LENGTH OF DCLCUSTOMER)  TO DCLCUSTOMER
             EXEC  SQL
              INSERT  INTO    ETPUSER.TBLCUSTOMER
              (    CUSTOMERNO
                 , CUSTOMERNAME
                 , CUSTOMERADDRESS
                 , CUSTOMERCITY
                 , CUSTOMERSTATE
                 , CUSTOMERZIP
                 , CUSTOMERREFERRED
              )
              VALUES (
                   :DCLCUSTOMER.CUSTOMERNO
                 , :DCLCUSTOMER.CUSTOMERNAME
                 , :DCLCUSTOMER.CUSTOMERADDRESS
                 , :DCLCUSTOMER.CUSTOMERCITY
                 , :DCLCUSTOMER.CUSTOMERSTATE
                 , :DCLCUSTOMER.CUSTOMERZIP
                 , :DCLCUSTOMER.CUSTOMERREFERRED
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
               CUSTOMERNO , CUSTOMERNAME
             FROM  ETPUSER.TBLCUSTOMER
             FOR UPDATE OF
               CUSTOMERNAME , CUSTOMERADDRESS ,
               CUSTOMERCITY , CUSTOMERSTATE ,
               CUSTOMERZIP  , CUSTOMERREFERRED
           END-EXEC
           EVALUATE  OPTION  OF  COMMAND-AREA
             WHEN CS-OPEN
               EXEC  SQL  OPEN  K000_CUR  END-EXEC
             WHEN CS-FETCH
               EXEC  SQL  FETCH K000_CUR  INTO
                  :DCLCUSTOMER.CUSTOMERNO ,
                  :DCLCUSTOMER.CUSTOMERNAME ,
                  :DCLCUSTOMER.CUSTOMERADDRESS ,
                  :DCLCUSTOMER.CUSTOMERCITY ,
                  :DCLCUSTOMER.CUSTOMERSTATE ,
                  :DCLCUSTOMER.CUSTOMERZIP ,
                  :DCLCUSTOMER.CUSTOMERREFERRED
               END-EXEC
               MOVE  LENGTH OF DCLCUSTOMER
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  DCLCUSTOMER
                 TO  IO-AREA(1:LENGTH OF DCLCUSTOMER)
             WHEN CS-UPDATE
               MOVE  LENGTH OF DCLCUSTOMER
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  IO-AREA(1:LENGTH OF DCLCUSTOMER)
                 TO  DCLCUSTOMER
               EXEC  SQL  UPDATE  ETPUSER.TBLCUSTOMER SET
                CUSTOMERNAME = :DCLCUSTOMER.CUSTOMERNAME,
                CUSTOMERADDRESS = :DCLCUSTOMER.CUSTOMERADDRESS,
                CUSTOMERCITY = :DCLCUSTOMER.CUSTOMERCITY,
                CUSTOMERSTATE = :DCLCUSTOMER.CUSTOMERSTATE,
                CUSTOMERZIP = :DCLCUSTOMER.CUSTOMERZIP,
                CUSTOMERREFERRED = :DCLCUSTOMER.CUSTOMERREFERRED
                 WHERE CURRENT OF K000_CUR  END-EXEC
             WHEN CS-DELETE
               EXEC  SQL  DELETE  FROM  ETPUSER.TBLCUSTOMER
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
               MOVE LENGTH OF CUSTOMER-KEY
                 TO KEY-LENGTH OF COMMAND-AREA
               MOVE KEY-AREA(1:LENGTH OF CUSTOMER-KEY)  TO CUSTOMER-KEY
             EXEC  SQL
              SELECT
               CUSTOMERNO       ,  CUSTOMERNAME   ,
               CUSTOMERADDRESS  ,  CUSTOMERCITY   ,
               CUSTOMERSTATE    ,  CUSTOMERZIP    ,
               CUSTOMERREFERRED
             INTO :DCLCUSTOMER.CUSTOMERNO   ,
                  :DCLCUSTOMER.CUSTOMERNAME ,
                  :DCLCUSTOMER.CUSTOMERADDRESS ,
                  :DCLCUSTOMER.CUSTOMERCITY ,
                  :DCLCUSTOMER.CUSTOMERSTATE ,
                  :DCLCUSTOMER.CUSTOMERZIP ,
                  :DCLCUSTOMER.CUSTOMERREFERRED
             FROM  TBLCUSTOMER
             WHERE CUSTOMERNO    = :CUSTOMER-S000-KEY.CUSTOMERNO
             END-EXEC
               MOVE  LENGTH OF DCLCUSTOMER
                 TO  TABLE-LENGTH OF COMMAND-AREA
               MOVE  DCLCUSTOMER TO  IO-AREA(1:LENGTH OF DCLCUSTOMER )
           ELSE
               MOVE  CS-3      TO  PATTERN-FLG   OF COMMAND-AREA
           END-IF.
        S000-RTN-END.
           EXIT.