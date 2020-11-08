000010 IDENTIFICATION                               DIVISION.
000020 PROGRAM-ID. SUM2.
000030 ENVIRONMENT                                  DIVISION.
000080 DATA                                         DIVISION.
000090 WORKING-STORAGE                              SECTION.
000100 77 A1 PIC 999.
000110 77 A2 PIC 999.
       77 A3 PIC 999.
       77 A PIC 9999.
000120 PROCEDURE DIVISION.
000130 BEGIN.
000131     MOVE ZERO TO A.
000140     DISPLAY  "A1=".
           ACCEPT A1.
           DISPLAY  "A2=".
           ACCEPT A2.
           DISPLAY  "A3=".
           ACCEPT A3.
           ADD A1 TO A.
000160     ADD A2 TO A.
           ADD A3 TO A.
000170     DISPLAY  "A=",A1,"+",A2,"+",A3,"=",A.
000172     ACCEPT A.
000180     STOP RUN.