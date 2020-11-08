      *****************************************************************   
      *程序ID         ：SCRSINFO                                           
      *程序名         ：学籍信息屏幕                                  
      *日期           作成者            概要                              
      *2007/03/18     张丽娟            作成                              
      *                                                                   
      *                                                                   
      *                                                                   
      *****************************************************************   
000040* 
       01 SCRSINFO.          
      *                         表头线
000090     03 LINE 02 COLUMN 01 PIC X(80) FROM WorkSrcDoubleLine.
      *                         学生基础信息
000110     03 LINE 03 COLUMN 02 VALUE          "学　号" HIGHLIGHT.     
000110     03         COLUMN 09 PIC 9(06) USING SNO     AUTO.    
000150     03 LINE 04 COLUMN 02 VALUE          "学  院" HIGHLIGHT.     
000170     03         COLUMN 09 PIC 9(06)    USING SCOLLEGIAN    AUTO.  
000110     03 LINE 05 COLUMN 02 VALUE          "姓　名" HIGHLIGHT.     
000130     03         COLUMN 09 PIC X(10) USING SNAME   AUTO. 
000150     03 LINE 06 COLUMN 02 VALUE          "性　别" HIGHLIGHT.     
000170     03         COLUMN 09 PIC X(02) USING SSEX    AUTO.  
000150     03 LINE 07 COLUMN 02 VALUE          "年  龄" HIGHLIGHT.     
000170     03         COLUMN 09 PIC 99    USING SAGE    AUTO.  
000170     03 LINE 10 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000090     03 LINE 18 COLUMN 01 PIC X(80) FROM WorkSrcDoubleLine.
000170     03 LINE 20 COLUMN 10 PIC X(70) from WKCLUE.
000170     03 LINE 21 COLUMN 30 VALUE "按回车键确认:".
000170     03         COLUMN 45 PIC x using WKTURN.


