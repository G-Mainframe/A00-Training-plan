******************************************************************
 IDENTIFICATION DIVISION.                                         
******************************************************************
*                                                                 
 PROGRAM-ID. VSAM01.                                              
*                                                                 
******************************************************************
 ENVIRONMENT DIVISION.                                            
******************************************************************
*-----------------------------------------------------------------
 INPUT-OUTPUT        SECTION.                                     
*-----------------------------------------------------------------
 FILE-CONTROL.                                                    
     SELECT OUTDD    ASSIGN      TO      OUTDD                    
     ORGANIZATION    IS          INDEXED                          
     ACCESS MODE     IS          DYNAMIC                          
     RECORD KEY      IS          EMP-NUM                          
     FILE   STATUS   IS          OUTDD-STATUS.                    
*                                                                 
******************************************************************
 DATA DIVISION.                                                   
******************************************************************
*-----------------------------------------------------------------
 FILE                SECTION.                                     
*-----------------------------------------------------------------
 FD OUTDD.                                                        
 01 EMP-REC.                                                      
    05 EMP-NUM                   PIC X(4).                        
    05                           PIC X(16).                       
    05 EMP-NAME                  PIC X(30).                       
    05                           PIC X(30).                       
******************************************************************
 WORKING-STORAGE SECTION.                                         
******************************************************************
 77 OUTDD-STATUS                 PIC X(2).        
 *                                                                 
******************************************************************
 PROCEDURE DIVISION.                                              
******************************************************************
     OPEN    I-O  OUTDD.                                          
     DISPLAY ' OUTDD-STATUS: ' OUTDD-STATUS.                      
     MOVE    ' 07 '        TO    EMP-NUM.                         
     MOVE    ' JEONGWS '   TO    EMP-NAME.                        
     DISPLAY ' EMP-REC: '  EMP-REC.                               
     WRITE   EMP-REC                                              
         INVALID KEY DISPLAY "VIDEO STATUS :- "  OUTDD-STATUS     
         NOT INVALID KEY DISPLAY "SUCCESSFULLY " OUTDD-STATUS     
     END-WRITE.                                                   
     CLOSE   OUTDD.                                               
     STOP    RUN.                                                                 