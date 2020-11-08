000010 IDENTIFICATION DIVISION.                            
000020 PROGRAM-ID.  FormStop.                               
      *****************************************************************
      *程序ID         ：FormStop
      *程序名         ：退出画面
      *处理概要       ：退出画面
      *
      *
      *变量           IO       变量名
      *
      *
      *
      *日期           作成者            概要
      *2007/03/18     张丽娟            作成
      *
      *
      *
      *****************************************************************
      *
000030 ENVIRONMENT                                  DIVISION.                               
000040 DATA DIVISION.                                      
000050 WORKING-STORAGE SECTION.                            
000060 01 ByeBye PIC X .
000070 SCREEN SECTION.                                     
000080 01 WELCOME-PAGE.                                    
000090     03 BLANK SCREEN.                                
000100     03 TITLE-LINE.                                  
000110         05 LINE  6 COLUMN 30 VALUE "COBOL毕业设计(演示版)".
000111         05 LINE  7 COLUMN 35 VALUE "感谢使用".
000110     03     LINE  9 COLUMN 30 VALUE "设计者：张丽娟".
000110     03     LINE 10 COLUMN 30 VALUE "日期：2007年3月".
           03     LINE 16 COLUMN 30 VALUE "按任意键退出系统:".
           03     LINE 16 COLUMN 50 PIC X TO ByeBye AUTO.
000120 PROCEDURE DIVISION.                                 
000130 MAIN-PROCESS.                                       
000140     DISPLAY WELCOME-PAGE.                           
000161     ACCEPT  WELCOME-PAGE.                                  
000170 END-PROGRAM.                                        
000180     EXIT PROGRAM .                                  
