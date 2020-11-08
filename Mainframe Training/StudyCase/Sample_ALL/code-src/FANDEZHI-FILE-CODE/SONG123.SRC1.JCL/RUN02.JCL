//RUN02    JOB (080912DL510),'SONG123',                  
//             MSGCLASS=O,MSGLEVEL=(1,1),NOTIFY=&SYSUID  
//RUNCOB  EXEC PGM=FILE01                                
//STEPLIB   DD DSN=SONG123.COB.LOAD,DISP=SHR             
//SYSPRINT  DD SYSOUT=*                                  
//INDD      DD DSN=SONG123.DAT.PS02,DISP=(SHR,CATLG)     
//OUTDD     DD DSN=SONG123.DAT.PS01,DISP=(MOD,CATLG)     