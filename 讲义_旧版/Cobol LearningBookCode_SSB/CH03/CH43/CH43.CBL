000010 IDENTIFICATION DIVISION.                                        
000020 PROGRAM-ID. CH43.                                               
000030*                                                                
000040 ENVIRONMENT DIVISION.                                           
000050 INPUT-OUTPUT SECTION.                                           
000060 FILE-CONTROL.                                                   
000070     SELECT SUM-FILE ASSIGN TO DISK.                             
000080     SELECT PRINT-FILE ASSIGN TO PRINTER.                        
000090*                                                                
000100 DATA DIVISION.                                                  
000110 FILE SECTION.                                                   
000120 FD SUM-FILE LABEL RECORD IS STANDARD                            
000130             VALUE OF FILE-ID "SUM.DAT".                         
000140 01 SUM-REC.                                                     
000150     03 COMPANY PIC X(20).                                       
000160     03 PLAN    PIC 9(6)V99.                                     
000170     03 PRACT   PIC 9(6)V99.                                     
000180 FD PRINT-FILE LABEL RECORD IS OMITTED.                          
000190 01 PRINT-REC PIC X(60).                                         
000200*                                                                
000210 WORKING-STORAGE SECTION.                                        
000220 77 X PIC X(83) S9V9999                                          
000230 01 CAL-SUM.                                                     
000240     03 COMPANY-C        PIC X(20).                              
000250     03 BALANCE          PIC S9(4)V99.                           
000260     03 PERCENT          PIC SV99.                               
000270     03 RATE             PIC SV99.                               
000280 01 CAL-T.                                                       
000290     03 FILLER           PIC X(20)   VALUE "TOTAL ".             
000300     03 PLAN-T           PIC 9(8)V99.                            
000310     03 PRACT-T          PIC 9(8)V99.                            
000320     03 BALANCE-T        PIC S9(5)V99.                           
000330     03 PERCENT-T        PIC S9V99.                              
000340*                                                                
000350 PROCEDURE DIVISION.                                             
000360*****                                                            
000370* 1 *                                                            
000380*****                                                            
000390 MAIN-PROCESS.                                                   
000400     MOVE ZERO TO PLAN-N PRACT-T.                                
000410*                                                                
000420*                                                                
000430     PERFORM EXECUTE-INIT THRU EXEXUTE-EXIT                      
000440.*                                                               
000450     CLOSE SUM-FILE PRINT-FILE.                                  
000460     STOP RUN.                                                   
000470*****                                                            
000480* 2 *                                                            
000490*****                                                            
000500 EXECUTE-INIT.                                                   
000510     OPEN INPUT  SUM-FILE.                                       
000520     PERFORM STAT-INIT THRU STAT-EXIT                            
000530                      10 TIMES.                                  
000540     CLOSE SUM-FILE.                                             
000550*                                                                
000560     OPEN INPUT  SUM-FILE.                                       
000570     OPEN OUTPUT PRINT-FILE.                                     
000580     PERFORM ASSAY-INIT THRU ASSAY-EXIT                          
000590                      10 TIMES.                                  
000600*                                                                
000610     SUBTEACT PLAN-T FROM PRACT-T GIVING BALANCE-T.              
000620     DIVIDE BALANCE-T BY PLAN-T GIVING PRTCENT-T.                
000630     MOVE CAL-T TO PRINT-REC.                                    
000640     WRITE PRINT-REC.                                            
000650 EXEXUTE-EXIT.                                                   
000660     EXIT.                                                       
000670*****                                                            
000680* 3 *                                                            
000690*****                                                            
000700 STAT-INIT.                                                      
000710     READ SUM-FILE.                                              
000720     ADD FLAN    TO PLAN-T.                                      
000730     ADD PRACT      TO PRACT-T.                                  
000740 STAT-EXIT.                                                      
000750     EXIT.                                                        
000760*                                                                
000770 ASSAY-INIT.                                                     
000780     READ SUM-FILE.                                              
000790     SUBTRACT PLAN FROM PRACT GIVING BALANCE.                    
000800     DIVIDE BALANCE BY PLAN GIVING PERCENT.                      
000810     DIVIDE PLAN-T INTO BALANCE GIVING RATE.                     
000820     MOVE CAL-SUM TO PRINT-REC.                                  
000830     WRITE PRINT-REC.                                            
000840 ASSAY-EXIT.                                                     
000850     EXIT.                                                       