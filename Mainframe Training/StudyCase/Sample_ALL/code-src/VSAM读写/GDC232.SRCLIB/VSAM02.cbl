******************************************************************
 IDENTIFICATION DIVISION.                                         
******************************************************************
*                                                                 
 PROGRAM-ID. VSAM02.                                              
*                                                                 
******************************************************************
 ENVIRONMENT DIVISION.                                            
******************************************************************
*-----------------------------------------------------------------
 INPUT-OUTPUT        SECTION.                                     
*-----------------------------------------------------------------
 FILE-CONTROL.                                                    
     SELECT INDD    ASSIGN       TO      INDD                     
     ORGANIZATION    IS          INDEXED                          
     ACCESS MODE     IS          DYNAMIC                          
     RECORD KEY      IS          EMP-NUM                          
     FILE   STATUS   IS          INDD-STATUS.                     
*                                                                 
******************************************************************
 DATA DIVISION.                                                   
******************************************************************
*-----------------------------------------------------------------
 FILE                SECTION.                                     
*-----------------------------------------------------------------
 FD INDD.                                                         
 01 EMP-REC.                                                      
    05 EMP-NUM                   PIC X(4).                        
    05                           PIC X(16).                       
    05 EMP-NAME                  PIC X(30).                       
    05                           PIC X(30).                       
******************************************************************
 WORKING-STORAGE SECTION.                                         
******************************************************************
 77 INDD-STATUS                  PIC X(2).                        
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
     OPEN  I-O   INDD.                                            
     DISPLAY      ' INDD-STATUS: ' INDD-STATUS.                   
 S1000-OPEN-EXT.                                                  
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S3000-PROCESS                                                  
*-----------------------------------------------------------------
 S3000-PROCESS-RTN.                                               
 *                                                                 
     DISPLAY   ' READ START   '.                                  
     MOVE   ' 07 '     TO          EMP-NUM.                       
     READ   INDD                                                  
         KEY  IS  EMP-NUM                                         
         INVALID  KEY                                             
            DISPLAY   ' READ END '                                
            GO   TO   S3000-PROCESS-EXT                           
                                                                  
         NOT INVALID KEY                                          
            DISPLAY   ' EMP-NUM : '  EMP-NUM                      
            DISPLAY   ' EMP-NAME: '  EMP-NAME                     
            GO   TO   S3000-PROCESS-EXT                           
     END-READ.                                                    
     DISPLAY   ' READ  END '.                                     
 S3000-PROCESS-EXT.                                               
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S9000-FINAL                                                    
*-----------------------------------------------------------------
 S9000-FINAL-RTN.                                                 
     CLOSE  INDD.                                                 
 S9000-FINAL-EXT.                                                 
     EXIT.                                                        
                                                                  