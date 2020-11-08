000010 IDENTIFICATION DIVISION.                          
000020 PROGRAM-ID. CH106.                                
000030 ENVIRONMENT DIVISION.                             
000040 INPUT-OUTPUT SECTION.                             
000050 FILE-CONTROL.                                     
000060     SELECT MUSIC-FILE ASSIGN TO DISK.           
000070     SELECT PRINT-FILE ASSIGN TO PRINTER.       
000080 DATA DIVISION.                                        
000090 FILE SECTION.                                         
000100 FD MUSIC-FILE LABEL RECORD IS STANDARD
000110      VALUE OF FILE-ID "MUSIC. DAT",                   
000120 01  MUSIC-REC.                                        
000130   03 MUSIC-NAME    PIC X(20).                        
000140   03 RECORD-LABEL. PIC 9(6).                          
000150   03  ARTIST       PIC K(20).                     
000160   03 CLASSIFY      PIC X(15).                        
000180 FD PRINT-FILE LABEL RECORD IS OMITTED.               
000190 01 PRINT-REC PIC X(80).                              
000200*  
000210 WORKING-STORAGE SECTION.                             
000220 77 I-MUSIC-NAME PIC X(20).                           
000230 77 N            PIC 9(3).                          
000240 77 E-W          PIC X(3).                           
000250 01 LABLE.                                            
000260     02 MUSIC-L OCCURS 200 INDEXED BY J                 
000270                    ASCENDING KEY IS M-L.               
000280     03  M-L  PIC  X(20).                               
000290     03  R-L  PIC  9(6).                                
000300     03  A-L  PIC  X(20).                                
000310     03  C-L  PIC  X(15).                              
000320 01  P-R-W.                                           
000330  03  L-1.                                            
000340      05 FILLER    PIC X(20) VALUE "MUSIC NAME:"      
000350      05 M-L-W     PIC X(20).                            
000360  03  L-2.                                            
000370      05 FILLER    PIC X(20) VALUE "RECORD LABEL:".   
000380      05 R-L-W     PIC Z(6).                              
000390  03  L-3.                                              
000400      05 FILLER    PIC X(20) VALUE "PLAY ABITST:".    
000410      05 A-L-W     PIC X(20).                            
000420  03  L-4.                                             
000430      05 FILLER    PIC X(20)  VALUE "CLASSIFICATION:".
000440      05 C-L-W     PIC X(15).                             
000450 PROCEDURE DIVISION.                                   
000460 G.                                                    
000470        OPEN INPUT MUSIC-FILE.                         
000480        MOVE SPACE TO E-W.                             
000490        MOVE ZERO TO N.                                
000500        READ MUSIC-FILE AT END MOVE "EOF" TO E-W.     
000510        PERFORM F UNTIL E-W = "EOF".                    
000520        CLOSE MUSIC-FILE.                              
000530 G1.                                                   
000540        OPEN OUTPUT PRINT-FILE.                        
000550        DISPLAY "INPUT MUSIC NAME".                    
000560        ACCEPT I-MUSIC-NAME.                          
000570        PERFORM  A UNTIL I-MUSIC-NAME = "END".          
000580        CLOSE PRINT-FILE.                              
000590        STOP RUN
000600                                       
000610 F.                                                   
000620       ADD  1 TO N.                                   
000630       MOVE  MUSIC-REC  TO  MUSIC-L(N).              
000640       READ MUSIC-FILE  AT  END MOVE "EOF" TO E-W.
000650  
000660 A.                                                   
000670       SEARCH ALL MUSIC-L                             
000680          AT END DISPLAY "THIS MUSIC NOT EXIT"  .     
000690          WHEN M-L(J)=I-MUSIC-NAME PERFORM P.      
000700       DISPLAY "INPUT MUSIC NAME".                    
000710       ACCEPT I-MUSIC-NAME.
000720                          
000730 P.                                                    
000740       MOVE M-L(J)  TO M-L-W.
000760       MOVE L-1 TO PRINT-REC.                        
000770       WRITE PRINT-REC.                               
000780       MOVE R-L(J)  TO R-L-W.                      
000790       MOVE L-2 TO PRINT-REC.                         
000800       WRITE PRINT-REC.                              
000810       MOVE L-3 TO PRINT-REC.                        
000820       MOVE A-L(J)  TO A-L-W.                        
000830       WRITE PRINT-REC.                               
000840       MOVE C-L(J)  TO C-L-W.                        
000850       MOVE L-4 TO PRINT-REC.                         
000860       WRITE PRINT-REC.                               