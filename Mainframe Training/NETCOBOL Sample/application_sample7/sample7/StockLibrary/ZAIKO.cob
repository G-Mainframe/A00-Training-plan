      ***********************************************************************
      * �v���O������ : ZAIKO
      * �T�v         : ���o�Ƀe�[�u��������o�ɖ��ׂ��擾����B
      *
      ***********************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZAIKO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       INPUT-OUTPUT SECTION.
      
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *=================================================================
      *  �z�X�g�ϐ��錾
      *=================================================================      
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
       01 SQLSTATE     PIC X(5).
       01 SQLMSG       PIC X(128).
       
       01 SYOIOPF-REC.
         02  IODATE     PIC S9(9) COMP-5.
         02  SYOCD      PIC S9(9) COMP-5.
         02  NODATE     PIC S9(9) COMP-5.
         02  SYUBAN     PIC S9(9) COMP-5.
         02  TUBAN      PIC S9(9) COMP-5.
         02  KUBUN      PIC S9(9) COMP-5.
         02  IOSU       PIC S9(9) COMP-5.
      
       01  S-SIODATE    PIC S9(9) COMP-5.
       01  S-EIODATE    PIC S9(9) COMP-5.
       01  S-SYOCD      PIC S9(9) COMP-5.
           EXEC SQL END DECLARE SECTION END-EXEC.
       01  W-IODATE     PIC 9(8).
      
       01  W-DENPYO.
         03  W-SYUBAN   PIC 9(8).                                               
         03  W-TUBAN    PIC 9(4).                                               
      
      
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
           END-IF.
           PERFORM END-SEC.
           EXIT PROGRAM. 
      
      *-----------------------------------------------------------------
       INIT-SEC SECTION.
           MOVE 0 TO R-ReturnCode
           MOVE SPACE TO MEISAI-FLG.
           MOVE SPACE TO END-FLG.
           
           MOVE 0 TO W-RECCNT.
           MOVE 0 TO P-Cnt.
           
      *=================================================================
      *  �J�[�\����錾���܂�
      *=================================================================
           EXEC SQL
             DECLARE CUR1 CURSOR FOR SELECT * FROM SYOIOPF
               WHERE (IODATE BETWEEN :S-SIODATE AND :S-EIODATE) AND SYOCD = :S-SYOCD 
           END-EXEC.
           
      *    DB�ڑ�
           EXEC SQL CONNECT TO DEFAULT END-EXEC.
      *    �ڑ��m�F
           IF SQLSTATE NOT = "00000" AND SQLSTATE NOT = "01000" THEN
               MOVE 9 TO R-ReturnCode
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
               EXIT PROGRAM
           END-IF.
      *---���o�Ƀ��R�[�h�̌�������------
           MOVE    M-SYOCD  TO    S-SYOCD.
           MOVE    M-Y      TO    W-IOY.
           MOVE    M-M      TO    W-IOM.
           MOVE    1        TO    W-IOD.
           MOVE    W-IOYMD  TO    W-IODATE.
           MOVE    W-IODATE TO    S-SIODATE.
           MOVE    31       TO    W-IOD.
           MOVE    W-IOYMD  TO    W-IODATE.
           MOVE    W-IODATE TO    S-EIODATE.
      
      *-----------------------------------------------------------------
       END-SEC SECTION.           
      *    DB�N���[�Y
           EXEC SQL DISCONNECT DEFAULT END-EXEC.
      *    ���b�Z�[�W�ݒ�
           IF R-ReturnCode > 1 THEN
               MOVE MSG-DSP(R-ReturnCode) TO P-Msg
           END-IF. 
       
      *-----------------------------------------------------------------
       FETCH-SEC SECTION.
      *    �t�F�b�`
           EXEC SQL FETCH CUR1 INTO :SYOIOPF-REC END-EXEC.
           IF SQLSTATE = "00000" THEN
      *        �Ǎ������J�E���g�A�b�v           
               COMPUTE W-RECCNT = W-RECCNT + 1
           ELSE
      *        ���R�[�h���Ȃ��ꍇ�̓���     
               IF SQLSTATE = "02000" THEN
                   MOVE "END" TO MEISAI-FLG
               ELSE
                   MOVE "ERR" TO END-FLG
               END-IF
           END-IF.
       
      *-----------------------------------------------------------------
       MAIN-SEC SECTION.
      *    �J�[�\���I�[�v��
           EXEC SQL OPEN CUR1 END-EXEC.
           PERFORM FETCH-SEC.
      *    ���[�v
           PERFORM UNTIL (END-FLG = "ERR") OR (MEISAI-FLG = "END") OR (MEISAI-FLG = "MAX")
               IF W-RECCNT >= P-Start THEN
                   COMPUTE P-Cnt = P-Cnt + 1
                   PERFORM CODE-SEC
               END-IF
      *        ���׍s�����z������I��   
               IF P-Cnt >= LINEMAX THEN
                   MOVE "MAX" TO MEISAI-FLG                  
      *            �Ō��1���ǂ�Ŏ��̍s�����邩�m�F����
               END-IF               
               PERFORM FETCH-SEC
           END-PERFORM.
      *    �J�[�\���N���[�Y
           EXEC SQL CLOSE CUR1 END-EXEC.
      
           IF MEISAI-FLG = "MAX" THEN
               MOVE 1 TO P-Next
           END-IF
           IF MEISAI-FLG = "END" AND P-Cnt = 0 THEN
               *>���i�R�[�h�͂��������A�Y������N���̃��R�[�h�Ȃ�
               MOVE 8 TO R-ReturnCode
           END-IF.
       
      *-----------------------------------------------------------------
       CODE-SEC SECTION.
      *    �敪�R�[�h���� 
           EVALUATE KUBUN OF SYOIOPF-REC
       
           WHEN    ZERO
               CONTINUE
       
      *    *** �[�i�n�����敪�i�P�P�`�Q�X�j
           WHEN    11  THRU  19
               EVALUATE   KUBUN OF SYOIOPF-REC
                   WHEN    11
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    19
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
               END-EVALUATE
       
           WHEN    21  THRU  29
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    21
                       MOVE    S-TANKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
               END-EVALUATE
       
      *    ***�d���n�����敪�i�R�P�`�S�X�j
           WHEN    31  THRU  39
               EVALUATE   KUBUN OF SYOIOPF-REC
                   WHEN    39
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-GENKA  TO    S-TANGEN
                       MOVE    S-NYUKO  TO    S-NYUSYU
                   END-EVALUATE
       
           WHEN    41  THRU  49
               EVALUATE    KUBUN OF SYOIOPF-REC
                   WHEN    49
                       MOVE    S-MUKA   TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
                   WHEN    OTHER
                       MOVE    S-GENKA  TO    S-TANGEN
                       MOVE    S-SYUKO  TO    S-NYUSYU
               END-EVALUATE
       
      *    *** �Г��Ǖi�n�����敪�i�T�P�`�U�X�j
           WHEN    51  THRU  59
               EVALUATE    KUBUN OF SYOIOPF-REC
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
               EVALUATE    KUBUN OF SYOIOPF-REC
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
       
      *    ***�ЊO�s�Ǖi�n�����敪�i�V�P�`�W�X�j
           WHEN    71  THRU  79
               EVALUATE    KUBUN OF SYOIOPF-REC
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
               EVALUATE    KUBUN OF SYOIOPF-REC
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
       
           MOVE IODATE OF SYOIOPF-REC           TO M-IODATE(P-Cnt)
           MOVE SYUBAN OF SYOIOPF-REC           TO W-SYUBAN
           MOVE TUBAN OF SYOIOPF-REC            TO W-TUBAN
           MOVE W-DENPYO                        TO M-DENBAN(P-Cnt)
           MOVE KUBUN OF SYOIOPF-REC            TO M-KUBUN(P-Cnt)
           MOVE KUBUN-ID(KUBUN OF SYOIOPF-REC)  TO M-KUBUNN(P-Cnt)
       
           EVALUATE S-TANGEN
           WHEN S-TANKA
               MOVE M-TANKA  TO M-KAKAKU(P-Cnt)
           WHEN S-GENKA
               MOVE M-GENKA  TO M-KAKAKU(P-Cnt)
           WHEN S-MUKA
               MOVE 0        TO M-KAKAKU(P-Cnt)
           END-EVALUATE
       
           IF S-NYUSYU = S-NYUKO THEN
               MOVE IOSU OF SYOIOPF-REC TO M-ISU(P-Cnt)
           ELSE
               MOVE IOSU OF SYOIOPF-REC TO M-OSU(P-Cnt)
           END-IF
       END PROGRAM ZAIKO.
