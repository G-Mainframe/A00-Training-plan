*=================================================================
 IDENTIFICATION                  DIVISION.                        
*=================================================================
 PROGRAM-ID.                     TET01.                           
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
     03  WK-INT-001              PIC  99999.99  .                 
     03  WK-INT-002              PIC  99B999.99 .                 
     03  WK-INT-003              PIC  99,999.99 .                 
     03  WK-INT-004              PIC  +99,999.99.                 
     03  WK-INT-005              PIC  +++,++9.99.                 
     03  WK-INT-006              PIC  +++,+++.99.                 
     03  WK-INT-007              PIC  -99,999.99.                 
     03  WK-INT-008              PIC  ---,--9.99.                 
     03  WK-INT-009              PIC  ---,---.99.                 
     03  WK-INT-010              PIC  $99,999.99.                 
     03  WK-INT-011              PIC  $$$,$$9.99.                 
     03  WK-INT-012              PIC  $$$,$$$.99.         
     03  WK-INT-013              PIC  ZZ,ZZ9.99 .                 
     03  WK-INT-014              PIC  ZZ,ZZZ.99 .                 
     03  WK-INT-015              PIC  ZZ,ZZZ.ZZ .                 
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
     DISPLAY  ' 99999.99   '.                                     
     ACCEPT   WK-INT-001.                                         
     DISPLAY  ' WK-INT-001 = ' WK-INT-001.                        
     DISPLAY  ' 99B999.99  '.                                     
     ACCEPT   WK-INT-002.                                         
     DISPLAY  ' WK-INT-002 = ' WK-INT-002.                        
     DISPLAY  ' 99,999.99  '.                                     
     ACCEPT   WK-INT-003.                                         
     DISPLAY  ' WK-INT-003 = ' WK-INT-003.                        
     DISPLAY  ' +99,999.99 '.                                     
     ACCEPT   WK-INT-004.                                         
     DISPLAY  ' WK-INT-004 = ' WK-INT-004.                        
     DISPLAY  ' +++,++9.99 '.                                     
     ACCEPT   WK-INT-005.                                         
     DISPLAY  ' WK-INT-005 = ' WK-INT-005.                        
     DISPLAY  ' +++,+++.99 '.                                     
     ACCEPT   WK-INT-006.                                         
     DISPLAY  ' WK-INT-006 = ' WK-INT-006.                        
     DISPLAY  ' -99,999.99 '.                                     
     ACCEPT   WK-INT-007.                                         
     DISPLAY  ' WK-INT-007 = ' WK-INT-007.                        
     DISPLAY  ' ---,--9.99 '.                                     
     ACCEPT   WK-INT-008.                                         
     DISPLAY  ' WK-INT-008 = ' WK-INT-008.                        
     DISPLAY  ' ---,---.99 '.                                     
     ACCEPT   WK-INT-009.                                         
     DISPLAY  ' WK-INT-009 = ' WK-INT-009.                        
     DISPLAY  ' $99,999.99 '.                                     
     ACCEPT   WK-INT-010.                                         
     DISPLAY  ' WK-INT-010 = ' WK-INT-010.                        
     DISPLAY  ' $$$,$$9.99 '.                                     
     ACCEPT   WK-INT-011.                                         
     DISPLAY  ' WK-INT-011 = ' WK-INT-011.                        
     DISPLAY  ' $$$,$$$.99 '.                                     
     ACCEPT   WK-INT-012.                                         
     DISPLAY  ' WK-INT-012 = ' WK-INT-012.                        
     DISPLAY  ' ZZ,ZZ9.99  '.                                     
     ACCEPT   WK-INT-013.                                         
     DISPLAY  ' WK-INT-013 = ' WK-INT-013.                        
     DISPLAY  ' ZZ,ZZZ.99  '.                                     
     ACCEPT   WK-INT-014.                                         
     DISPLAY  ' WK-INT-014 = ' WK-INT-014.                        
     DISPLAY  ' ZZ,ZZZ.ZZ  '.                                     
     ACCEPT   WK-INT-015.                                         
     DISPLAY  ' WK-INT-015 = ' WK-INT-015.                        
                                                                  
 S3000-PROCESS-EXT.                                               
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S9000-FINAL                                                    
*-----------------------------------------------------------------
 S9000-FINAL-RTN.                                                 
                                                                  
     CONTINUE.                                                    
 S9000-FINAL-EXT.                                                 
     EXIT.                                                                              