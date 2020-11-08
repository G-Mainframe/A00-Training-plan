       IDENTIFICATION                  DIVISION.
       PROGRAM-ID.  CSVOUT.
      *
       ENVIRONMENT                     DIVISION.
       INPUT-OUTPUT                    SECTION.
       FILE-CONTROL.
      *
           SELECT �݌Ƀt�@�C��  ASSIGN  TO  STOCKFL
           ORGANIZATION  IS  INDEXED
           RECORD  KEY   IS  ���i�ԍ� WITH DUPLICATES.
      *
           SELECT �o�̓t�@�C��  ASSIGN  TO  CSVFILE
           ORGANIZATION  IS  LINE   SEQUENTIAL.
      *
       DATA                            DIVISION.
       FILE                            SECTION.
         FD �݌Ƀt�@�C�� .
          01 �݌Ƀ��R�[�h.
            03 ���i�ԍ�                PIC 9(4).
            03 ���i��                  PIC X(20).
            03 �݌ɐ���                PIC S9(2).
            03 �q�ɔԍ�                PIC 9(4).
            03 �艿                    PIC 9(9).
            03 �d�ؗ�                  PIC S999V99.
      *
         FD �o�̓t�@�C��
            RECORD IS VARYING IN SIZE FROM 1 TO 50 CHARACTERS
                              DEPENDING ON R-LENG.
          01 �o�̓��R�[�h.
            03 CS-DATA PIC X OCCURS 1 TO 50 TIMES
                              DEPENDING ON R-LENG.
      *
       WORKING-STORAGE                 SECTION.
          01 R-LENG                    PIC 9(03) BINARY.
          01 R-COUNT                   PIC 9(04) VALUE 0.
          01 R-COUNT-Z                 PIC ZZZ9.
          01 END-FLAG                  PIC X(03).
          01 ��ؕ���                  PIC X(01) VALUE ",".
          01 �ʒu                      PIC 9(02) VALUE 1.
          01 �ϊ�. 
            03 �d�ؗ��ϊ�              PIC 999.99. 
      *
          01 �����Q.
            03 �����݌ɐ���            PIC S9(3) SIGN LEADING SEPARATE.
      *
      *�o�̓t�@�C���ҏW�p���R�[�h
          01 CSV-REC.
            03 CSV-DATA1               PIC X(4).
            03 KUGIRIA                 PIC X.
            03 CSV-DATA2.
              05  CSV-DATA21           PIC X OCCURS 1 TO 20 TIMES
                              DEPENDING ON LENG-B.
            03 KUGIRIB                 PIC X.
            03 CSV-DATA3               PIC X(3).
      *
            03 KUGIRIC                 PIC X.
            03 CSV-DATA4               PIC X(4).
      *
            03 KUGIRID                 PIC X.
            03 CSV-DATA5               PIC X(9).
      *
            03 KUGIRIE                 PIC X.
            03 CSV-DATA6               PIC X(7).
      *
      *�o�̓t�@�C���e���ڒ�
          01 LENG-A                    PIC 9(03) VALUE 4. *>���i�ԍ�
          01 LENG-B                    PIC 9(03) BINARY.  *>���i��
          01 LENG-C                    PIC 9(03) VALUE 3. *>�݌ɐ���
          01 LENG-D                    PIC 9(03) VALUE 4. *>�q�ɔԍ�
          01 LENG-E                    PIC 9(03) VALUE 9. *>�艿
          01 LENG-F                    PIC 9(03) VALUE 8. *>�d�ؗ�
      *
      ****************************************************************
      *�@�@�@�f�[�^�R���o�[�g
      ****************************************************************
       PROCEDURE DIVISION.
       MAIN-SHORI.
      *
            DISPLAY   "*** CSVOUT START ****".
      *�t�@�C���̃I�[�v��
            OPEN INPUT �݌Ƀt�@�C��.
            OPEN OUTPUT �o�̓t�@�C��.
      *�t�@�C���̓Ǎ���
            READ �݌Ƀt�@�C��
               AT END
                 MOVE "END"            TO  END-FLAG
            END-READ.
      *
            PERFORM DATA-SHORI UNTIL END-FLAG = "END".
      *�t�@�C���̃N���[�Y
            CLOSE �݌Ƀt�@�C��.
            CLOSE �o�̓t�@�C��.
            MOVE R-COUNT               TO  R-COUNT-Z.
            DISPLAY R-COUNT-Z "���̃f�[�^��ϊ����܂���"
            DISPLAY   "*** CSVOUT END   ****".
            EXIT  PROGRAM.
      *
      *�f�[�^�R���o�[�g(COBOL�����t�@�C����CSV)
       DATA-SHORI.
            MOVE ���i�ԍ�              TO  CSV-DATA1.
      *
            COMPUTE LENG-B = FUNCTION STORED-CHAR-LENGTH(���i��).
            MOVE ���i��                TO  CSV-DATA2.
      *
            MOVE �݌ɐ���              TO  �����݌ɐ���.
            MOVE �����Q                TO  CSV-DATA3.
      *      
            MOVE �q�ɔԍ�              TO  CSV-DATA4.
      *
            MOVE �艿                  TO  CSV-DATA5.
      *
            MOVE �d�ؗ�                TO  �d�ؗ��ϊ�.
            MOVE �ϊ�                  TO  CSV-DATA6.
      *
            MOVE ","                   TO  KUGIRIA
                                           KUGIRIB
                                           KUGIRIC
                                           KUGIRID
                                           KUGIRIE.
      *
            COMPUTE R-LENG = 5 + LENG-A + LENG-B + LENG-C + LENG-D + LENG-E + LENG-F.
      *
      *�t�@�C���̏��o��
            WRITE �o�̓��R�[�h   FROM  CSV-REC.
            COMPUTE R-COUNT = R-COUNT + 1.
      *�t�@�C���̓Ǎ���
            READ  �݌Ƀt�@�C��  AT END MOVE "END"  TO END-FLAG
            END-READ.
       END PROGRAM CSVOUT. 
      