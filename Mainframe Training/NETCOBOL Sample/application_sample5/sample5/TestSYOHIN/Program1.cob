       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program1 AS "TestSYOHIN.Program1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ���i���R�[�h.
           02  ���i�R�[�h  PIC 9(5).
           02  ���i��      PIC N(20).
           02  ����        PIC 9(8).
           02  ����        PIC 9(8).      
      
       01 W-Msg            PIC N(20).
       01 W-ReturnCode     BINARY-LONG.
       PROCEDURE DIVISION.
      *    ���i�R�[�h�ݒ�
           MOVE 10024 TO ���i�R�[�h.
           DISPLAY "���i�R�[�h:" ���i�R�[�h " �̏����������܂��B" 
      *    ���i���R�[�h����     
           CALL "SYOHIN" USING ���i���R�[�h W-Msg RETURNING W-ReturnCode.
           
           DISPLAY ���i�R�[�h " " ���i�� " " ���� " " ����           
       END PROGRAM Program1.
