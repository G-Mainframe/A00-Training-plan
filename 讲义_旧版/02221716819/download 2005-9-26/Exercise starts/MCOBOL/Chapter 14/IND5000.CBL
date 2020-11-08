000100 IDENTIFICATION DIVISION.                                                 
000200*                                                                         
000300 PROGRAM-ID. IND5000.
000400*                                                                         
000500 ENVIRONMENT DIVISION.                                                    
000600*                                                                         
000700 INPUT-OUTPUT SECTION.                                                    
000800*                                                                         
000900 FILE-CONTROL.                                                            
001000     SELECT CUSTMAST ASSIGN TO "C:\MCOBOL\DATA\CUSTMAST.DAT".
001100     SELECT CUSTMSTI ASSIGN TO "C:\MCOBOL\DATA\CUSTMSTI.DAT"
001200                     ORGANIZATION IS INDEXED                              
001300                     ACCESS IS SEQUENTIAL
001400                     RECORD KEY IS IR-CUSTOMER-NUMBER
                           ALTERNATE RECORD KEY IS IR-BRANCH-NUMBER
                               WITH DUPLICATES.
           SELECT SORTWORK ASSIGN TO "C:\MCOBOL\DATA\SORTWK01.DAT".
001500*                                                                         
001600 DATA DIVISION.                                                           
001700*                                                                         
001800 FILE SECTION.                                                            
001900*                                                                         
002000 FD  CUSTMAST.
002300*                                                                         
002400 01  SEQUENTIAL-RECORD-AREA  PIC X(43).
002500*                                                                         
002600 FD  CUSTMSTI.
002900*                                                                         
003000 01  INDEXED-RECORD-AREA.
           05  IR-BRANCH-NUMBER        PIC 9(2).
           05  IR-SALESREP-NUMBER      PIC 9(2).
003200     05  IR-CUSTOMER-NUMBER      PIC 9(5).
003300     05  FILLER                  PIC X(34).
003400*
       SD  SORTWORK.
      *
       01  SORT-WORK-AREA.
           05  FILLER                  PIC 9(4).
           05  SW-CUSTOMER-NUMBER      PIC 9(5).
           05  FILLER                  PIC X(34).
      *
003500 WORKING-STORAGE SECTION.                                                 
003600*                                                                         
005500 PROCEDURE DIVISION.                                                      
005600*                                                                         
005700 000-CREATE-CUSTOMER-FILE.
005800*
           SORT SORTWORK
               ON ASCENDING KEY SW-CUSTOMER-NUMBER
               USING CUSTMAST
               GIVING CUSTMSTI.
006600     STOP RUN.                                                            
