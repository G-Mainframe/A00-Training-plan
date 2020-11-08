000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  SUB33.
      *****************************************************************
      *程序ID         ：SUB33
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
      *
      *****************************************************************
      * 环境部
      *****************************************************************
000030 ENVIRONMENT                                  DIVISION.
       INPUT-OUTPUT                                 SECTION.
       FILE-CONTROL.
      *    报表文件
           SELECT     STR      ASSIGN    TO   R33
               FILE STATUS IS STR-STATUS
               ORGANIZATION         IS          LINE      SEQUENTIAL.

      *****************************************************************
      * 数据部
      *****************************************************************
000040 DATA                                         DIVISION.
       FILE                                         SECTION.
      *
       FD  STR
           LABEL     RECORD     IS          STANDARD
           BLOCK     CONTAINS   0           RECORDS.
       01  STR-RC.
           03 STRNO                     PIC  9(06).
           03 FILLER                    PIC  X(03).
           03 STRYEAR                   PIC  9(04).
           03 FILLER                    PIC  X(03).
000040     03 STRSYNOPSIS               PIC  X(20).
           03 FILLER                    PIC  X(03).
000040     03 STRPARTICULAR             PIC  X(60).
           03 FILLER                    PIC  X(03).
000040     03 STRSIGN                   PIC  9.
           03 FILLER                    PIC  X(03).
000040     03 STRSERIAL                 PIC  9(05).
      *
000050 WORKING-STORAGE                              SECTION.
      *----------------------------------------------------------------
      *    数据库用数据定义
      *----------------------------------------------------------------
000051     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +9.
           02  SQLFPN-FILENAME PIC X(9) VALUE "SUB33.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(62) VALUE "select count(*)    into :b1  from
      -    " STUDENTAPPRAISE where NO=:b2".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +39701.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +6.
           02  SQL-ITERS    PIC S9(9) COMP-5.
           02  SQL-OFFSET   PIC S9(9) COMP-5.
           02  SQL-SELERR   PIC S9(4) COMP-5.
           02  SQL-SQLETY   PIC S9(4) COMP-5.
           02  SQL-OCCURS   PIC S9(9) COMP-5.
           02  SQL-CUD      PIC S9(9) COMP-5.
           02  SQL-SQLEST   PIC S9(9) COMP-5.
           02  SQL-STMT     PIC S9(9) COMP-5.
           02  SQL-SQLADTP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQLTDSP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQPHSV   PIC S9(9) COMP-5.
           02  SQL-SQPHSL   PIC S9(9) COMP-5.
           02  SQL-SQPHSS   PIC S9(9) COMP-5.
           02  SQL-SQPIND   PIC S9(9) COMP-5.
           02  SQL-SQPINS   PIC S9(9) COMP-5.
           02  SQL-SQPARM   PIC S9(9) COMP-5.
           02  SQL-SQPARC   PIC S9(9) COMP-5.
           02  SQL-SQPADTO  PIC S9(9) COMP-5.
           02  SQL-SQPTDSO  PIC S9(9) COMP-5.
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 6 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 6 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(103) VALUE "select NO  ,YEAR  ,SYNOPSIS  ,PA
      -    "RTICULAR  ,SIGN  ,SERIAL   from STUDENTAPPRAISE where NO=:b1
      -    "           ".

       01  SQL-RUNTIME-VARS.
           02  SQL-IAPXIT-SUCCESS  PIC S9(9) COMP-5 VALUE    +0.
           02  SQL-IAPXIT-FAILURE  PIC S9(9) COMP-5 VALUE +1403.
           02  SQL-IAPXIT-FATALERR PIC S9(9) COMP-5 VALUE  +535.

       01  SQLCUD GLOBAL.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +4192.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +62.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +282.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +28.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +103.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +382.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +47.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +407.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +86.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +468.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION END-EXEC.
      *    ORACLE 共通函数
000052     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL           END-EXEC.
      *    ORACLE SQL实行情报
