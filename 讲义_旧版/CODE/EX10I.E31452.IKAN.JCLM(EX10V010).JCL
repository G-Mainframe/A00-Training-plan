//EX10V010 JOB (F9500B,EX10,41,                                         00010006
//              'RUNNO=XXX,LRUNNO=XXX'),                                00020005
//              09500,REGION=8M                                         00030002
//*-------------------------------------------------------------------- 00040000
//SORT01  EXEC NEWSORT,SP='100,100'                                     00041002
//SORTIN   DD DSN=EX10.DS.UNLDMM,DISP=SHR                               00042002
//SORTOUT  DD DSN=&&UNLDMM,DISP=(,PASS),                                00044002
//      SPACE=(CYL,(100,100),RLSE)                                      00045002
//SYSIN    DD *                                                         00046002
 SORT FIELDS=(1,8,CH,A)                                                 00047002
/*                                                                      00047102
//*-------------------------------------------------------------------- 00048002
//SORT02  EXEC NEWSORT,SP='100,100'                                     00049002
//SORTIN   DD DSN=EX10.DS.UNLDM1,DISP=SHR                               00049102
//SORTOUT  DD DSN=&&UNLDM1,DISP=(,PASS),                                00049302
//      SPACE=(CYL,(100,100),RLSE)                                      00049402
//SYSIN    DD *                                                         00049502
 SORT FIELDS=(1,8,CH,A)                                                 00049602
 INCLUDE COND=(9,1,CH,EQ,C'Q')                                          00049707
/*                                                                      00049802
//*-------------------------------------------------------------------- 00050802
//*    EX10XXX(MM VS M1 MATCHING BY CONTRACT TYPE, MSP#)                00050904
//*-------------------------------------------------------------------- 00051002
//EX10XXX PROC                                                          00051103
//ST010   EXEC PGM=EX10XXX                                              00051203
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            00051302
//SYSPRINT DD  SYSOUT=*                                                 00051402
//PLIDUMP  DD  SYSOUT=*                                                 00051502
//SEXTCLI  DD  DSN=&&UNLDMM,DISP=(OLD,DELETE)                           00051602
//SEXTCTI  DD  DSN=&&UNLDM1,DISP=(OLD,DELETE)                           00051702
//SEXTC1O  DD  DSN=EX10.DS.SDTC.UNLD,DISP=(,CATLG),                     00051802
//             DCB=(RECFM=FB,LRECL=151,BLKSIZE=27935),                  00051902
//             SPACE=(CYL,(100,100),RLSE)                               00052002
//        PEND                                                          00052102
//ST010   EXEC EX10XXX                                                  00052203
//*-------------------------------------------------------------------- 00052307
//SORT02  EXEC NEWSORT,SP='100,100'                                     00052407
//SORTIN   DD DSN=KC60.DS.SDTC.XONLY,DISP=SHR                           00052507
//SORTOUT  DD DSN=KC60.DS.SDTC.XONLYSUM,DISP=(,CATLG),                  00052607
//      SPACE=(CYL,(100,100),RLSE)                                      00052707
//SYSIN    DD *                                                         00052807
 SORT  FIELDS=(9,10,CH,A)                                               00052907
 SUM FIELDS=NONE                                                        00053007
 OUTREC FIELDS=(1,18)                                                   00053108
/*                                                                      00053207
//*-------------------------------------------------------------------- 00053302
//*    EX10XXX(DATA SELECTION ICMS VS QCOS MATCHING BY PARTS#)          00053404
//*-------------------------------------------------------------------- 00053502
//EX10XXX PROC                                                          00053603
//ST020   EXEC PGM=EX10XXX                                              00053703
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            00053802
//SYSPRINT DD  SYSOUT=*                                                 00053902
//PLIDUMP  DD  SYSOUT=*                                                 00054002
//SEXTCLI  DD  DSN=EX10.DS.SDTC.UNLD,DISP=SHR                           00054102
//SEXTCTI  DD  DSN=KC60.DS.SDTC.XONLYSUM,DISP=SHR                       00054207
//SEXTC1O  DD  DSN=EX10.DS.SDTC.XONLY&RUNNO,DISP=(,CATLG),              00054302
//             DCB=(RECFM=FB,LRECL=40,BLKSIZE=27960),                   00054402
//             SPACE=(CYL,(100,100),RLSE)                               00054502
//        PEND                                                          00054602
//ST010   EXEC EX10XXX,RUNNO=&RUNNO                                     00054703
//*-------------------------------------------------------------------  00054802
//*    EX10XXX(DATA CREATION(DELTA) <--DVOAB=ASOF)                      00054904
//*-------------------------------------------------------------------  00055002
//ST030   EXEC DLIBATCH,                                                00055102
//             MBR=EX10XXX,                                             00055204
//             PSB=EX10XXX,                                             00055304
//             DSN='EX10.DS.EXECLOAD',                                  00055402
//             REG=8M,                                                  00055502
//             BUF=7,                                                   00055602
//             TIME=2,                                                  00055702
//             RUNNO=&RUNNO,                                            00055802
//             LRUNNO=&LRUNNO                                           00055902
//IMS      DD                                                           00056002
//         DD                                                           00056102
//SYSPRINT DD  SYSOUT=*                                                 00056202
//SYSUDUMP DD  DUMMY                                                    00056302
//DFSVSAMP DD  DSN=EX10.DS.CTRL(DFSVSAMP),DISP=SHR                      00056402
//PLIDUMP  DD  SYSOUT=*                                                 00056502
//SEXZO0   DD  DSN=EX10IV.DLI.SEXZOB,DISP=SHR                           00056602
//SEXTCLI  DD  DSN=EX10.DS.SDTC.XONLY&RUNNO,DISP=SHR                    00056702
//SEXTCTI  DD  DSN=EX10.DS.SDTC.XONLY&LRUNNO,DISP=SHR                   00056802
//SEXTCLO  DD  DSN=EX10.DS.SDTC.DELTA,DISP=(,CATLG),                    00056902
//             DCB=(RECFM=FB,LRECL=40,BLKSIZE=27960),                   00057002
//             SPACE=(CYL,(100,10),RLSE)                                00057102
//*-------------------------------------------------------------------  00057202
//*    EX10XXX(ADD ASCA TRAILER     <--DVOAB=ASOF)                      00057304
//*-------------------------------------------------------------------  00057402
//ST040   EXEC DLIBATCH,                                                00057502
//             MBR=EX10XXX,                                             00057604
//             PSB=EX10XXX,                                             00057704
//             DSN='EX10.DS.EXECLOAD',                                  00057802
//             REG=8M,                                                  00057902
//             BUF=7,                                                   00058002
//             TIME=2,                                                  00058102
//             RUNNO=&RUNNO,                                            00058202
//             LRUNNO=&LRUNNO                                           00058302
//IMS      DD                                                           00058402
//         DD                                                           00058502
//SYSPRINT DD  SYSOUT=*                                                 00058602
//SYSUDUMP DD  DUMMY                                                    00058702
//DFSVSAMP DD  DSN=EX10.DS.CTRL(DFSVSAMP),DISP=SHR                      00058802
//PLIDUMP  DD  SYSOUT=*                                                 00058902
//SEXZO0   DD  DSN=EX10IV.DLI.SEXZOB,DISP=SHR                           00059002
//SEXTCLI  DD  DSN=EX10.DS.SDTC.DELTA,DISP=SHR                          00059102
//SEXTCTI  DD  DSN=EX10.DS.SDTC.SEQ&LRUNNO,DISP=SHR                     00059202
//SEXTCLO  DD  DSN=EX10.DS.SDTC.LOAD,DISP=(,CATLG),                     00059302
//             DCB=(RECFM=FB,LRECL=40,BLKSIZE=27960),                   00059402
//             SPACE=(CYL,(10,10),RLSE)                                 00059502
//SEXTCTO  DD  DSN=EX10.DS.SDTC.SEQ&RUNNO,DISP=(,CATLG),                00059602
//             DCB=(RECFM=FB,LRECL=40,BLKSIZE=27960),                   00059702
//             SPACE=(CYL,(1,1),RLSE)                                   00059802
//*-------------------------------------------------------------------  00059902
//*    EX10XXX(BACK UP I/F FILE)                                        00060004
//*-------------------------------------------------------------------  00060102
//COPY01  PROC                                                          00060202
//COPY01  EXEC PGM=IEBGENER                                             00060302
//SYSPRINT DD  SYSOUT=*                                                 00060402
//SYSUT1   DD  DSN=EX10.DS.SDTC.LOAD,DISP=SHR                           00060502
//SYSUT2   DD  DSN=EX10.DS.SDTC.LOAD&RUNNO,DISP=(,CATLG),               00060602
//        DCB=*.SYSUT1,                                                 00060702
//        MGMTCLAS=LMONTH,                                              00060802
//        SPACE=(CYL,(100,10),RLSE)                                     00060902
//SYSIN    DD DUMMY                                                     00061002
//        PEND                                                          00061102
//COPYBK  EXEC COPY01,RUNNO=&RUNNO                                      00061202
//*-------------------------------------------------------------------  00061302
//SORT01  EXEC NEWSORT,SP='100,100'                                     00061402
//SORTIN   DD DSN=EX10.DS.SDTC.LOAD,DISP=SHR                            00061502
//SORTOUT  DD DSN=EX10.DS.SDTC.XMIT,DISP=(,CATLG),                      00061602
//      SPACE=(CYL,(1,1),RLSE)                                          00061702
//SYSIN    DD *                                                         00061802
 SORT FIELDS=COPY                                                       00061902
 INCLUDE COND=(1,4,CH,EQ,C'ASCA')                                       00062002
 OUTREC FIELDS=(23,5,4X,5,8,4X,13,9)                                    00062102
/*                                                                      00062202
//*-------------------------------------------------------------------  00062302
//*    EX10XXX(SEND MAIL TO SDTC)                                       00062404
//*-------------------------------------------------------------------  00062502
//XMIT    EXEC PGM=IKJEFT01                                             00062602
//SYSTSPRT DD SYSOUT=*                                                  00062702
//TXT      DD DISP=SHR,DSN=EX10.DS.SDTC.XMIT                            00062802
//*SFKIMSG  DD DISP=SHR,DSN=FK75.DS.CNTL(MESGJIT)                       00062902
//SYSTSIN  DD *                                                         00063002
  XMIT IBM**.*****    DDNAME(TXT) MSGFILE(SFKIMSG) SEQ NOLOG            00063102
/*                                                                      00063202
//*  XMIT IBM**.*****    DDNAME(TXT) MSGFILE(SFKIMSG) SEQ NOLOG         00063302
//                                                                      00063402
//                                                                      00063502
//                                                                      00063602
//                                                                      00063702
//                                                                      00063802
//                                                                      00063902
//                                                                      00064002
//********************************************************************* 00064102
//*   JOB DESCRIPTION                                                   00065000
//* ---------------                                                     00070000
//*   EB01: LLL REPORT CREATION (2003/04/14)                            00080000
//*          1.VALIDATION REPORT CREATION                               00090000
//*          2.EXCEPTION  REPORT CREATION                               00100000
//*                                                                     00110000
//*        MODIFIED DATE  :   03/05/06 (SER:EX10E021)                   00120000
//*                       :   03/06/09 (SER:EX10E022)                   00130000
//*                       :   04/04/19 (EB15:OVEN I/F)                  00131000
//*                           COPY FROM EX10D140                        00131100
//*                       :   05/05/01 (EB53:ICMS PCD) CHG AAS=>CRIS    00131200
//********************************************************************* 00132000
//*----------------------------------------*                            00133000
//*     VALIDATION REPORT CREATION STEP                                 00134000
//*----------------------------------------*                            00135000
//*-------------------------------------------------------------------  00136000
//*    EX10B50(DLIBATCH FOR CL EXTRACTION <--DVOAB=ASOF)                00137000
//*-------------------------------------------------------------------  00138000
//ST010   EXEC DLIBATCH,                                                00139000
//             MBR=EX10B50,                                             00140000
//             PSB=EX10B50,                                             00150000
//             DSN='EX10.DS.EXECLOAD',                                  00160000
//             REG=4096K,                                               00170000
//             BUF=7,                                                   00180000
//             TIME=2                                                   00190000
//*            RUNNO=&RUNNO                                             00200000
//IMS      DD                                                           00210000
//         DD                                                           00220000
//SYSPRINT DD  SYSOUT=*                                                 00230000
//SYSUDUMP DD  DUMMY                                                    00240000
//DFSVSAMP DD  DSN=EX10.DS.CTRL(DFSVSAMP),DISP=SHR                      00250000
//PLIDUMP  DD  SYSOUT=*                                                 00260000
//SEXZO0   DD  DSN=EX10IV.DLI.SEXZOB,DISP=SHR                           00270000
//SEXTCLI  DD  DSN=EX10.DS.UNLDCL,DISP=SHR                              00280000
//SEXTCLO  DD  DSN=&&B50O,DISP=(,PASS),                                 00290000
//             DCB=(RECFM=FB,LRECL=130,BLKSIZE=),                       00300000
//             SPACE=(CYL,(10,10),RLSE)                                 00310000
//*-------------------------------------------------------------------- 00320000
//*     SORT CT BY CONTRACT# (FOR EX10B51 INPUT)                        00330000
//*-------------------------------------------------------------------- 00340000
//SRT010   EXEC NEWSORT,SP=100                                          00350000
//SORTIN   DD  DSN=EX10.DS.UNLDCT,DISP=SHR                              00360000
//SORTOUT  DD  DSN=&&CTV,DISP=(,PASS),                                  00370000
//             DCB=(RECFM=FB,LRECL=230,BLKSIZE=),                       00380000
//             SPACE=(CYL,(120,10),RLSE)                                00390000
//SYSIN    DD *                                                         00400000
 SORT FIELDS=(1,17,CH,A)                                                00410000
 INCLUDE COND=(112,1,CH,NE,C' ')                                        00420000
/*                                                                      00430000
//*-------------------------------------------------------------------- 00440000
//*     SORT CL BY CONTRACT# (FOR EX10B51 INPUT)                        00450000
//*-------------------------------------------------------------------- 00460000
//SRT020   EXEC NEWSORT,SP=10                                           00470000
//SORTIN   DD  DSN=&&B50O,DISP=(OLD,PASS)                               00480000
//SORTOUT  DD  DSN=&&CLV,DISP=(,PASS),                                  00490000
//             DCB=(RECFM=FB,LRECL=130,BLKSIZE=),                       00500000
//             SPACE=(CYL,(10,10),RLSE)                                 00510000
//SYSIN    DD *                                                         00520000
  SORT FIELDS=(15,17,CH,A)                                              00530000
  INCLUDE COND=(32,1,CH,EQ,C'I',AND,33,1,CH,NE,C'@',AND,               X00540000
                39,1,CH,EQ,C' ',AND,53,1,CH,EQ,C'A')                    00550000
/*                                                                      00560000
//*-------------------------------------------------------------------  00570000
//*     EX10B51(CL VS CT MATCHING BY CONTRACT#)                         00580000
//*-------------------------------------------------------------------  00590000
//ST020    EXEC PGM=EX10B51                                             00600000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            00610000
//SYSPRINT DD  SYSOUT=*                                                 00620000
//PLIDUMP  DD  SYSOUT=*                                                 00630000
//SEXTCLI  DD  DSN=&&CLV,DISP=(OLD,DELETE)                              00640000
//SEXTCTI  DD  DSN=&&CTV,DISP=(OLD,DELETE)                              00650000
//SEXTC2O  DD  DSN=&&B51OVC2,DISP=(,PASS),                              00660000
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                        00670000
//             SPACE=(CYL,(50,20),RLSE)                                 00680000
//SEXTC3O  DD  DSN=&&B51OVC3,DISP=(,PASS),                              00690000
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                        00700000
//             SPACE=(CYL,(50,20),RLSE)                                 00710000
//*-------------------------------------------------------------------- 00720000
//*     SORT C2 BY LINK# (FOR EX10B52 INPUT)                            00730000
//*-------------------------------------------------------------------- 00740000
//SRT030   EXEC NEWSORT,SP=100                                          00750000
//SORTIN   DD  DSN=EX10.DS.UNLDC2,DISP=SHR                              00760000
//SORTOUT  DD  DSN=&&C2,DISP=(,PASS),                                   00770000
//             DCB=(RECFM=FB,LRECL=294,BLKSIZE=),                       00780000
//             SPACE=(CYL,(300,50),RLSE)                                00790000
//SYSIN    DD *                                                         00800000
  SORT FIELDS=(1,11,CH,A)                                               00810000
/*                                                                      00820000
//*-------------------------------------------------------------------- 00830000
//*      SORT MASTER FILE BY LINK# (FOR EX10B52 INPUT)                  00840000
//*-------------------------------------------------------------------- 00850000
//SRT040  EXEC NEWSORT,SP=50                                            00860000
//SORTIN  DD  DSN=&&B51OVC2,DISP=(OLD,DELETE)                           00870000
//SORTOUT DD  DSN=&&B52INV,DISP=(,PASS),                                00880000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                         00890000
//            SPACE=(CYL,(50,20),RLSE)                                  00900000
//SYSIN   DD *                                                          00910000
  SORT FIELDS=(1,11,CH,A)                                               00920000
/*                                                                      00930000
//*---------------------------------------------------------------------00940000
//*      EX10B52(MASTER VS C2 MATCHING BY LINK#)                        00950000
//*---------------------------------------------------------------------00960000
//ST030    EXEC PGM=EX10B52                                             00970000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            00980000
//SYSPRINT DD  SYSOUT=*                                                 00990000
//PLIDUMP  DD  SYSOUT=*                                                 01000000
//SEXTC2I  DD  DSN=&&C2,DISP=(OLD,PASS)                                 01010000
//SEXB52I  DD  DSN=&&B52INV,DISP=(OLD,DELETE)                           01020000
//SEXB52O  DD  DSN=&&B52OV,DISP=(,PASS),                                01030000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       01040000
//             SPACE=(CYL,(5,5),RLSE)                                   01050000
//*-------------------------------------------------------------------- 01060000
//*     SORT C3 BY LINK# (FOR EX10B53 INPUT)                            01070000
//*-------------------------------------------------------------------- 01080000
//SRT050   EXEC NEWSORT,SP=100                                          01090000
//SORTIN   DD  DSN=EX10.DS.UNLDC3,DISP=SHR                              01100000
//SORTOUT  DD  DSN=&&C3,DISP=(,PASS),                                   01110000
//             DCB=(RECFM=FB,LRECL=307,BLKSIZE=),                       01120000
//             SPACE=(CYL,(100,50),RLSE)                                01130000
//SYSIN    DD *                                                         01140000
  SORT FIELDS=(1,11,CH,A)                                               01150000
/*                                                                      01160000
//*-------------------------------------------------------------------- 01170000
//*      SORT MASTER FILE BY LINK# (FOR EX10B53 INPUT)                  01180000
//*-------------------------------------------------------------------- 01190000
//SRT060  EXEC NEWSORT,SP=30                                            01200000
//SORTIN  DD  DSN=&&B51OVC3,DISP=(OLD,DELETE)                           01210000
//SORTOUT DD  DSN=&&B53INV,DISP=(,PASS),                                01220000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                         01230000
//            SPACE=(CYL,(50,20),RLSE)                                  01240000
//SYSIN   DD *                                                          01250000
  SORT FIELDS=(1,11,CH,A)                                               01260000
/*                                                                      01270000
//*---------------------------------------------------------------------01280000
//*      EX10B53(MASTER VS C3 MATCHING BY LINK#)                        01290000
//*---------------------------------------------------------------------01300000
//ST040    EXEC PGM=EX10B53                                             01310000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            01320000
//SYSPRINT DD  SYSOUT=*                                                 01330000
//PLIDUMP  DD  SYSOUT=*                                                 01340000
//SEXTC3I  DD  DSN=&&C3,DISP=(OLD,PASS)                                 01350000
//SEXB53I  DD  DSN=&&B53INV,DISP=(OLD,DELETE)                           01360000
//SEXB53O  DD  DSN=&&B53OV,DISP=(,PASS),                                01370000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       01380000
//             SPACE=(CYL,(50,20),RLSE)                                 01390000
//*-------------------------------------------------------------------- 01400000
//*     SORT CM FILE BY CUST# (FOR EX10B54 INPUT)  CHG EB53             01410000
//*-------------------------------------------------------------------- 01420000
//*//SRT070   EXEC NEWSORT,SP=100                                       01431000
//*//SORTIN   DD  DSN=WTAASVS.INTG.CM,DISP=SHR                          01440000
//*//SORTOUT  DD  DSN=&&CM,DISP=(,PASS),                                01450000
//*//             DCB=(RECFM=FB,LRECL=196,BLKSIZE=),                    01460000
//*//             SPACE=(CYL,(300,50),RLSE)                             01470000
//*//SYSIN    DD *                                                      01480000
//*  SORT FIELDS=(5,6,CH,A)                                             01490000
//*/*                                                                   01500000
//*-------------------------------------------------------------------- 01500200
//*RT070   EXEC NEWSORT,RUNNO=&RUNNO,SP=100           <== 05/05/02 CHG  01501000
//SRT070   EXEC NEWSORT,SP=100                                          01502000
//*ORTIN   DD  DSN=LJ84.DS.TM11D&RUNNO,DISP=SHR       <== 05/05/02 CHG  01503000
//*ORTIN   DD  DSN=LJ84.DS.TM11,DISP=SHR                                01504001
//SORTIN   DD  DSN=LJ84.DS.TM11.FB,DISP=SHR                             01505001
//SORTOUT  DD  DSN=&&TM11,DISP=(,PASS),                                 01506000
//             DCB=(RECFM=FB,LRECL=486,BLKSIZE=),                       01508000
//             SPACE=(CYL,(300,50),RLSE)                                01509000
//SYSIN    DD *                                                         01509100
  SORT FIELDS=(1,6,CH,A)                                                01509200
