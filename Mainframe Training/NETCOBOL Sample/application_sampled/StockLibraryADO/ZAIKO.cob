      ***********************************************************************
      * �v���O������ : ZAIKO
      * �T�v         : ZaikoClass����o�ɖ��ׂ��擾����B
      *
      ***********************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZAIKO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
           CLASS ZAIKO-CLASS          AS "ZaikoClass"
           CLASS CLASS-Exception      AS "System.Exception"
           
           PROPERTY PROP-MESSAGE AS "Message".
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 W-ZAIKO OBJECT REFERENCE ZAIKO-CLASS.
       01 W-EXCEPTION  OBJECT REFERENCE CLASS-Exception.
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
           TRY
               INVOKE ZAIKO-CLASS "NEW" RETURNING W-ZAIKO
               INVOKE W-ZAIKO "INIT-SEC" USING M-AREA P-Cnt RETURNING R-ReturnCode
               IF R-ReturnCode = 0 THEN
                   INVOKE W-ZAIKO "MAIN-SEC" USING M-AREA P-Start P-Cnt P-Next RETURNING R-ReturnCode
               END-IF
               INVOKE W-ZAIKO "END-SEC" USING P-Msg R-ReturnCode
      *    ��O����
           CATCH 
      *        ��O���b�Z�[�W��߂�l�Ɋi�[
               SET P-Msg TO PROP-MESSAGE OF W-EXCEPTION
               MOVE 99 TO R-ReturnCode
      *    �I������
           FINALLY
               INVOKE W-ZAIKO "Dispose"
           END-TRY
       END PROGRAM ZAIKO.
