000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID.  OracleLink.
      *****************************************************************
      *程序ID         ：OracleLink
      *程序名         ：数据库连接
      *处理概要       ：进行数据库连接，并作相应的错误处理
      *
      *
      *变量           IO       变量名
      *
      *
      *
      *日期           作成者            概要
      *2007/04/09     张丽娟            作成
      *
      *
      *
      *****************************************************************

      *****************************************************************
      *
      *****************************************************************
000030 ENVIRONMENT                                  DIVISION.




      *****************************************************************
      *
      *****************************************************************
000040 DATA                                         DIVISION.
      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
       FILE                                         SECTION.

000050 WORKING-STORAGE                              SECTION.
      *数据库连接定义
000051     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +14.
           02  SQLFPN-FILENAME PIC X(14) VALUE "OracleLink.PCO".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +1260341.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +4.
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
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 4 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 4 TIMES.


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
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +68.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +36.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +72.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
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
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
      *    Oracle 共通函数
000052     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
      *    Oracle SQL实行情报
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
000056     
      *    EXEC  SQL  END    DECLARE        SECTION  END-EXEC.

      *----------------------------------------------------------------
      *WORK变量
      *----------------------------------------------------------------
       COPY WKAREA.
000070 LINKAGE                                      SECTION.
       01 LINKSQLCODE                   PIC S9(9).
      *----------------------------------------------------------------
      *
      *----------------------------------------------------------------
000080 SCREEN                                       SECTION.
      *
      *****************************************************************
      *
      *****************************************************************
000120 PROCEDURE                                    DIVISION
                   USING LINKSQLCODE.
000130 MainProcess                                  SECTION.
           MOVE 'cobol'       TO DB-STRING.
           MOVE 'student'      TO USERNAME.
           MOVE 'zaq12wsx'    TO PASSWD.
           IF DB-STRING = SPACE
      *        EXEC SQL
      *            CONNECT :USERNAME IDENTIFIED BY :PASSWD
      *        END-EXEC
               CALL "ORASQL8"
               MOVE 10 TO SQL-ITERS
               MOVE 5 TO SQL-OFFSET
               MOVE 0 TO SQL-OCCURS
               CALL "SQLADR" USING
                   SQLCUD
                   SQL-CUD
               CALL "SQLADR" USING
                   SQLCA
                   SQL-SQLEST
               MOVE 256 TO SQL-SQLETY
               CALL "SQLADR" USING
                   USERNAME
                   SQL-SQHSTV(1)
               MOVE 10 TO SQL-SQHSTL(1)
               MOVE 0 TO SQL-SQHSTS(1)
               MOVE 0 TO SQL-SQINDV(1)
               MOVE 0 TO SQL-SQINDS(1)
               MOVE 0 TO SQL-SQHARM(1)
               CALL "SQLADR" USING
                   PASSWD
                   SQL-SQHSTV(2)
               MOVE 10 TO SQL-SQHSTL(2)
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
           ELSE
      *        EXEC SQL
      *            CONNECT :USERNAME IDENTIFIED BY :PASSWD
      *            USING :DB-STRING
      *        END-EXEC
               CALL "ORASQL8"
               MOVE 10 TO SQL-ITERS
               MOVE 36 TO SQL-OFFSET
               MOVE 0 TO SQL-OCCURS
               CALL "SQLADR" USING
                   SQLCUD
                   SQL-CUD
               CALL "SQLADR" USING
                   SQLCA
                   SQL-SQLEST
               MOVE 256 TO SQL-SQLETY
               CALL "SQLADR" USING
                   USERNAME
                   SQL-SQHSTV(1)
               MOVE 10 TO SQL-SQHSTL(1)
               MOVE 0 TO SQL-SQHSTS(1)
               MOVE 0 TO SQL-SQINDV(1)
               MOVE 0 TO SQL-SQINDS(1)
               MOVE 0 TO SQL-SQHARM(1)
               CALL "SQLADR" USING
                   PASSWD
                   SQL-SQHSTV(2)
               MOVE 10 TO SQL-SQHSTL(2)
               MOVE 0 TO SQL-SQHSTS(2)
               MOVE 0 TO SQL-SQINDV(2)
               MOVE 0 TO SQL-SQINDS(2)
               MOVE 0 TO SQL-SQHARM(2)
               CALL "SQLADR" USING
                   DB-STRING
                   SQL-SQHSTV(3)
               MOVE 20 TO SQL-SQHSTL(3)
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
           END-IF.


           EVALUATE SQLCODE
           WHEN 0
      *        连接正常
               CONTINUE
           WHEN OTHER
      *        连接错误,返回码非“0”，设定错误码
               MOVE 01 TO ERRPOINT
               MOVE SQLCODE TO EMSGSQLCD
      *        错误处理
               CALL "ERRORMSG" USING ERRORKEY
           END-EVALUATE.
           MOVE SQLCODE TO LINKSQLCODE.
      *
000190 MainProcessExit.
           EXIT PROGRAM.
      *
       END PROGRAM OracleLink.
