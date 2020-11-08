      *****************************************************************
      *程序ID         ：SUB21
      *程序名         ：学生成绩信息录入
      *处理概要       ：新生入学时将学生信息录入到系统中
      *
      *
      *变量           IO       变量名
      *
      *
      *
      *日期           作成者             概要
      *2007/03/29     张丽娟             作成
      *
      *****************************************************************
      *
      *****************************************************************
      * 环境部
      *****************************************************************
000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  Sub21.
000030 ENVIRONMENT                                  DIVISION.
000040 DATA                                         DIVISION.
000050 WORKING-STORAGE                              SECTION.
      *
      *----------------------------------------------------------------
      *数据库用数据定义
      *----------------------------------------------------------------
000051     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +9.
           02  SQLFPN-FILENAME PIC X(9) VALUE "SUB21.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(76) VALUE "select count(*)    into :b1  from
      -    " STUDENTSCORE where (NO=:b2 and COURSE=:b3)".

       01  SQ0002 GLOBAL.
           02  FILLER PIC X(62) VALUE "insert into STUDENTSCORE(NO,COURS
      -    "E,SCORE) values (:b1,:b2,:b3)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +39637.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +3.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 3 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 3 TIMES.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +76.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +113.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +32.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +62.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +193.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +59.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +12.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +30.
           02     FILLER PIC S9(4) COMP-5 VALUE +210.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
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
      *
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
000055     
      *    EXEC  SQL  INCLUDE  STSCORE.CBL           END-EXEC.
      *
      *****************************************************************
      *程序ID         ：STscore
      *程序名         ：学生成绩信息
      *
      *日期           作成者            概要
      *2007/03/18     张丽娟            作成
      *
      *****************************************************************
000040 01 STscore.
           03 SNO                           PIC  9(06).
           03 Scourse                       PIC  9(06).
000040     03 SScore                        PIC  9(03).
      *    EXEC  SQL  INCLUDE  SQLWK.CBL             END-EXEC.
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
      *
      *----------------------------------------------------------------
      *WORKAREA
      *----------------------------------------------------------------
      *屏幕线型定义
       COPY WKSCRLINE.
      *
       COPY WKAREA.

000060*
000070 LINKAGE                                      SECTION.
      *
000080 SCREEN                                       SECTION.
      *画面头
000090 COPY SCRHEAD.
      *学生成绩信息画面
000090 COPY SCRSCORE.
      *画面底
       COPY SCRFLOOR.
      *公用提示画面
       COPY SCRPUB.
      *
      *****************************************************************
      *过程部
      *****************************************************************
000120 PROCEDURE                                    DIVISION.
000130 MAINPROCESSRTN                               SECTION.
000160*初期处理
           PERFORM STARTRTN.
      *主处理
           PERFORM MAINRTN.

      *终了处理
000180     PERFORM ENDRTN.
      *
