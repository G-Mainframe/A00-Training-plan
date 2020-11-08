000010 IDENTIFICATION DIVISION.                                                 
000020 PROGRAM-ID. CH82.                                                        
000030 ENVIRONMENT DIVISION.                                                    
000040 INPUT-OUTPUT SECTION.                                                    
000050 FILE-CONTROL.                                                            
000060           SELECT PRINT-FILE ASSIGN TO PRINTER.                           
000070           SELECT DISK-FILE ASSIGN TO DISK.                               
000080 DATA DIVISION.                                                           
000090 FILE SECTION.                                                            
000100 FD PRINT-FILE LABEL RECORD IS OMITTED                                    
000110          LINAGE IS 56 LINES                                              
000120          TOP 5 BOTTOM 5.                                                 
000130 01 PRINT-REC PIC X(80).                                                  
000140 FD DISK-FILE      LABEL RECORD IS STANDARD                               
000150                      VALUE OF FILE-ID "SALE.DAT".                        
000160 01 DISK-REC.                                                             
000170  02 C-NAME            PIC X(20).                                         
000180  02 AMOUNT            PIC 999V99.                                        
000190 WORKING-STORAGE SECTION.                                                 
000200 01 WORK-AREAS.                                                           
000210   02 EOF              PIC 9       VALUE ZEROS.                           
000220   02 TOTAL-AMOUNT     PIC 9(5)V99 VALUE ZEROS.                           
000230   02 CTR              PIC 999     VALUE ZEROS.                           
000240   02 PAGE-NO          PIC 999     VALUE 1.                               
000250 01 HEAD-1                                                                
000260   02 FILLER           PIC X(15)  VALUE SPACES.                           
000270   02 HD-A             PIC X(34)  VALUE "1988 YEAR SALE TOTALS".          
000280   02 HD-B             PIC X(9)    VALUE "PAGE NO".                       
000290   02 PAGE-CT          PIC ZZZ9.                                          
000300 01 DETAIL-LINE.                                                          
000310   02 FILLER           PIC X(20) VALUE SPACES.                            
000320   02 C-NAME           PIC X(20).                                         
000330   02 FILLER           PIC X(10) VALUE SPACES.                            
000340   02 TOTAL            PIC $99,999.99.                                    
000350 PROCEDURE DIVISION.                                                      
000360 BEGIN.                                                                   
000370      OPEN INPUT DISK-FILE OUTPUT PRINT-FILE                              
000380      PERFORM HD-RTN.                                                     
000390      READ DISK-FILE AT END MOVE 1 TO EOF.                                
000400      PERFORM CALC-RTN UNTIL EOF=1.                                       
000410      CLOSE DISK-FILE PRINT-FILE.                                         
000420      STOP RUN.                                                           
000430 CALC-RTN.                                                                
000440      ADD 1 TO CTR.                                                       
000450      ADD AMOUNT TO TOTAL-AMOUNT.                                         
000460      IF CTR=12 PERFORM PRINT-RTN..                                       
000470      READ DISK-FILE AT END MOVE 1 TO EOF.                                
000480 PRINT-RTN.                                                               
000490      MOVE C-NAME OF DISK-REC TO C-NAME OF DETAIL-LINE.                   
000500      MOVE TOTAL-AMOUNT TO TOTAL.                                         
000510      MOVE ZEROS TO CTR.                                                  
000520      MOVE ZEROS TO TOTAL-AMOUNT.                                         
000530      WRITE PRINT-REC FROM DETAIL-LINE AFTER ADVANCING 2 LINES            
000540              AT EOP PERFORM HD-RTN.                                      
000550 HD-RTN.                                                                  
000560      MOVE PAGE-NO TO PAGE-CT.                                            
000570      ADD 1 TO PAGE-NO.                                                   
000580      WRITE PRINT-REC FROM HEAD-1 AFTER ADVANCING PAGE.                   
000590                                                                          
000600                                                                          
000610