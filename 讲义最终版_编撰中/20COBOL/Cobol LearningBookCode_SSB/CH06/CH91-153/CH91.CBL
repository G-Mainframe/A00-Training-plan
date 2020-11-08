000010 IDENTIFICATION DIVISION.                                        
000020 PROGRAM-ID. CH91.                                               
000030 ENVIRONMENT DIVISION.                                           
000040 INPUT-OUTPUT SECTION.                                           
000050 FILE-CONTROL.                                                   
000060        SELECT STOCK-FILE ASSIGN TO DISK                         
000070               ORGANIZATION IS INDEXED                           
000080               ACCESS MODE IS RANDOM                             
000090               RECORD   KEY IS NUMBERS.                          
000100 DATA DIVISION.                                                  
000110 FILE SECTION.                                                   
000120 FD STOCK-FILE LABEL RECORD IS STANDARD                          
000130               VALUE OF PILE-ID IS "STOCK. DAT".                 
000140 01 STOCK-REC.                                                   
000150     03 NUMBERS    PIC 9(6).                                     
000160     03 NAME       PIC X(20).                                    
000170     03 AMOUNT     PIC 9(6).                                     
000180     03 PRICE      PIC 9(4)V99.                                  
000190     03 UNIT       PIC X(8).                                     
000200 WORKING-STORAGE SECTION.                                        
000210 77 EOF PIC X(3) VALUE ALL SPACE.                                
000220 01 STOCK-OUT.                                                   
000230    03 NUMBERS-0   PIC 9(6).                                     
000240    03 FILLER      PIC X(5) VALUE ALL SPACES.                    
000250    03 NAME-0      PIC X(20).                                    
000260    03 FILLER      PIC X(5) VALUE ALL SPACES.                    
000270    03 AMOUNT-0 PIC Z(6).                                        
000280 PROCEDURE DIVISION.                                             
000290 G.                                                              
000300        OPEN INPUT STOCK-FILE.                                   
000310        MOVE ZERO TO NUMBERS.                                    
000320        PERFORM A UNTIL NUMBERS = 999999.                        
000330        CLOSE STOCK-FILE.                                        
000340        STOP RUN.                                                
000350 A.                                                              
000360     MOVE SPACE TO EOF.                                          
000370     DISPLAY "INPUT NUMBERS".                                   
000380     ACCEPT NUMBERS.                                             
000390     IF NUMBERS NOT = 999999 PERFORM R.                          
000400 R.                                                              
000410     READ STOCK-FILE INVALID KEY MOVE                            
000420                    "ERR" TO EOF.                                
000430     IF EOF NOT = "ERR" PERFORM O                                 
000440     ELSE DISPLAY "NUMBERS IS ERROR".                            
000450 O.                                                              
000460     MOVE NUMBERS TO NUMBERS-0.                                  
000470     MOVE NAME TO NAME-0                                         
000480     MOVE AMOUNT TO AMOUNT-0.                                    
000490     DISPLAY STOCK-OUT.                                          
000500