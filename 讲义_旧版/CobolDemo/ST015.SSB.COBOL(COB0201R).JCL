//TE007A    JOB 1,JHY,CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),                00000100
//          NOTIFY=&SYSUID                                              00000200
//STEP1  EXEC  PGM=COB0201S                                             00000304
//STEPLIB    DD DSN=ST015.SSB.LOAD,DISP=SHR                             00000403
//SYSPRINT   DD SYSOUT=*                                                00000500
//*IND1     DD  DSN=TE002.DATA,DISP=SHR                                 00000703
//*OUTD1    DD  DSN=TE002.OUTDATA,DISP=SHR                              00000803
