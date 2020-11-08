******************************************************************
 IDENTIFICATION DIVISION.                                         
******************************************************************
*                                                                 
 PROGRAM-ID. VSAM03.                                              
*                                                                 
******************************************************************
 ENVIRONMENT DIVISION.                                            
******************************************************************
*-----------------------------------------------------------------
 INPUT-OUTPUT        SECTION.                                     
*-----------------------------------------------------------------
 FILE-CONTROL.                                                    
     SELECT OUTDD    ASSIGN      TO  OUTDD                        
     ORGANIZATION    IS          INDEXED                          
     ACCESS MODE     IS          DYNAMIC                          
     RECORD KEY      IS          EMP-NUM                          
     FILE   STATUS   IS          OUTDD-STATUS.                    
*                                                                 
******************************************************************
 DATA DIVISION.                                                   
******************************************************************
*-----------------------------------------------------------------
 FILE                SECTION.                                     
*-----------------------------------------------------------------
 FD OUTDD.                                                        
 01 EMP-INFO.                                                     
    05 EMP-NUM                   PIC X(4).                        
    05                           PIC X(03).                       
    05 EMP-NAME                  PIC X(25).                       
    05                           PIC X(03).                       
    05 EMP-MAIL                 PIC X(30).                        
    05                           PIC X(15).                       
******************************************************************
 WORKING-STORAGE SECTION.                                         
 ******************************************************************
 77 OUTDD-STATUS                 PIC X(2).                        
*                                                                 
******************************************************************
 PROCEDURE DIVISION.                                              
******************************************************************
                                                                  
*-----------------------------------------------------------------
*@ S0000-MAIN                                                     
*-----------------------------------------------------------------
 S0000-MAIN-RTN.                                                  
*                                                                 
     PERFORM S1000-OPEN-RTN                                       
        THRU S1000-OPEN-EXT.                                      
*                                                                 
     PERFORM S3000-PROCESS-RTN                                    
        THRU S3000-PROCESS-EXT.                                   
*                                                                 
     PERFORM S9000-FINAL-RTN                                      
        THRU S9000-FINAL-EXT.                                     
*                                                                 
     STOP    RUN.                                                 
 S0000-MAIN-EXT.                                                  
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@S1000-OPEN                                                      
*-----------------------------------------------------------------
 S1000-OPEN-RTN.                                                  
     OPEN  I-O   OUTDD.                                           
     DISPLAY      ' OUTDD-STATUS: ' OUTDD-STATUS.                 
 S1000-OPEN-EXT.                                                  
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S3000-PROCESS                                                  
*-----------------------------------------------------------------
 S3000-PROCESS-RTN.                                               
*                                                                 
*    MOVE  '0001'       TO  EMP-NUM.                              
*   MOVE  'NAME01'     TO  EMP-NAME.                              
*    MOVE  'MAIL01'     TO  EMP-MAIL.                             
*    WRITE  EMP-INFO.                                             
*                                                                 
*    MOVE  '0002'       TO  EMP-NUM.                              
*    MOVE  'NAME02'     TO  EMP-NAME.                             
*    MOVE  'MAIL02'     TO  EMP-MAIL.                             
*    WRITE  EMP-INFO.                                             
*                                                                 
*    MOVE  '0003'       TO  EMP-NUM.                              
*    MOVE  'NAME03'     TO  EMP-NAME.                             
*    MOVE  'MAIL03'     TO  EMP-MAIL.                             
*    WRITE  EMP-INFO.                                             
*                                                                 
*    MOVE  '0004'       TO  EMP-NUM.                              
*    MOVE  'NAME04'     TO  EMP-NAME.                             
*    MOVE  'MAIL04'     TO  EMP-MAIL.                             
*    WRITE  EMP-INFO.                                             
*                                                                 
     MOVE  '0002'       TO  EMP-NUM.                              
     MOVE  'XXXXXX'     TO  EMP-NAME.                             
     MOVE  'XXXXXX'     TO  EMP-MAIL.                             
     REWRITE  EMP-INFO.                                           
 S3000-PROCESS-EXT.                                               
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S9000-FINAL                                                    
*-----------------------------------------------------------------
 S9000-FINAL-RTN.                                                 
     CLOSE  OUTDD.                                                
 S9000-FINAL-EXT.                                                 
      EXIT.      
                