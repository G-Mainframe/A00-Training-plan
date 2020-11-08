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
       01 COMMAND-AREA.
          COPY COMMAND.
       01 KEY-AREA               PIC X(256).
       01 IO-AREA                PIC X(32768).
       PROCEDURE                   DIVISION.
       MAIN-PROCESS                SECTION.
       MAIN-START.
           MOVE SPACE TO DCLCUSTOMER.
           INITIALIZE DCLCUSTOMER.
            EXEC SQL CONNECT TO  ETPCS   END-EXEC.
           DISPLAY "OK".
      *
            PERFORM  IO-AREA-PROCESS.
      *
           IF SQLCODE = 0
              EXEC SQL COMMIT END-EXEC
           ELSE
              EXEC SQL ROLLBACK END-EXEC
           END-IF.
           EXEC SQL DISCONNECT  ETPCS   END-EXEC.
       MAIN-EXIT.
           EXEC SQL COMMIT END-EXEC.
           EXEC SQL DISCONNECT   ETPCS   END-EXEC.
           STOP 1.
           STOP RUN.
       IO-AREA-PROCESS              SECTION.
       IO-AREA-START.
           MOVE '1003'
                            TO CUSTOMERNO OF DCLCUSTOMER.
           MOVE '张三'
                            TO CUSTOMERNAME OF DCLCUSTOMER.
           MOVE '百下区'
                            TO CUSTOMERADDRESS OF DCLCUSTOMER.
           MOVE '南京'
                            TO CUSTOMERCITY OF DCLCUSTOMER.
           MOVE '江苏'
                            TO CUSTOMERSTATE OF DCLCUSTOMER.
           MOVE '210000'
                            TO CUSTOMERZIP OF DCLCUSTOMER.
           MOVE ' '
                            TO CUSTOMERREFERRED OF DCLCUSTOMER.
           MOVE DCLCUSTOMER TO IO-AREA.
           DISPLAY "MOVE DCLCUSTOMER TO IO-AREA IS OK.".
      *
           MOVE CS-I000 TO PATTERN  OF  COMMAND-AREA.
           DISPLAY "MOVE CS-I000 TO PATTERN IS OK".
           MOVE CS-INSERT TO OPTION OF COMMAND-AREA.
           DISPLAY "MOVE CS-INSERT TO OPTION IS OK".
           CALL "CUSTOMER" USING COMMAND-AREA,
                                KEY-AREA,
                                IO-AREA.
      *
           MOVE CS-K000 TO PATTERN  OF  COMMAND-AREA.
           MOVE CS-OPEN TO OPTION OF COMMAND-AREA.
           MOVE ZERO TO KEY-AREA.
           DISPLAY "OK".
           CALL "CUSTOMER" USING COMMAND-AREA,
                                KEY-AREA,
                                IO-AREA.
      *
           MOVE CS-K000 TO PATTERN  OF  COMMAND-AREA.
           MOVE CS-FETCH TO OPTION OF COMMAND-AREA.
           MOVE ZERO TO KEY-AREA.
           DISPLAY "OK".
           CALL "CUSTOMER" USING COMMAND-AREA,
                                KEY-AREA,
                                IO-AREA.
      *
           MOVE CS-K000 TO PATTERN  OF  COMMAND-AREA.
           MOVE CS-UPDATE TO OPTION OF COMMAND-AREA.
           MOVE ZERO TO KEY-AREA.
           DISPLAY "OK".
           CALL "CUSTOMER" USING COMMAND-AREA,
                                KEY-AREA,
                                IO-AREA.
      *
           MOVE CS-K000 TO PATTERN  OF  COMMAND-AREA.
      *     MOVE CS-DELETE TO OPTION OF COMMAND-AREA.
      *     MOVE ZERO TO KEY-AREA.
      *     DISPLAY "OK".
      *     CALL "CUSTOMER" USING COMMAND-AREA,
      *                          KEY-AREA,
      *                          IO-AREA.
      *
           MOVE CS-K000 TO PATTERN  OF  COMMAND-AREA.
           MOVE CS-CLOSE TO OPTION OF COMMAND-AREA.
           MOVE ZERO TO KEY-AREA.
           DISPLAY "OK".
           CALL "CUSTOMER" USING COMMAND-AREA,
                                KEY-AREA,
                                IO-AREA.
       IO-AREA-EXIT.