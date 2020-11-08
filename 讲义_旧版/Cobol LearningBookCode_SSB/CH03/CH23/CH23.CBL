000010 IDENTIFICATION DIVISION.                                                 
000020 PROGRAM-ID. CH23.                                                        
000030*                                                                         
000040 ENVIRONMENT DIVISION.                                                    
000050*                                                                         
000060 DATA DIVISION.                                                           
000070 WORKING-STORAGE SECTION.                                                 
000080 77 LINE-OUT             PIC X(78)   VALUE ALL "-".                       
000090 77 PERFORM-TIMES        PIC 9(5).                                        
000100 01 INPUT-RE.                                                             
000110     03 NO-IN            PIC 9(5).                                        
000120     03 NAME-IN          PIC X(20).                                       
000130     03 CITY-IN          PIC X(20).                                       
000140     03 ADDRESS-IN       PIC X(20).                                       
000150 01 OUTPUT-RE.                                                            
000160     03 FILLER           PIC X(2)   VALUE "| ".                           
000170     03 NO-OUT           PIC 9(5).                                        
000180     03 FILLER           PIC X(3)   VALUE " | ".                          
000190     03 NAME-OUT         PIC X(20).                                       
000200     03 FILLER           PIC X(3)   VALUE " | ".                          
000210     03 CITY-OUT         PIC X(20).                                       
000220     03 FILLER           PIC X(3)   VALUE " | ".                          
000230     03 ADDRESS-OUT      PIC X(20).                                       
000240     03 FILLER           PIC X(2)   VALUE " |".                           
000250 01 HEAD-OUT.
000260     03 FILLER           PIC X(2)   VALUE "| ".                           
000270     03 FILLER           PIC X(5)   VALUE "NO".                           
000280     03 FILLER           PIC X(3)   VALUE " | ".                          
000290     03 FILLER         PIC X(20)  VALUE "  NAME  "                      
000300     03 FILLER           PIC X(3)   VALUE "|".                            
000310     03 FILLER         PIC X(20)  VALUE "   CITY  ".                    
000320     03 FILLER           PIC X(3)   VALUE "|".                            
000330     03 FILLER      PIC X(20)  VALUE "  ADDRESS    " .               
000340     03 FILLER           PIC X(2)   VALUE "|".                            
000350*                                                                         
000360 PROCEDURE DIVISION.                                                      
000370*****             
000380* 1 *                   
000390*****                        
000400 MAIN-PROCESS.                                                            
000410     DISPLAY    "INPUT.PERFORM TIMES".
000420     ACCEPT     PERFORM-TIMES.                                            
000430     DISPLAY    "CUSTOMER LIST".                                          
000440     DISPLAY    LINE-OUT.
000450     DISPLAY    HEAD-OUT. 
000460*                                                                         
000470     PERFORM EXECUTE-INIT THRU EXEXUTE-EXIT                               
000480              PERFORM-TIMES TIMES.                  
000490*                                                   
000500     DISPLAY    LINE-OUT.
000510     DISPLAY    "END OF LIST".                                            
000520     STOP 0.                                                              
000530*****                                                                     
000540* 2 *                                                                     
000550*****                                                                     
000560 EXECUTE-INIT.                                                            
000570     DISPLAY "INPUT CUSTOMER NUMBERS"                                     
000580     ACCEPT  NO-IN.                                                       
000590     DISPLAY "INPUT CUSROMER NAME".                                       
000600     ACCEPT  NAME-IN.                                                     
000610     DISPLAY "INPUT CUSROMER CITY".                                       
000620     ACCEPT  CITY-IN.                                                     
000630     DISPLAY "INPUT CUSROMER ADDRESS".                                    
000640     ACCEPT  ADDRESS-IN.                                                  
000650     MOVE NO-IN       TO NO-OUT.                                          
000660     MOVE NAME-IN     TO NAME-OUT.                                        
000670     MOVE CITY-IN     TO CITY-OUT.                                        
000680     MOVE ADDRESS-IN  TO ADDRESS-OUT.
000690     DISPLAY LINE-OUT.
000700     DISPLAY OUTPUT-RE. 
000710 EXEXUTE-EXIT.                                                            
000720     EXIT.                                                                