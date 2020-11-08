       IDENTIFICATION DIVISION.                                        
       PROGRAM-ID. CH93.                                               
       ENVIRONMENT DIVISION.                                           
       INPUT-OUTPUT SECTION.                                           
       FILE-CONTROL.                                                   
           SELECT      STOCK-FILE ASSIGN TO DISK                       
                       ORGANIZATION IS INDEXED                         
                       ACCESS MODE IS RANDOM                           
                       RECORD KEY IS NUMBERS.                          
       DATA DIVISION.                                                  
       FILE SECTION.                                                   
       FD STOCK-FILE LABEL RECORD IS STANDARD                          
                     VALUE OF FILE-ID IS "STOCK.DAT".                  
       01 STOCK-REC.                                                   
        03 NUMBERS   PIC 9(6).                                         
        03 NAME      PIC X(20).                                        
        03 AMOUNT    PIC 9(6).                                         
        03 PRICE     PIC 9(4)V99.                                      
        03 UNIT      PIC X(8).                                         
       WORKING-STORAGE SECTION.                                        
       77 EOF PIC X(3) VALUE ALL SPACE.                                
       PROCEDURE DIVISION.                                             
       G.                                                              
             OPEN I-0 STOCK-FILE.                                      
             DISPLAY "INPUT NUMBERS".                                  
             ACCEPT NUMBERS.                                           
             PERFORM A UNTIL NUMBERS = 999999.                          
             CLOSE STOCK-FILE.                                         
             STOP RUN.                                                 
       A.                                                              
             READ STOCK-FILE INVALID KEY MOVE "YES " TO EOF.           
             IF EOF = "YES" PERFORM A1                                  
             ELSE  DISPLAY "THIS NUMBERS IS EXIT,RETRY"                
                   DISPLAY "INPUT NUMBERS"                             
                   ACCEPT NUMBERS.                                     
       A1.                                                             
             DISPLAY "INPUT NAMES".                                    
             ACCEPT NAME.                                              
             DISPLAY "INPUT AMOUNT".                                   
             ACCEPT AMOUNT.                                            
             DISPLAY "INPUT PRICE".                                    
             ACCEPT PRICE.                                             
             DISPLAY "INPUT UNIT".                                     
             ACCEPT UNIT.                                              
             WRITE STOCK-REC.                                          
             MOVE SPACE TO EOF.                                        
