      *****************************************************************   
      *程序ID         ：Sub11SCR                                             
      *程序名         ：学籍信息录入屏幕                                  
      *日期           作成者            概要                              
      *2007/03/18     张丽娟            作成                              
      *                                                                   
      *                                                                   
      *                                                                   
      *****************************************************************   
000040* 
       01 Sub11SCR.          
      *       表头线
000090     03 LINE 02 COLUMN 01 PIC X(80) FROM WorkSrcDoubleLine.
000100     03 LINE 03 COLUMN 01 VALUE "|".
000110     03         COLUMN 02 VALUE "学 号" HIGHLIGHT.     
000110     03         COLUMN 09 PIC 9(6) USING SNO AUTO.    
000110     03         COLUMN 15 VALUE "姓 名" HIGHLIGHT.     
000120     03         COLUMN 21 VALUE "|" .                   
000130     03         COLUMN 22 PIC X(10)  USING SName AUTO. 
000140     03         COLUMN 32 VALUE "|" .                  
000150     03         COLUMN 33 VALUE "性 别" HIGHLIGHT.     
000160     03         COLUMN 39 VALUE "|" .                  
000170     03         COLUMN 40 PIC X(2)   USING SSex AUTO.  
000170     03         COLUMN 43 VALUE "|" .                  
000150     03         COLUMN 44 VALUE "年 龄" HIGHLIGHT.     
000160     03         COLUMN 50 VALUE "|" .                  
000170     03         COLUMN 51 PIC 99     USING SAge AUTO.  
000170     03         COLUMN 54 VALUE "|" .                  
000170     03         COLUMN 80 VALUE "|" .                  
000170     03 LINE 04 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 05 COLUMN 01 VALUE "|" .
000170     03 LINE 05 COLUMN 80 VALUE "|" .
000170     03 LINE 06 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 07 COLUMN 01 VALUE "|" .
000170     03 LINE 07 COLUMN 80 VALUE "|" .
000170     03 LINE 08 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 09 COLUMN 01 VALUE "|" .
000170     03 LINE 09 COLUMN 80 VALUE "|" .
000170     03 LINE 10 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 11 COLUMN 01 VALUE "|" .
000170     03 LINE 11 COLUMN 80 VALUE "|" .
000170     03 LINE 12 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 13 COLUMN 01 VALUE "|" .
000170     03 LINE 13 COLUMN 80 VALUE "|" .
000170     03 LINE 14 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 15 COLUMN 01 VALUE "|" .
000170     03 LINE 15 COLUMN 80 VALUE "|" .
000170     03 LINE 16 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 17 COLUMN 01 VALUE "|" .
000170     03 LINE 17 COLUMN 80 VALUE "|" .
000170     03 LINE 18 COLUMN 01 PIC X(80) FROM WorkSrcSingleLine.
000170     03 LINE 19 COLUMN 01 VALUE "|" .
000170     03 LINE 19 COLUMN 80 VALUE "|" .
000090     03 LINE 20 COLUMN 01 PIC X(80) FROM WorkSrcDoubleLine.
