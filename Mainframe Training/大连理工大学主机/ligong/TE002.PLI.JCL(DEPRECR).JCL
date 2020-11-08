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
//ST001   EXEC PGM=DEPREC
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSIN DD *
    PRICE=20 , AGE=3, AMORT=10 ;
/*

