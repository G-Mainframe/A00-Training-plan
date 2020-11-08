      *****************************************************************
      *程序ID         ：WKAREA
      *程序名         ：程序变量
      *
      *日期           作成者            概要
      *2007/04/12     张丽娟            作成
      *
      *****************************************************************
       01 WKAREA.
           03 WKCLUE                    PIC X(70).
           03 WKTURN                    PIC X.
           03 WORKKEY                   PIC 99.
           03 FLAG.
               05 DataChackFlag         PIC 9  VALUE 0.
      *        错误信息处理
           03 FILESTATE                 PIC  X(02).
       COPY ERRORKEY.