000180 MAINPROCESSEXIT.
000190     EXIT PROGRAM .
      *****************************************************************
      *初期处理
      *
      *****************************************************************
       STARTRTN                                     SECTION.
      *    初始化WORK变量
           INITIALIZE STSCORE, WKAREA.

      *
       STARTEXIT.
           EXIT.
      *****************************************************************
      *主处理
      *
      *****************************************************************
       MAINRTN                                      SECTION.
      *    显示屏幕
           DISPLAY SCRHEAD.
           MOVE "请输入新录入的成绩信息,然后输入I并按回车键确认" TO WKCLUE.
           DISPLAY SCRSCORE.
           MOVE "输入I并按回车键确认,输入其它字符返回主菜单" TO WKCLUE.
           DISPLAY SCRFLOOR.
      *    数据输入
           ACCEPT  SCRSCORE.
      *
           IF WKTURN = "I"
           THEN
      *        判断该课程成绩是否存在,存在则提示是否更新
               PERFORM CHACKDATARTN
      *
           ELSE
               GO TO MAINEXIT
           END-IF.
      * 
      *    
           IF DATACHACKFLAG = 1
           THEN
      *       判断该生该课程成绩是否存在
      *       查询记录数量
      *       EXEC  SQL
      *          SELECT  COUNT(*)
      *          INTO  :SQLCOUNT
      *          FROM  STUDENTSCORE
      *          WHERE (NO = :SNO) AND (COURSE = :SCOURSE)
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
                  STSCORE
                  SQL-SQHSTV(2)
              MOVE 6 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  SCOURSE IN
                  STSCORE
                  SQL-SQHSTV(3)
              MOVE 6 TO SQL-SQHSTL(3)
              MOVE 0 TO SQL-SQHSTS(3)
              MOVE 0 TO SQL-SQINDV(3)
              MOVE 0 TO SQL-SQINDS(3)
              MOVE 0 TO SQL-SQHARM(3)
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
                 GO TO MAINEXIT
              END-EVALUATE

           ELSE
               CONTINUE
           END-IF
      *    判断数据是否存在
           IF (DATACHACKFLAG = 1) AND (SQLCOUNT = 0)
           THEN
      *       数据不存在，插入新数据
              PERFORM DBUPRTN
           ELSE
      *        显示输入信息已经存在提示画面
               DISPLAY SCRHEAD
               MOVE "您输入的学生该门课程成绩已存在！" TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRPUB
               MOVE "您输入的学生该门课程成绩已存在！" TO WKCLUE
               DISPLAY SCRFLOOR
               ACCEPT SCRPUB
      *
           END-IF.


       MAINEXIT.
           EXIT.
      *
      *----------------------------------------------------------------
      *校验数据
      *    数据不合格则设置FLAG为0
      *----------------------------------------------------------------
       CHACKDATARTN                                 SECTION.
      *    CHACKFLAG置1
           MOVE 1                       TO  DATACHACKFLAG.

      *    录入的数据不为空
           IF (SNO     NOT = 0)     AND
              (Scourse NOT = 0)     AND
              (SScore  NOT = 0)
           THEN
              CONTINUE
           ELSE
      *        显示未录入数据画面
               DISPLAY SCRHEAD
               MOVE "请录入数据！" TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRPUB
               MOVE "请录入数据！" TO WKCLUE
               DISPLAY SCRFLOOR
               ACCEPT SCRPUB
              GO TO MAINEXIT
           END-IF.

       CHACKDATAEXIT.
           EXIT.
      *
      *----------------------------------------------------------------
      *插入新数据
      *----------------------------------------------------------------
       DBUPRTN                                      SECTION.
      *
      *    数据插入操作
      *    EXEC SQL
      *        INSERT INTO STUDENTSCORE( NO
      *                                 ,COURSE
      *                                 ,SCORE
      *                               )
      *        VALUES ( :SNO
      *                ,:SCOURSE 
      *                ,:SSCORE  
      *               )
      *    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 32 TO SQL-OFFSET
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
               STSCORE
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SCOURSE IN
               STSCORE
               SQL-SQHSTV(2)
           MOVE 6 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SSCORE IN
               STSCORE
               SQL-SQHSTV(3)
           MOVE 3 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
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
      *        返回码为“0”数据插入正常
      *        数据提交
               DISPLAY  "录入学生成绩成功sqlCODE=", SQLCODE
      *        EXEC SQL
      *            COMMIT WORK RELEASE
      *        END-EXEC
               MOVE 1 TO SQL-ITERS
               MOVE 59 TO SQL-OFFSET
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
      *        显示插入成功画面
               DISPLAY SCRHEAD
               MOVE "录入学生成绩成功！" TO WKCLUE
               MOVE SPACE TO WKTURN
               DISPLAY SCRPUB
               MOVE "录入学生成绩成功！" TO WKCLUE
               DISPLAY SCRFLOOR
               ACCEPT SCRPUB
      *
           WHEN OTHER
      *        数据库返回码非“0”，数据插入失败，设定错误码
               MOVE 211 TO ERRPOINT
               MOVE SQLCODE TO EMSGSQLCD
      *        错误处理
               CALL "ERRORMSG" USING ERRORKEY
           END-EVALUATE.
      *
       DBUPEXIT.
           EXIT.
      *
      *****************************************************************
      *终了处理
      *
      *****************************************************************
       ENDRTN                                       SECTION.
      *    调试信息
           DISPLAY "SUB21 END-PROGRAM OK".
      *
       ENDEXIT.
           EXIT.
      *****************************************************************
       END PROGRAM SUB21.
      *****************************************************************
