      ******************************************************************
      * DCLGEN TABLE(CPAZ)                                             *
      *        LIBRARY(DMSTR1.KIBAN.DATA(CPAZ))                        *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        QUOTE                                                   *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE TBLORDERS TABLE
           (ORDERNO CHARACTER (4)  NOT NULL ,
            CUSTOMERNO CHARACTER (4) ,
            ORDERDATE DATE ,
            SHIPDATE DATE ,
            SHIPSTREET VARCHAR (18) ,
            SHIPCITY VARCHAR (15) ,
            SHIPZIP VARCHAR (6)
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CPAZ                               *
      ******************************************************************
       01  DCLORDERS.
           10 ORDERNO                      PIC X(4).
           10 CUSTOMERNO                   PIC X(10).
           10 ORDERDATE                    PIC X(10).
           10 SHIPDATE                     PIC X(10).
           10 SHIPSTREET                    PIC X(18).
           10 SHIPCITY                     PIC X(15).
           10 SHIPZIP                      PIC X(6).
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 20      *
      ******************************************************************