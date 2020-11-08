000010 IDENTIFICATION DIVISION.                                                 
000020 PROGRAM-ID. CH42.                                                        
000030*                                                                         
000040 ENVIRONMENT DIVISION.                                                    
000050 INPUT-OUTPUT SECTION.                                                    
000060 FILE-CONTROL.                                                            
000070     SELECT DISK-FILE ASSIGN TO DISK.                                     
000080     SELECT PRINT-FILE ASSIGN TO PRINTER.                                 
000090*                                                                         
000100 DATA DIVISION.                                                           
000110 FILE SECTION.                                                            
000120 FD DISK-FILE LABEL RECORD IS STANDARD                                    
000130             VALUE OF FILE-ID "TAB.DAT".                                  
000140 01 HJDJK.                                                                
000150     03 HZ PIC X(20).                                                     
000160     03 XB PIC XX.                                                        
000170     03 CSRQ PIC 9(6).                                                    
000180     03 RK PIC 9(2).                                                      
000190     03 ZZ PIC X(20).                                                     
000200     03 GZDW PIC X(20).                                                   
000210 FD PRINT-FILE LABEL RECORD IS OMITTED.                                   
000220 01 PR-REC PIC X(83).                                                     
000230 WORKING-STORAGE SECTION.                                                 
000240 77 LINE1 PIC X(83) VALUE ALL "-"                                         
000250 01 OUT-REC.                                                              
000260     03 FILLER           PIC X      VALUE "| ".                           
000270     03 O-HZ             PIC X(20).                                       
000280     03 FILLER           PIC XX     VALUE "|".                            
000290     03 O-XB             PIC XX.                                          
000300     03 FILLER           PIC X(3)   VALUE " | ".                          
000310     03 O-CSRQ           PIC 9(6).                                        
000320     03 FILLER           PIC X(3)   VALUE " | ".                          
000330     03 O-RK             PIC 9(2).                                        
000340     03 FILLER           PIC XX     VALUE " |".                           
000350     03 O-ZZ             PIC X(20).                                       
000360     03 FILER            PIC X      VALUE "|".                            
000370     03 O-GZDW           PIC X(20).                                       
000380     03 FILER            PIC X      VALUE "|".                            
000390 01 TABLE1.                                                               
000400     03 FILLER           PIC X(36)  VALUE "| ".                           
000410     03 FILLER           PIC X(10)  VALUE "户籍登记表 ".                  
000420     03 FILLER           PIC X(36)  VALUE "SPACE ".                       
000430     03 FILLER           PIC X      VALUE "| ".                           
000440 01 TABLE2.                                                               
000450     03 FILLER           PIC X(7)   VALUE "| ".                           
000460     03 FILLER           PIC X(14)  VALUE "户主姓名 ".                    
000470     03 FILLER           PIC X      VALUE "|".                            
000480     03 FILLER           PIC X(4)   VALUE "性别 ".                        
000490     03 FILLER           PIC X      VALUE "|".                            
000500     03 FILLER           PIC X(8)   VALUE "出生日期".                     
000510     03 FILLER           PIC X      VALUE "|".                            
000520     03 FILLER           PIC X(4)   VALUE "人 ".                          
000530     03 FILLER           PIC X(9)   VALUE "|".                            
000540     03 FILLER           PIC X(12)  VALUE "住址".                         
000550     03 FILLER           PIC X(7)   VALUE "|".                            
000560     03 FILLER           PIC X(14)  VALUE "工作单位".                     
000570     03 FILLER           PIC X      VALUE "|".                            
000580*                                                                         
000590 PROCEDURE DIVISION.                                                      
000600*****                                                                     
000610* 1 *                                                                     
000620*****                                                                     
000630 MAIN-PROCESS.                                                            
000640     OPEN INPUT  DISK-FILE.                                               
000650     OPEN OUTPUT PRINT-FILE.                                              
000660     MOVE           LINE1 TO PR-REC.                                      
000670     WRITE PR-REC.                                                        
000680     MOVE          TABLE1 TO PR-REC.                                      
000690     WRITE PR-REC.                                                        
000700     MOVE           LINE1 TO PR-REC.                                      
000710     WRITE PR-REC.                                                        
000720     MOVE          TABLE2 TO PR-REC.                                      
000730     WRITE PR-REC.                                                        
000740     MOVE           LINE1 TO PR-REC.                                      
000750     WRITE PR-REC.                                                        
000760*                                                                         
000770     PERFORM EXECUTE-INIT THRU EXEXUTE-EXIT                               
000780              2000 TIMES.                                                 
000790*                                                                         
000800     CLOSE DISK-FILE PRINT-FILE.                                          
000810     STOP RUN.                                                            
000820*****                                                                     
000830* 2 *                                                                     
000840*****                                                                     
000850 EXECUTE-INIT.                                                            
000860     READ DISK-FILE.                                                      
000870     MOVE HZ     TO O-HZ.                                                 
000880     MOVE XB     TO O-XB.                                                 
000890     MOVE CSRQ   TO O-CSRQ.                                               
000900     MOVE RK     TO O-RK.                                                 
000910     MOVE ZZ     TO O-ZZ.                                                 
000920     MOVE GZDW   TO O-GZDW.                                               
000930     MOVE OUT-REC TO PR-REC.                                              
000940     WRITE PR-REC.                                                        
000950     MOVE LINE1  TO PR-REC.                                               
000960     WRITE PR-REC.                                                        
000970 EXEXUTE-EXIT.                                                            
000980     EXIT.                                                                