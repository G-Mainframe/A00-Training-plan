000010 IDENTIFICATION DIVISION.                         
000020 PROGRAM-ID. EXAMPLE45.                                 
000030 ENVIRONMENT DIVISION.                            
000080 DATA DIVISION.                                   
000090 WORKING-STORAGE SECTION.                         
000100 77 S PIC 9(4) VALUE 0.                                    
       77 I PIC 9(3) VALUE 0.                           
000120 PROCEDURE DIVISION.                              
000130 BEGIN.                                           
000140     ADD 1 TO I.                                  
           IF I > 100 GO TO SUM-OUT.                    
000160     ADD I TO S.                                  
           GO TO BEGIN.                                 
000170 SUM-OUT.                                             
           DISPLAY  "1+2+  +100=",S.                          
000180     STOP ZERO.                                    