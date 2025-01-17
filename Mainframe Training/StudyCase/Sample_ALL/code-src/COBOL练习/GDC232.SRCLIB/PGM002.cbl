*=================================================================
 IDENTIFICATION                  DIVISION.                        
*=================================================================
 PROGRAM-ID.                     TET02.                           
*=================================================================
 ENVIRONMENT                     DIVISION.                        
*=================================================================
 CONFIGURATION                   SECTION.                         
*=================================================================
 DATA                            DIVISION.                        
*=================================================================
*-----------------------------------------------------------------
 WORKING-STORAGE                 SECTION.                         
*-----------------------------------------------------------------
*-----------------------------------------------------------------
* CONSTANT AREA                                                   
*-----------------------------------------------------------------
 01  CO-AREA.                                                     
     03  CO-4                    PIC 9(001) VALUE 4.              
                                                                  
*-----------------------------------------------------------------
* WORKING AREA                                                    
*-----------------------------------------------------------------
 01  WK-AREA.                                                     
     03  WK-INT-001              PIC  99999V99.                   
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
                                                                  
     INITIALIZE       WK-AREA.                                    
                                                                  
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
     MOVE 1        TO WK-INT-001.                                 
     PERFORM UNTIL WK-INT-001 = 0                                 
        DISPLAY  ' INPUT: '                                       
        ACCEPT   WK-INT-001                                       
     END-PERFORM.                                                 
 S3000-PROCESS-EXT.                                               
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S9000-FINAL                                                    
*-----------------------------------------------------------------
 S9000-FINAL-RTN.                                                 
                                                                  
     CONTINUE.                                                    
 S9000-FINAL-EXT.                                                 
     EXIT.                                                                                                  
                                                                                                               