       IDENTIFICATION DIVISION.
       PROGRAM-ID. CH104.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STOCK-FILE ASSIGN TO DISK-MSD.
           SELECT PRINT-FILE ASSIGN TO PRINTER-MSD.
       DATA DIVISION.
       FILE   SECTION.
       FD STOCK-FILE LABEL RECORD IS STANDARD
                      VALUE OF IDENTIFICATION IS "STOCK.DAT".
       01 STOCK-REC.
        03 NUMBERS   PIC 9(3).
        03 PRICE     PIC 9(4)V99.
       FD PRINT-FILE LABEL RECORD IS STANDARD
                     VALUE OF IDENTIFICATION IS "PRINT.DAT".
       01 P-REC PIC X(80).
       WORKING-STORAGE SECTION.
       77 N          PIC 9.
       77 E-W        PIC X(3).
       01 SALE-OUT.                      
           03 N-O     PIC 9(3).
           03 N-A     PIC 9(6)V99.
       01 P-W.
         03 P-NUMBER  PIC 9(3).
         03 P-PRICE   PIC Z(6).99.
         03 P-AMOUNT  PIC Z(8).99.
         03 P-SUM     PIC Z(8).99.
       01 STOCK-TABLE.
         02 S-P OCCURS 400.
          03 N-T PIC 9(3).
          03 P-T PIC 9(4)V99.
       PROCEDURE DIVISION.
       G.      
           OPEN INPUT STOCK-FILE.
           MOVE SPACE TO E-W.
           MOVE ZERO TO N.
           READ STOCK-FILE AT END MOVE "EOF" TO E-W.
           PERFORM F UNTIL E-W = "EOF".
           CLOSE STOCK-FILE.
       G1.     
           OPEN OUTPUT PRINT-FILE.
            DISPLAY "INPUT NUMBERS".
            ACCEPT N-O.
            PERFORM A UNTIL N-O = 999.
            CLOSE PRINT-FILE
            STOP RUN.
       F.   
            ADD 1 TO N.
            MOVE STOCK-REC TO S-P(N).
            READ STOCK-FILE AT END MOVE "EOF" TO E-W.
       A.     
            DISPLAY "INPUT AMOUNT".
            ACCEPT N-A.
            MOVE ZERO TO N.
            MOVE SPACE TO E-W.
            PERFORM S UNTIL E-W = "END" OR E-W = "NOT".
            IF E-W = "END" PERFORM P   
            ELSE DISPLAY "NUMBERS NOT IN TABLE".
            DISPLAY "INPUT NUMBERS"
            ACCEPT N-O.  
       S.      
            ADD 1 TO N.
            IF N-O = N-T(N) MOVE "END" TO E-W   
            ELSE IF N-T(N) = 999 MOVE "NOT" TO E-W.
       P.   
            MOVE P-T(N) TO P-PRICE.
            MULTIPLY P-T(N) BY N-A GIVING P-SUM.
            MOVE N-O    TO P-NUMBER  
            MOVE N-A    TO P-AMOUNT.  
            MOVE P-W    TO P-REC.  
            WRITE P-REC.