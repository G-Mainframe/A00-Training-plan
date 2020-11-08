000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  Sub12.
      *****************************************************************
      *程序ID         ：Sub12
      *程序名         ：学生学籍信息查询修改
      *处理概要       ：对学生学籍信息进行查询更新处理
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
000030 ENVIRONMENT                                  DIVISION.
      *****************************************************************
      *
      *****************************************************************
000040 DATA                                         DIVISION.
000050 WORKING-STORAGE                              SECTION.           
      *----------------------------------------------------------------
      *    数据库用数据定义
      *----------------------------------------------------------------
000051     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +9.
           02  SQLFPN-FILENAME PIC X(9) VALUE "SUB12.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(58) VALUE "select count(*)    into :b1  from
      -    " STUDENTINFO where NO=:b2".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(98) VALUE "select NO  ,COLLEGIAN  ,NAME  ,SE
      -    "X  ,AGE   into :b1,:b2,:b3,:b4,:b5  from STUDENTINFO where N
      -    "O=:b1".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(82) VALUE "update STUDENTINFO  set NO=:b1,CO
      -    "LLEGIAN=:b2,NAME=:b3,SEX=:b4,AGE=:b5 where NO=:b1".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +39621.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +58.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +138.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +98.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +169.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +67.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +82.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +219.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +106.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +234.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN    DECLARE      SECTION  END-EXEC.
000052     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000010*  
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000055     
      *    EXEC  SQL  INCLUDE  SQLCA.CBL             END-EXEC.
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
      *    EXEC  SQL  INCLUDE  STINFO.CBL            END-EXEC.
      *    SQL WORK AREA
      *****************************************************************
      *程序ID         ：STinfo
      *程序名         ：学生学籍信息
      *
      *日期           作成者            概要
      *2007/03/18     张丽娟            作成
      *
      *****************************************************************
000040 01 STinfo.
           03 SNO                           PIC  9(06).
           03 SCOLLEGIAN                    PIC  9(06).
000040     03 SNAME                         PIC  X(10).
000040     03 SSEX                          PIC  X(02).
           03 SAGE                          PIC  9(02).
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
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
      *----------------------------------------------------------------
      *屏幕线型定义
      *----------------------------------------------------------------
       COPY WKSCRLine.
      *----------------------------------------------------------------
      *WORK变量
      *----------------------------------------------------------------
       COPY WKAREA.
      *
      *****************************************************************
      *
      *****************************************************************
000070 LINKAGE                                      SECTION.
      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
000080 SCREEN                                       SECTION.
      *画面头
000090 COPY SCRHead.
      *学生信息
000090 COPY SCRSINFO.
      *检索画面
000090 COPY SUB12SCS.
      *画面底
       COPY SCRFLOOR.
      *公共信息提示
       COPY SCRPUB.

      *
000120 PROCEDURE                                    DIVISION.
000130 MAIN-PROCESS                                 SECTION.
      *初期处理
           PERFORM StartRTN.
      *
      *主处理
           PERFORM MAINRTN.
      *                      
      *终了处理
000180     PERFORM EndRTN.
      *
