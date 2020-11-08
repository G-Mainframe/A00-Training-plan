      ***********************************************************************
      * �v���O������ : SYOHIN
      * �T�v         : ���i�t�@�C���ɃA�N�Z�X���A���i���R�[�h�̎擾���s���B
      *                SYOHIN COPYRIGHT FUJITSU LIMITED 2005 
      ***********************************************************************      
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SYOHIN.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.      
      *---���i�t�@�C��------------------
            SELECT  SYOLF1         ASSIGN TO SYOLF1
            ORGANIZATION           IS  INDEXED
            RECORD KEY             IS  ���i�R�[�h OF ���i���R�[�h
            FILE STATUS            IS  FILE-STS1 FILE-STS2
            ACCESS MODE            IS  RANDOM.
       
       DATA DIVISION.
       FILE SECTION.
         FD SYOLF1 IS EXTERNAL.
               COPY SYOPF OF XFDLIB.
       WORKING-STORAGE SECTION.
       01  FILE-STS-AREA.
         03  FILE-STS1               PIC  X(02).
         03  FILE-STS2               PIC  X(06).
       
       COPY MSGTBL.
       
       03  OPEN-FLG               PIC  X(03).       
       LINKAGE                         SECTION.
       01  P-SYOHINREC.
           02  P-SYOCD             PIC 9(5).
           02  P-SYONA             PIC N(20).
           02  P-BAIKA             PIC 9(8).
           02  P-GENKA             PIC 9(8). 
       01  P-Msg                   PIC N(20).
       01  R-ReturnCode            BINARY-LONG.
       PROCEDURE DIVISION USING
                           P-SYOHINREC      *>���i���R�[�h
                           P-Msg            *>���b�Z�[�W
                           RETURNING
                           R-ReturnCode.    *>�߂�l(�G���[�R�[�h)
       
           PERFORM INIT-SEC.
           PERFORM MAIN-SEC.
           PERFORM END-SEC.      
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
           OPEN INPUT SYOLF1.
           IF FILE-STS1 NOT = ZERO THEN
      *         DISPLAY   "*** SYALF1  OPEN ERR (STS1:" FILE-STS1 ") ***"
               MOVE "ERR" TO OPEN-FLG
               MOVE 10 TO R-ReturnCode
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
               CLOSE SYOLF1
           END-IF.
           
      *----------------------------------------
      *  �又��
      *----------------------------------------
       MAIN-SEC SECTION.
           MOVE SPACE TO ���i���R�[�h
           MOVE P-SYOCD TO ���i�R�[�h OF ���i���R�[�h. 
           READ SYOLF1.
      *    *** �t�@�C���X�e�[�^�X�`�F�b�N ***
           IF FILE-STS1 = ZERO THEN
               MOVE ���i���R�[�h TO P-SYOHINREC
           ELSE
      *          *** �Y�����R�[�h���� OR �t�@�C���ُ� ***
               IF FILE-STS1 = "23" THEN
      *            �Y�����R�[�h����         
                   MOVE 5 TO R-ReturnCode
               ELSE
      *            �t�@�C���ُ�         
                   MOVE 10 TO R-ReturnCode
               END-IF
           END-IF.
       END PROGRAM SYOHIN.
