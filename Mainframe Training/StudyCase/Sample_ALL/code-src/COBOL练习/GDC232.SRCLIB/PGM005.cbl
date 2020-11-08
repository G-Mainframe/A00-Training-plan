*=================================================================
 IDENTIFICATION                  DIVISION.                        
*=================================================================
 PROGRAM-ID.                     PGM005.                          
*=================================================================
 ENVIRONMENT                     DIVISION.                        
*=================================================================
 INPUT-OUTPUT                    SECTION.                         
*                                                                 
 FILE-CONTROL.                                                    
     SELECT PS01     ASSIGN      PS01                             
     ORGANIZATION    IS          SEQUENTIAL                       
     ACCESS MODE     IS          SEQUENTIAL                       
     FILE   STATUS   IS          PS01-STATUS.                     
*                                                                 
*                                                                 
     SELECT PS02     ASSIGN      PS02                             
     ORGANIZATION    IS          SEQUENTIAL                       
     ACCESS MODE     IS          SEQUENTIAL                       
     FILE   STATUS   IS          PS02-STATUS.                     
*                                                                 
*CONFIGURATION                   SECTION.                         
*=================================================================
 DATA                            DIVISION.                        
*=================================================================
 FILE SECTION.                                                    
 FD  PS01 LABEL  RECORD      IS  STANDARD.                        
 01  PS01-REC.                                                    
     03  PS01-DATA1              PIC  999.                        
     03                          PIC  X(77).                      
                                                                  
*                                                                 
 FD  PS02 LABEL  RECORD      IS  STANDARD.                        
 01  PS02-REC                    PIC  X(80).                      
*-----------------------------------------------------------------
 WORKING-STORAGE                 SECTION.                         
*-----------------------------------------------------------------
 77  PS01-STATUS                 PIC X(2).                        
 77  PS02-STATUS                 PIC X(2).                        
 01  RECORD-01.                                                   
     03                          PIC  X(14)  VALUE 'THE SEQUENC'. 
     03  PS02-DATA1              PIC  X(3).                       
     03                          PIC  X(4)   VALUE ' IS '.        
     03  PS02-DATA2              PIC  X(6).                       
     03                          PIC  X(51).                      
 01  RECORD-02.                                                   
     03                         PIC  X(022) VALUE 'THE END FILE'. 
     03                          PIC  X(006).                     
     03                          PIC  X(052).                     
*-----------------------------------------------------------------
* CONSTANT AREA                                                   
*-----------------------------------------------------------------
*                                                                 
*-----------------------------------------------------------------
* WORKING AREA                                                    
*-----------------------------------------------------------------
 01  WK-AREA.                                                     
     03  WK-TEP-01               PIC  999.                        
     03  WK-TEP-02               PIC  999999.                     
*=================================================================
 PROCEDURE                       DIVISION.                        
*=================================================================
*-----------------------------------------------------------------
*@ S0000-MAIN                                                     
*-----------------------------------------------------------------
 S0000-MAIN-RTN.                                                  
                                                                  
     PERFORM S1000-STR                                            
        THRU S1000-END.                                           
                                                                  
     PERFORM S2000-STR                                            
        THRU S2000-END.                                           
                                                                  
     PERFORM S3000-STR                                            
        THRU S3000-END.                                           
                                                                  
     PERFORM S9000-STR                                            
        THRU S9000-END.                                           
                                                                  
     STOP RUN.                                                    
                                                                  
 S0000-MAIN-EXT.                                                  
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S1000                                                          
*-----------------------------------------------------------------
 S1000-STR.                                                       
                                                                  
     OPEN OUTPUT PS02.                                            
*    DISPLAY  'PS02 STATUS IS: ' PS02-STATUS.                     
     OPEN INPUT  PS01.                                            
*    DISPLAY  'PS01 STATUS IS: ' PS01-STATUS.                     
 S1000-END.                                                       
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S2000                                                          
*-----------------------------------------------------------------
 S2000-STR.                                                       
                                                                  
     CONTINUE.                                                    
 S2000-END.                                                       
     EXIT.                                                        
                                                                  
                                                                  
                                                                  
*-----------------------------------------------------------------
*@ S3000                                                          
*-----------------------------------------------------------------
 S3000-STR.                                                       
*                                                                 
     READ    PS01                                                 
     AT END                                                       
             DISPLAY " AT END OF FILE"                            
             WRITE   PS02-REC    FROM RECORD-02                   
             GO TO   S3000-END                                    
     NOT AT END                                                   
             DISPLAY ' PS01-DATA1 ' PS01-DATA1                    
             MOVE    PS01-DATA1  TO      WK-TEP-01                
             COMPUTE WK-TEP-02 = WK-TEP-01 * WK-TEP-01            
             END-COMPUTE                                          
             DISPLAY ' WK-TEP-02  ' WK-TEP-02                     
             MOVE    WK-TEP-01   TO      PS02-DATA1               
             MOVE    WK-TEP-02   TO      PS02-DATA2               
             DISPLAY ' PS02-REC ' PS02-REC                        
             WRITE   PS02-REC    FROM RECORD-01                   
             GO TO   S3000-STR                                    
     END-READ.                                                    
*                                                                 
 S3000-END.                                                       
     EXIT.                                                        
                                                                  
*-----------------------------------------------------------------
*@ S9000                                                          
*-----------------------------------------------------------------
 S9000-STR.                                                       
                                                                  
     CLOSE  PS02.                                                 
     CLOSE  PS01.                                                 
 S9000-END.                                                       
     EXIT.                                                                                                                          