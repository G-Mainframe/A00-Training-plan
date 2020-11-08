//*******************************************************************//
//*                                                                 *//
//* ENTERPRISE PL/I V3.3 COMPILING AND LINK-EDIT PROCEDURE          *//
//*                                                                 *//
//*                                         2005.12.28              *//
//*                                             L.Y.P               *//
//*******************************************************************//
//IBMZCPL  PROC LNGPRFX='IEL330',
//             LIBPRFX='CEE',
//             SYSLBLK=3200,
//             PLANG=EDCPMSGE,
//             SRC=,
//*            CPYLIB='CEE.SCEESAMP',
//*            CPYLIB2='CEE.SCEESAMP',
//*            CPYLIB3='CEE.SCEESAMP',
//             CPYLIB3='SP010.TEST.PLI',
//             OBJLIB='CEE.SCEEOBJ',
//             GOPGM=
//*
//PLI      EXEC PGM=IBMZPLI,REGION=4M,
// PARM='OBJECT,OPTIONS,SOURCE,LIST,OFFSET,MACRO'
//*PARM='OBJECT,OPTIONS,SOURCE,GRAPHIC,LIST,OFFSET'
//*PARM='OBJECT,OPTIONS,SOURCE'
//STEPLIB  DD   DISP=SHR,DSN=&LNGPRFX..SIBMZCMP
//         DD   DISP=SHR,DSN=&LIBPRFX..SCEERUN
//SYSPRINT DD   SYSOUT=*
//*YSLIB   DD   DISP=SHR,DSN=&CPYLIB
//*        DD   DISP=SHR,DSN=&CPYLIB2
//SYSLIB   DD   DISP=SHR,DSN=&CPYLIB3
//         DD   DISP=SHR,DSN=&LIBPRFX..SCEESAMP
//SYSOUT   DD   SYSOUT=*
//SYSLIN   DD   DSN=&&LOADSET,DISP=(MOD,PASS),
// UNIT=SYSALLDA,SPACE=(CYL,(1,1)),
// DCB=(LRECL=80,BLKSIZE=&SYSLBLK)
//SYSIN    DD   DISP=SHR,DSN=&SRCLIB(&SRC)
//SYSUT1   DD   DSN=&&SYSUT1,
// UNIT=SYSALLDA,SPACE=(1024,(200,50),,CONTIG,ROUND),
// DCB=BLKSIZE=1024
//*
//PLKED    EXEC PGM=EDCPRLK,COND=(8,LT,PLI),REGION=2048K
//STEPLIB  DD   DISP=SHR,DSN=&LIBPRFX..SCEERUN
//SYSPRINT DD   SYSOUT=*
//SYSOUT   DD   SYSOUT=*
//SYSMSGS  DD   DISP=SHR,DSN=&LIBPRFX..SCEEMSGP(&PLANG)
//SYSLIB   DD   DISP=SHR,DSN=&OBJLIB
//SYSDEFSD DD   DUMMY
//SYSMOD   DD   DSN=&&PLNK,DISP=(,PASS),
// UNIT=SYSALLDA,SPACE=(CYL,(1,1)),
// DCB=(RECFM=FB,LRECL=80,BLKSIZE=&SYSLBLK)
//SYSIN    DD   DSN=&&LOADSET,DISP=(OLD,DELETE)
//*
//LKED     EXEC PGM=IEWL,REGION=2048K,COND=((8,LT,PLI),(8,LE,PLKED)),
// PARM='XREF'
//SYSLIB   DD   DISP=SHR,DSN=&LIBPRFX..SCEELKED
//         DD   DSN=SP010.TEST.LOAD2,DISP=SHR
//SYSPRINT DD   SYSOUT=*
//SYSLIN   DD   DSN=*.PLKED.SYSMOD,DISP=(OLD,DELETE)
//         DD   DDNAME=SYSIN
//SYSLMOD  DD   DISP=SHR,DSN=&PGMLIB(&GOPGM)
//SYSUT1   DD   DSN=&&SYSUT1,
// UNIT=SYSALLDA,SPACE=(1024,(200,20)),
// DCB=BLKSIZE=1024
//SYSIN    DD   DUMMY
