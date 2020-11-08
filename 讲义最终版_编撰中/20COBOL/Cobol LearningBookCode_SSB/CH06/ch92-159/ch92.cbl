       IDENTIFICATION DIVISION.                                         
       PROGRAM-ID. CH92                                                 
       ENVIRONMENT DIVISION.                                            
       INPUT-OUTPUT SECTION.                                            
       FILE-CONTROL.                                                    
           SELECT STOCK-FILE ASSIGN TO DISK                             
             ORGANIZATION IS INDEXED                                    
              ACCESS MODE IS SEQUENTIAL                                 
              RECORD KEY IS NUMBERS.                                    
       DATA DIVISION.                                                   
       FILE SECTION.                                                    
       FD STOCK-FILE LABEL RECORD IS STANDARD                       
                        VALUE OF FILE-ID  "STOCK. DAT".               
       01 STOCK-REC.                                                    
        03 NUMBERS    PIC 9(6).                                                 
        03 NAME       PIC X(20).                                                
        03 AMOUNT     PIC 9(6).                                                 
        03 PRICE      PIC 9(4)V99.                                              
        03 UNIT       PIC X(8).                                                 
       PROCEDURE DIVISION.                                              
       G.                                                               
            OPEN OUTPUT STOCK-FILE.                                    
            DISPLAY "INPUT NUMBERS".                                   
            ACCEPT NUMBERS.                                             
            PERFORM B UNTIL NUMBERS = 999998.                           
            CLOSE STOCK-FILE.                                           
            STOP RUN.                                                   
       B.                                                               
            DISPLAY "INPUT NAMES".                                      
            ACCEPT NAME.                                                
            DISPLAY "INPUT AMOUNT".                                     
            ACCEPT AMOUNT.                                              
            DISPLAY "INPUT PRICS".                                      
            ACCEPT PRICE.                                               
            DISPLAY "INPUT UNIT"                                        
            ACCEPT UNIT.                                                
            WRITE STOCK-REC INVALID KEY                                 
                   DISPLAY "NUMBERS IS ERROR".                          
            DISPLAY "INPUT NUMBERS".                                    
            ACCEPT NUMBERS.                                             