000180 END-PROGRAM.
000190     EXIT PROGRAM .
      *****************************************************************
      *初期处理
      *
      *****************************************************************
       StartRTN                                     SECTION.
      *    初始化Work变量
           INITIALIZE STINFO.
      *
       StartExit.
           EXIT.
      *
      *****************************************************************
      *主处理
      *
      *****************************************************************
       MAINRTN                                      SECTION.

      *    显示查询屏幕
           DISPLAY SCRHead.
           DISPLAY SUB12SCS.
           MOVE "请输入您要查询的学号"    TO WKCLUE.
           DISPLAY SCRFLOOR.
           ACCEPT  SUB12SCS.
      *
      *    是否存在判断
           PERFORM STINFOCHECKRTN.
      *    按输入条件进行查询
           IF SQLCOUNT = 0
           THEN
      *        显示不存在画面
               DISPLAY SCRHEAD
               MOVE "您输入的学号不存在！" TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRPUB
               MOVE "您输入的学号不存在！" TO WKCLUE
               DISPLAY SCRFLOOR
               ACCEPT SCRPUB
           ELSE
              PERFORM STINFOSELECTRTN
           END-IF.
      *
      *    判断是否进行更新处理
           IF WKTURN = "U"
           THEN
      *        进行数据更新
               PERFORM STUDENTINFOUPDATARTN
           ELSE
      *        不进行数据更新
               CONTINUE
           END-IF.
      *
       MAINEXIT.
           EXIT.
      *----------------------------------------------------------------
      *是否存在检查
      *----------------------------------------------------------------
       STINFOcheckRTN                              SECTION.

      *    查询记录数量
      *    EXEC  SQL
      *       SELECT  COUNT(*)
      *       INTO :SQLCOUNT
      *       FROM  STUDENTINFO
      *       WHERE NO = :SNO
      *    END-EXEC
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
               STINFO
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
      *       查询记录条数正常
              DISPLAY  "查询记录条数正常sqlcode=", SQLCODE
              CONTINUE
           WHEN OTHER
      *       查询记录条数失败
              DISPLAY  "查询记录条数失败sqlcode=", SQLCODE
              MOVE SQLCODE TO EMSGSQLCD
      *       错误处理
              CALL "ERRORMSG" USING ERRORKEY
              GO TO MAINEXIT
           END-EVALUATE.

       STINFOcheckexit.
           exit.
      *----------------------------------------------------------------
      *查询学生信息
      *----------------------------------------------------------------
       STINFOSELECTRTN                              SECTION.
      * 
      *    数据查询操作
           DISPLAY  "SNO=", SNO.
      *     MOVE SNO TO SQLSNO.
      *    EXEC SQL
      *        SELECT  NO
      *               ,COLLEGIAN
      *               ,NAME
      *               ,SEX
      *               ,AGE
      *        INTO    :SNO
      *               ,:SCOLLEGIAN
      *               ,:SNAME
      *               ,:SSEX
      *               ,:SAGE
      *        FROM STUDENTINFO
      *        WHERE  NO = :SNO
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
               STINFO
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SCOLLEGIAN IN
               STINFO
               SQL-SQHSTV(2)
           MOVE 6 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SNAME IN
               STINFO
               SQL-SQHSTV(3)
           MOVE 10 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               SSEX IN
               STINFO
               SQL-SQHSTV(4)
           MOVE 2 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               SAGE IN
               STINFO
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               SNO IN
               STINFO
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
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
      *    数据库返回码判断
           EVALUATE SQLCODE
           WHEN 0
      *        返回码为“0”数据查询正常
               DISPLAY  "查询学生成功sqlcode=", SQLCODE
      *        显示被查询学生信息画面
               DISPLAY SCRHEAD
               MOVE "如修改该学生信息，更正相关内容后，键入U并回车确认"
                                        TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRSINFO
               MOVE "查询成功！学号不能修改,键入U并回车确认修改"
                                                       TO WKCLUE
               DISPLAY SCRFLOOR
      *
               ACCEPT SCRSINFO
      *
           WHEN OTHER
      *        数据库返回码非“0”，数据插入失败，设定错误码
               MOVE 121 TO ERRPOINT
               MOVE SQLCODE TO EMSGSQLCD
      *        错误处理
               CALL "ERRORMSG" USING ERRORKEY
               GO TO MAINEXIT
           END-EVALUATE.
      *
       STINFOSELECTEXIT.
           EXIT.
      *
      *----------------------------------------------------------------
      *更新学生信息
      *----------------------------------------------------------------
       STUDENTINFOUPDATARTN                              SECTION.

      *    数据查询操作
      *    EXEC SQL 
      *        UPDATE STUDENTINFO
      *        SET  NO        = :SNO 
      *            ,COLLEGIAN = :SCOLLEGIAN
      *            ,NAME      = :SNAME
      *            ,SEX       = :SSEX
      *            ,AGE       = :SAGE
      *        WHERE NO = :SNO
      *    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 67 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               SNO IN
               STINFO
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SCOLLEGIAN IN
               STINFO
               SQL-SQHSTV(2)
           MOVE 6 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SNAME IN
               STINFO
               SQL-SQHSTV(3)
           MOVE 10 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               SSEX IN
               STINFO
               SQL-SQHSTV(4)
           MOVE 2 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               SAGE IN
               STINFO
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               SNO IN
               STINFO
               SQL-SQHSTV(6)
           MOVE 6 TO SQL-SQHSTL(6)
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
      *    数据库返回码判断
           EVALUATE SQLCODE
           WHEN 0
      *       返回码为“0”数据更新正常
              DISPLAY  "更新学生信息sqlok=", SQLCODE
      *       EXEC SQL
      *           COMMIT WORK RELEASE
      *       END-EXEC
              MOVE 1 TO SQL-ITERS
              MOVE 106 TO SQL-OFFSET
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
      *
              DISPLAY SCRHEAD
              MOVE "学生信息更新成功，按回车返回主菜单"
                                       TO WKCLUE
              MOVE SPACE TO WKTURN
      *       显示被更新学生信息画面
              DISPLAY SCRPUB
              MOVE "更新学生信息成功！按回车返回主菜单" 
                                       TO WKCLUE
              DISPLAY SCRFLOOR
              ACCEPT SCRPUB
      *
           WHEN OTHER
      *       数据库返回码非“0”，数据更新失败，设定错误码
              MOVE 122 TO ERRPOINT
              MOVE SQLCODE TO EMSGSQLCD
      *       错误处理
              CALL "ERRORMSG" USING ERRORKEY
           END-EVALUATE.
       STUDENTINFOUPDATAEXIT.
           EXIT.
      *
      *****************************************************************
      *终了处理
      *
      *****************************************************************
       EndRTN                                       SECTION.
      *    调试信息
           DISPLAY "SUB12 END-PROGRAM OK".
       EndExit.
           EXIT.
      *****************************************************************
       END PROGRAM Sub12.
      *****************************************************************
