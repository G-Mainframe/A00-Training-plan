000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. FileWork.
000030 ENVIRONMENT DIVISION.
000040 CONFIGURATION                   SECTION.        
000070 INPUT-OUTPUT SECTION.                           
000090 FILE-CONTROL.                                   
000100     SELECT  SEQ01-FILE   ASSIGN TO FSEQ01.
000120     SELECT  SEQ02-FILE   ASSIGN TO FSEQ02.
000140 DATA DIVISION.                                  
000150 FILE SECTION.                                   
000160 FD  SEQ01-FILE.                                                   
000170*     LABEL RECORD IS STANDARD.
000190 01 SEQ01-REC.
           03 AA PIC 999.
000200*         COPY FILECOPY .
000240 FD  SEQ02-FILE.                                                   
000250*     LABEL RECORD IS STANDARD.
000270 01 SEQ02-REC.
000290   COPY FILECOPY .
000321 WORKING-STORAGE SECTION.
000340 77 SYS-FILE-STATUS PIC X(2) VALUE "00".
000341 77 STOP-FLAG PIC X(1) VALUE "0".
       77 I PIC 99.
       77 MENU-CNT PIC 99 VALUE 24.
       77 FILE-CNT PIC 99 VALUE 6.
      * 
       77 PG-NO PIC 99.
           88 PG-IN1 VALUE 00 THRU 05.
           88 PG-IN2 VALUE 11 THRU 19.
           88 PG-IN3 VALUE 21 THRU 29.
           88 PG-IN4 VALUE 99.
       01 FILE-FILLER.
           03 FILLER   PIC X(20) VALUE "SEQ01 SEQ IN".
           03 FILLER   PIC X(20) VALUE "SEQ02 SEQ ".
           03 FILLER   PIC X(20) VALUE "INDEX01 SEQ ".
           03 FILLER   PIC X(20) VALUE "INDEX02 INDEX".
           03 FILLER   PIC X(20) VALUE "REL01 SEQ".
           03 FILLER   PIC X(20) VALUE "REL02 SEQ".
       01 FILE-EXPLAIN REDEFINES FILE-FILLER.
           03 FILE-OCC OCCURS 6 TIMES.
             05 FILE-TYPE PIC X(20).
       01 MENU-FILLER.
           03 FILLER PIC X(25) VALUE "00 FILE explain.".
           03 FILLER PIC X(25) VALUE "01 SEQ DATA INPUT.".
           03 FILLER PIC X(25) VALUE "02 SEQ TO SEQ.".
           03 FILLER PIC X(25) VALUE "03 SEQ TO INDEX.".
           03 FILLER PIC X(25) VALUE "04 SEQ TO REL.".
           03 FILLER PIC X(25) VALUE "11 INDEX-SQL TO SEQ.".
           03 FILLER PIC X(25) VALUE "12 INDEX-RAN TO SEQ.".
           03 FILLER PIC X(25) VALUE "13 INDEX-DYN TO SEQ.".
           03 FILLER PIC X(25) VALUE "14 INDEX-SQL TO INDEX.".
           03 FILLER PIC X(25) VALUE "15 INDEX-RAN TO INDEX.".
           03 FILLER PIC X(25) VALUE "16 INDEX-DYN TO INDEX.".
           03 FILLER PIC X(25) VALUE "17 INDEX-SQL TO REL.".
           03 FILLER PIC X(25) VALUE "18 INDEX-RAN TO REL.".
           03 FILLER PIC X(25) VALUE "19 INDEX-DYN TO REL.".
           03 FILLER PIC X(25) VALUE "21 REL-SEQ TO SEQ.".
           03 FILLER PIC X(25) VALUE "22 REL-RAN TO SEQ.".
           03 FILLER PIC X(25) VALUE "23 REL-DYN TO SEQ.".
           03 FILLER PIC X(25) VALUE "24 REL-SEQ TO INDEX.".
           03 FILLER PIC X(25) VALUE "25 REL-RAN TO INDEX.".
           03 FILLER PIC X(25) VALUE "26 REL-DYN TO INDEX.".
           03 FILLER PIC X(25) VALUE "27 REL-SEQ TO REL.".
           03 FILLER PIC X(25) VALUE "28 REL-RAN TO REL.".
           03 FILLER PIC X(25) VALUE "29 REL-DYN TO REL.".
           03 FILLER PIC X(25) VALUE "99 EXIT.".
       01 MENU-SHOW REDEFINES MENU-FILLER.
           03 MENU OCCURS 23 TIMES.
             05 MENU-NO PIC 99.
             05 MENU-LSIT PIC X(23).
000350 PROCEDURE DIVISION.
      **********   level  1   *********
       PG-START.
           INITIALIZE PG-NO , I.
           DISPLAY "FILE DEMO. " .
           OPEN I-O SEQ01-FILE,
                    SEQ02-FILE.    
000360 MAIN.        
000361     MOVE 0 TO I.
           PERFORM MENU-PRINT THRU MENU-END UNTIL I = MENU-CNT.
           ACCEPT PG-NO.
           IF PG-IN1 OR PG-IN2 OR PG-IN3 OR PG-IN4 
000362         PERFORM PG-CALL THRU PG-END 
           ELSE 
               DISPLAY  "INPUT ERROR." 
               GO TO MAIN. 
           DISPLAY "restart?1=YES,0=NO.".
           ACCEPT I.
           IF I = 1 GO TO MAIN.
       END-EXIT.
000522     CLOSE SEQ01-FILE , SEQ02-FILE.
           DISPLAY "     STOP RUN.    "
           STOP 1.
      *
      *******    level   2     ****
       MENU-PRINT.
000383     ADD 1 TO I.
000382     DISPLAY MENU(I) .
       MENU-END.
           EXIT.
      *
       PG-CALL.
           IF PG-NO = 0 
                MOVE 0 TO I
                PERFORM FILE-TYPE-PRINT THRU FILE-TYPE-END 
                                UNTIL I = FILE-CNT
                GO TO PG-END.
           IF PG-NO = 99 GO TO END-EXIT.
       PG-END.
           EXIT.
      *     
000523*******   level 3      *****
       FILE-TYPE-PRINT.
000383     ADD 1 TO I.
           DISPLAY FILE-TYPE(I).         
       FILE-TYPE-END.
           EXIT.      
