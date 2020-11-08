//VSAM03C  JOB (080912DL510),'GDC232',                         
//             MSGCLASS=O,MSGLEVEL=(1,1),                      
//             NOTIFY=&SYSUID                                  
//MYLB  JCLLIB ORDER=(COBOL.V3R4.SIGYPROC)                     
//BATCOB  EXEC IGYWCL,                                         
//             PGMLIB=GDC232.LOADLIB,          ;LOAD MODULE    
//             GOPGM=VSAM03                    ;MODULE NAME    
//COBOL.SYSIN  DD DISP=SHR,DSN=GDC232.SRCLIB(VSAM03)           