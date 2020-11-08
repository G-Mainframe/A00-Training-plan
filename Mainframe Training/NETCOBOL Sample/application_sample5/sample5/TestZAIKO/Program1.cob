       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program1 AS "TestZAIKO.Program1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       COPY IODETAIL.
       01 W-Msg                     PIC N(20).
       01 W-Next                    PIC 9(01).
       01 W-ReturnCode              BINARY-LONG.
       01 W-Cnt                     PIC 9(03). 
       01 W-Start                   BINARY-SHORT.
       01 W-IDX                     BINARY-LONG.
       PROCEDURE DIVISION.
           INITIALIZE M-AREA
           
      *    ���i�R�[�h�ݒ�
           MOVE 10024 TO M-SYOCD.
      *    ���t�ݒ�
           MOVE 2004 TO M-Y.
           MOVE 4 TO M-M.
      *    �J�n�ʒu
           MOVE 1 TO W-Start.
           DISPLAY M-Y "�N" M-M "�� ���i�R�[�h:" M-SYOCD "�̓��o�ɏ����������܂��B"
      *    ���o�Ɍ���
           CALL "ZAIKO" USING M-AREA W-Start W-Cnt W-Next W-Msg RETURNING W-ReturnCode.
      
           PERFORM VARYING W-IDX  FROM 1 BY 1 UNTIL W-IDX > 10       
               DISPLAY M-IODATE(W-IDX) " " M-DENBAN(W-IDX) " " M-KUBUN(W-IDX)
                   " " M-KUBUNN(W-IDX) " " M-ISU(W-IDX) " " M-OSU(W-IDX)
           END-PERFORM.
       END PROGRAM Program1.
