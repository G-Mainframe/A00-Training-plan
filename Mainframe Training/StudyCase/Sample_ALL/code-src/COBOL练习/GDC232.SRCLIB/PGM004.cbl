*=================================================================
 IDENTIFICATION                  DIVISION.                        
*=================================================================
 PROGRAM-ID.                     PGM004.                          
*=================================================================
 ENVIRONMENT                     DIVISION.                        
*=================================================================
 INPUT-OUTPUT                    SECTION.                         
*                                                                 
 FILE-CONTROL.                                                    
     SELECT MYPS     ASSIGN      MYPS                             
     ORGANIZATION    IS          SEQUENTIAL                       
     ACCESS MODE     IS          SEQUENTIAL                       
     FILE   STATUS   IS          MYPS-STATUS.                     
*                                                                 
*CONFIGURATION                   SECTION.                         
*=================================================================
 DATA                            DIVISION.                        
*=================================================================
 FILE SECTION.                                                    
 FD  MYPS.                                                        
 01  MYPS-RECORD                 PIC  X(80).                      
*                                                                 
*-----------------------------------------------------------------
 WORKING-STORAGE                 SECTION.                         
*-----------------------------------------------------------------
 01  RECORD-01.                                                   
     03  DATA1                   PIC  9999.                       
     03  DATA2                   PIC  XXXX.                       
     03  DATA3                   PIC  9999.                       
 77  MYPS-STATUS                 PIC X(2).                        
*-----------------------------------------------------------------
* CONSTANT AREA                                                   
*-----------------------------------------------------------------
*                                                                 
*-----------------------------------------------------------------
* WORKING AREA                                                    
*-----------------------------------------------------------------
 01  WK-AREA.                                                     
     03  WK-INT-X                PIC  99999V99.                   
     03  WK-INT-Y                PIC  99V99999.                   
*=================================================================
 PROCEDURE                       DIVISION.                        
*=================================================================
*-----------------------------------------------------------------
*@ S0000-MAIN                                                     
*-----------------------------------------------------------------
 S0000-MAIN-RTN.                                                  
                                                                  
     PERFORM S1000-INITIALIZE-RTN                                 
        THRU S1000-INITIALIZE-EXT.                                
                                                                  
     PERFORM S2000-VALIDATION-RTN                                 
        THRU S2000-VALIDATION-EXT.                                
                                                                  
     PERFORM S3000-PROCESS-RTN                                    
        THRU S3000-PROCESS-EXT.                                   
                                                                  
     PERFORM S9000-FINAL-RTN                                      
        THRU S9000-FINAL-EXT.                                     
                                                                  
     STOP RUN.                                                    
                                                                  
 S0000-MAIN-EXT.                                                  
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S1000-INITIALIZE                                               
*-----------------------------------------------------------------
 S1000-INITIALIZE-RTN.                                            
                                                                  
*    INITIALIZE       WK-AREA.                                    
     CONTINUE.                                                    
 S1000-INITIALIZE-EXT.                                            
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S2000-VALIDATION                                               
*-----------------------------------------------------------------
 S2000-VALIDATION-RTN.                                            
                                                                  
     CONTINUE.                                                    
 S2000-VALIDATION-EXT.                                            
     EXIT.                                                        
                                                                  
                                                                  
                                                                  
                                                                  
*-----------------------------------------------------------------
*@ S3000-PROCESS                                                  
*-----------------------------------------------------------------
 S3000-PROCESS-RTN.                                               
     OPEN OUTPUT MYPS.                                            
                                                                  
     MOVE       -123           TO     DATA1.                      
     MOVE       -123           TO     DATA2.                      
     MOVE       -123           TO     DATA3.                      
     DISPLAY 'DATA1  ' DATA1.                                     
     DISPLAY 'DATA2  ' DATA2.                                     
     DISPLAY 'DATA3  ' DATA3.                                     
     WRITE   MYPS-RECORD FROM RECORD-01.                          
 S3000-PROCESS-EXT.                                               
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S9000-FINAL                                                    
*-----------------------------------------------------------------
 S9000-FINAL-RTN.                                           
                                                            
     CONTINUE.                                              
 S9000-FINAL-EXT.                                           
     EXIT.                                                                                                                    