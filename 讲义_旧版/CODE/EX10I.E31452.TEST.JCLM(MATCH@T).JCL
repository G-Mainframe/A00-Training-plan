//E31452J1 JOB (F9500B,FK75X,31),KAMIYA,CLASS=A,MSGCLASS=R,             JOB04033
//    NOTIFY=E31452,REGION=20M                                          00002000
/*XEQ JKWIS01                                                           00003000
/*ROUTE PRINT JKWIS01                                                   00004000
//*                                                                     00005000
//*//EX10V010 JOB (F9500B,EX10,41,                                      00006000
//*//              'RUNNO=XXX,LRUNNO=XXX'),                             00007000
//*//              09500,REGION=8M                                      00008000
//*-------------------------------------------------------------------- 00009000
//SORT02  EXEC NEWSORT,SP='10,10'                                       00010000
//SORTIN   DD DISP=SHR,DSN=E31452.PARTS#                                00020000
//SORTOUT  DD DSN=&&UNLDM1,DISP=(,PASS),                                00030000
//      SPACE=(CYL,(100,100),RLSE)                                      00040000
//SYSIN    DD *                                                         00041000
 SORT FIELDS=(1,7,CH,A)                                                 00042000
/*                                                                      00043000
//*-------------------------------------------------------------------- 00044000
//SORT01  EXEC NEWSORT,SP='10,10'                                       00045000
//SORTIN   DD DISP=SHR,DSN=FK75I.E31452.EX10.DS.UNLDM1.D0710            00046000
//SORTOUT  DD DSN=&&UNLDMM,DISP=(,PASS),                                00047000
//      SPACE=(CYL,(100,100),RLSE)                                      00048000
//SYSIN    DD *                                                         00049000
 SORT FIELDS=(10,7,CH,A)                                                00050000
/*                                                                      00050100
//* ---------------------------------------------------------------+    00050200
//STEP5   EXEC AMSSCR                                                   00050300
  DSN=EX10I.E31452.D060714X.MATCH                                       00050400
  DSN=EX10I.E31452.D060714X.MATCH.N1                                    00050500
  DSN=EX10I.E31452.D060714X.MATCH.N2                                    00050600
//** **************************************************************** **00050700
//**  MATCHING FILE                                                   **00050800
//** **************************************************************** **00050900
//MATCH010 EXEC CM91MAT3                                                00051000
//FILE1    DD DSN=&&UNLDM1,DISP=(OLD,DELETE)                            00052000
//FILE2    DD DSN=&&UNLDMM,DISP=(OLD,DELETE)                            00053000
//FILEO    DD DSN=EX10I.E31452.D060714X.MATCH,                          00053100
//            SPACE=(CYL,(100,100),RLSE),DISP=(,CATLG),                 00053200
//            DCB=(RECFM=FB,LRECL=151,BLKSIZE=15100,BUFNO=30)           00053300
//UNMATF1  DD DSN=EX10I.E31452.D060714X.MATCH.N1,                       00053400
//            SPACE=(CYL,(50,50),RLSE),DISP=(,CATLG),                   00053500
//            DCB=(RECFM=FB,LRECL=151,BLKSIZE=15100,BUFNO=30)           00053600
//UNMATF2  DD DSN=EX10I.E31452.D060714X.MATCH.N2,                       00053700
//            SPACE=(CYL,(50,50),RLSE),DISP=(,CATLG),                   00053800
//            DCB=(RECFM=FB,LRECL=151,BLKSIZE=15100,BUFNO=30)           00053900
//SYSIN    DD *                                                         00054000
SARCH                                                                   00054100
FILE1                                                                   00054200
 KEY    0001 0007                                                       00054300
 DATA1  0001 0151                                                       00054400
FILE2                                                                   00054500
 KEY    0010 0007                                                       00054600
 DATA2  0001 0151                                                       00054700
FILEO                                                                   00054800
 DATA2  0001 0151                                                       00054900
/*                                                                      00055000
//** **************************************************************** **00056000
//                                                                      00056100
