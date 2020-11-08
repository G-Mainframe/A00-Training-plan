000010 IDENTIFICATION DIVISION.                                         
000020 PROGRAM-ID.  EXAMPLE418.                                         
000030 ENVIRONMENT DIVISION.                                            
000040 DATA DIVISION.                                                   
000050 WORKING-STORAGE SECTION                                          
       01  WORK-DATA-AREA.     
           02 FAO PIC 9999999.    
000070     02 I PIC 99.                                                         
000080     02 FAO-EDIT PIC Z(7).                                                
000090     02 I-EDIT PIC Z(2).                                                  
000100 PROCEDURE DIVISION. 
000101      INITIALIZE WORK-DATA-AREA.   
000102      MOVE ZERO TO I.  
000103      MOVE 1 TO FAO.                 
000110      PERFORM MAIN VARYING I FROM 1 BY 1                                  
000120              UNTIL I > 10.                                       
000130      STOP RUN.                                                           
000140 MAIN.                                                            
000150      MULTIPLY I BY FAO.                                                  
000160      MOVE I TO I-EDIT.                                                   
000170      MOVE FAO TO FAO-EDIT.                                               
000180      DISPLAY I-EDIT, 'I=', FAO-EDIT.                                     
000190                                                                  
000200