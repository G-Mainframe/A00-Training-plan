‚±‚Ì•Ó‚ðŽQl‚ÉB                                                        
//*******************************************************************   
//* STEP2 :   2..4 CONV AND CHECKSUM                                    
//*******************************************************************   
//*******************************************************************   
//** **************************************************************** **
//**  STEP2:EBCIC -> S-JIS CONV   EBCDI:IBM-939  SJIS:IBM-943           
//**                                           IBM-943 PC (NEW SJIS)    
//**                IBM-939 EBCDIC EXTEND ENG  IBM-932 PC (SJIS)        
//**                IBM-930 EBCDIC EXTEND KANA IBM-850 PC Latin1 (ASCII)
//**                IBM-037 EBCDIC Latin1      IBM-eucJP EUC Japanese   
//** **************************************************************** **
//ICONV   PROC                                                          
//ICONVX  EXEC PGM=EDCICONV,                                            
//             PARM='FROMCODE(IBM-939),TOCODE(IBM-943)'                 
//*----------------- HOST IBM CODE ---------- PC,6000 CODE -------------
//STEPLIB  DD  DSN=SYS1.SCEERUN,DISP=SHR                                
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUT1   DD  DUMMY                                                    
//SYSUT2   DD  DUMMY                                                    
//SYSIN    DD  DUMMY                                                    
//     PEND                                                             
//********************************************************************  
//*   STEP2-1:ICONV                                                     
//********************************************************************  
//ICONVJ  EXEC ICONV,TD=&TD                                             
//SYSUT1   DD  DSN=FM50.DS.UNLDJDB.H&TD,DISP=SHR                        
//SYSUT2   DD  DSN=&&ICONVJ,DISP=(,PASS),                               
//             UNIT=(DISK2,3),SPACE=(CYL,(200,70),RLSE),                
//             DCB=(RECFM=VB,LRECL=5800,BLKSIZE=23200)                  
//SYSIN    DD  DUMMY                                                    
                        
                        
                        
                        
                        
                                                                        
                                                                        
//*******************************************************************   
//* STEP2 :   2..4 CONV AND CHECKSUM                                    
//*******************************************************************   
//*******************************************************************   
//** **************************************************************** **
//**  STEP2:EBCIC -> S-JIS CONV   EBCDI:IBM-939  SJIS:IBM-932           
//**                IBM-939 EBCDIC EXTEND ENG  IBM-932 PC (SJIS)        
//**                IBM-930 EBCDIC EXTEND KANA IBM-850 PC Latin1 (ASCII)
//**                IBM-037 EBCDIC Latin1      IBM-eucJP EUC Japanese   
//** **************************************************************** **
//ICONV   PROC                                                          
//ICONVX  EXEC PGM=EDCICONV,                                            
//             PARM='FROMCODE(IBM-939),TOCODE(IBM-932)'                 
//*----------------- HOST IBM CODE ---------- PC,6000 CODE -------------
//STEPLIB  DD  DSN=SYS1.SCEERUN,DISP=SHR                                
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUT1   DD  DUMMY                                                    
//SYSUT2   DD  DUMMY                                                    
//SYSIN    DD  DUMMY                                                    
//     PEND                                                             
//********************************************************************  
//*   STEP2-1:ICONV                                                     
//********************************************************************  
//ICONVJ  EXEC ICONV                                                    
//SYSUT1   DD  DSN=&&TMP8,DISP=(OLD,DELETE)                             
//SYSUT2   DD  DSN=&&TMP9,DISP=(,PASS),                                 
//             SPACE=(CYL,(300,100),RLSE),                              
//             UNIT=(DISK2,3),                                          
//             DCB=(RECFM=VB,LRECL=1124,BLKSIZE=26976)                  
//SYSIN    DD  DUMMY                                                    
//********************************************************************  
//ABND010 EXEC PGM=UABEND,COND=(4,GE,ICONVJ.ICONVX)                     
//*                                                                     
//********************************************************************* 
//* VB TO FB CONVERSION                                                 
//********************************************************************* 
//GENER   PROC                                                          
//GENER   EXEC PGM=ICEGENER                                             
//SYSPRINT DD  SYSOUT=*                                                 
//SYSUT1   DD  DUMMY                                                    
//SYSUT2   DD  DUMMY                                                    
//SYSIN    DD  DUMMY                                                    
//     PEND                                                             
//*                                                                     
//VB2FB   EXEC GENER                                                    
//SYSUT1   DD  DSN=&&TMP9,DISP=(OLD,DELETE)                             
//SYSUT2   DD  DSN=&&LC43,                                              
//             DISP=(,PASS),                                            
//             SPACE=(CYL,(300,100),RLSE),                              
//             UNIT=(DISK2,3),                                          
//             DCB=(RECFM=FB,LRECL=1120,BLKSIZE=26880)                  
//SYSIN    DD  *                                                        
  GENERATE MAXFLDS=20,MAXLITS=20                                        
    RECORD FIELD=(1120,1,,1)                                            
//*                                                                     
                                                                        