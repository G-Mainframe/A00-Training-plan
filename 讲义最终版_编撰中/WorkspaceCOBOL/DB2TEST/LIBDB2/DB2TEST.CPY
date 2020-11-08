      ******************************************************************
      * DCLGEN TABLE(DB2TEST)                                         *
      *        LIBRARY(DMSTR1.KIBAN.DATA(CQBZ))                        *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        QUOTE                                                   *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE DB2TEST TABLE
           ( SNO                            CHAR( 2) NOT NULL,
             SNAME                          CHAR(10) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CQBZ                               *
      ******************************************************************
       01  DCLDB2TEST.
           10 SNO                  PIC X(2).
           10 SNAME                PIC X(10).
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 11      *
      ******************************************************************
