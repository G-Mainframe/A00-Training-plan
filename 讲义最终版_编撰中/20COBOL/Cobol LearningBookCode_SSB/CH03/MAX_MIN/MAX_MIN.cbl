000010 IDENTIFICATION DIVISION.                        
000020 PROGRAM-ID. EXAMPLE48.                          
000030 ENVIRONMENT DIVISION.                           
000080 DATA DIVISION.                                  
000090 WORKING-STORAGE SECTION.                        
000100 77 X          PIC 9(3)V9.                       
       77 MAX-M      PIC 9(3)V9.                       
000110 77 MIN-M      PIC 9(3)V9.                       
       77 MAX-E      PIC Z(3).9.                       
       77 MIN-E      PIC Z(3).9.
       77 I          PIC 9 VALUE 0.                    
000120 PROCEDURE DIVISION.                             
000130 BEGIN.                                          
000140     DISPLAY "ENTER X".
           ACCEPT X.                               
           MOVE X TO MAX-M,MIN-M.
           ADD 1 TO I.
       MAIN.
           DISPLAY 'ENTER X '
           ACCEPT X.
           IF X > MAX-M MOVE X TO MAX-M.               
           IF X < MIN-M MOVE X TO MIN-M. 
           ADD 1 TO I.                                 
           IF I < 10 GO TO MAIN.   
           MOVE MAX-M TO MAX-E.
           MOVE MIN-M TO MIN-E.                        
000160     DISPLAY "THE MAXIMUM NUMBER IS  ",MAX-E.
           DISPLAY "THE MINIMUM NUMBER IS  ",MIN-E.    
000180     STOP 0.                                     