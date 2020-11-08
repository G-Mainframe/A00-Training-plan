//TE007A    JOB 1,JHY,CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),                00000100
//          NOTIFY=&SYSUID                                              00000200
//STEP1  EXEC  PGM=DSCOPY                                               00000302
//STEPLIB    DD DSN=TE002.COBOL.LOAD,DISP=SHR                           00000402
//SYSPRINT   DD SYSOUT=*                                                00000500
//IND1     DD  DSN=TE002.DATA,DISP=SHR                                  00000701
//OUTD1    DD  DSN=TE002.OUTDATA,DISP=SHR                               00000800
