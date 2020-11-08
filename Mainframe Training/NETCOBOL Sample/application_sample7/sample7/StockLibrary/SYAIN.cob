      ***********************************************************************
      * �v���O������ : SYAIN
      * �T�v         : �Ј��e�[�u���ɃA�N�Z�X���F�؂��s���B
      *
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYAIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *=================================================================
      *  �z�X�g�ϐ��錾
      *=================================================================      
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 SQLSTATE     PIC X(5).
       01 SQLMSG       PIC X(128).
       
       01 SYAPF-REC.
         02  SYACD      PIC S9(9) COMP-5.
         02  SYANA      PIC N(20).
         02  PASS       PIC N(6).
         02  BUSYO      PIC S9(9) COMP-5.
         02  SDATE      PIC S9(9) COMP-5.
         02  SNAME      PIC N(20).
      
       01  S-SYACD      PIC S9(9) COMP-5.
           EXEC SQL END DECLARE SECTION END-EXEC.      
         
       COPY MSGTBL. 
       LINKAGE                         SECTION.
       01  P-EmployeeCode           PIC N(06). 
       01  P-Password               PIC N(06). 
       01  P-Msg                    PIC N(20). 
       01  R-ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION USING
                           P-EmployeeCode   *>�Ј��R�[�h
                           P-Password       *>�p�X���[�h
                           P-Msg            *>���b�Z�[�W
                           RETURNING
                           R-ReturnCode.    *>�߂�l(�G���[�R�[�h)
       
           PERFORM MAIN-SEC.
           PERFORM END-SEC.
           EXIT PROGRAM.
      
       MAIN-SEC SECTION.
      *    ���R�[�h���Ȃ������ꍇ�̓��� 
           EXEC SQL WHENEVER NOT FOUND GO TO :P-NOTFOUND END-EXEC.
      
      *    DB�ڑ�
           EXEC SQL CONNECT TO DEFAULT END-EXEC.
      *    �ڑ��m�F
           IF SQLSTATE = "00000" OR SQLSTATE = "01000" THEN
               MOVE FUNCTION DISPLAY-OF(P-EmployeeCode) TO S-SYACD
      
      *        SQL���s
               EXEC SQL
               SELECT SYACD, PASS
                   INTO :SYACD, :PASS FROM SYAPF WHERE SYACD = :S-SYACD
               END-EXEC
      *        �p�X���[�h��r
               IF SQLSTATE = "00000" AND PASS = P-Password THEN
                   MOVE 0 TO R-ReturnCode
               ELSE
                   MOVE 3 TO R-ReturnCode
               END-IF
           END-IF.
      
       END-SEC SECTION.
      *    DB�N���[�Y
           EXEC SQL DISCONNECT DEFAULT END-EXEC.
      *    ���b�Z�[�W�ݒ�
           IF R-ReturnCode > 1 THEN
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
           END-IF.
      
       NOTFOUND-SEC SECTION.
       P-NOTFOUND.
      *    �Ј��R�[�h��������Ȃ������ꍇ�̏���
           MOVE 2 TO R-ReturnCode.
           PERFORM END-SEC.
       END PROGRAM SYAIN.
