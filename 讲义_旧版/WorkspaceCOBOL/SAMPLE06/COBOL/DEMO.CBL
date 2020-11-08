       IDENTIFICATION DIVISION.
       PROGRAM-ID.   FILECOPY.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
             SELECT IN-SEQ   ASSIGN TO IN01
                FILE STATUS  SYS-FILE-STATUS.
      *
             SELECT IN-INDEX ASSIGN TO IN02
             ORGANIZATION IS       INDEXED
             ACCESS MODE IS RANDOM
             RECORD KEY CUSTOMER OF IN-INDEX-REC
                FILE STATUS  SYS-FILE-STATUS.
             SELECT OUT-SEQ   ASSIGN TO OUT01
                FILE STATUS  SYS-FILE-STATUS.
       DATA DIVISION.
       FILE SECTION.
       FD IN-SEQ    LABEL RECORD IS STANDARD .
       01 IN-SEQ-REC.
            COPY RECDEF.
       FD IN-INDEX LABEL RECORD IS STANDARD .
       01 IN-INDEX-REC.
            COPY RECDEF.
       FD OUT-SEQ    LABEL RECORD IS STANDARD .
       01 OUT-SEQ-REC.
            COPY RECDEF.
000191 WORKING-STORAGE SECTION.
000192 01 SYS-FILE-STATUS   PIC  X(2)  VALUE "00".
       01 WK-FILE-END       PIC  9     VALUE ZERO.
       01 WK-CNT.
          03 WK-CNT-IN-SEQ  PIC 99 VALUE ZERO.
          03 WK-CNT-IN-INDEX  PIC 99 VALUE ZERO.
          03 WK-CNT-OUT-SEQ  PIC 99 VALUE ZERO.
       PROCEDURE DIVISION.
       MAIN-PROCESS        SECTION.
       MAIN-START.
           OPEN INPUT IN-SEQ,
                INPUT IN-INDEX,
                OUTPUT OUT-SEQ.
           IF  SYS-FILE-STATUS NOT = "00"
               DISPLAY "OPEN " , SYS-FILE-STATUS
               GO TO  MAIN-EMD
           END-IF.
           PERFORM READ-IN-SEQ-RTN.
      *
           PERFORM MAIN-RTN UNTIL WK-FILE-END = 1.
      *
       MAIN-EMD.
           CLOSE IN-SEQ , IN-INDEX , OUT-SEQ.
           STOP RUN.
      *
       MAIN-RTN           SECTION.
       MAIN-RTN-START.
           MOVE CUSTOMER OF IN-SEQ-REC TO CUSTOMER OF IN-INDEX-REC.
           PERFORM  READ-IN-INDEX-RTN.
           IF SYS-FILE-STATUS = "00"
               MOVE  IN-INDEX-REC TO OUT-SEQ-REC
               WRITE  OUT-SEQ-REC
               IF SYS-FILE-STATUS = "00"
                  ADD 1 TO WK-CNT-OUT-SEQ
               END-IF
           ELSE
               DISPLAY  "WRITE "  SYS-FILE-STATUS
               MOVE 1 TO WK-FILE-END
           END-IF.

       MAIN-RTN-END.
           EXIT.
      *
       READ-IN-SEQ-RTN    SECTION.
       READ-IN-SEQ-RTN-START.
           READ IN-SEQ.
           IF  SYS-FILE-STATUS NOT = "00"
               DISPLAY "READ IN-SEQ=" ,  SYS-FILE-STATUS
               MOVE 1 TO WK-FILE-END
           ELSE
               ADD 1 TO WK-CNT-IN-SEQ
           END-IF.
       READ-IN-SEQ-RTN-END.
           EXIT.
      *
       READ-IN-INDEX-RTN    SECTION.
       READ-IN-INDEX-RTN-START.
           READ IN-SEQ.
           IF  SYS-FILE-STATUS NOT = "00"
               DISPLAY "READ IN-SEQ=" ,  SYS-FILE-STATUS
           ELSE
               ADD 1 TO WK-CNT-IN-INDEX
           END-IF.
       READ-IN-INDEX-RTN-END.
           EXIT.