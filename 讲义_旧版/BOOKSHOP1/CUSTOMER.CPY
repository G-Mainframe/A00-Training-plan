      ******************************************************************
      * DCLGEN TABLE(CPAZ)                                             *
      *        LIBRARY(DMSTR1.KIBAN.DATA(CPAZ))                        *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        QUOTE                                                   *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE TBLCUSTOMER TABLE
           ( CUSTOMERNO                      CHAR(4) NOT NULL,
             CUSTOMERNAME                    VARCHAR(10),
             CUSTOMERADDRESS                 VARCHAR(20) ,
             CUSTOMERCITY                    VARCHAR(20) ,
             CUSTOMERSTATE                   VARCHAR(20) ,
             CUSTOMERZIP                     VARCHAR(6) ,
             CUSTOMERREFERRED                CHAR (4)
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE CPAZ                               *
      ******************************************************************
       01  DCLCUSTOMER.
           10 CUSTOMERNO                      PIC X(4).
           10 CUSTOMERNAME                    PIC X(10).
           10 CUSTOMERADDRESS                 PIC X(20).
           10 CUSTOMERCITY                    PIC X(20).
           10 CUSTOMERSTATE                   PIC X(20).
           10 CUSTOMERZIP                     PIC X(6).
           10 CUSTOMERREFERRED                PIC X(4).
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 20      *
      ******************************************************************