      *****************************************************************
      *程序ID         ：SUB23
      *程序名         ：生成学生成绩报表
      *处理概要       ：根据输入的学号生成该学号的学生报表
      *
      *
      *变量           IO       变量名
      *
      *
      *
      *日期           作成者             概要
      *2007/04/03     张丽娟             作成
      *
      *****************************************************************

000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  School.
000030 ENVIRONMENT                                  DIVISION.
000040 DATA                                         DIVISION.
000050 WORKING-STORAGE SECTION.
000060 01 CallCount PIC 99 VALUE 0.
000070 01 MenuNO    PIC 99 VALUE 99.
000080 PROCEDURE                                    DIVISION.
000090 MAIN-PROCESS                                 SECTION.
      *    欢迎画面
000100     CALL "FormMain".
      *    进行功能选择
000110     PERFORM UNTIL MenuNO = 0
      *        功能菜单画面
000120         CALL "Menu_Main" USING MenuNO
000130         EVALUATE MenuNo
000140             WHEN 11
000150               CALL "Sub11"
000160               CONTINUE
000170             WHEN 12
000180               CALL "Sub12"
000190               CONTINUE
000200             WHEN 13
000210               CALL "Sub13"
000220               CONTINUE
000230             WHEN 21
000240               CALL "Sub21"
000250               CONTINUE
000260             WHEN 22
000270               CALL "Sub22"
000280               CONTINUE
000290             WHEN 23
000300               CALL "Sub23"
000310               CONTINUE
000320             WHEN 31
000330               CALL "Sub31"
000340               CONTINUE
000350             WHEN 32
000360               CALL "Sub32"
000370               CONTINUE
000380             WHEN 33
000390               CALL "Sub33"
000400               CONTINUE
000410             WHEN OTHER
000420               MOVE 0 TO MenuNO
000430               CONTINUE
000440         END-EVALUATE
000450     END-PERFORM.
      *    退出画面
000451     Call "FormStop".
000460 MAIN-PROCESS-EXIT.
000470     STOP RUN.
000480 END PROGRAM School.
