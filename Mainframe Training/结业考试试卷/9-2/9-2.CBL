       IDENTIFICATION DIVISION.
       PROGRAM-ID. L92092.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT NOTE-FILE ASSIGN TO NOTE-MSD
             ORGANIZATION IS INDEXED
             ACCESS MODE  IS RANDOM
             RECORD KEY  IS NAME.
       DATA DIVISION.
       FILE SECTION.
       FD NOTE-FILE LABEL RECORD IS STANDARD
                VALUE OF IDENTIFICATION IS "NOTE".
       01 NOTE-REC.
          02 NAME PIC X(10).
          02 POSTCODE PIC 9(6).
          02 ADDRE PIC X(20).
          02 TELEPHONE PIC 9(7).
       WORKING-STORAGE SECTION.                                  
       77 CHOICE PIC 9.
       PROCEDURE DIVISION.
       B. 
           OPEN I-O NOTE-FILE.                                   
       S. 
           DISPLAY "OPERATION CHOICE".
           DISPLAY "1. EXPEND".
           DISPLAY "2. MODIFY".
           DISPLAY "3. KILL".
           DISPLAY "4. EXIT".
           DISPLAY "YOUR CHOICE ? 1, 2, 3, OR 4".
           ACCEPT CHOICE.                                               
           IF CHOICE < 1 OR CHOICE > 4
                          DISPLAY "CHOICE ERROR" GO TO S.
           GO TO P1 P2 P3 P4 DEPENDING ON CHOICE.
       P1. 
           ACCEPT NOTE-REC.
           WRITE NOTE-REC INVALID KEY GO TO P4.                         
           GO TO S.
       P2. 
           ACCEPT NOTE-REC.
           REWRITE NOTE-REC INVALID KEY GO TO P4.                               
           GO TO S.
       P3.
           ACCEPT NOTE-REC.
           DELETE NOTE-FILE INVALID KEY GO TO P4.                      
           GO TO S.
       P4. 
           CLOSE NOTE-FILE.
           STOP RUN.
