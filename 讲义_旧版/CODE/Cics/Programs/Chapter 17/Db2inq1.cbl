       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID.  DB2INQ1.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
      *
       01  SWITCHES.
      *
           05  VALID-DATA-SW       PIC X(01)     VALUE 'Y'.
               88  VALID-DATA                    VALUE 'Y'.
           05  CUSTOMER-FOUND-SW   PIC X(01)     VALUE 'Y'.
               88  CUSTOMER-FOUND                VALUE 'Y'.
           05  MORE-INVOICES-SW    PIC X(01)     VALUE 'Y'.
               88  MORE-INVOICES                 VALUE 'Y'.
      *
       01  FLAGS.
      *
           05  DISPLAY-FLAG        PIC X(01).
               88  DISPLAY-NEW-CUSTOMER          VALUE '1'.
               88  DISPLAY-SPACES                VALUE '2'.
               88  DISPLAY-LOW-VALUES            VALUE '3'.
           05  SEND-FLAG           PIC X(01).
               88  SEND-ERASE                    VALUE '1'.
               88  SEND-DATAONLY                 VALUE '2'.
               88  SEND-DATAONLY-ALARM           VALUE '3'.
      *
       01  WORK-FIELDS.
      *
           05  INVOICE-SUB         PIC S9(04)    COMP.
      *
       01  INVOICE-LINE.
      *
           05  IL-INVOICE-NUMBER   PIC X(06).
           05  FILLER              PIC X(02)     VALUE SPACE.
           05  IL-PO-NUMBER        PIC X(10).
           05  FILLER              PIC X(02)     VALUE SPACE.
           05  IL-INVOICE-DATE     PIC X(10).
           05  FILLER              PIC X(02)     VALUE SPACE.
           05  IL-INVOICE-TOTAL    PIC Z,ZZZ,ZZ9.99.
      *
       01  COMMUNICATION-AREA      PIC X(01).
      *
       COPY DB2SET1.
      *
       COPY DFHAID.
      *
       COPY ERRPARM.
      *
           EXEC SQL
               INCLUDE CUST
           END-EXEC.
      *
           EXEC SQL
               INCLUDE INV
           END-EXEC.
      *
           EXEC SQL
               INCLUDE SQLCA
           END-EXEC.
      *
           EXEC SQL
               DECLARE CUSTINV CURSOR FOR
                   SELECT INVNO, INVPO, CHAR(INVDATE,USA), INVTOTAL
                       FROM MMADBV.INV
                       WHERE INVCUST = :CIM-D-CUSTNO
                       ORDER BY 1 DESC
           END-EXEC.
      *
       LINKAGE SECTION.
      *
       01  DFHCOMMAREA             PIC X(01).
      *
       PROCEDURE DIVISION.
      *
       0000-PROCESS-CUSTOMER-INQUIRY.
      *
           EVALUATE TRUE
      *
               WHEN EIBCALEN = ZERO
                   MOVE LOW-VALUE TO CUSTOMER-INQUIRY-MAP
                   MOVE 'DIN1' TO CIM-D-TRANID
                   SET SEND-ERASE TO TRUE
                   PERFORM 1500-SEND-INQUIRY-MAP
      *
               WHEN EIBAID = DFHCLEAR
                   MOVE LOW-VALUE TO CUSTOMER-INQUIRY-MAP
                   MOVE 'DIN1' TO CIM-D-TRANID
                   SET SEND-ERASE TO TRUE
                   PERFORM 1500-SEND-INQUIRY-MAP
      *
               WHEN EIBAID = DFHPA1 OR DFHPA2 OR DFHPA3
                   CONTINUE
      *
               WHEN EIBAID = DFHPF3 OR DFHPF12
                   EXEC CICS
                       XCTL PROGRAM('INVMENU')
                   END-EXEC
      *
               WHEN EIBAID = DFHENTER
                   PERFORM 1000-DISPLAY-SELECTED-CUSTOMER
      *
               WHEN OTHER
                   MOVE LOW-VALUE TO CUSTOMER-INQUIRY-MAP
                   MOVE 'Invalid key pressed.' TO CIM-D-MESSAGE
                   SET SEND-DATAONLY-ALARM TO TRUE
                   PERFORM 1500-SEND-INQUIRY-MAP
      *
           END-EVALUATE.
      *
           EXEC CICS
               RETURN TRANSID('DIN1')
                      COMMAREA(COMMUNICATION-AREA)
           END-EXEC.
      *
       1000-DISPLAY-SELECTED-CUSTOMER.
      *
           PERFORM 1100-RECEIVE-INQUIRY-MAP.
           PERFORM 1200-EDIT-CUSTOMER-NUMBER.
           IF VALID-DATA
               PERFORM 1300-SELECT-CUSTOMER-ROW
               IF CUSTOMER-FOUND
                   SET DISPLAY-NEW-CUSTOMER TO TRUE
                   PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               ELSE
                   SET DISPLAY-SPACES TO TRUE
                   PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               END-IF
           ELSE
               SET DISPLAY-LOW-VALUES TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
           END-IF.
      *
       1100-RECEIVE-INQUIRY-MAP.
      *
           EXEC CICS
               RECEIVE MAP('DB2MAP1')
                       MAPSET('DB2SET1')
                       INTO(CUSTOMER-INQUIRY-MAP)
           END-EXEC.
      *
           INSPECT CUSTOMER-INQUIRY-MAP
               REPLACING ALL '_' BY SPACE.
      *
       1200-EDIT-CUSTOMER-NUMBER.
      *
           IF       CIM-L-CUSTNO = ZERO
                 OR CIM-D-CUSTNO = SPACE
               MOVE 'N' TO VALID-DATA-SW
               MOVE 'You must enter a customer number.'
                   TO CIM-D-MESSAGE
           END-IF.
      *
       1300-SELECT-CUSTOMER-ROW.
      *
           EXEC SQL
               SELECT    FNAME,       LNAME, 
                         ADDR,        CITY, 
                         STATE,       ZIPCODE
                   INTO :CIM-D-FNAME, :CIM-D-LNAME,
                        :CIM-D-ADDR,  :CIM-D-CITY,
                        :CIM-D-STATE, :CIM-D-ZIPCODE
                   FROM MMADBV.CUST
                   WHERE CUSTNO = :CIM-D-CUSTNO
           END-EXEC.
      *
           IF SQLCODE = 100
               MOVE 'N' TO CUSTOMER-FOUND-SW
               MOVE 'That customer does not exist.' TO CIM-D-MESSAGE
           ELSE
               IF SQLCODE NOT = 0
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       1400-DISPLAY-INQUIRY-RESULTS.
      *
           EVALUATE TRUE
               WHEN DISPLAY-NEW-CUSTOMER
                   PERFORM 1410-OPEN-INVOICE-CURSOR
                   PERFORM 1420-FORMAT-INVOICE-LINE
                       VARYING INVOICE-SUB FROM 1 BY 1
                       UNTIL INVOICE-SUB > 10
                   PERFORM 1440-CLOSE-INVOICE-CURSOR
                   MOVE SPACE         TO CIM-D-MESSAGE
                   SET SEND-DATAONLY TO TRUE
               WHEN DISPLAY-SPACES
                   MOVE LOW-VALUE TO CIM-D-CUSTNO
                   MOVE SPACE     TO CIM-D-LNAME
                                     CIM-D-FNAME
                                     CIM-D-ADDR
                                     CIM-D-CITY
                                     CIM-D-STATE
                                     CIM-D-ZIPCODE
                   PERFORM VARYING INVOICE-SUB FROM 1 BY 1
                           UNTIL INVOICE-SUB > 10
                       MOVE SPACE TO CIM-D-INVOICE-LINE(INVOICE-SUB)
                   END-PERFORM
                   SET SEND-DATAONLY-ALARM TO TRUE
               WHEN DISPLAY-LOW-VALUES
                       SET SEND-DATAONLY-ALARM TO TRUE
           END-EVALUATE.

           PERFORM 1500-SEND-INQUIRY-MAP.
      *
       1410-OPEN-INVOICE-CURSOR.
      *
           EXEC SQL
               OPEN CUSTINV
           END-EXEC.
      *
           IF SQLCODE NOT = 0
              PERFORM 9999-TERMINATE-PROGRAM
           END-IF.
      *
       1420-FORMAT-INVOICE-LINE.
      *
           IF MORE-INVOICES
               PERFORM 1430-FETCH-NEXT-INVOICE
               IF MORE-INVOICES
                   MOVE INVOICE-LINE TO CIM-D-INVOICE-LINE(INVOICE-SUB)
               ELSE
                   MOVE SPACE TO CIM-D-INVOICE-LINE(INVOICE-SUB)
               END-IF
           ELSE
               MOVE SPACE TO CIM-D-INVOICE-LINE(INVOICE-SUB)
           END-IF.
      *
       1430-FETCH-NEXT-INVOICE.
      *
           EXEC SQL
               FETCH CUSTINV
                   INTO :INVNO, :INVPO, :INVDATE, :INVTOTAL
           END-EXEC.
      *
           EVALUATE SQLCODE
               WHEN 0
                   MOVE INVNO    TO IL-INVOICE-NUMBER
                   MOVE INVPO    TO IL-PO-NUMBER
                   MOVE INVDATE  TO IL-INVOICE-DATE
                   MOVE INVTOTAL TO IL-INVOICE-TOTAL
               WHEN 100
                   MOVE 'N' TO MORE-INVOICES-SW
               WHEN OTHER
                   PERFORM 9999-TERMINATE-PROGRAM
           END-EVALUATE.
      *
       1440-CLOSE-INVOICE-CURSOR.
      *
           EXEC SQL
               CLOSE CUSTINV
           END-EXEC.
      *
           IF SQLCODE NOT = 0
               PERFORM 9999-TERMINATE-PROGRAM
           END-IF.
      *
       1500-SEND-INQUIRY-MAP.
      *
           EVALUATE TRUE
               WHEN SEND-ERASE
                   EXEC CICS
                       SEND MAP('DB2MAP1')
                            MAPSET('DB2SET1')
                            FROM(CUSTOMER-INQUIRY-MAP)
                            ERASE
                   END-EXEC
               WHEN SEND-DATAONLY
                   EXEC CICS
                       SEND MAP('DB2MAP1')
                            MAPSET('DB2SET1')
                            FROM(CUSTOMER-INQUIRY-MAP)
                            DATAONLY
                   END-EXEC
               WHEN SEND-DATAONLY-ALARM
                   EXEC CICS
                       SEND MAP('DB2MAP1')
                            MAPSET('DB2SET1')
                            FROM(CUSTOMER-INQUIRY-MAP)
                            DATAONLY
                            ALARM
                   END-EXEC
           END-EVALUATE.
      *
       9999-TERMINATE-PROGRAM.
      *
           MOVE EIBRESP  TO ERR-RESP.
           MOVE EIBRESP2 TO ERR-RESP2.
           MOVE EIBTRNID TO ERR-TRNID.
           MOVE EIBRSRCE TO ERR-RSRCE.
      *
           EXEC CICS
               XCTL PROGRAM('SYSERR')
                    COMMAREA(ERROR-PARAMETERS)
           END-EXEC.