000010*  
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000055     
      *    EXEC  SQL  INCLUDE  SQLCA.CBL            END-EXEC.
      *    学生信息表
      ***************************************************************** 
      *                                                               * 
      *               S  Q  L  C  A                                   * 
      *  (This file in ANSI format.  Do NOT bse it).                  * 
      *                                                               * 
      * MODIFIED                                                      * 
      *   Clare      12/06/84 - Ch SQLCA to not be an EXTERNAL.       * 
      ***************************************************************** 
       01  SQLCA.                                                       
           05  SQLCAID               PIC X(8).                          
           05  SQLCABC               PIC S9(9) COMPUTATIONAL.           
           05  SQLCODE               PIC S9(9) COMPUTATIONAL.           
           05  SQLERRM.                                                 
               49 SQLERRML           PIC S9(4) COMPUTATIONAL.           
               49 SQLERRMC           PIC X(70).                         
           05  SQLERRP               PIC X(8).                          
           05  SQLERRD OCCURS 6 TIMES                                   
                                     PIC S9(9) COMPUTATIONAL.           
           05  SQLWARN.                                                 
               10 SQLWARN0           PIC X(1).                          
               10 SQLWARN1           PIC X(1).                          
               10 SQLWARN2           PIC X(1).                          
               10 SQLWARN3           PIC X(1).                          
               10 SQLWARN4           PIC X(1).                          
               10 SQLWARN5           PIC X(1).                          
               10 SQLWARN6           PIC X(1).                          
               10 SQLWARN7           PIC X(1).                          
           05  SQLEXT                PIC X(8).                          
      *    EXEC  SQL  INCLUDE  STAPPRAISE.CBL       END-EXEC.
      *
      *****************************************************************
      *程序ID         ：STAPPRAISE
      *程序名         ：学生奖惩信息
      *
      *日期           作成者            概要
      *2007/04/10     张丽娟            作成
      *
      *****************************************************************
000040 01 STAPPRAISE.
           03 SNO                                      PIC  9(06).
           03 SYEAR                                   PIC  9(04).
           03 SSYNOPSIS                            PIC  X(20).
           03 SPARTICULAR                        PIC  X(60).
000040     03 SSIGN                               PIC  9.
           03 SSERIAL                                PIC  9(05).
      *    EXEC  SQL  INCLUDE  SQLWK.CBL            END-EXEC.
      *
000010*****************************************************************
000020*SQL WORK AREA
000030*****************************************************************
000040 01 SQLWORKAREA.
           03 SQLSTUDENTINFO.
               05 SQLSNO                 PIC  9(06).
           03 SQLCOUNT                   PIC 9(4).
000056     
      *    EXEC  SQL  END    DECLARE        SECTION END-EXEC.
      *----------------------------------------------------------------
      *WORKAREA
      *----------------------------------------------------------------
      *屏幕线型定义
       COPY WKSCRLINE.
      *文件状态
       01 STR-STATUS                    PIC X(02).
      *
      *----------------------------------------------------------------
      *WORK变量
      *----------------------------------------------------------------
       COPY WKAREA.

       01  STR-N-RC.
           03 STRNNO                    PIC  X(06)  VALUE " 学号 ".
           03 FILLER                    PIC  X(03).
           03 STRNYEAR                  PIC  X(04)  VALUE "年度".
           03 FILLER                    PIC  X(03).
000040     03 STRNSYNOPSIS              PIC  X(20)  VALUE "    概要  ".
           03 FILLER                    PIC  X(03).
000040     03 STRNPARTICULAR            PIC  X(60) VALUE "  详细描述  ".
           03 FILLER                    PIC  X(02).
000040     03 STRNSIGN                  PIC  X(04)  VALUE "类别".
           03 FILLER                    PIC  X(01).
000040     03 STRNSERIAL                PIC  X(05)  VALUE " 序号".
      *
      *----------------------------------------------------------------
      *    SUB
      *----------------------------------------------------------------


      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
      *----------------------------------------------------------------
000070 LINKAGE                                      SECTION.
      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
000080 SCREEN                                       SECTION.
      *画面头
000090 COPY SCRHEAD.
      *接收报表生成条件
000090 COPY SUB33SCR.
      *画面底
       COPY SCRFLOOR.
      *数据库更新确认画面
       COPY SCRPUB.

      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
      * REPORT                                       SECTION.
      *报表名
      * RD STUDENTREPORT
      *     PAGE LIMIT 60 LINES
      *     HEADING 3
      *     FIRST DETAIL 9
      *     LAST DETAIL 52.
      *     FOOTING 58.
      *
