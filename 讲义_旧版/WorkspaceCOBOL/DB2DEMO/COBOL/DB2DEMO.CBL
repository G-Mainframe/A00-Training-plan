       IDENTIFICATION              DIVISION.
      *
         PROGRAM-ID.               DB2DEMO.
      *
       ENVIRONMENT                 DIVISION.
      *
       INPUT-OUTPUT                SECTION.
       FILE-CONTROL.
      *
       DATA                        DIVISION.
       FILE                        SECTION.
      *
       WORKING-STORAGE SECTION.
      *--< SQLCA >--*
           EXEC SQL INCLUDE SQLCA END-EXEC.
      *
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
      *
           EXEC SQL
             INCLUDE   DB2TEST
           END-EXEC.
       01 DB2CNT         PIC S9(9) COMP-4.
      *
           EXEC SQL END   DECLARE SECTION END-EXEC.
       01 DB2CNT9        PIC +9(9).
      /
       PROCEDURE                  DIVISION.
      **************************************
      *    DB2TEST(main)                   *
      **************************************
       MAIN                       SECTION.
       MAIN-START.
      *
           EXEC SQL CONNECT TO  LEARNPUB   END-EXEC.
           DISPLAY " CONNECT  SQL CODE:" , SQLCODE.
      *
           DISPLAY  "START" UPON CONSOLE.
      *
           PERFORM  PRC10.
      *
           EXEC SQL DISCONNECT  LEARNPUB   END-EXEC.
      *
           STOP "PG END".
      *
       MAIN-END.
           STOP   RUN.
      **************************************
      *                                    *
      **************************************
       PRC10                       SECTION.
       PRC10-START.
      *
           EXEC  SQL
             SELECT  count(*)
             INTO  :DB2CNT
             FROM DB2TEST
           END-EXEC.
      *
           DISPLAY "SQL CODE:" , SQLCODE.
           MOVE DB2CNT TO DB2CNT9.
           DISPLAY "DB2CNT9 :" , DB2CNT9 .
      *
       PRC10-END.
           EXIT.