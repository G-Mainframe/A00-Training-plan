      ***********************************************************************
      * �v���O������ : ZAIKO
      * �T�v         : ���o�Ƀt�@�C��������o�ɖ��ׂ��擾����B
      *                ZAIKO COPYRIGHT FUJITSU LIMITED 2005 
      ***********************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZAIKO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
      *---���o�Ƀt�@�C��----------------
            SELECT  SYOIOLF1       ASSIGN TO SYOIOLF1
            ORGANIZATION           IS  INDEXED
            RECORD KEY             IS  ���i�R�[�h OF ���o�Ƀ��R�[�h
                                       ���o�ɓ�   OF ���o�Ƀ��R�[�h
            FILE STATUS            IS  FILE-STS1 FILE-STS2
            ACCESS MODE            IS  SEQUENTIAL.
      *----------------------------------------
      *  �f�[�^��
      *----------------------------------------
       DATA DIVISION.
       FILE SECTION.
      *
         FD SYOIOLF1 IS EXTERNAL.
               COPY SYOIOPF OF XFDLIB.
       WORKING-STORAGE SECTION.
      
      *---�R�[�h�e�[�u��----------------
         01  S-CODE.
           03  S-TANKA                 PIC  X(4)  VALUE "0001".
           03  S-GENKA                 PIC  X(4)  VALUE "0002".
           03  S-MUKA                  PIC  X(4)  VALUE "0003".
           03  S-NYUKO                 PIC  X(4)  VALUE "0001".
           03  S-SYUKO                 PIC  X(4)  VALUE "0002".
      *
           03  S-TANGEN                PIC  X(4)  VALUE "0000".
           03  S-NYUSYU                PIC  X(4)  VALUE "0000".
           
      *---�`�[�敪�R�[�h�e�[�u��--------
         01  KUBUN-AREA.
      *    01�`10 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@".
      *    11�`20 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"����@�@�@�@�@�@�@�@�@�@�@�@�@�@�����@�@".
      *    21�`30 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"���ԁ@�@�@�@�@�@�@�@�@�@�@�@�@�@�����@�@".
      *    31�`40 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�d�����d��d���d���ؕ��d�ώd�l���d���@�@".
      *    41�`50 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�d�ԑ��ԏ�ԉ��ԕ��ԕ��߈ϖߒl���d���@�@".
      *    51�`60 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�ݏo���o�Џo�a�o���z�W�o�U�o���o�o���@�@".
      *    61�`70 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�ݖߎ��ߎЖߗa�ߎ��ߓW�ߐU�����������@�@".
      *    70�`80 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�ԏo�U�o�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@".
      *    81�`90 **
           03  FILLER                  PIC  N(20) VALUE
                  NC"�ԓ��U���@�@�@�@�@�@�@�@�@�@�@�@��������".
      *    91�`100**
           03  FILLER                  PIC  N(20) VALUE
                  NC"�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@".
         01 KUBUN-TBL REDEFINES  KUBUN-AREA.
           03  KUBUN-ID          OCCURS 100 TIMES.
             05  FILLER                PIC  N(02).           
      
       01  FILE-STS-AREA.
         03  FILE-STS1               PIC  X(02).
         03  FILE-STS2               PIC  X(06).
        
      *---�t���O�֘A--------------------
         01  FLG-AREA.
           03  END-FLG                 PIC  X(03).
           03  MEISAI-FLG              PIC  X(03).      
      
      *---�v���O������Ɨ̈�------
         01  W-AREA.
           03  W-KEY.
             05  W-Y                   PIC  9(04).
             05  W-M                   PIC  9(02).
             05  W-SYOCD               PIC  9(05).
           03  W-IOYMD.
             05  W-IOY                 PIC  9(04).
             05  W-IOM                 PIC  9(02).
             05  W-IOD                 PIC  9(02).
           03  W-RECCNT                PIC  9(03).
      
       COPY MSGTBL. 
       
       01  OPEN-FLG                 PIC X(03).
       01  LINEMAX                  PIC 9(03) VALUE 10.
       LINKAGE SECTION.
       COPY IODETAIL.      
       01 P-Start                   BINARY-SHORT.
       01 P-Cnt                     PIC 9(03).
       01 P-Next                    PIC 9(01).
       01 P-Msg                     PIC N(20). 
       01 R-ReturnCode              BINARY-LONG.
       PROCEDURE DIVISION USING
                           M-AREA           *>���ח̈�
                           P-Start          *>�J�n�s
                           P-Cnt            *>����
                           P-Next           *>���̃��R�[�h�����邩�ǂ���(����ꍇ��1)
                           P-Msg            *>���b�Z�[�W
                           RETURNING
                           R-ReturnCode.    *>�߂�l(�G���[�R�[�h)
       
           PERFORM INIT-SEC.
           IF R-ReturnCode = 0 THEN
               PERFORM MAIN-SEC
               IF MEISAI-FLG = "MAX" THEN
                   MOVE 1 TO P-Next
               END-IF
               IF MEISAI-FLG = "END" AND P-Cnt = 0 THEN
                   *>���i�R�[�h�͂��������A�Y������N���̃��R�[�h�Ȃ�
                   MOVE 8 TO R-ReturnCode
               END-IF
           END-IF.               
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
           MOVE SPACE TO MEISAI-FLG.
           MOVE SPACE TO END-FLG.
           
           MOVE 0 TO W-RECCNT.
           MOVE 0 TO P-Cnt.
           
      *----���o�Ƀt�@�C��
           OPEN INPUT SYOIOLF1.
           IF FILE-STS1 NOT = ZERO THEN
      *         DISPLAY   "*** SYALF1  OPEN ERR (STS1:" FILE-STS1 ") ***"
               MOVE "ERR" TO OPEN-FLG
               MOVE 9 TO R-ReturnCode
               PERFORM END-SEC
               EXIT PROGRAM
           END-IF.
           
      *---���o�Ƀt�@�C���̈ʒu����------
           MOVE    M-SYOCD  TO    ���i�R�[�h OF ���o�Ƀ��R�[�h.
           MOVE    M-Y      TO    W-IOY.
           MOVE    M-M      TO    W-IOM.
           MOVE    1        TO    W-IOD.
           MOVE    W-IOYMD  TO    ���o�ɓ�   OF ���o�Ƀ��R�[�h.
      
           START    SYOIOLF1  KEY  >=  ���i�R�[�h OF ���o�Ƀ��R�[�h  ���o�ɓ�   OF ���o�Ƀ��R�[�h.                      
      *     23���R�[�h��������܂���B
           IF FILE-STS1 = 23 THEN
               MOVE 8 TO R-ReturnCode
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
               CLOSE SYOIOLF1
           END-IF.
           
      *---------------------------------------------------------------
      *�@���o�Ƀt�@�C���Ǎ�����
      *---------------------------------------------------------------
       SYOIOLF1-READ-SEC SECTION.
      *
           READ SYOIOLF1.
      
           IF FILE-STS1 = ZERO THEN
               MOVE ���o�ɓ� OF ���o�Ƀ��R�[�h TO W-IOYMD
               IF ( M-SYOCD  =  ���i�R�[�h OF ���o�Ƀ��R�[�h )  AND
                  ( M-Y      =  W-IOY    )                      AND
                  ( M-M      =  W-IOM    )
               THEN
                   COMPUTE W-RECCNT = W-RECCNT + 1
               ELSE
                   MOVE "END" TO MEISAI-FLG
               END-IF
           ELSE
               IF FILE-STS1 = "10" THEN
                   MOVE "END" TO MEISAI-FLG
               ELSE
      *             DISPLAY "*** SYOIOLF1 READ ERR (STS1:" FILE-STS1 " ) ***"
                   MOVE "ERR" TO END-FLG
               END-IF
           END-IF.
      
      *
      *---------------------------------------------------------------
      *�@�又��
      *---------------------------------------------------------------
       MAIN-SEC SECTION.      
      *---���o�Ƀt�@�C����ǂ݁A�Ώۃ��R�[�h�ɑ΂��ď���
           PERFORM SYOIOLF1-READ-SEC
      *    ���[�v
           PERFORM UNTIL (END-FLG = "ERR") OR (MEISAI-FLG = "END") OR (MEISAI-FLG = "MAX")
               
               IF W-RECCNT >= P-Start THEN
                   COMPUTE P-Cnt = P-Cnt + 1
                   EVALUATE �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
      
                   WHEN    ZERO
                       CONTINUE
      
      *          *** �[�i�n�����敪�i�P�P�`�Q�X�j
                   WHEN    11  THRU  19
                       EVALUATE   �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    11
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    19
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
                   WHEN    21  THRU  29
                       EVALUATE    �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    21
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
      *          ***�d���n�����敪�i�R�P�`�S�X�j
                   WHEN    31  THRU  39
                       EVALUATE   �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    39
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-GENKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           END-EVALUATE
      
                   WHEN    41  THRU  49
                       EVALUATE    �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    49
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-GENKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
      *          *** �Г��Ǖi�n�����敪�i�T�P�`�U�X�j
                   WHEN    51  THRU  59
                       EVALUATE    �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    51
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    52
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    59
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                       END-EVALUATE
      *
                   WHEN    61  THRU  69
                       EVALUATE    �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    61
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    62
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    69
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                       END-EVALUATE
      
      *          ***�ЊO�s�Ǖi�n�����敪�i�V�P�`�W�X�j
                   WHEN    71  THRU  79
                       EVALUATE    �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    71  THRU  72
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    79
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-SYUKO  TO    S-NYUSYU
                       END-EVALUATE
      *
                   WHEN    81  THRU  89
                       EVALUATE    �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h
                           WHEN    81  THRU  82
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    89
                               MOVE    S-MUKA   TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                           WHEN    OTHER
                               MOVE    S-TANKA  TO    S-TANGEN
                               MOVE    S-NYUKO  TO    S-NYUSYU
                       END-EVALUATE
                   END-EVALUATE
      
                   MOVE  �[�i��   OF ���o�Ƀ��R�[�h        TO  M-NODATE(P-Cnt)
                   MOVE  �`�[�ԍ� OF ���o�Ƀ��R�[�h        TO  M-DENBAN(P-Cnt)
                   MOVE  �`�[�敪�R�[�h OF ���o�Ƀ��R�[�h   TO  M-KUBUN(P-Cnt)
                   MOVE  KUBUN-ID(�`�[�敪�R�[�h OF ���o�Ƀ��R�[�h) 
                                                       TO  M-KUBUNN(P-Cnt)
      
                   EVALUATE S-TANGEN
                   WHEN S-TANKA
                       MOVE M-TANKA  TO M-KAKAKU(P-Cnt)
                   WHEN S-GENKA
                       MOVE M-GENKA  TO M-KAKAKU(P-Cnt)
                   WHEN S-MUKA
                       MOVE 0        TO M-KAKAKU(P-Cnt)
                   END-EVALUATE
      
                   IF S-NYUSYU = S-NYUKO THEN
                       MOVE ���o�ɐ� OF ���o�Ƀ��R�[�h   TO M-ISU(P-Cnt)
                   ELSE
                       MOVE ���o�ɐ� OF ���o�Ƀ��R�[�h   TO M-OSU(P-Cnt)
                   END-IF
               END-IF
      *        ���׍s�����z������I��         
               IF P-Cnt >= LINEMAX THEN
                   MOVE "MAX" TO MEISAI-FLG                  
      *            �Ō��1���ǂ�Ŏ��̍s�����邩�m�F����
               END-IF
               PERFORM SYOIOLF1-READ-SEC
           END-PERFORM.                      
       END PROGRAM ZAIKO.
