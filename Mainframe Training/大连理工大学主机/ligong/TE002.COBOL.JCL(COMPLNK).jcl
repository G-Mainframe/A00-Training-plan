//TE002A    JOB  1,LUK,CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1),               00000100
//          NOTIFY=&SYSUID                                              00000200
//STEP1  EXEC  IGYWCLG                                                  00000300
//COBOL.SYSIN   DD DSN=TE002.COBOL.SOURCE(COB1),DISP=SHR                00000400
//LKED.SYSLMOD  DD DSN=TE002.COBOL.LOAD(COB1),DISP=SHR                  00000500
//*GO           DD DSN=TE002.COBOL.LOAD(COB1),DISP=SHR                  00000501
//*INFILE        DD DSN=TE007.A,DISP=SHR                                00000600
