      * ----------------------------------------------------------
      * �F�؏����N���X
      * 
      * �p�����^�Ƃ���USERID��PASSWD���󂯎��A�]�ƈ��t�@�C����
      * �Y�����郆�[�UID�ƃp�X���[�h�����݂��邩�m�F����
      * -USERID��PASSWD���]�ƈ��t�@�C���ɑ��݂��遨"OK"��Ԃ�
      * -USERID��PASSWD���]�ƈ��t�@�C���ɂȂ�    ��"NG"��Ԃ�
      *   in :USERID PIC  N(05)
      *   in :PASSWD PIC  N(05)
      *   out:(�Ȃ�)
      *   ret:CHK-FLG PIC X(02)
      * ----------------------------------------------------------
       IDENTIFICATION  DIVISION.
       CLASS-ID. clsFileAccess AS "Sample1.Class1".
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
      
       STATIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
       END STATIC.
      
       OBJECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
      
      * ���\�b�h�̐錾
       METHOD-ID. GETUSERDATA AS "GetUserData".
       ENVIRONMENT DIVISION.      
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT �]�ƈ��t�@�C�� ASSIGN TO EMPDATA
            ORGANIZATION IS LINE SEQUENTIAL. 
      
       DATA DIVISION.
       FILE SECTION.
          FD �]�ƈ��t�@�C��.
          01 EMPDATA-R.
            02 EMPCODE   PIC N(3).
            02 EMPID     PIC N(5).
            02 EMPPWD    PIC N(5).
       WORKING-STORAGE SECTION.
       01 END-FLG PIC X(03).     
       LINKAGE SECTION.
       01 USERID PIC  N(05).
       01 PASSWD PIC  N(05).
       01 CHK-FLG PIC X(02).             
      
       PROCEDURE DIVISION USING USERID PASSWD RETURNING CHK-FLG.
           MOVE SPACE TO END-FLG.
      *�t�@�C���̓ǂݍ���
           OPEN INPUT �]�ƈ��t�@�C��.
           READ �]�ƈ��t�@�C�� AT END MOVE "END" TO END-FLG
           END-READ.
           MOVE "NG" TO CHK-FLG
           PERFORM UNTIL END-FLG = "END"
      *USERID��PASSWD���t�@�C���ɑ��݂��邩�m�F
             IF EMPID = USERID THEN
               IF EMPPWD = PASSWD THEN
                  MOVE "OK" TO CHK-FLG
                  EXIT PERFORM
               END-IF
             END-IF
       
      *�t�@�C���̓ǂݍ���
             READ �]�ƈ��t�@�C�� AT END MOVE "END" TO END-FLG
             END-READ      
           END-PERFORM             
           CLOSE �]�ƈ��t�@�C��.
      
       END METHOD GETUSERDATA.
      
       END OBJECT.
       END CLASS clsFileAccess.
      