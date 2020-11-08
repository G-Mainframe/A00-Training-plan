       IDENTIFICATION DIVISION.
       PROGRAM-ID.   FILECOPY.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
             SELECT IN-FILE ASSIGN TO IN01
                FILE STATUS  SYS-FILE-STATUS.
             SELECT OUT-FILE ASSIGN TO OUT01
                FILE STATUS  SYS-FILE-STATUS.
       DATA DIVISION.
       FILE SECTION.
       FD IN-FILE LABEL RECORD IS STANDARD .
       01 IN-RECORD.
          02  IN-DATE.
            03  IN-YEAR     PIC  9(4).
            03  IN-MONTH    PIC  99.
            03  IN-DAY      PIC  99.
          02  PRODUCT-CODE  PIC  9(4).
          02  QUANTITY      PIC  9(6).
          02  UNIT-PRICE    PIC  9(6).
       FD OUT-FILE LABEL RECORD IS STANDARD .
       01 OUT-RECORD.
          02  IN-DATE.
            03  IN-YEAR     PIC  9(4).
            03  IN-MONTH    PIC  99.
            03  IN-DAY      PIC  99.
          02  PRODUCT-CODE  PIC  9(4).
          02  QUANTITY      PIC  9(6).
          02  UNIT-PRICE    PIC  9(6).
000191 WORKING-STORAGE SECTION.
000192 01 SYS-FILE-STATUS   PIC  X(2) VALUE "00".
       01 END-FLG           PIC  X    VALUE "0".
       PROCEDURE DIVISION.
       MAIN.
           OPEN INPUT  IN-FILE ,
                OUTPUT OUT-FILE.
           DISPLAY "1" , SYS-FILE-STATUS.
           READ IN-FILE.
           STOP 1.
      *
           PERFORM L100 UNTIL  END-FLG = "1".
      *
           CLOSE IN-FILE , OUT-FILE.
           STOP RUN.
       L100.
           MOVE IN-RECORD TO OUT-RECORD.
           WRITE  OUT-RECORD.
           READ IN-FILE AT END  MOVE "1" TO END-FLG.