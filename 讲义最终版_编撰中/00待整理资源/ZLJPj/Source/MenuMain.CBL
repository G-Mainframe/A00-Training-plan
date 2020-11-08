000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  Menu_Main.
000030*****************************************************************
000040*程序ID         ：Menu_Main
000050*程序名         ：主选择菜单
000060*处理概要       ：主选择菜单
000070*
000080*
000090*变量           IO       变量名
000100*
000110*
000120*
000130*日期           作成者            概要
000140*2007/03/18     张丽娟            作成
000150*
000160*
000170*
000180*****************************************************************
000190*
000200 ENVIRONMENT                                  DIVISION.
000210 DATA                                         DIVISION.
000220 WORKING-STORAGE                              SECTION.
000230 01 ERROR-CD  PIC 9(4).
000240 01 LinkSqlCode                   PIC S9(9) VALUE 0.
000250 LINKAGE                                      SECTION.
000260 01 MenuNO   PIC 99.
000270 SCREEN                                       SECTION.
000280 COPY SCRHead.
000290 01 MenuMainSCR.
000300     03 LINE 5  COLUMN  5 VALUE "学籍管理" HIGHLIGHT.
000310     03         COLUMN 30 VALUE "成绩管理" HIGHLIGHT.
000320     03         COLUMN 55 VALUE "奖惩管理" HIGHLIGHT.
000330     03 LINE 7  COLUMN  5 VALUE "11 新增学生".
000340     03         COLUMN 30 VALUE "21 成绩录入".
000350     03         COLUMN 55 VALUE "31 奖惩录入".
000360     03 LINE 9  COLUMN  5 VALUE "12 查询修改".
000370     03         COLUMN 30 VALUE "22 查询修改".
000380     03         COLUMN 55 VALUE "32 奖惩修改".
000390     03 LINE 11 COLUMN  5 VALUE "13 统计报表".
000400     03         COLUMN 30 VALUE "23 统计报表".
000410     03         COLUMN 55 VALUE "33 统计报表".
000420     03 LINE 18 COLUMN  5
000430         VALUE "请输入菜单选项编号，退出输入0,按回车键确认".
000440     03 MenuNO-A LINE 18 COLUMN  50   PIC XX TO MenuNO .
000450 PROCEDURE DIVISION USING MenuNO.
000460 MAIN-PROCESS.
000470*    Oracle连接
000480     CALL  "OracleLink" using LinkSqlCode.
000490     IF LinkSqlCode = 0
000500     THEN
000510         DISPLAY  SCRhead
000520         DISPLAY  MenuMainSCR
000530         ACCEPT MenuNO-A
000540         IF MenuNO IS NUMERIC
000550         THEN
000560             CONTINUE
000570         ELSE
000580             MOVE 1 TO ERROR-CD
000590*             CALL "ErrorMsg" USING ERROR-CD
000600             GO TO MAIN-PROCESS
000610         END-IF
000620     ELSE
000630         CONTINUE
000640     END-IF.
000650 END-PROGRAM.
000660     EXIT PROGRAM .
