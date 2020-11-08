//VSAM01R  JOB (080912DL510),'GDC232',                         
//             MSGCLASS=O,MSGLEVEL=(1,1),NOTIFY=&SYSUID        
//RUNCOB  EXEC PGM=VSAM01                                      
//STEPLIB   DD DSN=GDC232.LOADLIB,DISP=SHR                     
//SYSPRINT  DD SYSOUT=*                                        
//OUTDD     DD DSN=GDC232.VKTS01,DISP=(MOD,CATLG)              
//                                                             