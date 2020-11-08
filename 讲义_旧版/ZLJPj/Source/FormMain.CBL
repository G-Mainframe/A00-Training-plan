000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  FormMain.
      *****************************************************************
      *程序ID         ：FormMain
      *程序名         ：欢迎画面
      *处理概要       ：学生学籍信息管理系统入口
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
000040 DATA                                         DIVISION.
000050 WORKING-STORAGE                              SECTION.
000060 01 HELLO PIC X .
000070 SCREEN SECTION.
000080 01 WELCOME-PAGE.
000090     03 BLANK SCREEN.
000110     03 LINE  6 COLUMN 30 VALUE "COBOL 毕业设计(演示版)".
000110     03 LINE  7 COLUMN 38 VALUE "欢迎使用".
000110     03 LINE  9 COLUMN 34 VALUE "设计者：张丽娟".
000110     03 LINE 10 COLUMN 34 VALUE "日期：2007年3月".
           03 LINE 16 COLUMN 30 VALUE "按任意键进入系统:".
           03 LINE 16 COLUMN 50 PIC X TO HELLO AUTO.
000120 PROCEDURE                                    DIVISION.
000130 MAIN-PROCESS                                 SECTION.
000140     DISPLAY WELCOME-PAGE.
000161     ACCEPT  WELCOME-PAGE.
000170 END-PROGRAM.
000180     EXIT PROGRAM .
