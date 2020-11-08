      *****************************************************************   
      *程序ID         ：Sub13SCU                                            
      *程序名         ：学籍信息更新屏幕                                  
      *日期           作成者            概要                              
      *2007/03/18     张丽娟            作成                              
      *                                                                   
      *                                                                   
      *                                                                   
      *****************************************************************   
000040* 
       01 Sub11SCU.          
      *       表头线
000090     03 LINE 02 COLUMN 01 PIC X(80) FROM WorkSrcDoubleLine.
000100     03 LINE 03 COLUMN 01 VALUE "|".
000110     03 LINE 03 COLUMN 02 VALUE "姓 名" HIGHLIGHT.
000120     03 LINE 03 COLUMN 9 VALUE "|" .
      *       姓名
000130     03 LINE 03 COLUMN 10 PIC X(10)  USING SName AUTO.
000140     03 LINE 03 COLUMN 22 VALUE "|" .
000150     03 LINE 03 COLUMN 24 VALUE "性 别" HIGHLIGHT.
000160     03 LINE 03 COLUMN 30 VALUE "|" .
000170     03 LINE 03 COLUMN 32 PIC X(2)   USING SSex AUTO.
000170     03 LINE 03 COLUMN 35 VALUE "|" .
000150     03 LINE 03 COLUMN 37 VALUE "年 龄" HIGHLIGHT.
000160     03 LINE 03 COLUMN 44 VALUE "|" .
000170     03 LINE 03 COLUMN 48 PIC 99     USING SAge AUTO.
000170     03 LINE 03 COLUMN 52 VALUE "|" .
000170     03 LINE 03 COLUMN 80 VALUE "|" .
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
