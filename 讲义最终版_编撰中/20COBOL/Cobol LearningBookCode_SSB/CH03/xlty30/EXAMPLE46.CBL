000010 IDENTIFICATION DIVISION.                         
000020 PROGRAM-ID. EXAMPLE46.                                 
000030 ENVIRONMENT DIVISION.                            
000080 DATA DIVISION.                                   
000090 WORKING-STORAGE SECTION.                         
000100 77 TON PIC 9(3).                                    
       77 PAY PIC 9(4).99.                           
000120 PROCEDURE DIVISION.                              
000130 BEGIN.                                           
000140     DISPLAY "PLEASE INPUT DATA,0 IS THE"
           ACCEPT TON.
           IF TON = 0 
               DISPLAY "THE END" 
               STOP RUN.
           IF TON NOT > 30 
               DISPLAY " THE FREE "                    
000160     ELSE                                  
               COMPUTE PAY = (TON - 30) * 2.5                           
               DISPLAY "PLEASE PAY",PAY.      
000180     GO TO BEGIN.                                    