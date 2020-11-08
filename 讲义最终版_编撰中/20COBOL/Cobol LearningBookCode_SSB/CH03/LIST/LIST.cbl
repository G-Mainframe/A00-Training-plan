000010 IDENTIFICATION DIVISION.                                                 
000020 PROGRAM-ID. EXAMPLE410.                                                  
000030 ENVIRONMENT DIVISION.                                                    
000080 DATA DIVISION.                                                           
000090 WORKING-STORAGE SECTION.                                                 
000100 77 A          PIC 9(3).                                                  
       77 B          PIC 9(3).                                                  
000110 77 C          PIC 9(3).                                                  
000120 PROCEDURE DIVISION.                                                      
000130 BEGIN.                                                                   
000140     DISPLAY "INPUT DATA NOW".                                            
           ACCEPT A.                                                            
           ACCEPT B.                                                            
           ACCEPT C.                                                            
           IF A > B                                                             
               IF B > C                                                         
                              DISPLAY A,"   ",B,"   ",C                         
               ELSE IF A > C                                                    
                              DISPLAY A,"   ",C,"   ",B                         
                    ELSE      DISPLAY C,"   ",A,"   ",B                         
           ELSE IF A > C                                                        
                              DISPLAY B,"   ",C,"   ",A                         
                ELSE IF B > C                                                   
                              DISPLAY B,"   ",C,"   ",A                         
                     ELSE     DISPLAY C,"   ",B,"   ",A.                        
000180     STOP 0.                                                              
