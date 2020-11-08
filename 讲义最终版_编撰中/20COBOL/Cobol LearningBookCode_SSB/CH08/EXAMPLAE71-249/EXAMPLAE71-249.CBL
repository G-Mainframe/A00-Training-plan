 IDENTIFICATION DIVISION.                                    
 PROGRAM-ID. EXAMPLE71.                                      
 ENVIRONMENT DIVISION.                                       
 INPUT-OUTPUT SECTION.                                       
 FILE-CONTROL.                                               
   SELECT INPUT-FILE ASSIGN TO INPUT-MSD.                    
   SELECT SORT-FILE ASSIGN TO SORT-MSD.                      
   SELECT OUTPUT-FILE ASSIGN TO OUTPUT-FILE.                 
 DATA DIVISION.
 FILE SECTION.
 FD INOUT-FILE LABEL RECORD IS STANDARD.
   COPY
 SD SORT-WORK.
   COPY
 FD OUTPUT-FILE LAVEL RECORD IS STANDARD.                        
   COPY 
 PROCEDURE DIVISION.
 BEGIN.     
     SORT SORT-WORK-FILE
         ON ASCENDING  KEY   FAOULTY-S
         ON DESCENDING KEY   TOTAL-S
         USING INPUT-FILE
         GIVING OPUTPUT-FILE.
 STOP RUN.                          