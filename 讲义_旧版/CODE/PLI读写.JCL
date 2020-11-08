//EV6186V1 JOB (F9500B,FF67,31),EV6186V1,                     
//             CLASS=A,NOTIFY=EV6186,                         
//             MSGCLASS=X,MSGLEVEL=(1,1),REGION=4096K         
//DEL01  EXEC PROGM1,UT=3380,VOL1=SMS001                      
       SCRATCH DSN=EV6186.DS.SDTC.XONLYV1,VOL=&UT=&VOL1,PURGE 
//EX10V1   EXEC PGM=EX10BV1                                   
//STEPLIB  DD  DSN=EX10I.DEVLIB1.LMOD,DISP=SHR                
//SYSPRINT DD  SYSOUT=*                                       
//PLIDUMP  DD  SYSOUT=*                                       
//INF1     DD  DSN=EX10I.E31452.D060710.MATCH.TEST1,DISP=SHR  
//INF2     DD  DSN=EV6186.DS.CRWET0.HONBAN.TEST1,DISP=SHR     
//OUTF1    DD  DSN=EV6186.DS.SDTC.XONLYV1,DISP=(,CATLG),      
//             DCB=(RECFM=FB,LRECL=39,BLKSIZE=3900),          
//             SPACE=(CYL,(100,100),RLSE)    


DEL      ?èú?óù
STEPLIB  LMODòHåa
SYSPRINT  ån?ë≈àÛ
PLIDUMP   
INF1,ïK?òaPLIì‡ïîï∂åèñºàÍívÅCì¸óÕï∂åè
OUTF1,?óùï∂åèÅCLRECL=???ìxÅC