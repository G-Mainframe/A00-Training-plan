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
           CLASS CLASS-ConfigurationManager     AS "System.Configuration.ConfigurationManager"
           CLASS CLASS-ConnectionStringSettings AS "System.Configuration.ConnectionStringSettings"
           CLASS CLASS-String			        AS "System.String"
           CLASS CLASS-DbProviderFactories      AS "System.Data.Common.DbProviderFactories"
           CLASS CLASS-DbProviderFactory        AS "System.Data.Common.DbProviderFactory"
           CLASS CLASS-DbConnection             AS "System.Data.Common.DbConnection"
           CLASS CLASS-DbCommand                AS "System.Data.Common.DbCommand"
           CLASS CLASS-DbParameter			    AS "System.Data.Common.DbParameter"
           CLASS CALSS-DbDataReader             AS "System.Data.Common.DbDataReader"
           CLASS CLASS-Exception                AS "System.Exception"
           ENUM ENUM-DbType 			        AS "System.Data.DbType"
      
           PROPERTY PROP-PARAMETERS             AS "Parameters"
           PROPERTY PROP-VALUE                  AS "Value"
           PROPERTY PROP-MESSAGE                AS "Message"
           PROPERTY PROP-CONNECTIONSTRINGS      AS "ConnectionStrings"
           PROPERTY PROP-CONNECTIONSTRING       AS "ConnectionString"
           PROPERTY PROP-PROVIDERNAME AS "ProviderName"
           PROPERTY PROP-COMMANDTEXT AS "CommandText"
           PROPERTY PROP-INT32 AS "Int32"
           PROPERTY PROP-PARAMETERNAME AS "ParameterName"
           PROPERTY PROP-DBTYPE AS "DbType".
                      
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SYAPF-REC.
         02  SYACD      PIC S9(9) COMP-5.
         02  SYANA      PIC X(20).
         02  PASS       PIC N(6).
         02  BUSYO      PIC S9(9) COMP-5.
         02  SDATE      PIC S9(9) COMP-5.
         02  SNAME      PIC X(20).
         
       01  W-CONNSTR    OBJECT REFERENCE CLASS-ConnectionStringSettings.
       01  W-PROVIDER   OBJECT REFERENCE CLASS-String.
       01  W-FACTORY    OBJECT REFERENCE CLASS-DbProviderFactory.
       01  W-CONN       OBJECT REFERENCE CLASS-DbConnection.
       01  W-CMD        OBJECT REFERENCE CLASS-DbCommand.
       01  W-DBPARAM    OBJECT REFERENCE CLASS-DbParameter.       
       01  W-DBTYPE		OBJECT REFERENCE ENUM-DbType.
       01  W-READER     OBJECT REFERENCE CALSS-DbDataReader.
       01  W-EXCEPTION  OBJECT REFERENCE CLASS-Exception.
       
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
           TRY
      *        �ڑ�������擾
               INVOKE PROP-CONNECTIONSTRINGS OF CLASS-ConfigurationManager "get_Item" USING N"cobdb" RETURNING W-CONNSTR
      *        �v���o�C�_�t�@�N�g���擾
               SET W-PROVIDER TO PROP-PROVIDERNAME OF W-CONNSTR
               INVOKE CLASS-DbProviderFactories "GetFactory" USING W-PROVIDER RETURNING W-FACTORY
      *        �R�l�N�V��������
               INVOKE W-FACTORY "CreateConnection" RETURNING W-CONN
               SET PROP-CONNECTIONSTRING OF W-CONN TO PROP-CONNECTIONSTRING OF W-CONNSTR
      *        �R�}���h����
               INVOKE W-CONN "CreateCommand" RETURNING W-CMD
               SET PROP-COMMANDTEXT OF W-CMD TO N"SELECT SYACD, PASS FROM SYAPF WHERE SYACD = @CD"
      *        �p�����[�^�쐬
               INVOKE W-CMD "CreateParameter" RETURNING W-DBPARAM
               SET PROP-PARAMETERNAME OF W-DBPARAM TO N"@CD"
               SET PROP-DBTYPE OF W-DBPARAM TO PROP-INT32 OF ENUM-DbType
               SET PROP-VALUE OF W-DBPARAM TO P-EmployeeCode
               INVOKE PROP-PARAMETERS OF W-CMD "Add" USING W-DBPARAM
               
      *        DB�I�[�v��
               INVOKE W-CONN "Open"
               
      *        DbDataReader�̍\�z
               INVOKE W-CMD "ExecuteReader" RETURNING W-READER
               IF W-READER::"Read" = B"1" THEN
                   INVOKE W-READER "GetInt32" USING 0 RETURNING SYACD
                   INVOKE W-READER "GetString" USING 1 RETURNING PASS
      
      *            �p�X���[�h��r
                   IF PASS = P-Password THEN
                       MOVE 0 TO R-ReturnCode
                   ELSE
                       MOVE 3 TO R-ReturnCode
                   END-IF
               ELSE
      *            ������Ȃ������ꍇ
                   MOVE 2 TO R-ReturnCode
               END-IF
      
      *        DbDataReader�̃N���[�Y
               INVOKE W-READER "Close"
      
      *        DB�N���[�Y
               INVOKE W-CONN "Close"
      
      *        ���b�Z�[�W�ݒ�
               IF R-ReturnCode > 1 THEN
                   MOVE MSG-DSP(R-ReturnCode) TO P-Msg
               END-IF
      *    ��O����
           CATCH W-EXCEPTION
      *        ��O���b�Z�[�W��߂�l�Ɋi�[
               SET P-Msg TO PROP-MESSAGE OF W-EXCEPTION
               MOVE 99 TO R-ReturnCode
      *    �I������
           FINALLY
      *        �R�}���h�I������
               IF W-CMD NOT = NULL
                   INVOKE W-CMD "Dispose"
               END-IF
      *        �R�l�N�V�����I������
               IF W-CONN NOT = NULL
                 INVOKE W-CONN "Dispose"
               END-IF
           END-TRY.
       END PROGRAM SYAIN.
