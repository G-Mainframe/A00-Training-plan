//TE002T01 JOB  (TESTING),'TE002',CLASS=A,
// MSGCLASS=A,MSGLEVEL=(1,1),NOTIFY=&SYSUID
//*******************************************************************//
//*                                                                 *//
//* JCL OF RUNNING PLI BATCH PROGRAM                                *//
//*                                                                 *//
//*                                         2005.12.28              *//
//*                                             L.Y.P               *//
//*******************************************************************//
//*
//JOBLIB   DD DSN=TE002.PLI.LOAD,DISP=SHR
//*------------------------------------------------
//*    RUN PLI TEST0001
//*------------------------------------------------
//ST001   EXEC PGM=ILL32
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN  DD *
0020  0021
              18
              17
              08
              07
//
