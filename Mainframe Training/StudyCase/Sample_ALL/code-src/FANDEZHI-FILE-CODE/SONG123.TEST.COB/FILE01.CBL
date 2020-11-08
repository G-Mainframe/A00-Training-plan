*=====================================================        
 IDENTIFICATION DIVISION.                                     
*=====================================================        
 PROGRAM-ID. FILE01.                                          
 AUTHOR.     ZHENGYS.                                         
*******************************************************       
*    PURPOSE :  A SIMPLE COBOL SAMPLE FOR TRANINING   *       
*    FUNCTION:  READ SEQUENCE FILE                    *       
*******************************************************       
*                                                             
*=====================================================        
 ENVIRONMENT DIVISION.                                        
*=====================================================        
 INPUT-OUTPUT        SECTION.                                 
 FILE-CONTROL.                                                
     SELECT INDD     ASSIGN      TO      INDD                 
     ORGANIZATION    IS          SEQUENTIAL                   
     ACCESS MODE     IS          SEQUENTIAL                   
     FILE   STATUS   IS          INDD-STATUS.                 
*                                                             
     SELECT OUTDD    ASSIGN      TO      OUTDD                
     ORGANIZATION    IS          SEQUENTIAL                   
     ACCESS MODE     IS          SEQUENTIAL                   
     FILE   STATUS   IS          OUTDD-STATUS.                
*                                                             
*=====================================================        
 DATA DIVISION.                                               
*=====================================================        
 FILE                SECTION.                                 
 FD INDD   LABEL     RECORD      IS      STANDARD.            
 01 IN-REC.                                                   
    05 IN-NUM                    PIC X(6).                    
    05                           PIC X(3).                    
    05 IN-NAME                   PIC X(31).                   
    05                           PIC X(40).                   
*                                                             
 FD OUTDD  LABEL     RECORD      IS      STANDARD.        
 01 EMP-REC.                                              
    05 EMP-NUM                   PIC X(6).                
    05                           PIC X(14).               
    05 EMP-NAME                  PIC X(30).               
    05                           PIC X(30).               
*                                                         
 WORKING-STORAGE SECTION.                                 
*                                                         
 77 INDD-STATUS                  PIC X(2).                
 77 OUTDD-STATUS                 PIC X(2).                
*                                                         
*=====================================================    
 PROCEDURE DIVISION.                                      
*=====================================================    
 100-BEGIN-READFILE.                                      
     OPEN    INPUT   INDD.                                
     OPEN    OUTPUT  OUTDD.                               
     DISPLAY INDD-STATUS.                                 
     DISPLAY OUTDD-STATUS.                                
     PERFORM 200-READ THRU 200-END-READ.                  
*                                                         
 100-END-PROGRAM.                                         
     CLOSE   INDD.                                        
     CLOSE   OUTDD.                                       
     DISPLAY INDD-STATUS.                                 
     DISPLAY OUTDD-STATUS.                                
     STOP    RUN.                                         
 200-READ.                                                
     READ    INDD                                         
     AT END                                               
             DISPLAY " AT END OF FILE"                    
             GO TO   100-END-PROGRAM                      
     NOT AT END                                           
             MOVE    IN-NUM      TO      EMP-NUM          
             MOVE    IN-NAME     TO      EMP-NAME         
             DISPLAY EMP-REC                              
             WRITE   EMP-REC          
             GO TO   200-READ         
     END-READ.                        
 200-END-READ.                        
     EXIT.                                         