000180*-----------------------------------------------------------------
000190*报表头
000200*-----------------------------------------------------------------
000210* 01 REPHEAD   TYPE IS REPORT HEADING.
000210* 01 REPHEAD   TYPE IS RH GROUP NEXT PAGE.
000230*     03 LINE 15 COLUMN 40 PIC X(50)
000240*           VALUE is " 报表封皮".
000250*     03 LINE 30 COLUMN 45 PIC X(8)
000260*           VALUE is "2007".
000270*
000280*-----------------------------------------------------------------
000290*页眉
000300*-----------------------------------------------------------------
000310* 01 PAGEHEAD  TYPE is  PAGE HEADING.
000310* 01 PAGEHEAD  TYPE is  PH.
000320*     03 LINE 4 COLUMN 50 PIC X(30)
000330*           VALUE IS "STUDENT     " .
000340*     03 LINE 5 COLUMN 45 PIC X(50)
000350*           VALUE IS "THE ".
000360*     03 LINE 6 COLUMN 60 PIC X(4)
000370*           VALUE IS "PAGE".
000380*    03        COLUMN 66 PIC ZZ9 SOURCE PAGE-COUNTER.
000390*
000400*-----------------------------------------------------------------
000410*
000420*-----------------------------------------------------------------
000430* 01 DEPTRTHEAD TYPE IS CONTROL HEADING DEPT
000440*        NEXT GROUP PLUS 1.
000450*     03 LINE PLUS 2
000460*     03 PIC X(20) SOURCE IS DEPT-NAME(DEPT)  COLUMN 1.
000470*
000480*-----------------------------------------------------------------
000490*表头
000500*-----------------------------------------------------------------
000510* 01 CLASSHEAD TYPE IS CONTROL HEADING SCOLLEGIAN
000520*        NEXT GROUP PLUS 2.
000530*     03 LINE PLUS 1 COLUMN 1 PIC X(80)
000540*           VALUE ALL "-".
000550*     03 LINE PLUS 1.
000560*        05 COLUMN  2  PIC X(6) VALUE "NO".
000570*        05 COLUMN 16  PIC X(5) VALUE "COLLEGIAN".
000580*
000590*-----------------------------------------------------------------
000600*明细行
000610*-----------------------------------------------------------------
000620*01 DETAILLINE TYPE IS DETAIL.
000620* 01 DETAILLINE TYPE IS DE.
000630*     03 LINE PLUS 1.
000640*        05 COLUMN  2  PIC X(6)  SOURCE REPNO.
000650*        05 COLUMN 12  PIC X(6)  SOURCE REPCOLLEGIAN .
000660*
000670*-----------------------------------------------------------------
000680*表尾
000690*-----------------------------------------------------------------
000700* 01  CLASSCOUNT TYPE IS PAGE FOOTING
000720*     03 LINE PLUS 2 COLUMN 1 PIC X(80) VALUE ALL "-".
000730*     03 LINE PLUS 1.
000740*        05 PIC X(30) VALUE "DEPARTMENT" COLUMN 10.
000750*
000760*-----------------------------------------------------------------
000770*组小计
000780*-----------------------------------------------------------------
000790* 01  DEPARTCOUNT TYPE IS CONTROL FOOTING DEPART
000800*        NEXT GROUP NEXT PAGE.
000810*     03 LINE 53 COLUMN 2 PIC X(80) VALUE "-".
000820*     03 LINE PLUS 2 COLUMN 10 PIC X(25) VALUE "THE".
000830*     03 LINE PLUS 2.
000840*        05 COLUMN 2 PIC X(6) VALUE "DEPT".
000850*
000860*-----------------------------------------------------------------
000870*总计
000880*-----------------------------------------------------------------
000890* 01  allCOUNT TYPE IS CONTROL FOOTING final
000900*        NEXT GROUP NEXT PAGE.
000910*     03 LINE 53 COLUMN 2 PIC X(80) VALUE "-".
000920*     03 LINE PLUS 2 COLUMN 10 PIC X(25) VALUE "THE".
000930*     03 LINE PLUS 2.
000940*        05 COLUMN 2 PIC X(6) VALUE "DEPT".
000950*
000960*
000970*-----------------------------------------------------------------
000980*封底
000990*-----------------------------------------------------------------
001000* 01 RDEND TYPE IS REPORT FOOTING.
001010*     03 LINE 25 NEXT PAGE.
      *        05 COLUMN 50 PIC X(14) VALUE "REPORT   END".
001010*     03 LINE 35.
      *        05 COLUMN 50 PIC X(10) VALUE "WRITTER".
      *
      *****************************************************************
      *
      *****************************************************************
00012  PROCEDURE                                    DIVISION.
      * DECLARATIVES.
      * PAGE-HEAD-RTN SECTION.
      *      USE BEFORE REPORTING PAGE-HEAD.
      * TEST-CONT.
      *      DISPLAY "TEST".
      *
      * END DECLARATIVES
      *
