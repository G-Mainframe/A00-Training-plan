//PGM005R  JOB (080912DL510),'RUN COBOL PROGRM',            
//             MSGCLASS=O,MSGLEVEL=(1,1),NOTIFY=&SYSUID     
//RUNCOB  EXEC PGM=PGM005                                   
//STEPLIB   DD DSN=GDC232.LOADLIB,DISP=SHR                  
//SYSPRINT  DD SYSOUT=*                                     
//PS01      DD DSN=GDC232.TEST.PS01,DISP=(SHR,CATLG)        
//PS02      DD DSN=GDC232.TEST.PS02,DISP=(MOD,CATLG)        
//                                                          