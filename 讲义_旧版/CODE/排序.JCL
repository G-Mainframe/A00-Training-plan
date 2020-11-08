//EV6186V1 JOB (F9500B,FF67,31),EV6186V1,                   
//             CLASS=A,NOTIFY=EV6186,                       
//             MSGCLASS=X,MSGLEVEL=(1,1),REGION=4096K       
//SORT10  EXEC NEWSORT,SOUT='*',SP=10                       
//SORTIN   DD  DSN=EX10I.E31452.D060710.MATCH.TEST,DISP=SHR 
//SORTOUT  DD  DSN=EX10I.E31452.D060710.MATCH.TEST1,        
//             DCB=(RECFM=FB,LRECL=151,BLKSIZE=15100),      
//             SPACE=(TRK,(80,40),RLSE),                    
//             DISP=(,CATLG)                                
 SORT FIELDS=(115,7,CH,A)                                   



?明
NEWSORT    排序程序名
SORTIN    ?入文件
SORTOUT ?出文件 
LRECL   ???度          
BLKSIZE  ??倍数 ?大小
SPACE   
SORT FIRLDS (排序起始字?数，排序??度，，)                