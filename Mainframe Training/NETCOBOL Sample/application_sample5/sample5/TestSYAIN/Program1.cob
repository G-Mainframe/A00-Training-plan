       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program1 AS "TestSYAIN.Program1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WK-EmployeeCode           PIC N(06).
       01  WK-Password               PIC N(06).
       01  WK-Msg                    PIC N(20).
       01  WK-ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION.
      *    �Ј��R�[�h�ƃp�X���[�h�̐ݒ�
           MOVE NC"200007" TO WK-EmployeeCode.
           MOVE NC"200007" TO WK-Password.
      
           DISPLAY "�Ј��R�[�h:" WK-EmployeeCode " �p�X���[�h:" WK-Password
               "�ŔF�؂��s���܂��B" 
      *    �F�ؗp��SYAIN�v���O�����Ăяo��
           CALL "SYAIN" USING WK-EmployeeCode WK-Password WK-Msg
               RETURNING WK-ReturnCode.
           IF WK-ReturnCode  =  0 THEN
      *        �F��OK
               DISPLAY "�F�؂ɐ������܂���"
           ELSE
               DISPLAY "�F�؂Ɏ��s���܂����F " WK-Msg
           END-IF
       END PROGRAM Program1.
