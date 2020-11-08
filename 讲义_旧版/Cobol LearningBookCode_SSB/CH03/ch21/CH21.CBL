000010 IDENTIFICATION DIVISION.                         
000020 PROGRAM-ID. CH21.                                 
000030 ENVIRONMENT DIVISION.                            
000040 DATA DIVISION.                                   
000050 WORKING-STORAGE SECTION.                         
000060 77 LINE-OUT PIC X(78) VALUE ALL "-".              
000070 01 INPUT-RE.
000080     03 NO-IN       PIC 9(5).                  
000090     03 NAME-IN     PIC X(20).                    
000100     03 CITY-IN     PIC X(20).                    
000110     03 ADDRESS-IN  PIC X(20).                    
000120 01 OUTPUT-RE.
000130     03 FILLER            PIC X(2) VALUE "|".
000140     03 NO-OUT            PIC 9(5).
000150     03 FILLER            PIC X(3) VALUE "|".
000160     03 NAME-OUT          PIC X(20).
000170     03 FILLER            PIC X(3) VALUE "|".
000180     03 CITY-OUT          PIC X(20).
000190     03 FILLER            PIC X(3) VALUE "|".
000200     03 ADDRESS-OUT       PIC X(20).
000210     03 FILLER            PIC X(2) VALUE "|".
000220 PROCEDURE DIVISION.                              
000230 BEGIN.                                           
000240     DISPLAY "CUSTOMER LIST".
000250     ACCEPT INPUT-RE.                               
000260     MOVE NO-IN    TO NO-OUT.                 
000270     MOVE NAME-IN  TO NAME-OUT.              
000280     MOVE CITY-IN  TO CITY-OUT.
000290     MOVE ADDRESS-IN TO ADDRESS-OUT.
000300     DISPLAY LINE-OUT.
000310     DISPLAY OUTPUT-RE.
000320     DISPLAY LINE-OUT.
000330     DISPLAY  "END LIST".                          
000340     STOP 6.                                    