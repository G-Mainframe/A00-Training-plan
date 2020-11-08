000010 IDENTIFICATION                  DIVISION.                       
000020 PROGRAM-ID.                     MYTEST.                        
000030*                                                                
000190*                                                                
000200 ENVIRONMENT                     DIVISION.                       
000210 CONFIGURATION                   SECTION.                        
000220 SOURCE-COMPUTER.                E5800.                          
000230 OBJECT-COMPUTER.                E5800.                          
000240 SPECIAL-NAMES.                  SYSOUT IS OUT.                  
000250                                                                 
000260 INPUT-OUTPUT                    SECTION.                        
000270 FILE-CONTROL.                                                   
000280*                                                                
000290     SELECT  OUT-F1 ASSIGN TO OUT-MSD                            
000300                    FILE STATUS SYS-FILE-STATUS.                 
000310*                                                                
000320 DATA                            DIVISION.                       
000330 FILE                            SECTION.                        
000340*                                                                
000350 FD   OUT-F1                                                     
000360     LABEL RECORD IS STANDARD                                    
000370     VALUE OF IDENTIFICATION IS "MYTEST0915".                     
000380*    出力ファイル1   抽出データ                                   
000390     COPY IIT14.                                           
000410                                                                 
000420 WORKING-STORAGE                 SECTION.                        
000430*-------------------< システム標準ワークエリア >-----------------
000440**** 以下必須*********                                           
000450                                                                 
000460 01  SYS-FILE-STATUS  PIC X(02).                                  
000470                                                                 
000480*----ORACLE接続文字列----*                                       
000490 01  WK-PRM.                                                     
000500     03 WK-PRM1                  USAGE COMP-2.                   
000510     03 WK-PRM2                  PIC  X(256).                    
000530 01  CONNECTID                   PIC  X(045).                    
000540                                                                 
000550 01  ERROR-AREA.                                                 
000560     02  ERROR-DBNAME            PIC  X(040)  VALUE  SPACE.      
000570     02  ERROR-FILENAME          PIC  X(040)  VALUE  SPACE.      
000580     02  ERROR-MSG               PIC  X(060)  VALUE  SPACE.      
000590*                                                                
000600*---------------< ユーザーコーディングワークエリア >-------------
000610                                                                 
000620**** スイッチの定義                                              
000670 01  WORK-SWITCH-AREA.                                           
000680     02  SW-INP1-END             PIC  9(001)  VALUE  ZERO.       
000691     02  SW-INP2-END             PIC  9(001)  VALUE  ZERO.       
000700**** その他のＷＯＲＫ変数の定義                                  
000710 01  WORK-DATA-AREA.                                             
000720     02  WK-KENSU-Z6             PIC  ZZZ,ZZ9.                    
000730     02  WK-SYSYMD               PIC  X(008).                    
000750     02  WK-SYSTIME              PIC  X(006).                    
000760     02  WK-TEST-93              PIC  9(003).
000770     02  WK-TEST-92              PIC  9(002).
000820                                                                 
000830**** 計算用変数の定義                                            
000840 01  WORK-KEISAN-AREA.                                           
000850     02  CAL-INP1-CNT            PIC  9(006)  VALUE  ZERO.       
000851     02  CAL-OUT1-CNT            PIC  9(006)  VALUE  ZERO.       
000852     02  CAL-OUT2-CNT            PIC  9(006)  VALUE  ZERO.       
000860                                                                 
000980*                                                                
000990 PROCEDURE   DIVISION.                                           
001000*****************************************************************
001010*                                                               *
001020*==========================< 主処理 >===========================*
001030*                                                               *
001040*****************************************************************
001050*                                                                
001060 START-PRG.                                                      
001070*                                                                
001080     DISPLAY  "*****************************"  UPON  OUT.        
001090     DISPLAY  "***    QGB5010   START    ***"  UPON  OUT.        
001100     DISPLAY  "*****************************"  UPON  OUT.        
001110*                                                                
001120     PERFORM  A-INIT-RTN       THRU  A-INIT-EXIT.                
001130*                                                                
001140 MAIN-PRG.                                                       
001150*                                                                
001160     PERFORM  B-MAIN-RTN       THRU  B-MAIN-EXIT.                 
001180*                                                                
001190 END-PRG.                                                        
001200*                                                                
001210     PERFORM  C-END-RTN        THRU  C-END-EXIT.                 
001220*                                                                
001230     DISPLAY  "*****************************"  UPON  OUT.        
001240     DISPLAY  "***    QGB5010    END     ***"  UPON  OUT.        
001250     DISPLAY  "*****************************"  UPON  OUT.        
001260*                                                                
001270     STOP     RUN.                                               
001280*                                                                
001290*****************************************************************
001300*                                                               *
001310*========================< 初期処理 >===========================*
001320*                                                               *
001330*****************************************************************
001340 A-INIT-RTN.                                                     
001350*                                                                
001360D    DISPLAY  "*--------------------*"  UPON  OUT.               
001370D    DISPLAY  "*-----A-INIT-RTN-----*"  UPON  OUT.               
001380D    DISPLAY  "*--------------------*"  UPON  OUT.               
001390*                                                                
001400*    初期化                                                      
001410     INITIALIZE  ERROR-AREA  WORK-SWITCH-AREA.                   
001420     INITIALIZE  WORK-DATA-AREA  WK-PRM  CONNECTID.              
001430                                                                 
001600     MOVE  97    TO  WK-TEST-93.
001610*    MOVE  WK-TEST-93 TO WK-TEST-92.                            
001620     
001630                                                                 
001750*    抽出データファイル1をOPEN                                    
001760     OPEN     OUTPUT         OUT-F1.                             
001770     IF  SYS-FILE-STATUS      NOT =  "00"                        
001781         MOVE  "OUT1"      TO  ERROR-FILENAME              
001790         PERFORM  Z-ERR-RTN      THRU  Z-ERR-EXIT              
001800     END-IF.                                                     
002050                                                                 
002060*                                                                
002070D    DISPLAY  "*--------------------*"  UPON  OUT.               
002080D    DISPLAY  "*-----A-INIT-EXIT----*"  UPON  OUT.               
002090D    DISPLAY  "*--------------------*"  UPON  OUT.               
002100*                                                                
002110 A-INIT-EXIT.                                                    
002120     EXIT.                                                       
002130*                                                                
002140*****************************************************************
002150*                                                               *
002160*=========================< メイン処理 >========================*
002170*                                                               *
002180*****************************************************************
002190 B-MAIN-RTN.                                                     
002200*                                                                
002210D    DISPLAY  "*--------------------*"  UPON  OUT.               
002220D    DISPLAY  "*-----B-MAIN-RTN-----*"  UPON  OUT.               
002230D    DISPLAY  "*--------------------*"  UPON  OUT.              
       
           MOVE ALL "1" TO IIT14-R.
           WRITE IIT14-R.
                                                 
           IF  SYS-FILE-STATUS  NOT =  "00"                        
                   MOVE  "OUT1"      TO  ERROR-FILENAME           
                   PERFORM  Z-ERR-RTN      THRU  Z-ERR-EXIT             
           END-IF .                                                
