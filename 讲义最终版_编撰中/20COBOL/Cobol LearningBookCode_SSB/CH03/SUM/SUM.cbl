000010 IDENTIFICATION DIVISION.                         
000020 PROGRAM-ID. SUM1.                                 
000030 ENVIRONMENT DIVISION.                            
000080 DATA DIVISION.                                   
000090 WORKING-STORAGE SECTION.                         
000100 77 X PIC 999.                                    
000110 77 Y PIC 999.                                    
000120 PROCEDURE DIVISION.                              
000130 BEGIN.                                           
000140     MOVE 300 TO X.                               
000150     MOVE 500 TO Y.                               
000160     ADD X TO Y.                                  
000170     DISPLAY  "X+Y=",Y.                  
000172     ACCEPT X.       
000180     STOP RUN.                                    