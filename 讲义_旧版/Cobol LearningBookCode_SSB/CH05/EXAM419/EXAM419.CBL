000010 IDENTIFICATION                  DIVISION.                       
000020 PROGRAM-ID.                     SAMPLE6-4.                      
000030*                                                                
000040*****************************************************************
000050*  THIS PROGRAM IS A TEST PROGRAM                               *
000060*****************************************************************
000150*                                                                
000200 ENVIRONMENT                     DIVISION.                       
000210 CONFIGURATION                   SECTION.                        
000220 SOURCE-COMPUTER.                TUTU.                           
000230 OBJECT-COMPUTER.                TUTU.                           
000240 SPECIAL-NAMES.                  SYSOUT IS OUT.                  
000250                                                                 
000260 INPUT-OUTPUT                    SECTION.                        
000270 FILE-CONTROL.                                                   
000280*                                                                
000290 DATA                            DIVISION.                       
000300 FILE                            SECTION.                        
000310                                                                 
000320 WORKING-STORAGE                 SECTION.                        
000330 01  WORK-DATA-AREA.                                             
000390     02  N  PIC 99.                                           
000400     02  A  PIC 99.   
000410     02  RESULT PIC 9(2). 
000671*                                                                
000910 PROCEDURE   DIVISION.                                           
000920*****************************************************************
000930*                                                               *
000940*==========================< START PROCEDURE >==================*
000950*                                                               *
000960*****************************************************************
000970*                                                                
000980 START-PRG.                                                      
000990*                                                                
001000     DISPLAY  "*****************************"  UPON  OUT.        
001010     DISPLAY  "***    SAMPLE6-4   START  ***"  UPON  OUT.        
001020     DISPLAY  "*****************************"  UPON  OUT.        
001030*                                                                
001040     PERFORM  A-INIT-RTN       THRU  A-INIT-EXIT.                
001050*                                                                
001060 MAIN-PRG.                                                       
001070*                                                                
001071     MOVE     1                TO    N.
001072     MOVE     1                TO    A.       
001080     PERFORM  B-MAIN-RTN       THRU  B-MAIN-EXIT                 
001090              VARYING N FROM 1 BY 1
001091                UNTIL N IS GREATER THAN 9
001092              AFTER   A FROM 1 BY 1
001093                UNTIL A IS GREATER THAN 9.                       
001100*                                                                
001110 END-PRG.                                                        
001120*                                                                
001130     PERFORM  C-END-RTN        THRU  C-END-EXIT.                 
001140*                                                                
001150     DISPLAY  "*****************************"  UPON  OUT.        
001160     DISPLAY  "***    SAMPLE6-4   END    ***"  UPON  OUT.        
001170     DISPLAY  "*****************************"  UPON  OUT.        
001180*                                                                
001190     STOP     RUN.                                               
001200*                                                                
001210*****************************************************************
001220*                                                               *
001230*====================< INITIALIZE PROCEDUR >====================*
001240*                                                               *
001250*****************************************************************
001260 A-INIT-RTN.                                                     
001270*                                                                
001280     DISPLAY  "*--------------------*"  UPON  OUT.               
001290     DISPLAY  "*-----A-INIT-RTN-----*"  UPON  OUT.               
001300     DISPLAY  "*--------------------*"  UPON  OUT.               
001310*                                                                
001320    INITIALIZE  WORK-DATA-AREA.                                  
001350*                                                                 
001530     DISPLAY  "*--------------------*"  UPON  OUT.               
001610     DISPLAY  "*-----A-INIT-EXIT----*"  UPON  OUT.               
001620     DISPLAY  "*--------------------*"  UPON  OUT.               
001630*                                                                
001640 A-INIT-EXIT.                                                    
001650     EXIT.                                                       
001660*                                                                
001670*****************************************************************
001680*                                                               *
001690*=========================< MAIN       >========================*
001700*                                                               *
001710*****************************************************************
001720 B-MAIN-RTN.                                                     
001730*                                                                
001740     DISPLAY  "*--------------------*"  UPON  OUT.               
001750     DISPLAY  "*-----B-MAIN-RTN-----*"  UPON  OUT.               
001760     DISPLAY  "*--------------------*"  UPON  OUT.               
001770*    
           IF   A IS NOT LESS THAN     N                         
001771       MULTIPLY A         BY       N GIVING RESULT
001781       DISPLAY A , "  * " , N " = " , RESULT UPON OUT.
                
           
001830*                                                                
001880D    DISPLAY  "*--------------------*"  UPON  OUT.               
001890D    DISPLAY  "*-----B-MAIN-EXIT----*"  UPON  OUT.               
001900D    DISPLAY  "*--------------------*"  UPON  OUT.               
001910*                                                                
001920 B-MAIN-EXIT.                                                    
001930     EXIT.                                                       
001940*                                                                
001950*****************************************************************
001960*                                                               *
001970*===========================< END      >========================*
001980*                                                               *
001990*****************************************************************
002000 C-END-RTN.                                                      
002010*                                                                
002020     DISPLAY  "*-------------------*"  UPON  OUT.                
002030     DISPLAY  "*-----C-END-RTN-----*"  UPON  OUT.                
002040     DISPLAY  "*-------------------*"  UPON  OUT.                
002050*                                                                
002060      INITIALIZE  WORK-DATA-AREA.                                 
002330*                                                                
002340     DISPLAY  "*-------------------*"  UPON  OUT.                
002350     DISPLAY  "*-----C-END-EXIT----*"  UPON  OUT.                
002360     DISPLAY  "*-------------------*"  UPON  OUT.                
002370*                                                                
002380 C-END-EXIT.                                                     
002390     EXIT.                                                       
002400*                                                                