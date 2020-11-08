000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  ERRORMSG.
      *****************************************************************
      *程序ID         ：ERRORMSG
      *程序名         ：学生学籍信息录入
      *处理概要       ：新生入学时将学生信息录入到系统中
      *
      *
      *变量           IO       变量名
      *
      *
      *
      *日期           作成者             概要
      *2007/04/11     张丽娟             作成
      *
      *****************************************************************
      *
      *****************************************************************
      * 环境部
      *****************************************************************
000030 ENVIRONMENT                                  DIVISION.
      *
000040 DATA                                         DIVISION.
000050 WORKING-STORAGE                              SECTION.
000051     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +12.
           02  SQLFPN-FILENAME PIC X(12) VALUE "ErrorMsg.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(56) VALUE "select MSG   into :b1  from STUDE
      -    "NTERROR where POINT=:b2".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +307605.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +2.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 2 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 2 TIMES.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +56.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +58.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +153.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
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
      *    EXEC  SQL  INCLUDE  ERRMSG.CBL            END-EXEC.

000010*****************************************************************
000020* 错误信息
000030*****************************************************************
000040 01 ERRORMSG.
           03 ERRMSGPOINT               PIC  999.
000050     03 ERRMSGSQLCD               PIC S9(9).
           03 ERRMSG                    PIC X(50).


000056     
      *    EXEC  SQL  END      DECLARE      SECTION  END-EXEC.
      * 
       01 RKEY                          PIC X.
      *
000080 LINKAGE                                      SECTION.
000090 COPY ERRORKEY.
      *
000100 SCREEN                                       SECTION.
000110 01 ERRORMSGPAGE.
000120     03 BLANK SCREEN.
           03 LINE  5 COLUMN 30 VALUE "系统错误信息提示".
           03 LINE  8 COLUMN  5 VALUE "错误代码：".
000130     03         COLUMN 17 PIC 9(6)     FROM ERRMSGPOINT .
000130     03 LINE  9 COLUMN  5 VALUE "SQL CODE:".
000130     03         COLUMN 17 PIC Z(4)9(6) FROM ERRMSGSQLCD.
000140     03 LINE 13 COLUMN  5 VALUE "错误提示：".
000140     03 LINE 14 COLUMN  5 PIC X(50)    FROM ERRMSG .
000150     03 LINE 15 COLUMN  5 VALUE "按任意键退出".
000150     03         COLUMN 15 PIC X TO RKEY AUTO.
      *
000160 PROCEDURE DIVISION USING ERRORKEY.
000170 MAIN-PROCESS                                 SECTION.
           DISPLAY "ERRORKEY=", ERRORKEY.
           
           MOVE ERRPOINT  TO ERRMSGPOINT.
           MOVE EMSGSQLCD TO ERRMSGSQLCD.

000180*    ERROR MSG DB SELECT
000190     
      *    EXEC SQL
000200*       SELECT MSG
000210*       INTO  :ERRMSG
000220*       FROM   STUDENTERROR
000230*       WHERE POINT = :ERRMSGPOINT
      *          AND SQLCODE = :ERRSQLCD
000240*    END-EXEC.
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
               ERRMSG IN
               ERRORMSG
               SQL-SQHSTV(1)
           MOVE 50 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               ERRMSGPOINT IN
               ERRORMSG
               SQL-SQHSTV(2)
           MOVE 3 TO SQL-SQHSTL(2)
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
               .
      *    数据库返回码判断
           EVALUATE SQLCODE
           WHEN 0
      *        返回码为“0”查询正常
               DISPLAY  "错误信息提示sqlok=", SQLCODE
000260         DISPLAY ERRORMSGPAGE
000270         ACCEPT  ERRORMSGPAGE
           WHEN OTHER
      *        数据库返回码非“0”，信息查询失败
               DISPLAY  "错误信息查询失败,SQLCODE", SQLCODE
           END-EVALUATE.

           DISPLAY "错误查询程序正常结束".
000280 END-PROCESS.
000290     EXIT PROGRAM .
000300
