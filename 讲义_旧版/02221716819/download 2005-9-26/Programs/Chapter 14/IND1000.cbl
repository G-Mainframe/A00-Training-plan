       IDENTIFICATION DIVISION.                                                 
                                                                                
       PROGRAM-ID. IND1000.
                                                                                
       ENVIRONMENT DIVISION.                                                    
                                                                                
       INPUT-OUTPUT SECTION.                                                    
                                                                                
       FILE-CONTROL.                                                            
           SELECT INVMASTS ASSIGN TO INVMASTS.
           SELECT INVMASTI ASSIGN TO INVMASTI
                           ORGANIZATION IS INDEXED                              
                           ACCESS IS SEQUENTIAL                                 
                           RECORD KEY IS IR-ITEM-NO.                            
                                                                                
       DATA DIVISION.                                                           
                                                                                
       FILE SECTION.                                                            
                                                                                
       FD  INVMASTS.
                                                                                
       01  SEQUENTIAL-RECORD-AREA  PIC X(70).
                                                                                
       FD  INVMASTI.
                                                                                
       01  INDEXED-RECORD-AREA.                                                 
           05  IR-ITEM-NO              PIC X(5).
           05  FILLER                  PIC X(65).
                                                                                
       WORKING-STORAGE SECTION.                                                 
                                                                                
       01  SWITCHES.                                                            
           05  INVMAST-EOF-SWITCH      PIC X    VALUE "N".
               88  INVMAST-EOF                  VALUE "Y".
                                                                                
       01  INVENTORY-MASTER-RECORD.                                             
           05  IM-ITEM-NO              PIC X(5).
           05  IM-DESCRIPTIVE-DATA.                                             
               10  IM-ITEM-DESC        PIC X(40).
               10  IM-UNIT-COST        PIC S9(3)V99.
               10  IM-UNIT-PRICE       PIC S9(3)V99.
           05  IM-INVENTORY-DATA.                                               
               10  IM-REORDER-POINT    PIC S9(5).                               
               10  IM-ON-HAND          PIC S9(5).                               
               10  IM-ON-ORDER         PIC S9(5).                               
                                                                                
       PROCEDURE DIVISION.                                                      
                                                                                
       000-CREATE-INVENTORY-FILE.                                               
                                                                                
           OPEN INPUT  INVMASTS
                OUTPUT INVMASTI.
           PERFORM 100-CREATE-INVENTORY-RECORD                                  
               UNTIL INVMAST-EOF.                                               
           CLOSE INVMASTS
                 INVMASTI.
           STOP RUN.                                                            
                                                                                
       100-CREATE-INVENTORY-RECORD.                                             
                                                                                
           PERFORM 110-READ-SEQUENTIAL-RECORD.
           IF NOT INVMAST-EOF                                                   
               PERFORM 120-WRITE-INDEXED-RECORD.
                                                                                
       110-READ-SEQUENTIAL-RECORD.
                                                                                
           READ INVMASTS INTO INVENTORY-MASTER-RECORD
               AT END                                                           
                   SET INVMAST-EOF TO TRUE.
                                                                                
       120-WRITE-INDEXED-RECORD.
                                                                                
           WRITE INDEXED-RECORD-AREA FROM INVENTORY-MASTER-RECORD               
               INVALID KEY                                                      
                   DISPLAY "WRITE ERROR ON INVMAST FOR ITEM NUMBER "
                       IR-ITEM-NO
                   SET INVMAST-EOF TO TRUE.
