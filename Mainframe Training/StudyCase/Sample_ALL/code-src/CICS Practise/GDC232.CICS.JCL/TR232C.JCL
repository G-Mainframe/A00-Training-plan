//TR232C   JOB  (ACC#),'WYL',CLASS=A,MSGCLASS=A,                        00010000
//    MSGLEVEL=(1,1),NOTIFY=&SYSUID                                     00020000
//*********************************************                         00030000
//* USED TO COMPILE COBOL + CICS PROGRAM                                00040000
//*********************************************                         00050000
//*--------------------------------------------                         00060000
//    SET MEMBER=TR232                                                  00070000
//    SET SRCLIB=GDC232.CICS.COB                @YOUR PROGRAM LIB       00080000
//    SET COPYLIB1='GDC232.BOOKLIB'             @MAP COBYBOOK LIB       00090000
//*--------------------------------------------                         00100000
//*   DO NOT CHANGE THE FOLLOW PARAMITERS                               00110000
//*--------------------------------------------                         00120000
//    SET LNGPRFX='COBOL.V3R4'                                          00130000
//    SET LIBPRFX='CEE'                                                 00140000
//    SET INDEX='CICSTS.V2R3.CICS'                                      00150000
//    SET DSCTLIB='CICSTS.V2R3.CICS.SDFHCOB'                            00160000
//    SET PROGLIB=USER.CICS.GDC.LOADLIB                                 00170000
//    SET OUTC=A                                                        00180000
//    SET REG=4M                      REGION SIZE FOR ALL STEPS         00190000
//    SET CBLPARM=('NODYNAM,LIB,RENT','CICS(''COBOL2'')')    @BA84313C  00200000
//    SET LNKPARM='LIST,XREF,RENT,MAP'  BINDER OPTIONS                  00210000
//    SET WORK=SYSDA                  UNIT FOR WORK DATASETS            00220000
//*-------------------------------------------------------------------  00230000
//COBOL  EXEC PGM=IGYCRCTL,REGION=&REG,                                 00240000
//       PARM=&CBLPARM                                                  00250000
//STEPLIB  DD DSN=&LNGPRFX..SIGYCOMP,DISP=SHR                           00260000
//         DD DSN=&INDEX..SDFHLOAD,DISP=SHR                             00270000
//SYSLIB   DD DSN=&DSCTLIB,DISP=SHR                                     00280000
//         DD DSN=&INDEX..SDFHCOB,DISP=SHR                              00290000
//         DD DSN=&INDEX..SDFHMAC,DISP=SHR                              00300000
//         DD DSN=&INDEX..SDFHSAMP,DISP=SHR                             00310000
//         DD DSN=&COPYLIB1,DISP=SHR                                    00320000
//SYSPRINT DD SYSOUT=&OUTC                                              00330000
//SYSLIN   DD DSN=&&LOADSET,DISP=(MOD,PASS),                            00340000
//            UNIT=&WORK,SPACE=(TRK,(3,3))                              00350000
//SYSUT1   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00360000
//SYSUT2   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00370000
//SYSUT3   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00380000
//SYSUT4   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00390000
//SYSUT5   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00400000
//SYSUT6   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00410000
//SYSUT7   DD UNIT=&WORK,SPACE=(CYL,(1,1))                              00420000
//SYSIN    DD DISP=SHR,DSN=&SRCLIB(&MEMBER)                             00430000
//COPYLINK EXEC PGM=IEBGENER,COND=(7,LT,COBOL)                          00440000
//SYSUT1   DD DSN=&INDEX..SDFHSAMP(DFHEILID),DISP=SHR                   00450000
//SYSUT2   DD DSN=&&COPYLINK,DISP=(NEW,PASS),                           00460000
//            DCB=(LRECL=80,BLKSIZE=400,RECFM=FB),                      00470000
//            UNIT=&WORK,SPACE=(400,(20,20))                            00480000
//SYSPRINT DD SYSOUT=&OUTC                                              00490000
//SYSIN    DD DUMMY                                                     00500000
//*                                                                     00510000
//LKED   EXEC PGM=IEWL,REGION=&REG,                                     00520000
//            PARM='&LNKPARM',COND=(7,LT,COBOL)                         00530000
//SYSLIB   DD DSN=&INDEX..SDFHLOAD,DISP=SHR                             00540000
//         DD DSN=&LIBPRFX..SCEELKED,DISP=SHR                           00550000
//SYSLMOD  DD DSN=&PROGLIB,DISP=SHR                                     00560000
//SYSUT1   DD UNIT=&WORK,DCB=BLKSIZE=1024,                              00570000
//            SPACE=(1024,(200,20))                                     00580000
//SYSPRINT DD SYSOUT=&OUTC                                              00590000
//SYSLIN   DD DSN=&&COPYLINK,DISP=(OLD,DELETE)                          00600000
//         DD DSN=&&LOADSET,DISP=(OLD,DELETE)                           00610000
//         DD DDNAME=SYSIN                                              00620000
//SYSIN    DD *                                                         00630000
      NAME TR232(R)                                                     00640000
/*                                                                      00650000
