//VSAM02R  JOB (080912DL510),'GDC232',                 
//             MSGLEVEL=(1,1),NOTIFY=&SYSUID           
//RUNCOB  EXEC PGM=VSAM02                              
//STEPLIB   DD DSN=GDC232.LOADLIB,DISP=SHR             
//SYSPRINT  DD SYSOUT=*                                
//INDD      DD DSN=GDC232.VKTS01,DISP=(OLD,CATLG)      
//                                                     