000010 IDENTIFICATION    DIVISION.                                              
000020 PROGRAM-ID.     CH81.                                                    
000030 ENVIRONMENT     DIVISION.                                                
000040 INPUT-OUTPUT    SECTION.                                                 
000050 FILE-CONTROL.                                                            
000060     SELECT STOCK-OLD    ASSIGN TO DISK.                                  
000070     SELECT STOCK-NEW    ASSIGN TO DISK.                                  
000080     SELECT STOCK-MERGE  ASSIGN TO DISK.                                  
000090 DATA DIVISION.                                                           
000100 FILE SECTION.                                                            
000110 FD STOCK-OLD LABEL RECORD IS STANDARD                                    
000120         VALUE OF FILE-ID "SO.DAT".                                       
000130 01  OLD-REG.                                                             
000140      02 O-NO        PIC    9(5).                                         
000150      02 O-U-PRICE   PIC    9(4)V99.                                      
000160      02 O-DESCRIP   PIC    X(4O).                                        
000170 FD STOCK-NEW LABEL RECORD IS STANDARD                                    
000180        VALUE OF FILE-ID "SN. DAT".                                       
000190 01      NEW-REC.                                                         
000200      02 N-NO        PIC    9(5).                                         
000210      02 N-U-PRICE   PIC    9(4)V99.                                      
000220      02 N-DESCRIP   PIC    X(40).                                        
000230 FD STOCK-MERGE LABEL RECORD IS STANDARD                                  
000240        VALUE OF FILE-ID "SM.DAT".                                        
000250 01 M-REC.                                                                
000260      02 M-NO          PIC    9(5).                                       
000270      02 M-U-PRICE     PIC    9(4)V99.                                    
000280      02 M-DESCRIP     PIC    X(4O).                                      
000290*                                                                         
000300 WORKING-STORAGE SECTION.                                                 
000310  77    SWITCH-0      PIC    X    VALUE    "N".                           
000320  77    SWITCH-N      PIC    X    VALUE    "N".                           
000330  77    COUNTER       PIC    9(3) VALUE      0.                           
000340*                                                                         
000350 PROCEDURE    DIVISION.                                                   
000360  M-100-MAIN-RTN.                                                         
000370      OPEN INPUT STOCK-OLD STOCK-NEW OUTPUT STOCK-MERGE.                  
000380      READ STOCK-OLD       AT END MOVE "Y" TO SWITCH-0                    
000390      READ STOCK-NEW       AT END MOVE "Y" TO SWITCH-N                    
000400      PERFORM M-200-MERGE-RTN UNTIL                                       
000410         SWITCH-O ="Y" AND SWITCH-N = "Y".                                
000420        CLOSE STOCK-OLD STOCK-NEW STOCK-MERGE.                            
000430        STOP RUN.                                                         
000440*                                                                         
000450  M-200-MERGE-RTN.                                                        
000460        ADD 1 TO COUNTER.                                                 
000470        MOVE COUNTER TO O-NO N-NO.                                        
000480        IF O-U-PRICE > N-U-PRICE                                          
000490                 WRITE M-REC FROM OLD-REG                                 
000500                 PERFORM M-300-READ-OLD                                   
000510        ELSE WRITE M-REC FROM NEW-REC                                     
000520                  PERFORM M-400-READ-NEW.                                 
000530 M-300-READ-OLD.                                                          
000540        READ STOCK-OLD AT END MOVE "Y" TO SWITCH-0                        
000550                     MOVE ZEROS       TO O-U-PRICE.                       
000560 M-400-READ-NEW.                                                          
000570     READ STOCK-NEW AT END MOVE "Y" TO SWITCH-N                           
000580                          MOVE ZEROS TO N-U-PRICE.                        