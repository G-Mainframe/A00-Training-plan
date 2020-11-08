      ***********************************************************************
      * �v���O������ : SYAIN
      * �T�v         : �Ј��t�@�C���ɃA�N�Z�X���F�؂��s���B
      *                SYAIN COPYRIGHT FUJITSU LIMITED 2005       
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYAIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *---�Ј��t�@�C��------------------
            SELECT  SYALF1         ASSIGN TO SYALF1
            ORGANIZATION           IS  INDEXED
            RECORD KEY             IS  �Ј��R�[�h OF �Ј����R�[�h
            FILE STATUS            IS  FILE-STS1 FILE-STS2
            ACCESS MODE            IS  RANDOM.
      *----------------------------------------
      *  �f�[�^��
      *----------------------------------------
       DATA DIVISION.
       FILE SECTION.
      *
         FD SYALF1 IS EXTERNAL.
           COPY SYAPF OF XFDLIB.
       WORKING-STORAGE SECTION.
       01  FILE-STS-AREA.
         03  FILE-STS1               PIC  X(02).
         03  FILE-STS2               PIC  X(06).
         
       COPY MSGTBL. 

       
       03  OPEN-FLG               PIC  X(03).
       LINKAGE                         SECTION.
       01  P-EmployeeCode           PIC X(06). 
       01  P-Password               PIC X(06). 
       01  P-Msg                    PIC N(20). 
       01  R-ReturnCode             BINARY-LONG.
       PROCEDURE DIVISION USING
                           P-EmployeeCode   *>�Ј��R�[�h
                           P-Password       *>�p�X���[�h
                           P-Msg            *>���b�Z�[�W
                           RETURNING
                           R-ReturnCode.    *>�߂�l(�G���[�R�[�h)
       
           PERFORM    INIT-SEC.
           PERFORM    MAIN-SEC.
           PERFORM    END-SEC.      
           EXIT PROGRAM.
      *----------------------------------------
      *  ��������
      *----------------------------------------
       INIT-SEC SECTION.
      *---��Ɨ̈�̏�����
           MOVE 0 TO R-ReturnCode
           MOVE SPACE TO FILE-STS1.
           MOVE SPACE TO OPEN-FLG.
      *  �Ј��t�@�C��
           OPEN INPUT SYALF1.
           IF FILE-STS1 NOT = ZERO THEN
      *         DISPLAY   "*** SYALF1  OPEN ERR (STS1:" FILE-STS1 ") ***"
               MOVE "ERR" TO OPEN-FLG
               MOVE 9 TO R-ReturnCode
               PERFORM END-SEC
               EXIT PROGRAM
           END-IF.
       
      *----------------------------------------
      *  �I������
      *----------------------------------------
       END-SEC SECTION.
      *  �Ј��t�@�C��
      
           IF R-ReturnCode > 1 THEN
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
           END-IF.
      
            IF OPEN-FLG = SPACE THEN
               CLOSE SYALF1
           END-IF.
           
      *----------------------------------------
      *  �又��
      *----------------------------------------
       MAIN-SEC SECTION.      
           MOVE P-EmployeeCode TO �Ј��R�[�h OF �Ј����R�[�h. 
           READ SYALF1.
      *    *** �t�@�C���X�e�[�^�X�`�F�b�N ***
           IF FILE-STS1 = ZERO THEN
      *          *** �p�X���[�h�`�F�b�N ***
               IF �p�X���[�h OF �Ј����R�[�h = P-Password THEN
                   MOVE 0 TO R-ReturnCode
               ELSE
                   MOVE 3 TO R-ReturnCode
               END-IF
           ELSE
      *          *** �Y�����R�[�h���� OR �t�@�C���ُ� ***
               IF FILE-STS1 = "23" THEN
                   MOVE 2 TO R-ReturnCode
               ELSE
                   MOVE 9 TO R-ReturnCode
               END-IF
           END-IF.
       END PROGRAM SYAIN.