002370                                                                 
002380*                                                                
002390D    DISPLAY  "*--------------------*"  UPON  OUT.               
002400D    DISPLAY  "*-----B-MAIN-EXIT----*"  UPON  OUT.               
002410D    DISPLAY  "*--------------------*"  UPON  OUT.               
002420*                                                                
002430 B-MAIN-EXIT.                                                    
002440     EXIT.                                                       
002450*                                                                
002460*****************************************************************
002470*                                                               *
002480*===========================< 終了処理 >========================*
002490*                                                               *
002500*****************************************************************
002510 C-END-RTN.                                                      
002520*                                                                
002530D    DISPLAY  "*-------------------*"  UPON  OUT.                
002540D    DISPLAY  "*-----C-END-RTN-----*"  UPON  OUT.                
002550D    DISPLAY  "*-------------------*"  UPON  OUT.                
002560*                                                                
002570*    OUT1 FILE CLOSE                                              
002580     CLOSE   OUT-F1.                                             
002590     IF  SYS-FILE-STATUS      NOT =  "00"                        
002600         MOVE  "OUT1"      TO  ERROR-FILENAME              
002611         PERFORM  Z-ERR-RTN      THRU  Z-ERR-EXIT              
002620     END-IF.                                                     
002930*                                                                
002940D    DISPLAY  "*-------------------*"  UPON  OUT.                
002950D    DISPLAY  "*-----C-END-EXIT----*"  UPON  OUT.                
002960D    DISPLAY  "*-------------------*"  UPON  OUT.                
002970*                                                                
002980 C-END-EXIT.                                                     
002990     EXIT.                                                       
003000*                                                                
004730*****************************************************************
004740*                      エラーサブルーディン                     *
004750*                          Z-ERR-RTN                            *
004760*****************************************************************
004770 Z-ERR-RTN.                                                      
004780*                                                                
004790D    DISPLAY  "*-------------------*"  UPON  OUT.                
004800D    DISPLAY  "*-----Z-ERR-RTN-----*"  UPON  OUT.                
004810D    DISPLAY  "*-------------------*"  UPON  OUT.                
004820*                                                                
004830     IF  ERROR-MSG  =  SPACE                                     
004840         IF  ERROR-DBNAME  =  SPACE                              
004850*            ファイルエラー                                      
004860             STRING  ERROR-FILENAME    "失敗"       
004870                     DELIMITED  BY  SPACE  INTO  ERROR-MSG       
004880             DISPLAY  "* ERROR! "  ERROR-MSG  UPON  OUT          
004890             DISPLAY  "* FILE-STATUS = " SYS-FILE-STATUS UPON OUT
004900         ELSE                                                    
004910*            データベースエラー                                  
004920             STRING  ERROR-DBNAME    "失敗"           
004930                     DELIMITED  BY  SPACE  INTO  ERROR-MSG       
004940             DISPLAY  "* ERROR! "  ERROR-MSG  UPON  OUT          
004990         END-IF                                                  
005000     ELSE                                                        
005010*        その他エラー                                            
005020         DISPLAY  "* ERROR! "  ERROR-MSG  UPON  OUT              
005030     END-IF.                                                     
005040     DISPLAY  "* 異常終了！！！"  UPON  OUT.                     
005050                                                                 
005060     MOVE  1                     TO  COMPLETION-CODE.            
005070*                                                                
005080D    DISPLAY  "*-------------------*"  UPON  OUT.                
005090D    DISPLAY  "*-----Z-ERR-EXIT----*"  UPON  OUT.                
005100D    DISPLAY  "*-------------------*"  UPON  OUT.                
005110*                                                                
005120     STOP     RUN.                                               
005130*                                                                
005140 Z-ERR-EXIT.                                                     
005150     EXIT.                                                       
005160*                                                                