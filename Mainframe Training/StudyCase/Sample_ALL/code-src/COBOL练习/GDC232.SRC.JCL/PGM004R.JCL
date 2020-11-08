//PGM004R  JOB (080912DL510),'RUN COBOL PROGRM',          
//             MSGCLASS=O,MSGLEVEL=(1,1),NOTIFY=&SYSUID   
//RUNCOB  EXEC PGM=PGM004                                 
//STEPLIB   DD DSN=GDC232.LOADLIB,DISP=SHR                
//SYSPRINT  DD SYSOUT=*                                   
//MYPS      DD DSN=GDC232.TEST.PS01,DISP=(,CATLG),        
//             SPACE=(TRK,(1,1)),                         
//             DCB=(DSORG=PS,LRECL=80,RECFM=FB)           
//                                                        