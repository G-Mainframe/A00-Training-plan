      *****************************************************************   
      *程序ID         ：SCR13SCR                                           
      *程序名         ：学籍信息屏幕                                  
      *日期           作成者            概要                              
      *2007/03/18     张丽娟            作成                              
      *                                                                   
      *                                                                   
      *                                                                   
      *****************************************************************   
000040* 
       01 SUB13SCR.        
      *                         表头线
000090     03 LINE 02 COLUMN 01 PIC X(80) FROM WORKSRCDOUBLELINE.
      *                         学生基础信息
000150     03 LINE 04 COLUMN 20 VALUE     "请输入学院：" HIGHLIGHT.     
000170     03         COLUMN 34 PIC 9(6)  
                         USING SCOLLEGIAN OF STinfo   AUTO.  
000090     03 LINE 18 COLUMN 01 PIC X(80) FROM WORKSRCDOUBLELINE.
000170     03 LINE 20 COLUMN 10 PIC X(70) FROM WKCLUE.
000170     03 LINE 21 COLUMN 30 VALUE "按回车键确认:".
000170     03         COLUMN 45 PIC X     USING WKTURN.


