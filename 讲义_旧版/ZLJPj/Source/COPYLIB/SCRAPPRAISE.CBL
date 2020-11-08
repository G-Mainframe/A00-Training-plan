      *****************************************************************
      *程序ID         ：SCRAPPRAISE
      *程序名         ：学生成绩信息屏幕
      *日期           作成者            概要
      *2007/03/37     张丽娟            作成
      *
      *
      *
      *****************************************************************
000040*
       01 SCRAPPRAISE.
      *                         表头线
000090     03 LINE 02 COLUMN 01 PIC X(80) FROM WorkSrcDoubleLine.
      *
000110     03 LINE 03 COLUMN 02 VALUE          "奖惩序号" HIGHLIGHT.
000110     03         COLUMN 12 PIC 9(06) USING SSERIAL   AUTO.
000110     03 LINE 04 COLUMN 02 VALUE          "奖惩类别" HIGHLIGHT.
000110     03         COLUMN 12 PIC 9(01) USING SSIGN     AUTO.
000110     03 LINE 05 COLUMN 02 VALUE          "学　号"   HIGHLIGHT.
000110     03         COLUMN 12 PIC 9(06) USING SNO       AUTO.
000150     03 LINE 06 COLUMN 02 VALUE          "年  份"  HIGHLIGHT.
000170     03         COLUMN 12 PIC 9(04) USING SYEAR     AUTO.
000110     03 LINE 07 COLUMN 02 VALUE          "概要信息" HIGHLIGHT.
000130     03         COLUMN 12 PIC X(20) USING SSYNOPSIS   AUTO.
000110     03 LINE 08 COLUMN 02 VALUE          "详细描述" HIGHLIGHT.
000130     03         COLUMN 12 PIC X(60) USING SPARTICULAR   AUTO.
000170     03 LINE 10 COLUMN 01 PIC X(80) FROM WORKSRCSINGLELINE.
000090     03 LINE 18 COLUMN 01 PIC X(80) FROM WORKSRCDOUBLELINE.
000170     03 LINE 20 COLUMN 10 PIC X(70) FROM WKCLUE.
000170     03 LINE 21 COLUMN 30 VALUE "按回车键确认:".
000170     03         COLUMN 45 PIC X USING WKTURN.