000130 MAINPROCESS                                  SECTION.
      *初期处理
           PERFORM STARTRTN.
      *
      *主处理
           PERFORM REPORTCREATERTN.
      *
      *终了处理
000180     PERFORM ENDRTN.
      *
000190 MAINPROCESSEXIT.
           EXIT PROGRAM.
      *
      *****************************************************************
      *初期处理
      *
      *****************************************************************
       STARTRTN                                     SECTION.
      *    初始化WORK变量
           INITIALIZE STAPPRAISE, WKAREA.
      *
      *     INITIATE STUDENTREPORT.
      *    打开文件
           OPEN OUTPUT STR.
           IF STR-STATUS = "00"
           THEN
              CONTINUE
           ELSE
               DISPLAY "open STR-STATUS=", STR-STATUS
               GO TO MAINPROCESSEXIT
           END-IF.

       STARTEXIT.
           EXIT.
      *****************************************************************
      *主处理
      *
      *****************************************************************
       REPORTCREATERTN                                SECTION.

      *    显示屏幕
           DISPLAY SCRHEAD.
           MOVE "请输入查询信息,然后输入R并按回车键确认"
              TO WKCLUE.
           DISPLAY SUB33SCR.
           MOVE "输入R并按回车键确认,输入其它字符返回主菜单"
              TO WKCLUE.
           DISPLAY SCRFLOOR.
      *    数据输入
           ACCEPT  SUB33SCR.
      *
           IF WKTURN = "R"
           THEN
      *       查询记录数量
      *       EXEC  SQL
      *          SELECT  COUNT(*)
      *          INTO :SQLCOUNT
      *          FROM  STUDENTAPPRAISE
      *          WHERE NO = :SNO
      *       END-EXEC
              CALL "SQLADR" USING SQ0001 SQL-STMT
              MOVE 1 TO SQL-ITERS
              MOVE 5 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              MOVE 1 TO SQL-SELERR
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  SQLCOUNT IN
                  SQLWORKAREA
                  SQL-SQHSTV(1)
              MOVE 4 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  SNO IN
                  STAPPRAISE
                  SQL-SQHSTV(2)
              MOVE 6 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE

              EVALUATE   SQLCODE
              WHEN  0
      *          查询记录条数正常
                 DISPLAY  "查询记录条数正常sqlcode=", SQLCODE
                 CONTINUE
              WHEN OTHER
      *          查询记录条数失败
                 DISPLAY  "查询记录条数失败sqlcode=", SQLCODE
                 MOVE SQLCODE TO EMSGSQLCD
      *          错误处理
                 CALL "ERRORMSG" USING ERRORKEY
                 GO TO REPORTCREATEEXIT
              END-EVALUATE

              IF SQLCOUNT = 0
              THEN
      *          数量为0退出操作
                 DISPLAY "0 REC"
                 GO TO REPORTCREATEEXIT
              ELSE
                 CONTINUE
              END-IF
           ELSE
              DISPLAY "no R"
              GO TO REPORTCREATEEXIT
           END-IF.

      *

           IF (WKTURN = "R") and (SQLCOUNT NOT = 0)
           THEN

              MOVE STR-N-RC TO STR-RC
              WRITE STR-RC
              IF STR-STATUS  = "00"
              THEN
                  DISPLAY "STR-N-RC ok"
              ELSE
                  DISPLAY "STR-N-RC error"
              END-IF

      *       进行查询处理,生成游标
              PERFORM SELECTRTN
      *       进行游标遍历
              PERFORM FETCHRTN  SQLCOUNT TIMES
      *       关闭游标
              PERFORM CURCLOSE
           ELSE
              GO TO MAINPROCESSEXIT
           END-IF.
           IF STR-STATUS = "00"
           THEN
      *        显示报表生成成功
               DISPLAY SCRHEAD
               MOVE "报表生成成功！" TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRPUB
               MOVE "报表生成成功！" TO WKCLUE
               DISPLAY SCRFLOOR
               ACCEPT SCRPUB
           ELSE
      *        显示输入的学号已经存在提示画面
               DISPLAY SCRHEAD
               MOVE "报表生成失败！" TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRPUB
               MOVE "报表生成失败！" TO WKCLUE
               DISPLAY SCRFLOOR
               ACCEPT SCRPUB
           END-IF.
      *
      *     TERMINATE STUDENTREPORT.

       REPORTCREATEEXIT.
           EXIT.
      *----------------------------------------------------------------
      *查询学生信息
      *----------------------------------------------------------------
       SELECTRTN                                    SECTION.

      *    定义游标
      *    EXEC  SQL
      *       DECLARE  CUR1  CURSOR  FOR
      *          SELECT  NO
      *                 ,YEAR
      *                 ,SYNOPSIS
      *                 ,PARTICULAR
      *                 ,SIGN
      *                 ,SERIAL
      *          FROM  STUDENTAPPRAISE
      *          WHERE NO = :SNO
      *    END-EXEC.
      *
      *    EXEC  SQL
      *       OPEN  CUR1
      *    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 28 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               SNO IN
               STAPPRAISE
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
      *
           EVALUATE   SQLCODE
           WHEN  0
      *       游标打开正常
              DISPLAY  "游标打开正常sqlok=", SQLCODE
           WHEN OTHER
      *       游标打开失败
              DISPLAY  "游标打开失败sqlok=", SQLCODE
              MOVE SQLCODE TO EMSGSQLCD
      *       错误处理
              CALL "ERRORMSG" USING ERRORKEY
           END-EVALUATE.
      *

      *
       SELECTEXIT.
           EXIT.
      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
       FETCHRTN                                     SECTION.
      *    遍历游标,构造并生成报表文件
      *    EXEC  SQL
      *       FETCH  CUR1
      *       INTO :SNO
      *           ,:SYEAR
      *           ,:SSYNOPSIS
      *           ,:SPARTICULAR
      *           ,:SSIGN
      *           ,:SSERIAL
      *    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 47 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               SNO IN
               STAPPRAISE
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SYEAR IN
               STAPPRAISE
               SQL-SQHSTV(2)
           MOVE 4 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SSYNOPSIS IN
               STAPPRAISE
               SQL-SQHSTV(3)
           MOVE 20 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               SPARTICULAR IN
               STAPPRAISE
               SQL-SQHSTV(4)
           MOVE 60 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               SSIGN IN
               STAPPRAISE
               SQL-SQHSTV(5)
           MOVE 1 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               SSERIAL IN
               STAPPRAISE
               SQL-SQHSTV(6)
           MOVE 5 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
      *
           EVALUATE SQLCODE
           WHEN  0
      *       游标读取正常
              DISPLAY  "FETCH游标正常sqlCODE=", SQLCODE
      *       将记录写入到报表文件中去
              PERFORM REPORTWRITERTN
           WHEN  100
      *       游标读取结束
              DISPLAY  "FETCH游标结束sqlCODE=", SQLCODE
      *
           WHEN OTHER
      *       游标读取失败
              DISPLAY  "FETCH游标失败sqlCODE=", SQLCODE
      *        DISPLAY SNO            OF STINFO,
      *                SCOLLEGIAN     OF STINFO
      *       错误处理
              MOVE 231 TO ERRPOINT
              MOVE SQLCODE TO EMSGSQLCD
              CALL "ERRORMSG" USING ERRORKEY
              GO TO FETCHEXIT
           END-EVALUATE.
      *

      *
       FETCHEXIT.
           EXIT.
      *----------------------------------------------------------------
      *报表生成
      *----------------------------------------------------------------
       REPORTWRITERTN                                  SECTION.
      *     GENERATE STUDENTREPORT.
           MOVE SPACE TO STR-RC.
           MOVE  SNO                    TO StrNO.
           MOVE  SYEAR                  TO STRYEAR.
           MOVE  SSYNOPSIS              TO STRSYNOPSIS.
           MOVE  SPARTICULAR            TO STRPARTICULAR.
           MOVE  SSIGN                  TO STRSIGN.
           MOVE  SSERIAL                TO STRSERIAL.
      *
           DISPLAY STR-RC.
           WRITE STR-RC.
           DISPLAY "STR-STATUS=", STR-STATUS.


       REPORTWRITEEXIT.
           EXIT.
      *----------------------------------------------------------------
      *关闭游标
      *----------------------------------------------------------------
       CURCLOSE                                     SECTION.

      *    EXEC SQL
      *          CLOSE CUR1
      *    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 86 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
      *
       CURCLOSEEXIT.
           EXIT.
      *
      *****************************************************************
      *终了处理
      *
      *****************************************************************
       ENDRTN                                       SECTION.
           CLOSE STR.

      *    调试信息
           DISPLAY "SUB33 END-PROGRAM OK".
      *
       ENDEXIT.
           EXIT.
      *****************************************************************
       END PROGRAM SUB33.
      *****************************************************************
