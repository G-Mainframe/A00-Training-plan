      ******************************************************************
      * DCLGEN TABLE(CPAZ)                                             *
      *        LIBRARY(DMSTR1.KIBAN.DATA(CPAZ))                        *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        QUOTE                                                   *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE TBLORDERITEMS TABLE
           ( ORDERNO                      CHAR(4) NOT NULL,
             ITEMNO                       CHAR(2) NOT NULL,
             BOOKNO                       VARCHAR (10),
             QUANTITY                     CHAR(3)
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CPAZ                               *
      ******************************************************************
       01  DCLORDERITEMS.
           10 ORDERNO                      PIC X(4).
           10 ITEMNO                       PIC X(2).
           10 BOOKNO                       PIC X(10).
           10 QUANTITY                     PIC X(3).
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 20      *
      ******************************************************************