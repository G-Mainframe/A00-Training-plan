           EXEC SQL DECLARE DB2TEST TABLE
           ( SNO                            CHAR( 2) NOT NULL,
             SNAME                          CHAR(10) NOT NULL
           ) END-EXEC.
       01  DCLDB2TEST.
           10 SNO                  PIC X(2).
           10 SNAME                PIC X(10).
