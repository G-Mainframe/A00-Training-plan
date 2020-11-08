000010 IDENTIFICATION DIVISION.                                                 
000020 PROGRAM-ID. CH41.                                                        
000030*                                                                         
000040 ENVIRONMENT DIVISION.                                                    
000050 INPUT-OUTPUT SECTION.                                                    
000060 FILE-CONTROL.                                                            
000070     SELECT DISK-FILE ASSIGN TO IN-MSD.                                   
000080*                                                                         
000090 DATA DIVISION.                                                           
000100 FILE SECTION.                                                            
000110 FD DISK-FILE LABEL RECORD IS STANDARD                                    
000120             VALUE OF IDENTIFICATION IS "TAB.DAT".                        
000130 01 HJDJK.                                                                
000140     03 HZ PIC X(20).                                                     
000150     03 XB PIC XX.                                                        
000160     03 CSRQ PIC 9(6).                                                    
000170     03 RK PIC 9(2).                                                      
000180     03 ZZ PIC X(20).                                                     
000190     03 GZDW PIC X(20).                                                   
000200*                                                                         
000210 PROCEDURE DIVISION.                                                      
000220*****                                                                     
000230* 1 *                                                                     
000240*****                                                                     
000250 MAIN-PROCESS.                                                            
000260     OPEN OUTPUT DISK-FILE.                                               
000270*                                                                         
000280     PERFORM EXECUTE-INIT THRU EXEXUTE-EXIT                               
000290              2000 TIMES.                                                 
000300*                                                                         
000310     CLOSE DISK-FILE.                                                     
000320      STOP RUN.                                                           
000330*****                                                                     
000340* 2 *                                                                     
000350*****                                                                     
000360 EXECUTE-INIT.                                                            
000370     DISPLAY "INPUT NAME"                                                 
000380     ACCEPT  HZ.                                                          
000390     DISPLAY "INPUT SEX".                                                 
000400     ACCEPT  XB.                                                          
000410     DISPLAY "INPUT Birthday".                                            
000420     ACCEPT  CSRQ.                                                        
000430     DISPLAY "INPUT Number of Poople In a Famlly".                        
000440     ACCEPT  RK.                                                          
000450     DISPLAY "INPUT ADDRESS".                                             
000460     ACCEPT ZZ.                                                           
000470     DISPLAY "INPUT PLACE OF WORK ".                                      
000480     ACCEPT GZDW.                                                         
000490     WRITE HJDJK.                                                         
000500 EXEXUTE-EXIT.                                                            
000510     EXIT.                                                                