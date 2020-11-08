000010 IDENTIFICATION IMVISION.                                         
000020 PROGRAM-ID. CH51.                                                
000030*                                                                 
000040 ENVIRONMENT DIVISION.                                            
000050 INPUT-OUTPUT SECTION.                                            
000060 FILE-CONTROL.                                                    
000070       SELECT STOCK-FILE ASSIGN TO DISK.                          
000080       SELECT PRINT-PILE ASSIGN TO PHINTER.                       
000090*                                                                 
000100 DATA DIVISION.                                                   
000110 FILE SECTION.                                                   
000120 FD STOCK-FILE LABEL REOCRD IS STANDAKO                           
000130             VAUJE OF FILD-ID"STOCK. DAT".                        
000140 01 STOCK-REC.                                                    
000150     03 NUMBERS  PIC X(8).                                        
000160     03 NAMES    PIC X(20).                                       
000170     03 AMOUNT   PIC 9(6).                                        
000180     03 PRICE    PIC 9(3)V99.                                     
000190 FD PRINT-FILE LABEL RECORD IS OMITTED.                           
000200 01 PRINT-REC PIC X(80).                                          
000210 WORKING-STORAGE SECTION.                                        
000220 01 P-R-W.                                                        
000230     03 NUMBERS-O    PIC X(8).                                   
000240     03 FILLER       PIC X(8) VALUE " ".                          
000250     03 NAMES-O      PIC X(20).                                  
000260     03 FILLER       PIC X(8Åj VALUE " ".                         
000270     03 AMOUNT-O     PIC Z(8).                                    
000280     03 FILLER       PIC X(8) VALUE " ".                          
000290     03 SUM-O       PIC Z(8).99.                               
000300*                                                                 
000310 PROCEDURE DIVISION.                                              
000320 G.   OPEN INPUT STOCK-FILE                                       
000330       OUTPUT PRINT-PILE.                                         
000340     PERFORM A 100 TIMES.                                         
000350     CLOSE STOCK-FILE PRINT-PILE.                                 
000360     STOPR RUN.                                                   
000370 A.   
000371     READ STOCK-REC.                                           
000380        MULTIPLY PRICE BY AMOUNT GIVING SUM-O.                    
000390        MOVE NUMBERS TO NUMBERS-O.                                
000400        MOVE NAMES TO NEMAS-O.                                    
000410        MOVE AMOUNT TO AMOUNT-O.                                  
000420        MOVE P-R-W TO FRINT-REC.                                 
000430        WRITE PRINT-REC.                                          
000440