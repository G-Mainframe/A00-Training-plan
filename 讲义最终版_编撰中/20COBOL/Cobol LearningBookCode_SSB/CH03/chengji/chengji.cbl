000010 IDENTIFICATION DIVISION.                                                 
000020 PROGRAM-ID. EXAMPLE47.                                                   
000030 ENVIRONMENT DIVISION.                                                    
000080 DATA DIVISION.                                                           
000090 WORKING-STORAGE SECTION.                                                 
000100 77 TOTAL      PIC 9(5) VALUE 0.                                          
       77 I          PIC 99.                                                    
000110 77 SCORE      PIC 9(3).                                                  
       77 TOTAL1     PIC 9(4).99.                                               
       77 AVERAGE    PIC Z(3).99.                                               
000120 PROCEDURE DIVISION.                                                      
000130 BEGIN.                                                                   
000140     DISPLAY "INPUT SCORE 999 I9S THE END."                               
           ACCEPT SCORE.                                                        
           IF SCORE = 999 GO TO  END-OUT.                                       
           ADD SCORE TO TOTAL.                                                  
           ADD 1 TO I.                                                          
           GO TO BEGIN.                                                         
000160 END-OUT                                                                  
           DIVIDE TOTAL BY I GIVING AVERAGE.                                    
           MOVE TOTAL TO TOTAL1.
           DISPLAY "THE NUMBER OF STUDENTS IS "
           DISPLAY "THE TOTAL IS ",TOTAL1.
           DISPLAY "THE AVERAGE IS ",AVERAGE.                    
000180     STOP 0.                                                              
