       IDENTIFICATION              DIVISION.
      *
         PROGRAM-ID.               db2test.
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
           EXEC SQL DISCONNECT  LIXIANG   END-EXEC.
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
           MOVE '1'  TO     SNO OF  DCLDB2TEST.
           DISPLAY  'SNO OF  DCLDB2TEST = ' , SNO OF  DCLDB2TEST.
           EXEC  SQL
             SELECT  count(*)
             INTO  :DB2CNT
             FROM DB2TEST
           END-EXEC.
      *
           MOVE DB2CNT TO DB2CNT9.
           DISPLAY "DB2CNT9 :" , DB2CNT9 .
           DISPLAY "SQL CODE:" , SQLCODE.

           DISPLAY "SNO=" , SNO OF DCLDB2TEST.
           DISPLAY "SNAME=" , SNAME OF DCLDB2TEST.
      *
       PRC10-END.
           EXIT.
      **************************************
      *                                    *
      **************************************
       PRC20                       SECTION.
       PRC20-START.
      *
           EXEC  SQL  DECLARE  K001_CUR  CURSOR
            WITH HOLD FOR SELECT   SNO   , SNAME
             FROM  DB2TEST
           END-EXEC
      *
           EXEC  SQL  OPEN  K001_CUR  END-EXEC.
           IF SQLCODE NOT = ZERO
           THEN
               DISPLAY  'OPEN CUR SQLCODE= ' , SQLCODE
           END-IF.
I     *
           EXEC  SQL  FETCH K001_CUR  INTO
               :DCLDB2TEST.SNO   , :DCLDB2TEST.SNAME
           END-EXEC
           IF SQLCODE NOT = ZERO
           THEN
                   DISPLAY  'FETCH CUR SQLCODE= ' , SQLCODE
           END-IF.
           PERFORM UNTIL SQLCODE = 100
      *
               DISPLAY "FETCH1 SNO=" , SNO OF DCLDB2TEST
               DISPLAY "FETCH1 SNAME=" , SNAME OF DCLDB2TEST
               EXEC  SQL  FETCH K001_CUR  INTO
                   :DCLDB2TEST.SNO   , :DCLDB2TEST.SNAME
               END-EXEC
               IF SQLCODE NOT = ZERO
               THEN
                   DISPLAY  'FETCH CUR SQLCODE= ' , SQLCODE
               END-IF
           END-PERFORM.
      *
           EXEC  SQL  CLOSE K001_CUR  END-EXEC
           IF SQLCODE NOT = ZERO
           THEN
               DISPLAY  'CLOSE CUR SQLCODE= ' , SQLCODE
           END-IF.
      *
       PRC20-END.
           EXIT.