/*                                                                      01509300
//*-------------------------------------------------------------------- 01510000
//*      SORT MASTER FILE BY CONTRACT CUST# (FOR EX10B54 INPUT)         01520000
//*-------------------------------------------------------------------- 01530000
//SRT080  EXEC NEWSORT,SP=50                                            01540000
//SORTIN  DD  DSN=&&B52OV,DISP=(OLD,DELETE)                             01550000
//        DD  DSN=&&B53OV,DISP=(OLD,DELETE)                             01560000
//SORTOUT DD  DSN=&&B54INV,DISP=(,PASS),                                01570000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        01580000
//            SPACE=(CYL,(50,20),RLSE)                                  01590000
//SYSIN   DD *                                                          01600000
  SORT FIELDS=(1,6,CH,A)                                                01610000
/*                                                                      01620000
//*---------------------------------------------------------------------01630000
//*   EX10B54(MASTER VS CM MATCHING: BY CONTRACT CUST#->ABBREV.SET)     01640000
//*---------------------------------------------------------------------01650000
//ST050    EXEC PGM=EX10B54                                             01660000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            01670000
//SYSPRINT DD  SYSOUT=*                                                 01680000
//PLIDUMP  DD  SYSOUT=*                                                 01690000
//*SMSCM1I  DD  DSN=&&CM,DISP=(OLD,PASS) ==> EB53 CHG                   01700000
//SLJTM1I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               01701000
//SEXB54I  DD  DSN=&&B54INV,DISP=(OLD,DELETE)                           01710000
//SEXB54O  DD  DSN=&&B54OV,DISP=(,PASS),                                01720000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       01730000
//             SPACE=(CYL,(50,20),RLSE)                                 01740000
//*-------------------------------------------------------------------- 01750000
//*      SORT MASTER FILE BY BILL TO CUST# (FOR EX10B55 INPUT)          01760000
//*-------------------------------------------------------------------- 01770000
//SRT090  EXEC NEWSORT,SP=50                                            01780000
//SORTIN  DD  DSN=&&B54OV,DISP=(OLD,DELETE)                             01790000
//SORTOUT DD  DSN=&&B55INV,DISP=(,PASS),                                01800000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        01810000
//            SPACE=(CYL,(50,20),RLSE)                                  01820000
//SYSIN   DD *                                                          01830000
  SORT FIELDS=(57,6,CH,A)                                               01840000
/*                                                                      01850000
//*---------------------------------------------------------------------01860000
//*   EX10B55(MASTER VS CM MATCHING: BY BILL TO CUST#->ABBREV.SET)      01870000
//*---------------------------------------------------------------------01880000
//ST060    EXEC PGM=EX10B55                                             01890000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            01900000
//SYSPRINT DD  SYSOUT=*                                                 01910000
//PLIDUMP  DD  SYSOUT=*                                                 01920000
//*SMSCM2I  DD  DSN=&&CM,DISP=(OLD,PASS)  ==> EB53 CHG                  01930000
//SLJTM2I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               01931000
//SEXB55I  DD  DSN=&&B55INV,DISP=(OLD,DELETE)                           01940000
//SEXB55O  DD  DSN=&&B55OV,DISP=(,PASS),                                01950000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       01960000
//             SPACE=(CYL,(50,20),RLSE)                                 01970000
//*-------------------------------------------------------------------- 01980000
//*      SORT MASTER FILE BY INSTALL@ CUST# (FOR EX10B56 INPUT)         01990000
//*-------------------------------------------------------------------- 02000000
//SRT100  EXEC NEWSORT,SP=50                                            02010000
//SORTIN  DD  DSN=&&B55OV,DISP=(OLD,DELETE)                             02020000
//SORTOUT DD  DSN=&&B56INV,DISP=(,PASS),                                02030000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        02040000
//            SPACE=(CYL,(50,20),RLSE)                                  02050000
//SYSIN   DD *                                                          02060000
  SORT FIELDS=(29,6,CH,A)                                               02070000
/*                                                                      02080000
//*---------------------------------------------------------------------02090000
//*   EX10B56(MASTER VS CM MATCHING: BY INSTALL@ CUST#->ABBREV.SET)     02100000
//*---------------------------------------------------------------------02110000
//ST070    EXEC PGM=EX10B56                                             02120000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            02130000
//SYSPRINT DD  SYSOUT=*                                                 02140000
//PLIDUMP  DD  SYSOUT=*                                                 02150000
//*SMSCM3I  DD  DSN=&&CM,DISP=(OLD,PASS)  ==> EB53 CHG                  02160000
//SLJTM3I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               02161000
//SEXB56I  DD  DSN=&&B56INV,DISP=(OLD,DELETE)                           02170000
//SEXB56O  DD  DSN=&&B56OV,DISP=(,PASS),                                02180000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       02190000
//             SPACE=(CYL,(50,20),RLSE)                                 02200000
//*-------------------------------------------------------------------- 02210000
//*     SORT CD FILE BY CUST# (FOR EX10B57 INPUT) EB53 DEL              02220000
//*-------------------------------------------------------------------- 02230000
//*//SRT110   EXEC NEWSORT,SP=200                                       02240000
//*//SORTIN   DD  DSN=WTAASVS.INTG.CD,DISP=SHR                          02250000
//*//SORTOUT  DD  DSN=&&CD,DISP=(,PASS),                                02260000
//*//             DCB=(RECFM=FB,LRECL=300,BLKSIZE=),                    02270000
//*//             SPACE=(CYL,(300,150),RLSE)                            02280000
//*//SYSIN    DD *                                                      02290000
//*  SORT FIELDS=(5,6,CH,A)                                             02300000
//*/*                                                                   02310000
//*-------------------------------------------------------------------- 02320000
//*      SORT MASTER FILE BY INSTALL@ CUST# (FOR EX10B57 INPUT)         02330000
//*-------------------------------------------------------------------- 02340000
//SRT120  EXEC NEWSORT,SP=50                                            02350000
//SORTIN  DD  DSN=&&B56OV,DISP=(OLD,DELETE)                             02360000
//SORTOUT DD  DSN=&&B57INV,DISP=(,PASS),                                02370000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        02380000
//            SPACE=(CYL,(50,20),RLSE)                                  02390000
//SYSIN   DD *                                                          02400000
  SORT FIELDS=(29,6,CH,A)                                               02410000
