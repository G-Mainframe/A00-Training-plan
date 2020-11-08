//ST015A    JOB  1,LUK,CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),               00000100
//          NOTIFY=&SYSUID                                              00000200
//STEP1  EXEC  IGYWCLG                                                  00000300
//COBOL.SYSIN   DD DSN=ST015.SSB.COBOL(COB0201S),DISP=SHR               00000400
//LKED.SYSLMOD  DD DSN=ST015.SSB.LOAD(COB0201S),DISP=SHR                00000500
//*GO           DD DSN=ST015.COBOL.LOAD(COB0201S),DISP=SHR              00000501
//*INFILE        DD DSN=TE007.A,DISP=SHR                                00000600
