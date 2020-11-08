//ST015R JOB  (TESTING),'ST015',CLASS=A,
// MSGCLASS=A,MSGLEVEL=(1,1),NOTIFY=ST015
//*******************************************************************//
//*                                                                 *//
//* JCL OF RUNNING PLI BATCH PROGRAM                                *//
//*                                                                 *//
//*                                         2005.12.28              *//
//*                                             L.Y.P               *//
//*******************************************************************//
//*
//JOBLIB   DD DSN=ST015.SSB.LOAD,DISP=SHR
//*------------------------------------------------
//*    RUN PLI TEST0001
//*------------------------------------------------
//SF001   EXEC PGM=PLI0375S
//****SF001   EXEC PGM=PLI0375S
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//*ASSGNOUT DD DSN=ST015.TEST.ASSGNOUT,DISP=OLD
//***TRANS    DD DSN=ST015.TEST.TRANS,DISP=SHR
//