/*                                                                      02420000
//*---------------------------------------------------------------------02430000
//*  EX10B57(MASTER VS CD MATCHING:BY INSTALL@ CUST# ->SALESMAN# SET)   02440000
//*---------------------------------------------------------------------02450000
//ST080    EXEC PGM=EX10B57                                             02460000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            02470000
//SYSPRINT DD  SYSOUT=*                                                 02480000
//PLIDUMP  DD  SYSOUT=*                                                 02490000
//*SMSCD1I  DD  DSN=&&CD,DISP=(OLD,PASS) ==> EB53 CHG                   02500000
//SLJTM1I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               02501000
//SEXB57I  DD  DSN=&&B57INV,DISP=(OLD,DELETE)                           02510000
//SEXB57O  DD  DSN=&&B57OV,DISP=(,PASS),                                02520000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       02530000
//             SPACE=(CYL,(50,20),RLSE)                                 02540000
//*-------------------------------------------------------------------- 02550000
//*     SORT DC FILE BY ORDER# (FOR EX10B58 INPUT)                      02560000
//*-------------------------------------------------------------------- 02570000
//SRT130   EXEC NEWSORT,SP=30                                           02580000
//SORTIN   DD  DSN=WTAASVS.INTG.DC,DISP=SHR                             02590000
//SORTOUT  DD  DSN=&&DC,DISP=(,PASS),                                   02600000
//             DCB=(RECFM=FB,LRECL=404,BLKSIZE=),                       02610000
//             SPACE=(CYL,(30,10),RLSE)                                 02620000
//SYSIN    DD *                                                         02630000
  SORT FIELDS=(5,6,CH,A)                                                02640000
/*                                                                      02650000
//*-------------------------------------------------------------------- 02660000
//*      SORT MASTER FILE BY ORDER# (FOR EX10B58 INPUT)                 02670000
//*-------------------------------------------------------------------- 02680000
//SRT140  EXEC NEWSORT,SP=50                                            02690000
//SORTIN  DD  DSN=&&B57OV,DISP=(OLD,DELETE)                             02700000
//SORTOUT DD  DSN=&&B58INV,DISP=(,PASS),                                02710000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        02720000
//            SPACE=(CYL,(50,20),RLSE)                                  02730000
//SYSIN   DD *                                                          02740000
  SORT FIELDS=(102,6,CH,A)                                              02750000
/*                                                                      02760000
//*---------------------------------------------------------------------02770000
//*   EX10B58(MASTER VS DC(MES) MATCHING:BY ORDER# ->MCI CODE SET)      02780000
//*---------------------------------------------------------------------02790000
//ST090    EXEC PGM=EX10B58                                             02800000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            02810000
//SYSPRINT DD  SYSOUT=*                                                 02820000
//PLIDUMP  DD  SYSOUT=*                                                 02830000
//SMSDC1I  DD  DSN=&&DC,DISP=(OLD,PASS)                                 02840000
//SEXB58I  DD  DSN=&&B58INV,DISP=(OLD,DELETE)                           02850000
//SEXB58O  DD  DSN=&&B58OV,DISP=(,PASS),                                02860000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       02870000
//             SPACE=(CYL,(50,20),RLSE)                                 02880000
//*-------------------------------------------------------------------- 02890000
//*     SORT STATUS DB BY CONTRACT# (FOR EX10B80 INPUT)                 02900000
//*-------------------------------------------------------------------- 02910000
//SRT142   EXEC NEWSORT,RUNNO=&RUNNO,SP=100                             02920000
//SORTIN   DD  DSN=EX10.DS.UNLDBS.R&RUNNO,DISP=SHR                      02930000
//SORTOUT  DD  DSN=&&TBS,DISP=(,PASS),                                  02940000
//             DCB=(RECFM=FB,LRECL=115,BLKSIZE=),                       02950000
//             SPACE=(CYL,(30,10),RLSE)                                 02960000
//SYSIN    DD *                                                         02960100
  SORT FIELDS=(1,17,CH,A)                                               02960200
/*                                                                      02960300
//*-------------------------------------------------------------------- 02960400
//*      SORT MASTER FILE BY CONTRACT# (FOR EX10B80 INPUT)              02960500
//*-------------------------------------------------------------------- 02960600
//SRT144  EXEC NEWSORT,SP=50                                            02960700
//SORTIN  DD  DSN=&&B58OV,DISP=(OLD,DELETE)                             02960800
//SORTOUT DD  DSN=&&B80INV,DISP=(,PASS),                                02960900
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        02961000
//            SPACE=(CYL,(50,20),RLSE)                                  02962000
//SYSIN   DD *                                                          02963000
  SORT FIELDS=(85,17,CH,A)                                              02964000
/*                                                                      02965000
//*---------------------------------------------------------------------02966000
//* EX10B80 MASTER VS STATUS DB MATCHING:BY CONTRACT#->DFXAD,CSTIS,CRTRN02967000
//*---------------------------------------------------------------------02968000
//ST094    EXEC PGM=EX10B80                                             02969000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            02969100
//SYSPRINT DD  SYSOUT=*                                                 02969200
//PLIDUMP  DD  SYSOUT=*                                                 02969300
//SEXTBSI  DD  DSN=&&TBS,DISP=(OLD,PASS)                                02969400
//SEXB80I  DD  DSN=&&B80INV,DISP=(OLD,DELETE)                           02969500
//SEXB80O  DD  DSN=&&B80OV,DISP=(,PASS),                                02969600
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       02969700
//             SPACE=(CYL,(50,20),RLSE)                                 02969800
//*-------------------------------------------------------------------- 02969900
//*     SORT EARS TC1 BY SECTION CODE (FOR EX10B81 INPUT)               02970000
//*-------------------------------------------------------------------- 02970100
//SRT146   EXEC NEWSORT,SP=50                                           02970200
//SORTIN   DD  DSN=KR23.DS.T000D,DISP=SHR                               02970300
//SORTOUT  DD  DSN=&&TC1,DISP=(,PASS),                                  02970400
//             DCB=(RECFM=FB,LRECL=160,BLKSIZE=),                       02970500
//             SPACE=(CYL,(50,20),RLSE)                                 02970600
//SYSIN    DD *                                                         02970700
  SORT FIELDS=(28,2,CH,A)                                               02970800
  INCLUDE COND=(1,3,CH,EQ,C'TC1')                                       02970900
  SUM FIELDS=NONE                                                       02971000
/*                                                                      02971100
//*-------------------------------------------------------------------- 02971200
//*      SORT MASTER FILE BY SECTION CODE (FOR EX10B81 INPUT)           02971300
//*-------------------------------------------------------------------- 02971400
//SRT148  EXEC NEWSORT,SP=50                                            02971500
//SORTIN  DD  DSN=&&B80OV,DISP=(OLD,DELETE)                             02971600
//SORTOUT DD  DSN=&&B81INV,DISP=(,PASS),                                02971700
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        02971800
//            SPACE=(CYL,(50,20),RLSE)                                  02971900
//SYSIN   DD *                                                          02972000
  SORT FIELDS=(164,2,CH,A)                                              02972100
/*                                                                      02972200
//*---------------------------------------------------------------------02972300
//* EX10B81 MASTER VS EARS TC1 MATCHING:BY SECTION -> RDTAI,RFSAB,RBOCH 02972400
//*---------------------------------------------------------------------02972500
//ST098    EXEC PGM=EX10B81                                             02972600
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            02972700
//SYSPRINT DD  SYSOUT=*                                                 02972800
//PLIDUMP  DD  SYSOUT=*                                                 02972900
//SKRTC1I  DD  DSN=&&TC1,DISP=(OLD,PASS)                                02973000
//SEXB81I  DD  DSN=&&B81INV,DISP=(OLD,DELETE)                           02973100
//SEXB81O  DD  DSN=&&B81OV,DISP=(,PASS),                                02973200
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       02973300
//             SPACE=(CYL,(50,20),RLSE)                                 02973400
//*-------------------------------------------------------------------- 02973500
//*     SORT D0 FILE BY ORDER# (FOR EX10B59 INPUT)                      02973600
//*-------------------------------------------------------------------- 02973700
//SRT150   EXEC NEWSORT,SP=100                                          02973800
//SORTIN   DD  DSN=WTAASVS.INTG.DO,DISP=SHR                             02973900
//SORTOUT  DD  DSN=&&DO,DISP=(,PASS),                                   02974000
//             DCB=(RECFM=FB,LRECL=604,BLKSIZE=),                       02975000
//             SPACE=(CYL,(100,50),RLSE)                                02976000
//SYSIN    DD *                                                         02977000
  SORT FIELDS=(5,6,CH,A)                                                02978000
/*                                                                      02979000
//*-------------------------------------------------------------------- 02980000
//*      SORT MASTER FILE BY ORDER# (FOR EX10B59 INPUT)                 02990000
//*-------------------------------------------------------------------- 03000000
//SRT160  EXEC NEWSORT,SP=50                                            03010000
//SORTIN  DD  DSN=&&B81OV,DISP=(OLD,DELETE)                             03020000
//SORTOUT DD  DSN=&&B59IN,DISP=(,PASS),                                 03030000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        03040000
//            SPACE=(CYL,(50,20),RLSE)                                  03050000
//SYSIN   DD *                                                          03060000
  SORT FIELDS=(102,6,CH,A)                                              03070000
/*                                                                      03080000
//*---------------------------------------------------------------------03090000
//*   EX10B59(MASTER VS DO MATCHING:BY ORDER# ->MCI CODE SET)           03100000
//*---------------------------------------------------------------------03110000
//ST100    EXEC PGM=EX10B59                                             03120000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            03130000
//SYSPRINT DD  SYSOUT=*                                                 03140000
//PLIDUMP  DD  SYSOUT=*                                                 03150000
//SMSDO1I  DD  DSN=&&DO,DISP=(OLD,PASS)                                 03160000
//SEXB59I  DD  DSN=&&B59IN,DISP=(OLD,DELETE)                            03170000
//SEXB59O  DD  DSN=&&B59OUT,DISP=(,PASS),                               03180000
//*            DCB=(RECFM=FB,LRECL=180,BLKSIZE=),                       03190000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       03200000
//             SPACE=(CYL,(50,20),RLSE)                                 03210000
//*--------------------------------------------------------------------+03220000
//*      SCRATCH 1                                                      03230000
//*--------------------------------------------------------------------+03240000
//SCR010  EXEC MSSSCR2,SOUT='*',SYM='TM=&TM,TD=&TD'                     03250000
//SYSIN    DD  *                                                        03260000
 DSN=EX10.DS.OPP.VALD.CSV                                               03270000
 DSN=EX10.DS.OPP.VALD.D&TM&TD                                           03280000
/*                                                                      03290000
//*--------------------------------------------------------------------+03300000
//*      SORT MASTER FILE BY MCI,CONT.CUST NAME FOR CSV                 03310000
//*--------------------------------------------------------------------+03320000
//SRT170 EXEC NEWSORT,SOUT='*',SP=50                                    03330000
//SORTIN   DD  DSN=&&B59OUT,DISP=(OLD,PASS)                             03340000
//SORTOUT  DD  DSN=&&VALD,DISP=(,PASS),                                 03350000
//*            DCB=(RECFM=FB,LRECL=200,BLKSIZE=),                       03360000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       03370000
//             SPACE=(CYL,(50,20),RLSE)                                 03380000
//SYSIN    DD *                                                         03390000
 SORT FIELDS=(142,1,CH,A,19,22,CH,A)                                    03400000
 OUTREC FIELDS=(C'''',1,6,C',',C'''',7,6,C',',C'''',13,6,C',',         X03410000
                19,22,C',',C'''',41,6,C',',47,22,C',',C'''',69,6,C',', X03420000
                75,22,C',',C'''',97,17,C',',                           X03430000
                C'''',114,6,C',',C'''',120,4,C',',C'''',               X03440000
                124,3,C',',127,15,C',',142,1,C',',C'''',               X03450000
                143,15,C',',C'''',158,2,C'/',160,2,C'/',162,2,C',',    X03460000
                C'''',164,3,C',',C'''',167,2,C'/',169,2,C'/',171,2,    X03470000
                C',',173,1,C',',174,1,C',',C'''',175,4,C'/',           X03480000
                179,2,C'/',181,2,C',',C'''',183,2,C',',C'''',          X03490000
                185,2,C',',C'''',187,2,C',',189,1,C',',C'''',190,4)     03500000
/*                                                                      03510000
//*--------------------------------------------------------------------+03520000
//*       VALIDATION REPORT CREATION(HEADER ADDITION)                   03530000
//*--------------------------------------------------------------------+03540000
//SRT180 EXEC NEWSORT,SOUT='*',SP=10                                    03550000
//SORTIN   DD  DSN=EX10.HD.VALD,DISP=SHR                                03560000
//         DD  DSN=&&VALD,DISP=(OLD,DELETE)                             03570000
//SORTOUT  DD  DSN=EX10.DS.OPP.VALD.CSV,DISP=(,CATLG),                  03580000
//*            DCB=(RECFM=FB,LRECL=200,BLKSIZE=),                       03590000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       03600000
//             SPACE=(CYL,(50,20),RLSE)                                 03610000
//SYSIN    DD *                                                         03620000
 SORT FIELDS=COPY                                                       03630000
/*                                                                      03640000
//*--------------------------------------------------------------------+03650000
//*       VALIDATION REPORT BACKUP                                      03660000
//*--------------------------------------------------------------------+03670000
//SRT190   EXEC NEWSORT,TM=&TM,TD=&TD,SP=50                             03680000
//SORTIN   DD  DSN=&&B59OUT,DISP=(OLD,DELETE)                           03690000
//SORTOUT  DD  DSN=EX10.DS.OPP.VALD.D&TM&TD,DISP=(,CATLG),              03700000
//             MGMTCLAS=WEEK,                                           03710000
//*            DCB=(RECFM=FB,LRECL=180,BLKSIZE=),                       03720000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       03730000
//             SPACE=(CYL,(50,20),RLSE)                                 03740000
//SYSIN    DD *                                                         03750000
 SORT FIELDS=(142,1,CH,A,19,22,CH,A)                                    03760000
/*                                                                      03770000
//*----------------------------------------*                            03780000
//*     EXCEPTION REPORT CREATION STEP                                  03790000
//*----------------------------------------*                            03800000
//*-------------------------------------------------------------------- 03810000
//*     SORT CT BY CONTRACT# (FOR EX10B51 INPUT)                        03820000
//*-------------------------------------------------------------------- 03830000
//SRT200   EXEC NEWSORT,SP=100                                          03840000
//SORTIN   DD  DSN=EX10.DS.UNLDCT,DISP=SHR                              03850000
//SORTOUT  DD  DSN=&&CTE,DISP=(,PASS),                                  03860000
//             DCB=(RECFM=FB,LRECL=230,BLKSIZE=),                       03870000
//             SPACE=(CYL,(120,10),RLSE)                                03880000
//SYSIN    DD *                                                         03890000
 SORT FIELDS=(1,17,CH,A)                                                03900000
 INCLUDE COND=(112,1,CH,EQ,C' ')                                        03910000
/*                                                                      03920000
//*-------------------------------------------------------------------- 03930000
//*     SORT CL BY CONTRACT# (FOR EX10B51 INPUT)                        03940000
//*-------------------------------------------------------------------- 03950000
//SRT210   EXEC NEWSORT,SP=50                                           03960000
//*ORTIN   DD  DSN=EX10.DS.UNLDCL,DISP=SHR                              03970000
//SORTIN   DD  DSN=&&B50O,DISP=(OLD,DELETE)                             03980000
//SORTOUT  DD  DSN=&&CLE,DISP=(,PASS),                                  03990000
//             DCB=(RECFM=FB,LRECL=130,BLKSIZE=),                       04000000
//             SPACE=(CYL,(100,50),RLSE)                                04010000
//SYSIN    DD *                                                         04020000
  SORT FIELDS=(15,17,CH,A)                                              04030000
  INCLUDE COND=(32,1,CH,EQ,C'I',AND,33,1,CH,NE,C'@',AND,               X04040000
                39,1,CH,EQ,C' ',AND,53,1,CH,EQ,C'A')                    04050000
//*             94,3,BI,GE,X'03104C',AND,94,3,BI,LE,X'50001C')          04060000
/*                                                                      04070000
//*-------------------------------------------------------------------  04080000
//*     EX10B51(CL VS CT MATCHING BY CONTRACT#)                         04090000
//*-------------------------------------------------------------------  04100000
//ST110    EXEC PGM=EX10B51                                             04110000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            04120000
//SYSPRINT DD  SYSOUT=*                                                 04130000
//PLIDUMP  DD  SYSOUT=*                                                 04140000
//SEXTCLI  DD  DSN=&&CLE,DISP=(OLD,DELETE)                              04150000
//SEXTCTI  DD  DSN=&&CTE,DISP=(OLD,DELETE)                              04160000
//SEXTC2O  DD  DSN=&&B51OEC2,DISP=(,PASS),                              04170000
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                        04180000
//             SPACE=(CYL,(100,20),RLSE)                                04190000
//SEXTC3O  DD  DSN=&&B51OEC3,DISP=(,PASS),                              04200000
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                        04210000
//             SPACE=(CYL,(100,20),RLSE)                                04220000
//*-------------------------------------------------------------------- 04230000
//*      SORT MASTER FILE BY LINK# (FOR EX10B52 INPUT)                  04240000
//*-------------------------------------------------------------------- 04250000
//SRT220  EXEC NEWSORT,SP=50                                            04260000
//SORTIN  DD  DSN=&&B51OEC2,DISP=(OLD,DELETE)                           04270000
//SORTOUT DD  DSN=&&B52INE,DISP=(,PASS),                                04280000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                         04290000
//            SPACE=(CYL,(50,20),RLSE)                                  04300000
//SYSIN   DD *                                                          04310000
  SORT FIELDS=(1,11,CH,A)                                               04320000
/*                                                                      04330000
//*---------------------------------------------------------------------04340000
//*      EX10B52(MASTER VS C2 MATCHING BY LINK#)                        04350000
//*---------------------------------------------------------------------04360000
//ST120    EXEC PGM=EX10B52                                             04370000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            04380000
//SYSPRINT DD  SYSOUT=*                                                 04390000
//PLIDUMP  DD  SYSOUT=*                                                 04400000
//SEXTC2I  DD  DSN=&&C2,DISP=(OLD,DELETE)                               04410000
//SEXB52I  DD  DSN=&&B52INE,DISP=(OLD,DELETE)                           04420000
//SEXB52O  DD  DSN=&&B52OE,DISP=(,PASS),                                04430000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       04440000
//             SPACE=(CYL,(50,20),RLSE)                                 04450000
//*-------------------------------------------------------------------- 04460000
//*      SORT MASTER FILE BY LINK# (FOR EX10B53 INPUT)                  04470000
//*-------------------------------------------------------------------- 04480000
//SRT230  EXEC NEWSORT,SP=50                                            04490000
//SORTIN  DD  DSN=&&B51OEC3,DISP=(OLD,DELETE)                           04500000
//SORTOUT DD  DSN=&&B53INE,DISP=(,PASS),                                04510000
//            DCB=(RECFM=FB,LRECL=80,BLKSIZE=),                         04520000
//            SPACE=(CYL,(50,20),RLSE)                                  04530000
//SYSIN   DD *                                                          04540000
  SORT FIELDS=(1,11,CH,A)                                               04550000
/*                                                                      04560000
//*---------------------------------------------------------------------04570000
//*      EX10B53(MASTER VS C3 MATCHING BY LINK#)                        04580000
//*---------------------------------------------------------------------04590000
//ST130    EXEC PGM=EX10B53                                             04600000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            04610000
//SYSPRINT DD  SYSOUT=*                                                 04620000
//PLIDUMP  DD  SYSOUT=*                                                 04630000
//SEXTC3I  DD  DSN=&&C3,DISP=(OLD,DELETE)                               04640000
//SEXB53I  DD  DSN=&&B53INE,DISP=(OLD,DELETE)                           04650000
//SEXB53O  DD  DSN=&&B53OE,DISP=(,PASS),                                04660000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       04670000
//             SPACE=(CYL,(50,20),RLSE)                                 04680000
//*-------------------------------------------------------------------- 04690000
//*      SORT MASTER FILE BY CONTRACT CUST# (FOR EX10B54 INPUT)         04700000
//*-------------------------------------------------------------------- 04710000
//SRT240  EXEC NEWSORT,SP=50                                            04720000
//SORTIN  DD  DSN=&&B52OE,DISP=(OLD,DELETE)                             04730000
//        DD  DSN=&&B53OE,DISP=(OLD,DELETE)                             04740000
//SORTOUT DD  DSN=&&B54INE,DISP=(,PASS),                                04750000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        04760000
//            SPACE=(CYL,(50,20),RLSE)                                  04770000
//SYSIN   DD *                                                          04780000
  SORT FIELDS=(1,6,CH,A)                                                04790000
/*                                                                      04800000
//*---------------------------------------------------------------------04810000
//*   EX10B54(MASTER VS CM MATCHING: BY CONTRACT CUST#->ABBREV.SET)     04820000
//*---------------------------------------------------------------------04830000
//ST140    EXEC PGM=EX10B54                                             04840000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            04850000
//SYSPRINT DD  SYSOUT=*                                                 04860000
//PLIDUMP  DD  SYSOUT=*                                                 04870000
//*SMSCM1I  DD  DSN=&&CM,DISP=(OLD,PASS)  ==> EB53 CHG                  04880000
//SLJTM1I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               04881000
//SEXB54I  DD  DSN=&&B54INE,DISP=(OLD,DELETE)                           04890000
//SEXB54O  DD  DSN=&&B54OE,DISP=(,PASS),                                04900000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       04910000
//             SPACE=(CYL,(50,20),RLSE)                                 04920000
//*-------------------------------------------------------------------- 04930000
//*      SORT MASTER FILE BY BILL TO CUST# (FOR EX10B55 INPUT)          04940000
//*-------------------------------------------------------------------- 04950000
//SRT250  EXEC NEWSORT,SP=50                                            04960000
//SORTIN  DD  DSN=&&B54OE,DISP=(OLD,DELETE)                             04970000
//SORTOUT DD  DSN=&&B55INE,DISP=(,PASS),                                04980000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        04990000
//            SPACE=(CYL,(50,20),RLSE)                                  05000000
//SYSIN   DD *                                                          05010000
  SORT FIELDS=(57,6,CH,A)                                               05020000
/*                                                                      05030000
//*---------------------------------------------------------------------05040000
//*   EX10B55(MASTER VS CM MATCHING: BY BILL TO CUST#->ABBREV.SET)      05050000
//*---------------------------------------------------------------------05060000
//ST150    EXEC PGM=EX10B55                                             05070000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05080000
//SYSPRINT DD  SYSOUT=*                                                 05090000
//PLIDUMP  DD  SYSOUT=*                                                 05100000
//*SMSCM2I  DD  DSN=&&CM,DISP=(OLD,PASS)  ==> EB53 CHG                  05110000
//SLJTM2I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               05111000
//SEXB55I  DD  DSN=&&B55INE,DISP=(OLD,DELETE)                           05120000
//SEXB55O  DD  DSN=&&B55OE,DISP=(,PASS),                                05130000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05140000
//             SPACE=(CYL,(50,20),RLSE)                                 05150000
//*-------------------------------------------------------------------- 05160000
//*      SORT MASTER FILE BY INSTALL@ CUST# (FOR EX10B56 INPUT)         05170000
//*-------------------------------------------------------------------- 05180000
//SRT260  EXEC NEWSORT,SP=50                                            05190000
//SORTIN  DD  DSN=&&B55OE,DISP=(OLD,DELETE)                             05200000
//SORTOUT DD  DSN=&&B56INE,DISP=(,PASS),                                05210000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        05220000
//            SPACE=(CYL,(50,20),RLSE)                                  05230000
//SYSIN   DD *                                                          05240000
  SORT FIELDS=(29,6,CH,A)                                               05250000
/*                                                                      05260000
//*---------------------------------------------------------------------05270000
//*   EX10B56(MASTER VS CM MATCHING: BY INSTALL@ CUST#->ABBREV.SET)     05280000
//*---------------------------------------------------------------------05290000
//ST160    EXEC PGM=EX10B56                                             05300000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05310000
//SYSPRINT DD  SYSOUT=*                                                 05320000
//PLIDUMP  DD  SYSOUT=*                                                 05330000
//*SMSCM3I  DD  DSN=&&CM,DISP=(OLD,DELETE) ==> EB53 CHG                 05340000
//SLJTM3I  DD  DSN=&&TM11,DISP=(OLD,PASS)                               05341000
//SEXB56I  DD  DSN=&&B56INE,DISP=(OLD,DELETE)                           05350000
//SEXB56O  DD  DSN=&&B56OE,DISP=(,PASS),                                05360000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05370000
//             SPACE=(CYL,(50,20),RLSE)                                 05380000
//*-------------------------------------------------------------------- 05390000
//*      SORT MASTER FILE BY INSTALL@ CUST# (FOR EX10B57 INPUT)         05400000
//*-------------------------------------------------------------------- 05410000
//SRT270  EXEC NEWSORT,SP=50                                            05420000
//SORTIN  DD  DSN=&&B56OE,DISP=(OLD,DELETE)                             05430000
//SORTOUT DD  DSN=&&B57INE,DISP=(,PASS),                                05440000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        05450000
//            SPACE=(CYL,(50,20),RLSE)                                  05460000
//SYSIN   DD *                                                          05470000
  SORT FIELDS=(29,6,CH,A)                                               05480000
/*                                                                      05490000
//*---------------------------------------------------------------------05500000
//*  EX10B57(MASTER VS CD MATCHING:BY INSTALL@ CUST# ->SALESMAN# SET)   05510000
//*---------------------------------------------------------------------05520000
//ST170    EXEC PGM=EX10B57                                             05530000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05540000
//SYSPRINT DD  SYSOUT=*                                                 05550000
//PLIDUMP  DD  SYSOUT=*                                                 05560000
//*SMSCD1I  DD  DSN=&&CD,DISP=(OLD,DELETE)  ==> EB53 CHG                05570000
//SLJTM1I  DD  DSN=&&TM11,DISP=(OLD,DELETE)                             05571000
//SEXB57I  DD  DSN=&&B57INE,DISP=(OLD,DELETE)                           05580000
//SEXB57O  DD  DSN=&&B57OE,DISP=(,PASS),                                05590000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05600000
//             SPACE=(CYL,(50,20),RLSE)                                 05610000
//*-------------------------------------------------------------------- 05620000
//*      SORT MASTER FILE BY ORDER# (FOR EX10B58 INPUT)                 05630000
//*-------------------------------------------------------------------- 05640000
//SRT280  EXEC NEWSORT,SP=50                                            05650000
//SORTIN  DD  DSN=&&B57OE,DISP=(OLD,DELETE)                             05660000
//SORTOUT DD  DSN=&&B58INE,DISP=(,PASS),                                05670000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        05680000
//            SPACE=(CYL,(50,20),RLSE)                                  05690000
//SYSIN   DD *                                                          05700000
  SORT FIELDS=(102,6,CH,A)                                              05710000
/*                                                                      05720000
//*---------------------------------------------------------------------05730000
//*   EX10B58(MASTER VS DC(MES) MATCHING:BY ORDER# ->MCI CODE SET)      05740000
//*---------------------------------------------------------------------05750000
//ST180    EXEC PGM=EX10B58                                             05760000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05770000
//SYSPRINT DD  SYSOUT=*                                                 05780000
//PLIDUMP  DD  SYSOUT=*                                                 05790000
//SMSDC1I  DD  DSN=&&DC,DISP=(OLD,DELETE)                               05800000
//SEXB58I  DD  DSN=&&B58INE,DISP=(OLD,DELETE)                           05810000
//SEXB58O  DD  DSN=&&B58OE,DISP=(,PASS),                                05820000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05830000
//             SPACE=(CYL,(50,20),RLSE)                                 05840000
//*-------------------------------------------------------------------- 05850000
//*      SORT MASTER FILE BY CONTRACT# (FOR EX10B80 INPUT)              05860000
//*-------------------------------------------------------------------- 05870000
//SRT284  EXEC NEWSORT,SP=50                                            05880000
//SORTIN  DD  DSN=&&B58OE,DISP=(OLD,DELETE)                             05890000
//SORTOUT DD  DSN=&&B80INE,DISP=(,PASS),                                05900000
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        05910000
//            SPACE=(CYL,(50,20),RLSE)                                  05910100
//SYSIN   DD *                                                          05910200
  SORT FIELDS=(85,17,CH,A)                                              05910300
/*                                                                      05910400
//*---------------------------------------------------------------------05910500
//* EX10B80 MASTER VS STATUS DB MATCHING:BY CONTRACT#->DFXAD,CSTIS,CRTRN05910600
//*---------------------------------------------------------------------05910700
//ST184    EXEC PGM=EX10B80                                             05910800
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05910900
//SYSPRINT DD  SYSOUT=*                                                 05911000
//PLIDUMP  DD  SYSOUT=*                                                 05912000
//SEXTBSI  DD  DSN=&&TBS,DISP=(OLD,DELETE)                              05913000
//SEXB80I  DD  DSN=&&B80INE,DISP=(OLD,DELETE)                           05914000
//SEXB80O  DD  DSN=&&B80OE,DISP=(,PASS),                                05915000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05916000
//             SPACE=(CYL,(50,20),RLSE)                                 05917000
//*-------------------------------------------------------------------- 05918000
//*      SORT MASTER FILE BY SECTION CODE (FOR EX10B81 INPUT)           05919000
//*-------------------------------------------------------------------- 05919100
//SRT288  EXEC NEWSORT,SP=50                                            05919200
//SORTIN  DD  DSN=&&B80OE,DISP=(OLD,DELETE)                             05919300
//SORTOUT DD  DSN=&&B81INE,DISP=(,PASS),                                05919400
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        05919500
//            SPACE=(CYL,(50,20),RLSE)                                  05919600
//SYSIN   DD *                                                          05919700
  SORT FIELDS=(164,2,CH,A)                                              05919800
/*                                                                      05919900
//*---------------------------------------------------------------------05920000
//* EX10B81 MASTER VS EARS TC1 MATCHING:BY SECTION -> RDTAI,RFSAB,RBOCH 05920100
//*---------------------------------------------------------------------05920200
//ST188    EXEC PGM=EX10B81                                             05920300
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05920400
//SYSPRINT DD  SYSOUT=*                                                 05920500
//PLIDUMP  DD  SYSOUT=*                                                 05920600
//SKRTC1I  DD  DSN=&&TC1,DISP=(OLD,DELETE)                              05920700
//SEXB81I  DD  DSN=&&B81INE,DISP=(OLD,DELETE)                           05920800
//SEXB81O  DD  DSN=&&B81OE,DISP=(,PASS),                                05920900
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05921000
//             SPACE=(CYL,(50,20),RLSE)                                 05921100
//*-------------------------------------------------------------------- 05921200
//*      SORT MASTER FILE BY ORDER# (FOR EX10B60 INPUT)                 05921300
//*-------------------------------------------------------------------- 05921400
//SRT290  EXEC NEWSORT,SP=50                                            05921500
//SORTIN  DD  DSN=&&B81OE,DISP=(OLD,DELETE)                             05921600
//SORTOUT DD  DSN=&&B60IN,DISP=(,PASS),                                 05921700
//            DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                        05921800
//            SPACE=(CYL,(50,20),RLSE)                                  05921900
//SYSIN   DD *                                                          05922000
  SORT FIELDS=(102,6,CH,A)                                              05923000
/*                                                                      05924000
//*---------------------------------------------------------------------05925000
//*   EX10B60(MASTER VS DO MATCHING:BY ORDER# ->MCI CODE SET)           05926000
//*---------------------------------------------------------------------05927000
//ST190    EXEC PGM=EX10B60                                             05928000
//STEPLIB  DD  DSN=EX10.DS.EXECLOAD,DISP=SHR                            05929000
//SYSPRINT DD  SYSOUT=*                                                 05930000
//PLIDUMP  DD  SYSOUT=*                                                 05940000
//SMSDO1I  DD  DSN=&&DO,DISP=(OLD,DELETE)                               05950000
//SEXB60I  DD  DSN=&&B60IN,DISP=(OLD,DELETE)                            05960000
//SEXB60O  DD  DSN=&&B60OUT,DISP=(,PASS),                               05970000
//*            DCB=(RECFM=FB,LRECL=180,BLKSIZE=),                       05980000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       05990000
//             SPACE=(CYL,(10,10),RLSE)                                 06000000
//*--------------------------------------------------------------------+06010000
//*      SCRATCH 2                                                      06020000
//*--------------------------------------------------------------------+06030000
//SCR020  EXEC MSSSCR2,SOUT='*',SYM='TM=&TM,TD=&TD'                     06040000
//SYSIN    DD  *                                                        06050000
 DSN=EX10.DS.OPP.EXCP.CSV                                               06060000
 DSN=EX10.DS.OPP.EXCP.D&TM&TD                                           06070000
/*                                                                      06080000
//*--------------------------------------------------------------------+06090000
//*      SORT MASTER FILE BY MCI,CONT.CUST NAME FOR CSV                 06100000
//*--------------------------------------------------------------------+06110000
//*SRT300 EXEC NEWSORT,SOUT='*',SP=10 <=03/12/10 CHG 03-04YEB           06120000
//SRT300 EXEC NEWSORT,SOUT='*',SP=50                                    06130000
//SORTIN   DD  DSN=&&B60OUT,DISP=(OLD,PASS)                             06140000
//SORTOUT  DD  DSN=&&EXCP,DISP=(,PASS),                                 06150000
//*            DCB=(RECFM=FB,LRECL=200,BLKSIZE=),                       06160000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       06170000
//*            SPACE=(CYL,(1,1),RLSE)   <=03/12/10 CHG 03-04YEB         06180000
//             SPACE=(CYL,(50,20),RLSE)                                 06190000
//SYSIN    DD *                                                         06200000
 SORT FIELDS=(142,1,CH,A,7,22,CH,A)                                     06210000
 OUTREC FIELDS=(C'''',1,6,C',',7,22,C',',C'''',29,6,C',',35,22,C',',   X06220000
                C'''',57,6,C',',63,22,C',',C'''',85,17,C',',           X06230000
                C'''',102,6,C',',C'''',                                X06240000
                108,4,C',',C'''',112,3,C',',C'''',115,6,C',',C'''',    X06250000
                121,6,C',',127,15,C',',142,1,C',',C'''',               X06260000
                143,15,C',',C'''',158,2,C'/',160,2,C'/',162,2,C',',    X06270000
                C'''',164,3,C',',C'''',167,2,C'/',169,2,C'/',171,2,    X06280000
                C',',173,1,C',',174,1,C',',C'''',175,4,C'/',           X06290000
                179,2,C'/',181,2,C',',C'''',183,2,C',',C'''',          X06300000
                185,2,C',',C'''',187,2,C',',189,1,C',',C'''',190,4)     06310000
/*                                                                      06320000
//*--------------------------------------------------------------------+06330000
//*       EXCEPTION REPORT CREATION(HEADER ADDITION)                    06340000
//*--------------------------------------------------------------------+06350000
//SRT310 EXEC NEWSORT,SOUT='*',SP=10                                    06360000
//SORTIN   DD  DSN=EX10.HD.EXCP,DISP=SHR                                06370000
//         DD  DSN=&&EXCP,DISP=(OLD,DELETE)                             06380000
//SORTOUT  DD  DSN=EX10.DS.OPP.EXCP.CSV,DISP=(,CATLG),                  06390000
//*            DCB=(RECFM=FB,LRECL=200,BLKSIZE=),                       06400000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       06410000
//*            SPACE=(CYL,(1,1),RLSE) =>03/12/10 '03-'04 YEB            06420000
//             SPACE=(CYL,(50,20),RLSE)                                 06430000
//SYSIN    DD *                                                         06440000
 SORT FIELDS=COPY                                                       06450000
/*                                                                      06460000
//*--------------------------------------------------------------------+06470000
//*       EXCEPTION REPORT BACKUP                                       06480000
//*--------------------------------------------------------------------+06490000
//SRT320   EXEC NEWSORT,TM=&TM,TD=&TD,SP=50                             06500000
//SORTIN   DD  DSN=&&B60OUT,DISP=(OLD,DELETE)                           06510000
//SORTOUT  DD  DSN=EX10.DS.OPP.EXCP.D&TM&TD,DISP=(,CATLG),              06520000
//             MGMTCLAS=WEEK,                                           06530000
//*            DCB=(RECFM=FB,LRECL=180,BLKSIZE=),                       06540000
//             DCB=(RECFM=FB,LRECL=250,BLKSIZE=),                       06550000
//             SPACE=(CYL,(50,20),RLSE)                                 06560000
//SYSIN    DD *                                                         06570000
 SORT FIELDS=(142,1,CH,A,7,22,CH,A)                                     06580000
/*                                                                      06590000
//*--------------------------------------------------------------------+06600000
