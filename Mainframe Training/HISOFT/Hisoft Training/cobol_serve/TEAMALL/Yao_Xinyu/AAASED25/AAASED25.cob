000010******************************************************************
000020*         ���C�P�(��A)��                                     *
000030*      1. �v���O������  : �O����󕥎c���t�@�C���쐬             *
000040*      2. �v���O����ID  : AAASED25                               *
000050*      3. �����T�v      : �O����c�a�����C���ɁA�}�X�^�ƕ\     *
000060*                         �������ēǍ��݁A�O����󕥎c������     *
000070*                         �t�@�C�����쐬����B                   *
000080*                                                                *
000090*      4. �쐬��        :  �L�ӉJ                                  *
000100*      5. �쐬��        : 2005.03.26                             *
000110******************************************************************
000120*                                                                 
000130******************************************************************
000140*    �h�c�d�m�s�h�e�h�b�`�s�h�n�m  �c�h�u�h�r�h�n�m              *
000150******************************************************************
000160 IDENTIFICATION                       DIVISION.                   
000170*                                                                 
000180 PROGRAM-ID.                          AAASED25.                   
000190******************************************************************
000200*    �d�m�u�h�q�n�m�l�d�m�s        �c�h�u�h�r�h�n�m              *
000210******************************************************************
000220 ENVIRONMENT                          DIVISION.                   
000230******************************************************************
000240*    �h�m�o�t�s�|�n�t�s�o�t�s      �r�d�b�s�h�n�m                *
000250******************************************************************
000260 INPUT-OUTPUT                         SECTION.                    
000270*                                                                 
000280 FILE-CONTROL.                                                    
000290     SELECT    �o�̓t�@�C��           ASSIGN    TO     U11        
000300     FILE      STATUS     IS          �v�|���                    
000310     ORGANIZATION         IS          LINE      SEQUENTIAL.       
000320*                                                                 
000330******************************************************************
000340*    �c�`�s�`                      �c�h�u�h�r�h�n�m              *
000350******************************************************************
000360 DATA                                 DIVISION.                   
000370******************************************************************
000380*    �e�h�k�d                      �r�d�b�s�h�n�m                *
000390******************************************************************
000400 FILE                                 SECTION.                    
000410*----------------------------------------------------------------*
000420*    �o�̓t�@�C��                                                *
000430*----------------------------------------------------------------*
000440 FD  �o�̓t�@�C��                                                 
000450     LABEL     RECORD     IS          STANDARD                    
000460     BLOCK     CONTAINS   0           RECORDS.                    
000470*                                                                 
000480 01  �o�́|���R�[�h.                                              
000490     COPY  CPSCE50  REPLACING  ==()==  BY  ==�o�́|==.            
000500*                                                                 
000510******************************************************************
000520*  �v�n�q�j�h�m�f�|�r�s�n�q�`�f�d  �r�d�b�s�h�n�m                *
000530******************************************************************
000540  WORKING-STORAGE                     SECTION.                    
000550*----------------------------------------------------------------*
000560*    �z�X�g�ϐ���`�G���A                                        *
000570*----------------------------------------------------------------*
000580     
       01  SQLFPN GLOBAL.
           02  SQLFPN-FILE-LEN PIC S9(4) COMP-5 VALUE +34.
           02  SQLFPN-FILENAME PIC X(34) VALUE "C:\COB97\SOC\AAASED25\AA
      -    "ASED25.PCO".

       01  SQ0001 GLOBAL.
           02  FILLER PIC X(81) VALUE "select �o�b�`�p�Ɩ��N��   into :b
      -    "1  from D70GYM_TBL where �Ɩ��Ǘ��h�c='GYMKNRRC'".

       01  SQ0003 GLOBAL.
           02  FILLER PIC X(91) VALUE "select ����   into :b1  from D19M
      -    "SY_TBL where (�R�[�h�m�n='038' and SUBSTR(�R�[�h,1,1)=:b2)".

       01  SQ0004 GLOBAL.
           02  FILLER PIC X(91) VALUE "select ����   into :b1  from D19M
      -    "SY_TBL where (�R�[�h�m�n='005' and SUBSTR(�R�[�h,1,2)=:b2)".

       01  SQ0005 GLOBAL.
           02  FILLER PIC X(160) VALUE "select ��ԃt���O  ,���_�񌏖�
      -     "  ,�S�ۋ敪   into :b1,:b2,:b3  from M01SAJ_TBL where (((��
      -     "�R�[�h�敪='1' and �_��ԍ�=:b4) and �ă��[�X��=:b5) and 
      -    "�_����=:".

           02  FILLER PIC X(3) VALUE "b6)".

       01  SQLCTX GLOBAL PIC S9(9) COMP-5 VALUE +157234284.


       01  SQLEXD GLOBAL.
           02  SQL-SQLVSN   PIC S9(9) COMP-5 VALUE +10.
           02  SQL-ARRSIZ   PIC S9(9) COMP-5 VALUE +28.
           02  SQL-ITERS    PIC S9(9) COMP-5.
           02  SQL-OFFSET   PIC S9(9) COMP-5.
           02  SQL-SELERR   PIC S9(4) COMP-5.
           02  SQL-SQLETY   PIC S9(4) COMP-5.
           02  SQL-OCCURS   PIC S9(9) COMP-5.
           02  SQL-CUD      PIC S9(9) COMP-5.
           02  SQL-SQLEST   PIC S9(9) COMP-5.
           02  SQL-STMT     PIC S9(9) COMP-5.
           02  SQL-SQLADTP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQLTDSP  PIC S9(9) COMP-5 VALUE 0.
           02  SQL-SQPHSV   PIC S9(9) COMP-5.
           02  SQL-SQPHSL   PIC S9(9) COMP-5.
           02  SQL-SQPHSS   PIC S9(9) COMP-5.
           02  SQL-SQPIND   PIC S9(9) COMP-5.
           02  SQL-SQPINS   PIC S9(9) COMP-5.
           02  SQL-SQPARM   PIC S9(9) COMP-5.
           02  SQL-SQPARC   PIC S9(9) COMP-5.
           02  SQL-SQPADTO  PIC S9(9) COMP-5.
           02  SQL-SQPTDSO  PIC S9(9) COMP-5.
           02  SQL-SQHSTV   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHSTL   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHSTS   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQINDV   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQINDS   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHARM   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQHARC   PIC S9(9) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQADTO   PIC S9(4) COMP-5 OCCURS 28 TIMES.
           02  SQL-SQTDSO   PIC S9(4) COMP-5 OCCURS 28 TIMES.


       01  SQ0002 GLOBAL.
           02  FILLER PIC X(160) VALUE "select M40MAB_TBL.���R�[�h�敪  
      -    ",M40MAB_TBL.�o���p��_��敪  ,M40MAB_TBL.�ڋq�敪  ,NVL(D01
      -    "TRS_TBL.���񂹃R�[�h,' ')  ,M40MAB_TBL.����������R�[�h  ,
      -     "M40MAB_T".

           02  FILLER PIC X(159) VALUE  "BL.������R�[�h  ,M40MAB_TBL.�_
      -    "��ԍ�  ,M40MAB_TBL.�_����  ,M40MAB_TBL.�S�����ۃR�[�h  ,M
      -    "40MAB_TBL.�ă��[�X��  ,M40MAB_TBL.�[���J�n�N��  ,M40MAB_TB
      -    "L.�[����".

           02  FILLER PIC X(160) VALUE "��  ,M40MAB_TBL.�O��������@  ,M
      -    "40MAB_TBL.������  ,M40MAB_TBL.�����敪  ,D01TRS_TBL.����於
      -    "��  ,D02SQS_TBL.�����於��  ,M40MAB_TBL.�O�����c��  ,M40MAB_
      -    "TBL.����".

           02  FILLER PIC X(160) VALUE "����z  ,M40MAB_TBL.���������z  
      -    ",M40MAB_TBL.�������c��  ,M40MAB_TBL.�����敪  ,M40MAB_TBL.�O
      -    "�����c������  ,M40MAB_TBL.��������z����  ,M40MAB_TBL.������
      -    "���z����".

           02  FILLER PIC X(159) VALUE "  ,M40MAB_TBL.�������Љ�񕪗���
      -    "  ,M40MAB_TBL.�������Љ�񕪏����  ,M40MAB_TBL.�������c����
      -    "��   from M40MAB_TBL ,D01TRS_TBL ,D02SQS_TBL where (((M40MAB
      -     "_TBL.�O".

           02  FILLER PIC X(160) VALUE "����󕥎c���\�Ώۃt���O='1' and
      -    " M40MAB_TBL.����������R�[�h=D01TRS_TBL.�����R�[�h(+)) a
      -    "nd M40MAB_TBL.����������R�[�h=D02SQS_TBL.�����R�[�h(+))
      -    " and M40".

           02  FILLER PIC X(112) VALUE "MAB_TBL.������R�[�h=D02SQS_TBL.
      -    "������R�[�h(+)) order by M40MAB_TBL.���R�[�h�敪,M40MAB_TBL
      -    ".�_��ԍ�           ".

       01  SQL-RUNTIME-VARS.
           02  SQL-IAPXIT-SUCCESS  PIC S9(9) COMP-5 VALUE    +0.
           02  SQL-IAPXIT-FAILURE  PIC S9(9) COMP-5 VALUE +1403.
           02  SQL-IAPXIT-FATALERR PIC S9(9) COMP-5 VALUE  +535.

       01  SQLCUD GLOBAL.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +4192.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +230.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +36.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +27.
           02     FILLER PIC S9(4) COMP-5 VALUE +234.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +10.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +67.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +81.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +263.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +86.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1070.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +9.
           02     FILLER PIC S9(4) COMP-5 VALUE +341.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +101.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +390.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +28.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +13.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +228.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +91.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +477.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +251.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +91.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +502.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +274.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +5.
           02     FILLER PIC S9(4) COMP-5 VALUE +163.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +4.
           02     FILLER PIC S9(4) COMP-5 VALUE +534.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +6.
           02     FILLER PIC S9(4) COMP-5 VALUE +3.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +1120.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +7.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +96.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +313.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +2.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +15.
           02     FILLER PIC S9(4) COMP-5 VALUE +717.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
           02     FILLER PIC S9(4) COMP-5 VALUE +1.
           02     FILLER PIC S9(4) COMP-5 VALUE +0.
      *    EXEC  SQL  BEGIN  DECLARE        SECTION  END-EXEC.
000590*                                                                 
000600 01  �v�r�|���̂P                     PIC  X(060).                
000610 01  �v�r�|���̂Q                     PIC  X(060).                
000620*                                                                 
000630*--< �n�q�`�b�k�d���ʕϐ� >                                       
000640     
      *    EXEC  SQL  INCLUDE  SQLCOM.CBL            END-EXEC.
000650*                                                                 
000660*--< �n�q�`�b�k�d  �r�p�k���s��� >                               
000010*--���r�p�k���ʕϐ���
000030   01  SQLSTATE                      PIC  X(005).
       01  SQLSTATEA REDEFINES SQLSTATE.
           05  SQLSTATEB OCCURS 5 TIMES PIC X.
000040   01  DB-STRING                     PIC  X(020).
000050   01  USERNAME                      PIC  X(010).
000060   01  PASSWD                        PIC  X(010).
000070*
000670     
      *    EXEC  SQL  INCLUDE  SQLCA.COB             END-EXEC.
       01  SQLCA GLOBAL.
           05  SQLCAID               PIC X(8).
           05  SQLCABC               PIC S9(9) COMP-5.
           05  SQLCODE               PIC S9(9) COMP-5.
           05  SQLERRM.
               49 SQLERRML           PIC S9(4) COMP-5.
               49 SQLERRMC           PIC X(70).
           05  SQLERRP               PIC X(8).
           05  SQLERRD OCCURS 6 TIMES
                                     PIC S9(9) COMP-5.
           05  SQLWARN.
               10 SQLWARN0           PIC X(1).
               10 SQLWARN1           PIC X(1).
               10 SQLWARN2           PIC X(1).
               10 SQLWARN3           PIC X(1).
               10 SQLWARN4           PIC X(1).
               10 SQLWARN5           PIC X(1).
               10 SQLWARN6           PIC X(1).
               10 SQLWARN7           PIC X(1).
           05  SQLEXT                PIC X(8).
000680*                                                                 
000690*--< �O����c�a >                                               
000700     
      *    EXEC  SQL  INCLUDE  M40MAB.CBL            END-EXEC.
000710*                                                                 
000720*--< �Ɩ��Ǘ��e�[�u�� >                                           
000010************************************************
000020* �O����(M40MAB)
000030************************************************
000040 01  �l�S�O�|���R�[�h�敪           PIC  X(1).
000050 01  �l�S�O�|�_��ԍ�               PIC  X(15).
000060 01  �l�S�O�|�ă��[�X��           PIC S9(2) COMP-3.
000070 01  �l�S�O�|�_����               PIC  X(3).
000080 01  �l�S�O�|�����������           PIC  X(8).
000090 01  �l�S�O�|������r�d�p�|�m�n     PIC S9(6) COMP-3.
000100 01  �l�S�O�|�O��������@           PIC  X(1).
000110 01  �l�S�O�|�O������T�C�g         PIC S9(2) COMP-3.
000120 01  �l�S�O�|�O�������             PIC  X(2).
000130 01  �l�S�O�|�[���J�n��             PIC S9(3) COMP-3.
000140 01  �l�S�O�|�[������               PIC S9(3) COMP-3.
000150 01  �l�S�O�|�[���J�n�N��           PIC  X(6).
000160 01  �l�S�O�|�U���萔��             PIC S9(13) COMP-3.
000170 01  �l�S�O�|�O�����z               PIC S9(13) COMP-3.
000180 01  �l�S�O�|�O�����z�����         PIC S9(13) COMP-3.
000190 01  �l�S�O�|���БO�����z           PIC S9(13) COMP-3.
000200 01  �l�S�O�|���БO�����z�����     PIC S9(13) COMP-3.
000210 01  �l�S�O�|��񕪗����݌v         PIC S9(13) COMP-3.
000220 01  �l�S�O�|��񕪏���ŗ݌v       PIC S9(13) COMP-3.
000230 01  �l�S�O�|���Љ�񕪗����݌v     PIC S9(13) COMP-3.
000240 01  �l�S�O�|���Љ�񕪏���ŗ݌v   PIC S9(13) COMP-3.
000250 01  �l�S�O�|������z               PIC S9(13) COMP-3.
000260 01  �l�S�O�|���Ж�����z           PIC S9(13) COMP-3.
000270 01  �l�S�O�|��ԃR�[�h             PIC  N(2).
000280 01  �l�S�O�|��s�R�[�h             PIC  X(4).
000290 01  �l�S�O�|�x�X�R�[�h             PIC  X(4).
000300 01  �l�S�O�|�U���˗��l��           PIC  X(48).
000310 01  �l�S�O�|�O����󕥎c���\�Ώۃt���O PIC  X(1).
000320 01  �l�S�O�|���������\�Ώۃt���O PIC  X(1).
000330 01  �l�S�O�|��v����R�[�h         PIC  X(2).
000340 01  �l�S�O�|�d��t���O�|�U�֑O�󃊁[�X�� PIC  X(1).
000350 01  �l�S�O�|�d��t���O�|�U�֑O��   PIC  X(1).
000360 01  �l�S�O�|�d��t���O�|�U�։���   PIC  X(1).
000370 01  �l�S�O�|�_��J�n��             PIC  X(8).
000380 01  �l�S�O�|����������R�[�h     PIC  X(9).
000390 01  �l�S�O�|�ڋq�敪               PIC  X(2).
000400 01  �l�S�O�|�s�`�r�r�R�[�h         PIC  X(7).
000410 01  �l�S�O�|�ݓ|�N����             PIC  X(8).
000420 01  �l�S�O�|��������敪         PIC  X(1).
000430 01  �l�S�O�|�ő����           PIC  X(1).
000440 01  �l�S�O�|������R�[�h           PIC  X(5).
000450 01  �l�S�O�|�_�������R�[�h     PIC  X(9).
000460 01  �l�S�O�|�_���R�[�h           PIC  X(5).
000470 01  �l�S�O�|�S�����ۃR�[�h         PIC  X(4).
000480 01  �l�S�O�|�S���҃R�[�h           PIC  X(8).
000490 01  �l�S�O�|�����敪               PIC  X(1).
000500 01  �l�S�O�|�Ǘ������x��         PIC  X(1).
000510 01  �l�S�O�|��_��敪             PIC  X(1).
000520 01  �l�S�O�|�o���p��_��敪       PIC  X(1).
000530 01  �l�S�O�|����敪               PIC  X(1).
000540 01  �l�S�O�|�O�����c��             PIC S9(13) COMP-3.
000550 01  �l�S�O�|�O�����c������         PIC S9(13) COMP-3.
000560 01  �l�S�O�|�O������񕪗����݌v   PIC S9(13) COMP-3.
000570 01  �l�S�O�|�O������񕪏���ŗ݌v PIC S9(13) COMP-3.
000580 01  �l�S�O�|�O�������Љ�񕪗����݌v PIC S9(13) COMP-3.
000590 01  �l�S�O�|�O�������Љ�񕪏���ŗ݌v PIC S9(13) COMP-3.
000600 01  �l�S�O�|�O���������z�݌v       PIC S9(13) COMP-3.
000610 01  �l�S�O�|�O���������z�݌v����   PIC S9(13) COMP-3.
000620 01  �l�S�O�|�O�����U�֊z�݌v       PIC S9(13) COMP-3.
000630 01  �l�S�O�|�O�����U�֊z�݌v����   PIC S9(13) COMP-3.
000640 01  �l�S�O�|������񕪗���         PIC S9(13) COMP-3.
000650 01  �l�S�O�|������񕪏����       PIC S9(13) COMP-3.
000660 01  �l�S�O�|�������Љ�񕪗���     PIC S9(13) COMP-3.
000670 01  �l�S�O�|�������Љ�񕪏����   PIC S9(13) COMP-3.
000680 01  �l�S�O�|����z                 PIC S9(13) COMP-3.
000690 01  �l�S�O�|���Љ���z             PIC S9(13) COMP-3.
000700 01  �l�S�O�|���Љ���z�����       PIC S9(13) COMP-3.
000710 01  �l�S�O�|������                 PIC  X(8).
000720 01  �l�S�O�|���                   PIC  X(1).
000730 01  �l�S�O�|�����敪               PIC  X(2).
000740 01  �l�S�O�|��������z             PIC S9(13) COMP-3.
000750 01  �l�S�O�|��������z����         PIC S9(13) COMP-3.
000760 01  �l�S�O�|���������z             PIC S9(13) COMP-3.
000770 01  �l�S�O�|���������z����         PIC S9(13) COMP-3.
000780 01  �l�S�O�|�����z�݌v             PIC S9(13) COMP-3.
000790 01  �l�S�O�|�����z�݌v����         PIC S9(13) COMP-3.
000800 01  �l�S�O�|������                 PIC  X(8).
000810 01  �l�S�O�|�����U�֊z             PIC S9(13) COMP-3.
000820 01  �l�S�O�|�����U�֊z����         PIC S9(13) COMP-3.
000830 01  �l�S�O�|�U�֓�                 PIC  X(8).
000840 01  �l�S�O�|�U�֊z�݌v             PIC S9(13) COMP-3.
000850 01  �l�S�O�|�U�֊z�݌v����         PIC S9(13) COMP-3.
000860 01  �l�S�O�|�������c��             PIC S9(13) COMP-3.
000870 01  �l�S�O�|�������c������         PIC S9(13) COMP-3.
000880 01  �l�S�O�|�c�O�󌎐�             PIC S9(3)V9(2) COMP-3.
000730     
      *    EXEC  SQL  INCLUDE  D70GYM.CBL            END-EXEC.
000740*                                                                 
000750*--< �����}�X�^>                                                
000010************************************************
000020* �Ɩ��Ǘ�(D70GYM)
000030************************************************
000040 01  �c�V�O�|�Ɩ��Ǘ��h�c           PIC  X(8).
000050 01  �c�V�O�|�Ɩ��N��               PIC  X(6).
000060 01  �c�V�O�|����N��               PIC  X(6).
000070 01  �c�V�O�|�����N��               PIC  X(6).
000080 01  �c�V�O�|�{������               PIC  X(8).
000090 01  �c�V�O�|�{������               PIC  X(8).
000100 01  �c�V�O�|�{��������             PIC  X(8).
000110 01  �c�V�O�|���U�����P             PIC  X(2).
000120 01  �c�V�O�|���U���P               PIC  X(8).
000130 01  �c�V�O�|���U�������P           PIC  X(8).
000140 01  �c�V�O�|���U�{�����P           PIC  X(8).
000150 01  �c�V�O�|���U�����Q             PIC  X(2).
000160 01  �c�V�O�|���U���Q               PIC  X(8).
000170 01  �c�V�O�|���U�������Q           PIC  X(8).
000180 01  �c�V�O�|���U�{�����Q           PIC  X(8).
000190 01  �c�V�O�|��������               PIC  X(8).
000200 01  �c�V�O�|����������             PIC  X(8).
000210 01  �c�V�O�|�N������               PIC  X(8).
000220 01  �c�V�O�|�N��������             PIC  X(8).
000230 01  �c�V�O�|��������               PIC  X(8).
000240 01  �c�V�O�|����������             PIC  X(8).
000250 01  �c�V�O�|�ŐV�������ԍ�         PIC S9(7) COMP-3.
000260 01  �c�V�O�|�X�V�N����             PIC  X(8).
000270 01  �c�V�O�|�X�V����               PIC  X(8).
000280 01  �c�V�O�|�X�V��                 PIC  X(8).
000290 01  �c�V�O�|���͒S���҃R�[�h       PIC  X(8).
000300 01  �c�V�O�|�o�b�`�p�Ɩ��N��       PIC  X(6).
000310 01  �c�V�O�|�o�b�`�p����N��       PIC  X(6).
000320 01  �c�V�O�|�o�b�`�p�����N��       PIC  X(6).
000330 01  �c�V�O�|�������N����         PIC  X(8).
000340 01  �c�V�O�|�`�F�b�N���X�g�����N���� PIC  X(8).
000350 01  �c�V�O�|�ō��x���˗��ԍ�       PIC S9(10) COMP-3.
000360 01  �c�V�O�|���������J�n�N����     PIC  X(8).
000370 01  �c�V�O�|���������J�n����       PIC  X(8).
000380 01  �c�V�O�|���������I���N����     PIC  X(8).
000390 01  �c�V�O�|���������I������       PIC  X(8).
000400 01  �c�V�O�|�O��������N����     PIC  X(8).
000410 01  �c�V�O�|�o�b�`�����󋵃t���O   PIC  X(1).
000760     
      *    EXEC  SQL  INCLUDE  D01TRS.CBL            END-EXEC.
000770*                                                                 
000780*--< ������}�X�^>                                                
      *****************************************************************
      *   �����}�X�^(D01TRS_TBL)
      *****************************************************************
       01  �����}�X�^.
           03  �c�O�P�|�����R�[�h  PIC  X(009).
           03  �c�O�P�|���񂹃R�[�h  PIC  X(040).
           03  �c�O�P�|����於��    PIC  X(080).
           03  �c�O�P�|�����Z����  PIC  X(016).
           03  �c�O�P�|�����J�i����
                                     PIC  X(040).
           03  �c�O�P�|�X�֔ԍ�      PIC  X(007).
           03  �c�O�P�|�[�t��R�[�h  PIC  X(011).
           03  �c�O�P�|�Z���P        PIC  X(060).
           03  �c�O�P�|�Z���Q        PIC  X(060).
           03  �c�O�P�|�Z���R        PIC  X(060).
           03  �c�O�P�|�d�b�ԍ�      PIC  X(015).
           03  �c�O�P�|���Ж�        PIC  X(080).
           03  �c�O�P�|���{��        PIC S9(013) PACKED-DECIMAL.
           03  �c�O�P�|�ݗ��N        PIC S9(004) PACKED-DECIMAL.
           03  �c�O�P�|�ݗ���        PIC S9(002) PACKED-DECIMAL.
           03  �c�O�P�|�ڋq�敪      PIC  X(002).
           03  �c�O�P�|��Ƌ敪      PIC  X(001).
           03  �c�O�P�|�]�ƈ���      PIC S9(006) PACKED-DECIMAL.
           03  �c�O�P�|�Ǝ�R�[�h    PIC  X(005).
           03  �c�O�P�|�i�t�����N    PIC  X(003).
           03  �c�O�P�|���S����      PIC  X(008).
           03  �c�O�P�|������ŏI�ԍ�
                                     PIC S9(005) PACKED-DECIMAL.
           03  �c�O�P�|�x����ŏI�ԍ�
                                     PIC S9(005) PACKED-DECIMAL.
           03  �c�O�P�|��S�����ۃR�[�h
                                     PIC  X(004).
           03  �c�O�P�|�i�t�����N�Q  PIC  X(003).
           03  �c�O�P�|��\�Җ���    PIC  X(020).
           03  �c�O�P�|�A�h���X      PIC  X(040).
           03  �c�O�P�|�ڋq�g�p�s�t���O
                                     PIC  X(001).
           03  �c�O�P�|�^�M����R�[�h
                                     PIC  X(007).
           03  �c�O�P�|���񐿋����u�敪
                                     PIC  X(001).
           03  �c�O�P�|�����ē����t�敪
                                     PIC  X(001).
           03  �c�O�P�|�ă��[�X�����p���敪
                                     PIC  X(001).
           03  �c�O�P�|��������敪
                                     PIC  X(001).
           03  �c�O�P�|���Ə�����    PIC  X(080).
           03  �c�O�P�|���Ə��X�֔ԍ�
                                     PIC  X(007).
           03  �c�O�P�|���Ə��Z���R�[�h
                                     PIC  X(011).
           03  �c�O�P�|���Ə��Z���Q  PIC  X(060).
           03  �c�O�P�|���Ə��d�b�ԍ�
                                     PIC  X(015).
           03  �c�O�P�|���N����      PIC  X(008).
           03  �c�O�P�|�Ǘ������x��
                                     PIC  X(001).
           03  �c�O�P�|�ݓ|�N����    PIC  X(008).
           03  �c�O�P�|�ݓ|���z      PIC S9(013) PACKED-DECIMAL.
           03  �c�O�P�|�ݓ|���R�R�[�h
                                     PIC  X(002).
           03  �c�O�P�|�ݓ|�R�����g  PIC  X(100).
           03  �c�O�P�|�ݓ|�\���N����
                                     PIC  X(008).
           03  �c�O�P�|���������f�[�^�쐬�v��
                                     PIC  X(001).
           03  �c�O�P�|�J�����[�擾���i�敪
                                     PIC  X(001).
           03  �c�O�P�|����J�n�N��  PIC  X(006).
           03  �c�O�P�|�n�ƔN��      PIC  X(006).
           03  �c�O�P�|�n��          PIC  X(030).
           03  �c�O�P�|�̔���        PIC  X(030).
           03  �c�O�P�|�d����        PIC  X(030).
           03  �c�O�P�|��v����      PIC  X(020).
           03  �c�O�P�|��v���厝��  PIC S9(003)V9(003) PACKED-DECIMAL.
           03  �c�O�P�|�ۏؐl�Ǘ������x��
                                     PIC  X(001).
           03  �c�O�P�|�ߋ��ō����i�K
                                     PIC  X(001).
           03  �c�O�P�|�ߋ��ō����i�K�X�V��
                                     PIC  X(008).
           03  �c�O�P�|���ݍō����i�K
                                     PIC  X(001).
           03  �c�O�P�|���ݍō����i�K�X�V��
                                     PIC  X(008).
           03  �c�O�P�|���p���ݍō����i�K
                                     PIC  X(001).
           03  �c�O�P�|���p���ݍō����i�K�X�V��
                                     PIC  X(008).
           03  �c�O�P�|���[�X�����o�̓t���O
                                     PIC  X(001).
           03  �c�O�P�|���r�������o�̓t���O
                                     PIC  X(001).
           03  �c�O�P�|���p�����o�̓t���O
                                     PIC  X(001).
           03  �c�O�P�|��s�R�[�h    PIC  X(004).
           03  �c�O�P�|�x�X�R�[�h    PIC  X(003).
           03  �c�O�P�|��\�Җ�E��  PIC  X(020).
           03  �c�O�P�|�]�Ǝ햼      PIC  X(020).
           03  �c�O�P�|�Z�����J�i    PIC  X(040).
           03  �c�O�P�|�R�����g��    PIC  X(120).
           03  �c�O�P�|�鍑�R�[�h    PIC  X(009).
           03  �c�O�P�|��v���厝����
                                     PIC S9(010) PACKED-DECIMAL.
           03  �c�O�P�|���吔        PIC S9(010) PACKED-DECIMAL.
           03  �c�O�P�|�S���ƊE����  PIC S9(007) PACKED-DECIMAL.
           03  �c�O�P�|�S���ƊE��А�
                                     PIC S9(007) PACKED-DECIMAL.
           03  �c�O�P�|�����ƊE����  PIC S9(007) PACKED-DECIMAL.
           03  �c�O�P�|�����ƊE��А�
                                     PIC S9(007) PACKED-DECIMAL.
           03  �c�O�P�|���Ə���      PIC S9(005) PACKED-DECIMAL.
           03  �c�O�P�|��v���Ə���  PIC  X(120).
           03  �c�O�P�|���p���[�X��Ж�
                                     PIC  X(040).
           03  �c�O�P�|�X�R�A�����O�]�_
                                     PIC S9(003) PACKED-DECIMAL.
           03  �c�O�P�|�鍑�]�_      PIC S9(003) PACKED-DECIMAL.
           03  �c�O�P�|�i�t�\�����t���O
                                     PIC  X(001).
           03  �c�O�P�|�i�t�����\�����R
                                     PIC  X(200).
           03  �c�O�P�|�i�t��        PIC  X(008).
           03  �c�O�P�|�^�M���x�z�K�p��
                                     PIC  X(008).
           03  �c�O�P�|���Ў���J�n�o��
                                     PIC  X(160).
           03  �c�O�P�|��ƖړI      PIC  X(100).
           03  �c�O�P�|�\���P�ʋ敪  PIC  X(001).
           03  �c�O�P�|�a�s�l����敪
                                     PIC  X(001).
           03  �c�O�P�|�a�s�l�S���x�X�R�[�h
                                     PIC  X(003).
           03  �c�O�P�|�������ʒm�敪
                                     PIC  X(001).
           03  �c�O�P�|�������ʒm�ݒ��
                                     PIC  X(008).
           03  �c�O�P�|�a�s�l�A���Ώۋ敪
                                     PIC  X(001).
           03  �c�O�P�|�a�n�s�k�A���Ώۋ敪
                                     PIC  X(001).
           03  �c�O�P�|�e����敪    PIC  X(001).
           03  �c�O�P�|�m�d�s�k�d�`�r�h�m�f���p�Ώۋ敪
                                     PIC  X(001).
           03  �c�O�P�|�]���[�X��g��R�[�h
                                     PIC  X(003).
           03  �c�O�P�|���Ə��Z���P  PIC  X(060).
           03  �c�O�P�|���Ə��Z���R  PIC  X(060).
           03  �c�O�P�|��ƌ��Z��    PIC  X(002).
           03  �c�O�P�|��ʑ���敪  PIC  X(001).
           03  �c�O�P�|�ؓ������ʋ敪
                                     PIC  X(001).
           03  �c�O�P�|�ؓ�����    PIC  X(002).
           03  �c�O�P�|�S�ۍ�����    PIC S9(003) PACKED-DECIMAL.
           03  �c�O�P�|�����񂹃R�[�h
                                     PIC  X(008).
           03  �c�O�P�|�X�V�N����    PIC  X(008).
           03  �c�O�P�|�X�V����      PIC  X(008).
           03  �c�O�P�|�X�V��        PIC  X(008).
           03  �c�O�P�|�o�^�N����    PIC  X(008).
           03  �c�O�P�|�o�^����      PIC  X(008).
           03  �c�O�P�|�o�^�S����    PIC  X(008).
           03  �c�O�P�|���͒S���҃R�[�h
                                     PIC  X(008).
000790     
      *    EXEC  SQL  INCLUDE  D02SQS.CBL            END-EXEC.
000800*                                                                 
000810*--< ���ږ��̃}�X�^>                                              
      *****************************************************************
      *   ������}�X�^(D02SQS_TBL)
      *****************************************************************
       01  ������}�X�^.
           03  �c�O�Q�|�����R�[�h  PIC  X(009).
           03  �c�O�Q�|������R�[�h  PIC  X(005).
           03  �c�O�Q�|�����於��    PIC  X(080).
           03  �c�O�Q�|���喼��      PIC  X(060).
           03  �c�O�Q�|�S���Җ���    PIC  X(020).
           03  �c�O�Q�|�������\��    PIC  X(001).
           03  �c�O�Q�|�U���l��      PIC  X(040).
           03  �c�O�Q�|�X�֔ԍ�      PIC  X(007).
           03  �c�O�Q�|�[�t��R�[�h  PIC  X(011).
           03  �c�O�Q�|�Z���Q        PIC  X(060).
           03  �c�O�Q�|�Z���R        PIC  X(060).
           03  �c�O�Q�|�d�b�ԍ�      PIC  X(015).
           03  �c�O�Q�|�ꊇ�����R�[�h
                                     PIC  X(005).
           03  �c�O�Q�|���t�於��    PIC  X(060).
           03  �c�O�Q�|���t�敔��    PIC  X(060).
           03  �c�O�Q�|���t��S����  PIC  X(020).
           03  �c�O�Q�|���t��J�i����
                                     PIC  X(040).
           03  �c�O�Q�|���t��X�֔ԍ�
                                     PIC  X(007).
           03  �c�O�Q�|���t��s�����R�[�h
                                     PIC  X(011).
           03  �c�O�Q�|���t��Z���Q  PIC  X(060).
           03  �c�O�Q�|���t��Z���R  PIC  X(060).
           03  �c�O�Q�|���t��d�b�ԍ�
                                     PIC  X(015).
           03  �c�O�Q�|�����}�b�`���O�ΏۊO�敪
                                     PIC  X(001).
           03  �c�O�Q�|����T�C�g    PIC S9(002) PACKED-DECIMAL.
           03  �c�O�Q�|�����        PIC  X(002).
           03  �c�O�Q�|������@      PIC  X(001).
           03  �c�O�Q�|����Ԋu      PIC S9(002) PACKED-DECIMAL.
           03  �c�O�Q�|�����T�C�g    PIC S9(002) PACKED-DECIMAL.
           03  �c�O�Q�|��������      PIC  X(002).
           03  �c�O�Q�|�����Ԋu      PIC S9(002) PACKED-DECIMAL.
           03  �c�O�Q�|�������    PIC S9(002) PACKED-DECIMAL.
           03  �c�O�Q�|�쐬�ʐ�      PIC S9(002) PACKED-DECIMAL.
           03  �c�O�Q�|�쐬�P��      PIC  X(001).
           03  �c�O�Q�|�������쐬�敪
                                     PIC  X(001).
           03  �c�O�Q�|�����w��l���敪
                                     PIC  X(001).
           03  �c�O�Q�|���t�敪      PIC  X(001).
           03  �c�O�Q�|��摤���Z�@�փR�[�h
                                     PIC  X(004).
           03  �c�O�Q�|��摤�x�X�R�[�h
                                     PIC  X(003).
           03  �c�O�Q�|��摤�������
                                     PIC  X(001).
           03  �c�O�Q�|��摤�����ԍ�
                                     PIC  X(010).
           03  �c�O�Q�|���U��s�R�[�h
                                     PIC  X(004).
           03  �c�O�Q�|���U�x�X�R�[�h
                                     PIC  X(003).
           03  �c�O�Q�|���U�������  PIC  X(001).
           03  �c�O�Q�|���U�����ԍ�  PIC  X(010).
           03  �c�O�Q�|���U���`�l    PIC  X(030).
           03  �c�O�Q�|�����������  PIC  X(001).
           03  �c�O�Q�|�������t���  PIC  X(001).
           03  �c�O�Q�|����������  PIC  X(001).
           03  �c�O�Q�|�g�p�����    PIC  X(001).
           03  �c�O�Q�|������      PIC  X(001).
           03  �c�O�Q�|�����ԍ����  PIC  X(001).
           03  �c�O�Q�|�E�v�����    PIC  X(001).
           03  �c�O�Q�|�E�v��        PIC  X(060).
           03  �c�O�Q�|���l�����    PIC  X(001).
           03  �c�O�Q�|���U���ē����쐬�敪
                                     PIC  X(001).
           03  �c�O�Q�|�W��敪      PIC  X(001).
           03  �c�O�Q�|�X�V����      PIC  X(016).
           03  �c�O�Q�|�X�V��        PIC  X(008).
           03  �c�O�Q�|���t��R�[�h  PIC  X(003).
           03  �c�O�Q�|���z�����A��  PIC S9(003) PACKED-DECIMAL.
           03  �c�O�Q�|�ڋq�g�p�s�t���O
                                     PIC  X(001).
           03  �c�O�Q�|�R�����g��    PIC  X(060).
           03  �c�O�Q�|���͒S���҃R�[�h
                                     PIC  X(008).
           03  �c�O�Q�|����J�i����  PIC  X(030).
           03  �c�O�Q�|�_���R�[�h  PIC  X(005).
           03  �c�O�Q�|���L�t���O    PIC  X(001).
           03  �c�O�Q�|�Z���P        PIC  X(060).
           03  �c�O�Q�|�Z���J�i����  PIC  X(060).
           03  �c�O�Q�|�e�`�w�ԍ�    PIC  X(015).
           03  �c�O�Q�|�U�֋�s�R�[�h
                                     PIC  X(004).
           03  �c�O�Q�|���U������    PIC  X(002).
           03  �c�O�Q�|��摤�����R�[�h
                                     PIC  X(002).
           03  �c�O�Q�|�U���萔�����S�敪
                                     PIC  X(001).
           03  �c�O�Q�|���S����      PIC  X(008).
           03  �c�O�Q�|��S�����ۃR�[�h
                                     PIC  X(004).
           03  �c�O�Q�|�o�^�N����    PIC  X(008).
           03  �c�O�Q�|�o�^����      PIC  X(008).
           03  �c�O�Q�|�o�^�S����    PIC  X(008).
           03  �c�O�Q�|�X�V�N����    PIC  X(008).
           03  �c�O�Q�|�X�V����      PIC  X(008).
           03  �c�O�Q�|��������R�[�h
                                     PIC  X(008).
           03  �c�O�Q�|���������˗�����̓�
                                     PIC  X(008).
           03  �c�O�Q�|���������J�n��
                                     PIC  X(008).
000820     
      *    EXEC  SQL  INCLUDE  D19MSY.CBL            END-EXEC.
000830*                                                                 
000840*--< �����i��ʁj�c�a>                                        
      *****************************************************************
      *   ���ږ��̃}�X�^(D19MSY_TBL)
      *****************************************************************
       01  ���ږ��̃}�X�^.
           03  �c�P�X�|�R�[�h�m�n    PIC  X(012).
           03  �c�P�X�|�R�[�h        PIC  X(005).
           03  �c�P�X�|�R�[�h��      PIC  X(040).
           03  �c�P�X�|����          PIC  X(060).
           03  �c�P�X�|�X�V����      PIC  X(016).
           03  �c�P�X�|�X�V��        PIC  X(008).
           03  �c�P�X�|�f�t�H���g�敪
                                     PIC  X(001).
           03  �c�P�X�|�p�X���[�h���͋敪
                                     PIC  X(001).
           03  �c�P�X�|�\�[�g��      PIC S9(003) PACKED-DECIMAL.
           03  �c�P�X�|���͒S���҃R�[�h
                                     PIC  X(008).
           03  �c�P�X�|�o�^�N����    PIC  X(008).
           03  �c�P�X�|�o�^����      PIC  X(008).
           03  �c�P�X�|�o�^�S����    PIC  X(008).
           03  �c�P�X�|�X�V�N����    PIC  X(008).
           03  �c�P�X�|�X�V����      PIC  X(008).
000850     
      *    EXEC  SQL  INCLUDE  M01SAJ.CBL            END-EXEC.
000860*                                                                 
000100************************************************
000200* �����(���)(M01SAJ)
000300************************************************
000400 01  �l�O�P�|���R�[�h�敪           PIC  X(1).
000500 01  �l�O�P�|�_��ԍ�               PIC  X(15).
000600 01  �l�O�P�|�ă��[�X��           PIC S9(2) COMP-3.
000700 01  �l�O�P�|�_����               PIC  X(3).
000800 01  �l�O�P�|�A��                   PIC S9(3) COMP-3.
000900 01  �l�O�P�|�����敪               PIC  X(1).
001000 01  �l�O�P�|��񔄋p����敪       PIC  X(1).
001100 01  �l�O�P�|�����N��               PIC  X(6).
001200 01  �l�O�P�|����������R�[�h     PIC  X(9).
001300 01  �l�O�P�|�ڋq�敪               PIC  X(2).
001400 01  �l�O�P�|�s�`�r�r�R�[�h         PIC  X(7).
001500 01  �l�O�P�|�ݓ|�N����             PIC  X(8).
001600 01  �l�O�P�|��������敪         PIC  X(1).
001700 01  �l�O�P�|�ő����           PIC  X(1).
001800 01  �l�O�P�|�_���                 PIC  X(8).
001900 01  �l�O�P�|���n�N����             PIC  X(8).
002000 01  �l�O�P�|�_��J�n��             PIC  X(8).
002100 01  �l�O�P�|�_��I����             PIC  X(8).
002200 01  �l�O�P�|����                   PIC S9(3) COMP-3.
002300 01  �l�O�P�|�_��敪               PIC  X(1).
002400 01  �l�O�P�|���[�X�J�n�敪         PIC  X(1).
002500 01  �l�O�P�|�S�����ۃR�[�h         PIC  X(4).
002600 01  �l�O�P�|�S���҃R�[�h           PIC  X(8).
002700 01  �l�O�P�|�����敪               PIC  X(1).
002800 01  �l�O�P�|��ԃt���O             PIC  X(1).
002900 01  �l�O�P�|��_��敪             PIC  X(1).
003000 01  �l�O�P�|�k�y�����敪           PIC  X(1).
003100 01  �l�O�P�|�k�y�����N��           PIC  X(6).
003200 01  �l�O�P�|����N��               PIC  X(6).
003300 01  �l�O�P�|�������N��           PIC  X(6).
003400 01  �l�O�P�|���������N��           PIC  X(6).
003500 01  �l�O�P�|���������             PIC  X(8).
003600 01  �l�O�P�|������������N��       PIC  X(6).
003700 01  �l�O�P�|�ŐV�������           PIC S9(3) COMP-3.
003800 01  �l�O�P�|�������             PIC S9(3) COMP-3.
003900 01  �l�O�P�|�����Ԋu               PIC S9(2) COMP-3.
004000 01  �l�O�P�|����Ԋu               PIC S9(2) COMP-3.
004100 01  �l�O�P�|���x�]�o�^�N��         PIC  X(6).
004200 01  �l�O�P�|���x�]�m��t���O       PIC  X(1).
004300 01  �l�O�P�|����T�C�g             PIC S9(2) COMP-3.
004400 01  �l�O�P�|������@               PIC  X(1).
004500 01  �l�O�P�|�ă��[�X�敪           PIC  X(1).
004600 01  �l�O�P�|�Ǘ������x��         PIC  X(1).
004700 01  �l�O�P�|�O���t���O             PIC  X(1).
004800 01  �l�O�P�|����               PIC S9(1) COMP-3.
004900 01  �l�O�P�|������R�[�h           PIC  X(5).
005000 01  �l�O�P�|�_�������R�[�h     PIC  X(9).
005100 01  �l�O�P�|�_���R�[�h           PIC  X(5).
005200 01  �l�O�P�|�x�������R�[�h       PIC  X(9).
005300 01  �l�O�P�|�x����R�[�h           PIC  X(5).
005400 01  �l�O�P�|�G��̑���             PIC S9(13) COMP-3.
005500 01  �l�O�P�|�ŐV���z����           PIC S9(13) COMP-3.
005600 01  �l�O�P�|�ŐV���             PIC S9(2)V9(7) COMP-3.
005700 01  �l�O�P�|�ŐV����Ŋz           PIC S9(13) COMP-3.
005800 01  �l�O�P�|�����_�񑍊z           PIC S9(13) COMP-3.
005900 01  �l�O�P�|��������ő��z         PIC S9(13) COMP-3.
006000 01  �l�O�P�|�ŐV�_�񑍊z           PIC S9(13) COMP-3.
006100 01  �l�O�P�|�ŐV����ő��z         PIC S9(13) COMP-3.
006200 01  �l�O�P�|�ێ疳������           PIC S9(3) COMP-3.
006300 01  �l�O�P�|����z                 PIC S9(13) COMP-3.
006400 01  �l�O�P�|����ŉ���z           PIC S9(13) COMP-3.
006500 01  �l�O�P�|�ŐV�����             PIC  X(8).
006600 01  �l�O�P�|�����������z           PIC S9(13) COMP-3.
006700 01  �l�O�P�|�������v���z           PIC S9(13) COMP-3.
006800 01  �l�O�P�|�����擾���z           PIC S9(13) COMP-3.
006900 01  �l�O�P�|�����t���O             PIC  X(1).
007000 01  �l�O�P�|������                 PIC  X(8).
007100 01  �l�O�P�|���Y���               PIC  X(5).
007200 01  �l�O�P�|���Z��_����         PIC  X(3).
007300 01  �l�O�P�|�ݕt����               PIC S9(2)V9(7) COMP-3.
007400 01  �l�O�P�|�ă��[�X�萔��         PIC S9(13) COMP-3.
007500 01  �l�O�P�|�ϑ��ێ�敪           PIC  X(1).
007600 01  �l�O�P�|�ϑ��ێ瑊�����z       PIC S9(13) COMP-3.
007700 01  �l�O�P�|���x�]�x�����z         PIC S9(13) COMP-3.
007800 01  �l�O�P�|�O������               PIC S9(3) COMP-3.
007900 01  �l�O�P�|���̑��_���ދ敪     PIC  X(1).
008000 01  �l�O�P�|�_���ދ敪           PIC  X(1).
008100 01  �l�O�P�|�_���ޓ����R�[�h     PIC  X(2).
008200 01  �l�O�P�|�x������               PIC S9(13) COMP-3.
008300 01  �l�O�P�|���������z             PIC S9(13) COMP-3.
008400 01  �l�O�P�|�Œ莑�Y��             PIC S9(13) COMP-3.
008500 01  �l�O�P�|�N�����               PIC S9(2)V9(3) COMP-3.
008600 01  �l�O�P�|�^�p�����             PIC S9(2)V9(3) COMP-3.
008700 01  �l�O�P�|�e���v�z               PIC S9(13) COMP-3.
008800 01  �l�O�P�|�e���v�z�|�\           PIC S9(13) COMP-3.
008900 01  �l�O�P�|�e���v�z�|��           PIC S9(13) COMP-3.
009000 01  �l�O�P�|�K�葹�Q����{�z       PIC S9(13) COMP-3.
009100 01  �l�O�P�|�M�p�ی���             PIC S9(13) COMP-3.
009200 01  �l�O�P�|���Y�ی���             PIC S9(13) COMP-3.
009300 01  �l�O�P�|�ێ痿                 PIC S9(13) COMP-3.
009400 01  �l�O�P�|���̑��G��             PIC S9(13) COMP-3.
009500 01  �l�O�P�|�萔��                 PIC S9(13) COMP-3.
009600 01  �l�O�P�|��`����             PIC  X(8).
009700 01  �l�O�P�|��`����               PIC S9(3) COMP-3.
009800 01  �l�O�P�|�i�t�敪               PIC  X(2).
009900 01  �l�O�P�|�擾���z               PIC S9(13) COMP-3.
010000 01  �l�O�P�|���Е����z����         PIC S9(13) COMP-3.
010100 01  �l�O�P�|���Е����z�����       PIC S9(13) COMP-3.
010200 01  �l�O�P�|���Е��_�񑍊z         PIC S9(13) COMP-3.
010300 01  �l�O�P�|���Е�����ő��z       PIC S9(13) COMP-3.
010400 01  �l�O�P�|���Ѝw���z             PIC S9(13) COMP-3.
010500 01  �l�O�P�|�c���ݒ�z             PIC S9(13) COMP-3.
010600 01  �l�O�P�|���Ўc���ݒ�z         PIC S9(13) COMP-3.
010700 01  �l�O�P�|���Љ���z             PIC S9(13) COMP-3.
010800 01  �l�O�P�|���Љ���z�����       PIC S9(13) COMP-3.
010900 01  �l�O�P�|���Њ����������z       PIC S9(13) COMP-3.
011000 01  �l�O�P�|���Њ������v���z       PIC S9(13) COMP-3.
011100 01  �l�O�P�|���t���O             PIC  X(1).
011200 01  �l�O�P�|����                 PIC  X(8).
011300 01  �l�O�P�|����               PIC S9(3) COMP-3.
011400 01  �l�O�P�|���敪               PIC  X(1).
011500 01  �l�O�P�|��񗝗R               PIC  X(2).
011600 01  �l�O�P�|��񏈗��N��           PIC  X(6).
011700 01  �l�O�P�|����敪               PIC  X(1).
011800 01  �l�O�P�|����������N��       PIC  X(6).
011900 01  �l�O�P�|���N��               PIC  X(6).
012000 01  �l�O�P�|��񌎐�               PIC S9(3) COMP-3.
012100 01  �l�O�P�|�O�������z           PIC S9(13) COMP-3.
012200 01  �l�O�P�|�O�����㑍�z           PIC S9(13) COMP-3.
012300 01  �l�O�P�|�O�����㑍�z����       PIC S9(13) COMP-3.
012400 01  �l�O�P�|�O������ő��z         PIC S9(13) COMP-3.
012500 01  �l�O�P�|�O������ő��z����     PIC S9(13) COMP-3.
012600 01  �l�O�P�|���㑍�z               PIC S9(13) COMP-3.
012700 01  �l�O�P�|���㑍�z����           PIC S9(13) COMP-3.
012800 01  �l�O�P�|�������ő��z         PIC S9(13) COMP-3.
012900 01  �l�O�P�|�������ő��z����     PIC S9(13) COMP-3.
013000 01  �l�O�P�|�O�����������c��       PIC S9(13) COMP-3.
013100 01  �l�O�P�|�O�����������c������   PIC S9(13) COMP-3.
013200 01  �l�O�P�|�O��������z�݌v       PIC S9(13) COMP-3.
013300 01  �l�O�P�|�O��������z�݌v����   PIC S9(13) COMP-3.
013400 01  �l�O�P�|�O��������Ŋz�݌v     PIC S9(13) COMP-3.
013500 01  �l�O�P�|�O��������Ŋz�݌v���� PIC S9(13) COMP-3.
013600 01  �l�O�P�|��������z             PIC S9(13) COMP-3.
013700 01  �l�O�P�|��������z�Q           PIC S9(13) COMP-3.
013800 01  �l�O�P�|��������z����         PIC S9(13) COMP-3.
013900 01  �l�O�P�|��������ő����z       PIC S9(13) COMP-3.
014000 01  �l�O�P�|��������ő����z�Q     PIC S9(13) COMP-3.
014100 01  �l�O�P�|��������ő����z����   PIC S9(13) COMP-3.
014200 01  �l�O�P�|��������ŗ�           PIC S9(2)V9(7) COMP-3.
014300 01  �l�O�P�|��������ŗ��Q         PIC S9(2)V9(7) COMP-3.
014400 01  �l�O�P�|��������ŗ�����       PIC S9(2)V9(7) COMP-3.
014500 01  �l�O�P�|����������z�݌v       PIC S9(13) COMP-3.
014600 01  �l�O�P�|����������z�݌v����   PIC S9(13) COMP-3.
014700 01  �l�O�P�|����������Ŋz�݌v     PIC S9(13) COMP-3.
014800 01  �l�O�P�|����������Ŋz�݌v���� PIC S9(13) COMP-3.
014900 01  �l�O�P�|��������z�݌v         PIC S9(13) COMP-3.
015000 01  �l�O�P�|��������z�݌v����     PIC S9(13) COMP-3.
015100 01  �l�O�P�|�������������c��       PIC S9(13) COMP-3.
015200 01  �l�O�P�|�������������c������   PIC S9(13) COMP-3.
015300 01  �l�O�P�|�������㑝���z         PIC S9(13) COMP-3.
015400 01  �l�O�P�|�������㑝���z����     PIC S9(13) COMP-3.
015500 01  �l�O�P�|��������ő����z       PIC S9(13) COMP-3.
015600 01  �l�O�P�|��������ő����z����   PIC S9(13) COMP-3.
015700 01  �l�O�P�|�������㌸���z         PIC S9(13) COMP-3.
015800 01  �l�O�P�|�������㌸���z����     PIC S9(13) COMP-3.
015900 01  �l�O�P�|��������Ō����z       PIC S9(13) COMP-3.
016000 01  �l�O�P�|��������Ō����z����   PIC S9(13) COMP-3.
016100 01  �l�O�P�|�����k�y������������N�� PIC  X(6).
016200 01  �l�O�P�|�����k�y������������N�� PIC  X(6).
016300 01  �l�O�P�|�����k�y�����㑝���z   PIC S9(13) COMP-3.
016400 01  �l�O�P�|�����k�y�����㑝���z�Q PIC S9(13) COMP-3.
016500 01  �l�O�P�|�����k�y�����㑝���z���� PIC S9(13) COMP-3.
016600 01  �l�O�P�|�����k�y������ő����z PIC S9(13) COMP-3.
016700 01  �l�O�P�|�����k�y������ő����z�Q PIC S9(13) COMP-3.
016800 01  �l�O�P�|�����k�y������ő����z���� PIC S9(13) COMP-3.
016900 01  �l�O�P�|�����k�y������������N�� PIC  X(6).
017000 01  �l�O�P�|�����k�y������������N�� PIC  X(6).
017100 01  �l�O�P�|�����k�y�����㌸���z   PIC S9(13) COMP-3.
017200 01  �l�O�P�|�����k�y�����㌸���z�Q PIC S9(13) COMP-3.
017300 01  �l�O�P�|�����k�y�����㌸���z���� PIC S9(13) COMP-3.
017400 01  �l�O�P�|�����k�y������Ō����z PIC S9(13) COMP-3.
017500 01  �l�O�P�|�����k�y������Ō����z�Q PIC S9(13) COMP-3.
017600 01  �l�O�P�|�����k�y������Ō����z���� PIC S9(13) COMP-3.
017700 01  �l�O�P�|�����k�y������ŗ�     PIC S9(2)V9(7) COMP-3.
017800 01  �l�O�P�|�����k�y������ŗ��Q   PIC S9(2)V9(7) COMP-3.
017900 01  �l�O�P�|�O������z             PIC S9(13) COMP-3.
018000 01  �l�O�P�|�O������z�Q           PIC S9(13) COMP-3.
018100 01  �l�O�P�|�O������z����         PIC S9(13) COMP-3.
018200 01  �l�O�P�|�O������ő����z       PIC S9(13) COMP-3.
018300 01  �l�O�P�|�O������ő����z�Q     PIC S9(13) COMP-3.
018400 01  �l�O�P�|�O������ő����z����   PIC S9(13) COMP-3.
018500 01  �l�O�P�|�O��������z�݌v       PIC S9(13) COMP-3.
018600 01  �l�O�P�|�O��������z�݌v����   PIC S9(13) COMP-3.
018700 01  �l�O�P�|�O��������Ŋz�݌v     PIC S9(13) COMP-3.
018800 01  �l�O�P�|�O��������Ŋz�݌v���� PIC S9(13) COMP-3.
018900 01  �l�O�P�|�O�������{�c��         PIC S9(13) COMP-3.
019000 01  �l�O�P�|�O���������c��         PIC S9(13) COMP-3.
019100 01  �l�O�P�|�O�������{����z�݌v   PIC S9(13) COMP-3.
019200 01  �l�O�P�|�O������������z�݌v   PIC S9(13) COMP-3.
019300 01  �l�O�P�|�O�������{�c��         PIC S9(13) COMP-3.
019400 01  �l�O�P�|�O���������c��         PIC S9(13) COMP-3.
019500 01  �l�O�P�|�V�K���������{�z       PIC S9(13) COMP-3.
019600 01  �l�O�P�|�V�K�����������z       PIC S9(13) COMP-3.
019700 01  �l�O�P�|�������{�����z         PIC S9(13) COMP-3.
019800 01  �l�O�P�|�������������z         PIC S9(13) COMP-3.
019900 01  �l�O�P�|���������{�c��         PIC S9(13) COMP-3.
020000 01  �l�O�P�|�����������c��         PIC S9(13) COMP-3.
020100 01  �l�O�P�|���������{�����\��z�݌v PIC S9(13) COMP-3.
020200 01  �l�O�P�|���������������\��z�݌v PIC S9(13) COMP-3.
020300 01  �l�O�P�|���������{����z�݌v   PIC S9(13) COMP-3.
020400 01  �l�O�P�|��������������z�݌v   PIC S9(13) COMP-3.
020500 01  �l�O�P�|���������{����z�݌v���� PIC S9(13) COMP-3.
020600 01  �l�O�P�|��������������z�݌v���� PIC S9(13) COMP-3.
020700 01  �l�O�P�|��������\��z         PIC S9(13) COMP-3.
020800 01  �l�O�P�|���{���o�߃��[�X��     PIC S9(13) COMP-3.
020900 01  �l�O�P�|�������o�߃��[�X��     PIC S9(13) COMP-3.
021000 01  �l�O�P�|���{�������[�X��       PIC S9(13) COMP-3.
021100 01  �l�O�P�|�����������[�X��       PIC S9(13) COMP-3.
021200 01  �l�O�P�|�����O�󃊁[�X�������z PIC S9(13) COMP-3.
021300 01  �l�O�P�|�������O�󃊁[�X�������z PIC S9(13) COMP-3.
021400 01  �l�O�P�|�����O�󃊁[�X�������z PIC S9(13) COMP-3.
021500 01  �l�O�P�|�����O��������z       PIC S9(13) COMP-3.
021600 01  �l�O�P�|���{�O���             PIC S9(13) COMP-3.
021700 01  �l�O�P�|�����O���             PIC S9(13) COMP-3.
021800 01  �l�O�P�|�������O�󃊁[�X���c�� PIC S9(13) COMP-3.
021900 01  �l�O�P�|�ݓ|�����z             PIC S9(13) COMP-3.
022000 01  �l�O�P�|���ݕ뉿               PIC S9(13) COMP-3.
022100 01  �l�O�P�|�ϗp�N��               PIC S9(2) COMP-3.
022200 01  �l�O�P�|�ی�����               PIC S9(2) COMP-3.
022300 01  �l�O�P�|�S�����Ԍ㓖�������^���� PIC S9(13) COMP-3.
022400 01  �l�O�P�|��������Ώۃt���O     PIC  X(1).
022500 01  �l�O�P�|�V�_��ԍ�             PIC  X(15).
022600 01  �l�O�P�|�������㒲���t���O     PIC  X(1).
022700 01  �l�O�P�|���������ύX�t���O     PIC  X(1).
022800 01  �l�O�P�|�c�ƊT�v�_�񒊏o�t���O PIC  X(1).
022900 01  �l�O�P�|�c�ƊT�v�������o�t���O PIC  X(1).
023000 01  �l�O�P�|�c�Ə��敪             PIC  X(1).
023100 01  �l�O�P�|�_����e�_�񌏖�       PIC  N(20).
023200 01  �l�O�P�|���_�񌏖�           PIC  N(20).
023300 01  �l�O�P�|�����                 PIC  X(8).
023400 01  �l�O�P�|�Г�����               PIC S9(2)V9(3) COMP-3.
023500 01  �l�O�P�|�N�e����               PIC S9(2)V9(3) COMP-3.
023600 01  �l�O�P�|�̔����i��             PIC S9(13) COMP-3.
023700 01  �l�O�P�|�G��                   PIC S9(13) COMP-3.
023800 01  �l�O�P�|�ŏI����\���         PIC  X(8).
023900 01  �l�O�P�|��v����R�[�h         PIC  X(2).
024000 01  �l�O�P�|�������p�t���O         PIC  X(1).
024100 01  �l�O�P�|�����n�x���z         PIC S9(13) COMP-3.
024200 01  �l�O�P�|�d��t���O�|����       PIC  X(1).
024300 01  �l�O�P�|�d��t���O�|����       PIC  X(1).
024400 01  �l�O�P�|�ă��[�X����G���g���� PIC  X(8).
024500 01  �l�O�P�|����ŋ敪             PIC  X(2).
024600 01  �l�O�P�|�������Ѝw���z         PIC S9(13) COMP-3.
024700 01  �l�O�P�|���ЍŐV�_�񑍊z       PIC S9(13) COMP-3.
024800 01  �l�O�P�|���ЍŐV����ő��z     PIC S9(13) COMP-3.
024900 01  �l�O�P�|���Ќ_�񑍊z           PIC S9(13) COMP-3.
025000 01  �l�O�P�|�������G���g����     PIC  X(8).
025100 01  �l�O�P�|���p�t���O             PIC  X(1).
025200 01  �l�O�P�|�ă��[�X�����N��       PIC  X(6).
025300 01  �l�O�P�|�ă��[�X�����p���敪   PIC  X(1).
025400 01  �l�O�P�|�ă��[�X�\�����L���敪 PIC  X(1).
025500 01  �l�O�P�|�ă��[�X�\���t���O     PIC  X(1).
025600 01  �l�O�P�|���\���t���O         PIC  X(1).
025700 01  �l�O�P�|���������敪           PIC  X(1).
025800 01  �l�O�P�|�O�������������z       PIC S9(13) COMP-3.
025900 01  �l�O�P�|�O�����Њ����������z   PIC S9(13) COMP-3.
026000 01  �l�O�P�|�����敪               PIC  X(1).
026100 01  �l�O�P�|�R���X�[�}�@�l�敪     PIC  X(1).
026200 01  �l�O�P�|�\���A��               PIC S9(4) COMP-3.
026300 01  �l�O�P�|�����c���ΏۊO�t���O   PIC  X(1).
026400 01  �l�O�P�|�O����ԃt���O         PIC  X(1).
026500 01  �l�O�P�|������               PIC S9(3) COMP-3.
026600 01  �l�O�P�|������               PIC S9(3) COMP-3.
026700 01  �l�O�P�|�����k�y������������N���Q PIC  X(6).
026800 01  �l�O�P�|�����k�y������������N���Q PIC  X(6).
026900 01  �l�O�P�|�����k�y������������N���Q PIC  X(6).
027000 01  �l�O�P�|�����k�y������������N���Q PIC  X(6).
027100 01  �l�O�P�|�������\���         PIC  X(8).
027200 01  �l�O�P�|�O�������{�����\��z�݌v PIC S9(13) COMP-3.
027300 01  �l�O�P�|�O�������������\��z�݌v PIC S9(13) COMP-3.
027400 01  �l�O�P�|�ŐV�ΊO�_��ԍ�       PIC  X(15).
027500 01  �l�O�P�|��������               PIC S9(13) COMP-3.
027600 01  �l�O�P�|������������           PIC S9(13) COMP-3.
027700 01  �l�O�P�|�������������         PIC S9(13) COMP-3.
027800 01  �l�O�P�|������������ő���     PIC S9(13) COMP-3.
027900 01  �l�O�P�|�O�����ЍŐV�_�񑍊z   PIC S9(13) COMP-3.
028000 01  �l�O�P�|�O�����ЍŐV����ő��z PIC S9(13) COMP-3.
028100 01  �l�O�P�|�O�������{�c������     PIC S9(13) COMP-3.
028200 01  �l�O�P�|�O���������c������     PIC S9(13) COMP-3.
028300 01  �l�O�P�|�O�������{����z�݌v���� PIC S9(13) COMP-3.
028400 01  �l�O�P�|�O������������z�݌v���� PIC S9(13) COMP-3.
028500 01  �l�O�P�|�O�������{�c������     PIC S9(13) COMP-3.
028600 01  �l�O�P�|�O���������c������     PIC S9(13) COMP-3.
028700 01  �l�O�P�|�V�K���������{�z����   PIC S9(13) COMP-3.
028800 01  �l�O�P�|�V�K�����������z����   PIC S9(13) COMP-3.
028900 01  �l�O�P�|�������{�����z����     PIC S9(13) COMP-3.
029000 01  �l�O�P�|�������������z����     PIC S9(13) COMP-3.
029100 01  �l�O�P�|���������{�c������     PIC S9(13) COMP-3.
029200 01  �l�O�P�|�����������c������     PIC S9(13) COMP-3.
029300 01  �l�O�P�|���������{�����\��z�݌v���� PIC S9(13) COMP-3.
029400 01  �l�O�P�|���������������\��z�݌v���� PIC S9(13) COMP-3.
029500 01  �l�O�P�|��������\��z����     PIC S9(13) COMP-3.
029600 01  �l�O�P�|���{���o�߃��[�X������ PIC S9(13) COMP-3.
029700 01  �l�O�P�|�������o�߃��[�X������ PIC S9(13) COMP-3.
029800 01  �l�O�P�|���{�������[�X������   PIC S9(13) COMP-3.
029900 01  �l�O�P�|�����������[�X������   PIC S9(13) COMP-3.
030000 01  �l�O�P�|�����O�󃊁[�X�������z���� PIC S9(13) COMP-3.
030100 01  �l�O�P�|�������O�󃊁[�X�������z���� PIC S9(13) COMP-3.
030200 01  �l�O�P�|���{�O�������         PIC S9(13) COMP-3.
030300 01  �l�O�P�|�����O�������         PIC S9(13) COMP-3.
030400 01  �l�O�P�|�����G���g����         PIC  X(8).
030500 01  �l�O�P�|�O�����㑍�z�ă��[�X   PIC S9(13) COMP-3.
030600 01  �l�O�P�|���㑍�z�ă��[�X       PIC S9(13) COMP-3.
030700 01  �l�O�P�|�O��������z�݌v�ă��[�X PIC S9(13) COMP-3.
030800 01  �l�O�P�|��������z�ă��[�X     PIC S9(13) COMP-3.
030900 01  �l�O�P�|����������z�݌v�ă��[�X PIC S9(13) COMP-3.
031000 01  �l�O�P�|��������z�݌v�ă��[�X PIC S9(13) COMP-3.
031100 01  �l�O�P�|�����k�y�����㑝���z�ă��[�X PIC S9(13) COMP-3.
031200 01  �l�O�P�|�����k�y�����㌸���z�ă��[�X PIC S9(13) COMP-3.
031300 01  �l�O�P�|�O��������z�݌v�ă��[�X PIC S9(13) COMP-3.
031400 01  �l�O�P�|����ă��[�X�����敪   PIC  X(1).
031500 01  �l�O�P�|�������������c���ă��[�X PIC S9(13) COMP-3.
031600 01  �l�O�P�|�O�����������c���ă��[�X PIC S9(13) COMP-3.
031700 01  �l�O�P�|�O��������ő��z     PIC S9(13) COMP-3.
031800 01  �l�O�P�|�����O�󃊁[�X�������z���� PIC S9(13) COMP-3.
031900 01  �l�O�P�|�����O��������z����   PIC S9(13) COMP-3.
032000 01  �l�O�P�|�������O�󃊁[�X���c������ PIC S9(13) COMP-3.
032100 01  �l�O�P�|�ݓ|�����z���������z   PIC S9(13) COMP-3.
032200 01  �l�O�P�|�o���p��_��敪       PIC  X(1).
032300 01  �l�O�P�|���������������z   PIC S9(13) COMP-3.
032400 01  �l�O�P�|���������������z����� PIC S9(13) COMP-3.
032500 01  �l�O�P�|��������G���g����     PIC  X(8).
032600 01  �l�O�P�|�����O��������z       PIC S9(13) COMP-3.
032700 01  �l�O�P�|�����O��������z����   PIC S9(13) COMP-3.
032800 01  �l�O�P�|�������O����c��       PIC S9(13) COMP-3.
032900 01  �l�O�P�|�������O����c������   PIC S9(13) COMP-3.
033000 01  �l�O�P�|�����G���g�������N��   PIC  X(6).
033100 01  �l�O�P�|�䒠�|������������z     PIC S9(13) COMP-3.
033200 01  �l�O�P�|�䒠�|������������z���� PIC S9(13) COMP-3.
033300 01  �l�O�P�|�䒠�|���������O��z     PIC S9(13) COMP-3.
033400 01  �l�O�P�|�䒠�|���������O��z���� PIC S9(13) COMP-3.
033500 01  �l�O�P�|�S�ۋ敪               PIC  X(1).
033600 01  �l�O�P�|��������T�C�g         PIC S9(02) COMP-3.
033700 01  �l�O�P�|�����v��N����         PIC  X(8).
033800 01  �l�O�P�|�_����e�|��񏈗��N�� PIC  X(6).
033900 01  �l�O�P�|���|��񏈗��N��     PIC  X(6).
034000 01  �l�O�P�|��񗚗��|�ݓ|�����z   PIC  S9(13) COMP-3.
034100 01  �l�O�P�|��񗚗��|�ݓ|�����z���v�����z PIC S9(13) COMP-3.
034200 01  �l�O�P�|������������ŗ�       PIC S9(2)V9(7) COMP-3.
000870     
      *    EXEC  SQL  END  DECLARE          SECTION  END-EXEC.
000880*----------------------------------------------------------------*
000890*    �v�n�q�j�G���A                                              *
000900*----------------------------------------------------------------*
000910 01  �v�n�q�j�|�G���A.                                            
000920*                                                                 
000930*--< �t�@�C����� >                                               
000940     03  �v�|��ԃG���A.                                          
000950         05  �v�|���                 PIC  X(02).                 
000960*--< �G���[����p >                                               
000970     03  �v�|�G���[�R�[�h             PIC S9(04).                 
000980*                                                                 
000990*--< �t���O�A���A >                                               
001000     03  �t���O�A���A.                                            
001010         05  �v�|�I���|�t���O         PIC  X(01).                 
001020         05  �v�|�ُ�I���|�t���O     PIC  X(01).                 
001030*                                                                 
001040*--< �����G���A >                                                 
001050     03  �����G���A.                                              
001060         05  �v�|���́|����           PIC  9(09).                 
001070         05  �v�|�o�́|����           PIC  9(09).                 
001080*                                                                 
001090*--< ���ʏ�� >                                                   
001100 01  �v�|���ʏ��.                                                
001110     03  �v�|�V�X�e�����t.                                        
001120         05  �v�|���I                 PIC  X(02) VALUE  "20".     
001130         05  �v�|�N����               PIC  X(06).                 
001140     03  �v�|�V�X�e������             PIC  X(08).                 
001150     03  �v�|�S����                   PIC  X(08) VALUE "IKOPG   ".
001160*                                                                 
001170*----------------------------------------------------------------*
001180*    �T�u���[�`����                                              *
001190*----------------------------------------------------------------*
001200 01  CALL-AREA.                                                   
001210*--< ���ʃ��O�T�u���[�`�� >                                       
001220     03  CLOCO001                     PIC  X(08) VALUE "CLOCO001".
001230     03  COBCO001                     PIC  X(08) VALUE "COBCO001".
001240*                                                                 
001250*----------------------------------------------------------------*
001260*    �b�n�o�x�̈�                                                *
001270*----------------------------------------------------------------*
001280*--< ���ʃ��O�p�p�����[�^ >                                       
001290 01  IF-CHOCO001.                                                 
001300     COPY  CHOCO001  REPLACING  ==()==  BY  ==���P�|==.           
001310*                                                                 
001320*----------------------------------------------------------------*
001330*    �h�m�h�t�@�C���Ǎ��T�u���[�`���p�p�����^�̈�                *
001340*----------------------------------------------------------------*
001350 01  PARA-AREA.                                                   
001360     COPY CPBCO001.                                               
001370******************************************************************
001380*    �萔�p�f�[�^��`�G���A                                      *
001390******************************************************************
001400 CONSTANT                             SECTION.                    
001410 01  �萔�̈�.                                                    
001420     03  �萔�|�v���O�����h�c         PIC  X(08) VALUE "AAASED25".
001430     03  �萔�|�v���O������           PIC  X(80)                  
001440                              VALUE  "�O����󕥎c���t�@�C���쐬".
001450     03  �萔�|�r�p�k�n�j             PIC S9(04)  VALUE  ZERO.    
001460     03  �萔�|�r�p�k�d�m�c           PIC S9(04)  VALUE  0100.    
001470     03  �萔�|������               PIC S9(04)  VALUE  ZERO.    
001480     03  �萔�|�ُ���               PIC S9(04)  VALUE  0009.    
001490******************************************************************
001500*    �o�q�n�b�d�c�t�q�d            �c�h�u�h�r�h�n�m              *
001510******************************************************************
001520 PROCEDURE                            DIVISION.                   
001530*                                                                 
001540     PERFORM  ��������.                                           
001550*                                                                 
001560     PERFORM  �又��  UNTIL  �v�|�I���|�t���O  =  "Y".            
001570*                                                                 
001580     PERFORM  �I������.                                           
001590*                                                                 
001600     STOP     RUN.                                                
001610*                                                                 
001620******************************************************************
001630*    ��������                                                    *
001640*******************************************************************                                                                 
001650 ��������                             SECTION.                    
001660 ���������|�r�s�`�q�s.                                            
001670*                                                                 
001680*----------------------------------------------------------------*
001690*    �J�n���b�Z�[�W�o�͏���                                      *
001700*----------------------------------------------------------------*
001710     INITIALIZE                       IF-CHOCO001.                
001720     MOVE  "3"                        TO  ���P�|�C�x���g���.     
001730     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
001740     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
001750     MOVE  "START"                    TO  ���P�|��������.         
001760     MOVE  �萔�|�v���O������         TO  ���P�|���̑����b�Z�[�W. 
001770     CALL  CLOCO001                USING  IF-CHOCO001.            
001780*                                                                 
001790*----------------------------------------------------------------*
001800*    ��Ɨ̈�̏����l����                                        *
001810*----------------------------------------------------------------*
001820     MOVE  SPACE                      TO  �v�n�q�j�|�G���A.       
001830     INITIALIZE                           �v�n�q�j�|�G���A.       
001840*                                                                 
001850*--< �b�o�t���t���擾 >                                           
001860     ACCEPT  �v�|�N����               FROM  DATE.                 
001870*                                                                 
001880*--< �b�o�t�������擾 >                                           
001890     ACCEPT  �v�|�V�X�e������         FROM  TIME.                 
001900*----------------------------------------------------------------*
001910*    �n�q�`�b�k�d�ڑ�                                            *
001920*----------------------------------------------------------------*
001930     PERFORM   �n�q�`�b�k�d�ڑ�.                                  
001940*----------------------------------------------------------------*
001950*    �Ɩ��Ǘ��e�[�u���Ǎ�                                        *
001960*----------------------------------------------------------------*
001970     PERFORM    �Ɩ��Ǘ��e�[�u���Ǎ�.                             
001980*----------------------------------------------------------------*
001990*    �����e�[�u���J�[�\����`                                    *
002000*----------------------------------------------------------------*
002010     PERFORM  �����e�[�u���J�[�\����`.                           
002020*----------------------------------------------------------------*
002030*    �t�@�C���I�[�v��                                            *
002040*----------------------------------------------------------------*
002050     PERFORM  �t�@�C���I�[�v��.                                   
002060*----------------------------------------------------------------*
002070*    �����e�[�u���J�[�\���Ǎ�                                    *
002080*----------------------------------------------------------------*
002090     PERFORM �����e�[�u���J�[�\���Ǎ�.                            
002100*                                                                 
002110 ���������|�d�w�h�s.                                              
002120     EXIT.                                                        
002130******************************************************************
002140*    �n�q�`�b�k�d�ڑ�                                            *
002150******************************************************************
002160 �n�q�`�b�k�d�ڑ�                     SECTION.                    
002170 �n�q�`�b�k�d�ڑ��|�r�s�`�q�s.                                    
002180*                                                                 
002190*--< �c�a�ڑ��p�����擾���� >                                   
002200     CALL  COBCO001                USING  PARA-AREA.              
002210*                                                                 
002220     MOVE  PARA-DBSTRING              TO  DB-STRING.              
002230     MOVE  PARA-USERNAME              TO  USERNAME.               
002240     MOVE  PARA-PASSWORD              TO  PASSWD.                 
002250*                                                                 
002260*----------------------------------------------------------------*
002270*    �J�n�ڑ�                                                    *
002280*----------------------------------------------------------------*
002290     IF    DB-STRING  =  SPACE                                    
002300        
      *       EXEC SQL                                                  
002310*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002320*       END-EXEC 
              CALL "ORASQL8"
              MOVE 10 TO SQL-ITERS
              MOVE 5 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  USERNAME
                  SQL-SQHSTV(1)
              MOVE 10 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  PASSWD
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE
002330     ELSE                                                         
002340        
      *       EXEC SQL                                                  
002350*          CONNECT  :USERNAME IDENTIFIED BY :PASSWD               
002360*            USING  :DB-STRING                                    
002370*       END-EXEC 
              CALL "ORASQL8"
              MOVE 10 TO SQL-ITERS
              MOVE 36 TO SQL-OFFSET
              MOVE 0 TO SQL-OCCURS
              CALL "SQLADR" USING
                  SQLCUD
                  SQL-CUD
              CALL "SQLADR" USING
                  SQLCA
                  SQL-SQLEST
              MOVE 256 TO SQL-SQLETY
              CALL "SQLADR" USING
                  USERNAME
                  SQL-SQHSTV(1)
              MOVE 10 TO SQL-SQHSTL(1)
              MOVE 0 TO SQL-SQHSTS(1)
              MOVE 0 TO SQL-SQINDV(1)
              MOVE 0 TO SQL-SQINDS(1)
              MOVE 0 TO SQL-SQHARM(1)
              CALL "SQLADR" USING
                  PASSWD
                  SQL-SQHSTV(2)
              MOVE 10 TO SQL-SQHSTL(2)
              MOVE 0 TO SQL-SQHSTS(2)
              MOVE 0 TO SQL-SQINDV(2)
              MOVE 0 TO SQL-SQINDS(2)
              MOVE 0 TO SQL-SQHARM(2)
              CALL "SQLADR" USING
                  DB-STRING
                  SQL-SQHSTV(3)
              MOVE 20 TO SQL-SQHSTL(3)
              MOVE 0 TO SQL-SQHSTS(3)
              MOVE 0 TO SQL-SQINDV(3)
              MOVE 0 TO SQL-SQINDS(3)
              MOVE 0 TO SQL-SQHARM(3)
              CALL "SQLADR" USING
                  SQL-SQHSTV(1)
                  SQL-SQPHSV
              CALL "SQLADR" USING
                  SQL-SQHSTL(1)
                  SQL-SQPHSL
              CALL "SQLADR" USING
                  SQL-SQHSTS(1)
                  SQL-SQPHSS
              CALL "SQLADR" USING
                  SQL-SQINDV(1)
                  SQL-SQPIND
              CALL "SQLADR" USING
                  SQL-SQINDS(1)
                  SQL-SQPINS
              CALL "SQLADR" USING
                  SQL-SQHARM(1)
                  SQL-SQPARM
              CALL "SQLADR" USING
                  SQL-SQHARC(1)
                  SQL-SQPARC

              CALL "SQLBEX" USING
                  SQLCTX
                  SQLEXD
                  SQLFPN

              CALL "SQLGSS" USING
                 SQLSTATE
002380     END-IF.                                                      
002390*                                                                 
002400*----------------------------------------------------------------*
002410*    �ڑ��m�F                                                    *
002420*----------------------------------------------------------------*
002430     EVALUATE  SQLCODE                                            
002440        WHEN   �萔�|�r�p�k�n�j                                   
002450           CONTINUE                                               
002460        WHEN   OTHER                                              
002470*--<       �ڑ��G���[ >                                           
002480           MOVE     -1                TO  �v�|�G���[�R�[�h        
002490           PERFORM  �G���[����                                    
002500     END-EVALUATE.                                                
002510*                                                                 
002520 �n�q�`�b�k�d�ڑ��|�d�w�h�s.                                      
002530     EXIT.                                                        
002540******************************************************************
002550*    �Ɩ��Ǘ��e�[�u���Ǎ�                                        *
002560******************************************************************
002570 �Ɩ��Ǘ��e�[�u���Ǎ�                 SECTION.                    
002580 �Ɩ��Ǘ��e�[�u���Ǎ��|�r�s�`�q�s.                                
002590*                                                                 
002600*----------------------------------------------------------------*
002610*    �Ɩ��Ǘ��e�[�u���Ǎ�                                        *
002620*----------------------------------------------------------------*
002630     
      *    EXEC SQL                                                     
002640*       SELECT  �o�b�`�p�Ɩ��N��                                  
002650*         INTO :�c�V�O�|�o�b�`�p�Ɩ��N��                          
002660*         FROM  D70GYM_TBL                                        
002670*        WHERE  �Ɩ��Ǘ��h�c = 'GYMKNRRC'                         
002680*    END-EXEC.
           CALL "SQLADR" USING SQ0001 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 67 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �c�V�O�|�o�b�`�p�Ɩ��N��
               SQL-SQHSTV(1)
           MOVE 6 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
002690*----------------------------------------------------------------*
002700*    �Ɩ��Ǘ��e�[�u���������m�F                                  *
002710*----------------------------------------------------------------*
002720     EVALUATE   SQLCODE                                           
002730        WHEN   �萔�|�r�p�k�n�j                                   
002740*--<       ����̎� >                                             
002750           CONTINUE                                               
002760        WHEN   OTHER                                              
002770*--<       ���݂��Ȃ� >                                           
002780           MOVE     -2                TO  �v�|�G���[�R�[�h        
002790           MOVE     "Y"               TO  �v�|�ُ�I���|�t���O    
002800           PERFORM  �G���[����                                    
002810     END-EVALUATE.                                                
002820*                                                                 
002830 �Ɩ��Ǘ��e�[�u���Ǎ��|�d�w�h�s.                                  
002840     EXIT.                                                        
002850******************************************************************
002860*        �����e�[�u���J�[�\����`                                *
002870******************************************************************
002880 �����e�[�u���J�[�\����`             SECTION.                    
002890 �����e�[�u���J�[�\����`�|�r�s�`�q�s.                            
002900*                                                                 
002910*----------------------------------------------------------------*
002920*    �J�[�\����`����                                            *
002930*----------------------------------------------------------------*
002940     
      *    EXEC SQL                                                     
002950*       DECLARE CUR1  CURSOR FOR                                  
002960*          SELECT  M40MAB_TBL.���R�[�h�敪                        
002970*                 ,M40MAB_TBL.�o���p��_��敪                    
002980*                 ,M40MAB_TBL.�ڋq�敪                            
002990*                 ,NVL(D01TRS_TBL.���񂹃R�[�h,' ')               
003000*                 ,M40MAB_TBL.����������R�[�h                  
003010*                 ,M40MAB_TBL.������R�[�h                        
003020*                 ,M40MAB_TBL.�_��ԍ�                            
003030*                 ,M40MAB_TBL.�_����                            
003040*                 ,M40MAB_TBL.�S�����ۃR�[�h                      
003050*                 ,M40MAB_TBL.�ă��[�X��                        
003060*                 ,M40MAB_TBL.�[���J�n�N��                        
003070*                 ,M40MAB_TBL.�[������                            
003080*                 ,M40MAB_TBL.�O��������@                        
003090*                 ,M40MAB_TBL.������                              
003100*                 ,M40MAB_TBL.�����敪                            
003110*                 ,D01TRS_TBL.����於��                          
003120*                 ,D02SQS_TBL.�����於��                          
003130*                 ,M40MAB_TBL.�O�����c��                          
003140*                 ,M40MAB_TBL.��������z                          
003150*                 ,M40MAB_TBL.���������z                          
003160*                 ,M40MAB_TBL.�������c��                          
003170*                 ,M40MAB_TBL.�����敪                            
003180*                 ,M40MAB_TBL.�O�����c������                      
003190*                 ,M40MAB_TBL.��������z����                      
003200*                 ,M40MAB_TBL.���������z����                      
003210*                 ,M40MAB_TBL.�������Љ�񕪗���                  
003220*                 ,M40MAB_TBL.�������Љ�񕪏����                
003230*                 ,M40MAB_TBL.�������c������                      
003240*            FROM  M40MAB_TBL                                     
003250*                 ,D01TRS_TBL                                     
003260*                 ,D02SQS_TBL                                     
003270*           WHERE  M40MAB_TBL.�O����󕥎c���\�Ώۃt���O  =  '1'  
003280*             AND  M40MAB_TBL.����������R�[�h =                
003290*                                   D01TRS_TBL.�����R�[�h ( + ) 
003300*             AND  M40MAB_TBL.����������R�[�h =                
003310*                                   D02SQS_TBL.�����R�[�h ( + ) 
003320*             AND  M40MAB_TBL.������R�[�h =                      
003330*                                   D02SQS_TBL.������R�[�h ( + ) 
003340*        ORDER BY  M40MAB_TBL.���R�[�h�敪                        
003350*                 ,M40MAB_TBL.�_��ԍ�                            
003360*    END-EXEC.
003370*                                                                 
003380*----------------------------------------------------------------*
003390*    �J�[�\���n�o�d�m����                                        *
003400*----------------------------------------------------------------*
003410     
      *    EXEC  SQL                                                    
003420*       OPEN  CUR1                                                
003430*    END-EXEC.
           CALL "SQLADR" USING SQ0002 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 86 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
003440*                                                                 
003450*----------------------------------------------------------------*
003460*    �J�[�\���n�o�d�m�m�F                                        *
003470*----------------------------------------------------------------*
003480     EVALUATE  SQLCODE                                            
003490        WHEN  �萔�|�r�p�k�n�j                                    
003500*--<       ���� >                                                 
003510           CONTINUE                                               
003520        WHEN  OTHER                                               
003530*--<       �J�[�\���n�o�d�m�G���[ >                               
003540           MOVE -3                    TO  �v�|�G���[�R�[�h        
003550           PERFORM  �G���[����                                    
003560     END-EVALUATE.                                                
003570*                                                                 
003580 �����e�[�u���J�[�\����`�|�d�w�h�s.                              
003590     EXIT.                                                        
003600******************************************************************
003610*    �t�@�C���I�[�v��                                            *
003620******************************************************************
003630 �t�@�C���I�[�v��                     SECTION.                    
003640 �t�@�C���I�[�v���|�r�s�`�q�s.                                    
003650*                                                                 
003660*----------------------------------------------------------------*
003670*    �O����󕥎c�����ԃt�@�C���̃I�[�v��                        *
003680*----------------------------------------------------------------*
003690     OPEN  OUTPUT   �o�̓t�@�C��.                                 
003700*                                                                 
003710*--< �t�@�C���I�[�v���̏�Ԕ��� >                                 
003720     EVALUATE  �v�|���                                           
003730        WHEN  ZERO                                                
003740           CONTINUE                                               
003750        WHEN  OTHER                                               
003760*--<       �t�@�C���I�[�v���G���[ >                               
003770           MOVE     -4                TO  �v�|�G���[�R�[�h        
003780           PERFORM  �G���[����                                    
003790     END-EVALUATE.                                                
003800*                                                                 
003810 �t�@�C���I�[�v���|�d�w�h�s.                                      
003820     EXIT.                                                        
003830******************************************************************
003840*    �����e�[�u���J�[�\���Ǎ�                                    *
003850******************************************************************
003860 �����e�[�u���J�[�\���Ǎ�             SECTION.                    
003870 �����e�[�u���J�[�\���Ǎ��|�r�s�`�q�s.                            
003880*                                                                 
003890*--< �����e�[�u���J�[�\���Ǎ� >                                   
003900     
      *    EXEC SQL                                                     
003910*        FETCH   CUR1                                             
003920*         INTO   :�l�S�O�|���R�[�h�敪                            
003930*               ,:�l�S�O�|�o���p��_��敪                        
003940*               ,:�l�S�O�|�ڋq�敪                                
003950*               ,:�c�O�P�|���񂹃R�[�h                            
003960*               ,:�l�S�O�|����������R�[�h                      
003970*               ,:�l�S�O�|������R�[�h                            
003980*               ,:�l�S�O�|�_��ԍ�                                
003990*               ,:�l�S�O�|�_����                                
004000*               ,:�l�S�O�|�S�����ۃR�[�h                          
004010*               ,:�l�S�O�|�ă��[�X��                            
004020*               ,:�l�S�O�|�[���J�n�N��                            
004030*               ,:�l�S�O�|�[������                                
004040*               ,:�l�S�O�|�O��������@                            
004050*               ,:�l�S�O�|������                                  
004060*               ,:�l�S�O�|�����敪                                
004070*               ,:�c�O�P�|����於��                              
004080*               ,:�c�O�Q�|�����於��                              
004090*               ,:�l�S�O�|�O�����c��                              
004100*               ,:�l�S�O�|��������z                              
004110*               ,:�l�S�O�|���������z                              
004120*               ,:�l�S�O�|�������c��                              
004130*               ,:�l�S�O�|�����敪                                
004140*               ,:�l�S�O�|�O�����c������                          
004150*               ,:�l�S�O�|��������z����                          
004160*               ,:�l�S�O�|���������z����                          
004170*               ,:�l�S�O�|�������Љ�񕪗���                      
004180*               ,:�l�S�O�|�������Љ�񕪏����                    
004190*               ,:�l�S�O�|�������c������                          
004200*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 101 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �l�S�O�|���R�[�h�敪
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �l�S�O�|�o���p��_��敪
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �l�S�O�|�ڋq�敪
               SQL-SQHSTV(3)
           MOVE 2 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �c�O�P�|���񂹃R�[�h IN
               �����}�X�^
               SQL-SQHSTV(4)
           MOVE 40 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               �l�S�O�|����������R�[�h
               SQL-SQHSTV(5)
           MOVE 9 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               �l�S�O�|������R�[�h
               SQL-SQHSTV(6)
           MOVE 5 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               �l�S�O�|�_��ԍ�
               SQL-SQHSTV(7)
           MOVE 15 TO SQL-SQHSTL(7)
           MOVE 0 TO SQL-SQHSTS(7)
           MOVE 0 TO SQL-SQINDV(7)
           MOVE 0 TO SQL-SQINDS(7)
           MOVE 0 TO SQL-SQHARM(7)
           CALL "SQLADR" USING
               �l�S�O�|�_����
               SQL-SQHSTV(8)
           MOVE 3 TO SQL-SQHSTL(8)
           MOVE 0 TO SQL-SQHSTS(8)
           MOVE 0 TO SQL-SQINDV(8)
           MOVE 0 TO SQL-SQINDS(8)
           MOVE 0 TO SQL-SQHARM(8)
           CALL "SQLADR" USING
               �l�S�O�|�S�����ۃR�[�h
               SQL-SQHSTV(9)
           MOVE 4 TO SQL-SQHSTL(9)
           MOVE 0 TO SQL-SQHSTS(9)
           MOVE 0 TO SQL-SQINDV(9)
           MOVE 0 TO SQL-SQINDS(9)
           MOVE 0 TO SQL-SQHARM(9)
           CALL "SQLADR" USING
               �l�S�O�|�ă��[�X��
               SQL-SQHSTV(10)
           MOVE 2 TO SQL-SQHSTL(10)
           MOVE 0 TO SQL-SQHSTS(10)
           MOVE 0 TO SQL-SQINDV(10)
           MOVE 0 TO SQL-SQINDS(10)
           MOVE 0 TO SQL-SQHARM(10)
           CALL "SQLADR" USING
               �l�S�O�|�[���J�n�N��
               SQL-SQHSTV(11)
           MOVE 6 TO SQL-SQHSTL(11)
           MOVE 0 TO SQL-SQHSTS(11)
           MOVE 0 TO SQL-SQINDV(11)
           MOVE 0 TO SQL-SQINDS(11)
           MOVE 0 TO SQL-SQHARM(11)
           CALL "SQLADR" USING
               �l�S�O�|�[������
               SQL-SQHSTV(12)
           MOVE 2 TO SQL-SQHSTL(12)
           MOVE 0 TO SQL-SQHSTS(12)
           MOVE 0 TO SQL-SQINDV(12)
           MOVE 0 TO SQL-SQINDS(12)
           MOVE 0 TO SQL-SQHARM(12)
           CALL "SQLADR" USING
               �l�S�O�|�O��������@
               SQL-SQHSTV(13)
           MOVE 1 TO SQL-SQHSTL(13)
           MOVE 0 TO SQL-SQHSTS(13)
           MOVE 0 TO SQL-SQINDV(13)
           MOVE 0 TO SQL-SQINDS(13)
           MOVE 0 TO SQL-SQHARM(13)
           CALL "SQLADR" USING
               �l�S�O�|������
               SQL-SQHSTV(14)
           MOVE 8 TO SQL-SQHSTL(14)
           MOVE 0 TO SQL-SQHSTS(14)
           MOVE 0 TO SQL-SQINDV(14)
           MOVE 0 TO SQL-SQINDS(14)
           MOVE 0 TO SQL-SQHARM(14)
           CALL "SQLADR" USING
               �l�S�O�|�����敪
               SQL-SQHSTV(15)
           MOVE 2 TO SQL-SQHSTL(15)
           MOVE 0 TO SQL-SQHSTS(15)
           MOVE 0 TO SQL-SQINDV(15)
           MOVE 0 TO SQL-SQINDS(15)
           MOVE 0 TO SQL-SQHARM(15)
           CALL "SQLADR" USING
               �c�O�P�|����於�� IN
               �����}�X�^
               SQL-SQHSTV(16)
           MOVE 80 TO SQL-SQHSTL(16)
           MOVE 0 TO SQL-SQHSTS(16)
           MOVE 0 TO SQL-SQINDV(16)
           MOVE 0 TO SQL-SQINDS(16)
           MOVE 0 TO SQL-SQHARM(16)
           CALL "SQLADR" USING
               �c�O�Q�|�����於�� IN
               ������}�X�^
               SQL-SQHSTV(17)
           MOVE 80 TO SQL-SQHSTL(17)
           MOVE 0 TO SQL-SQHSTS(17)
           MOVE 0 TO SQL-SQINDV(17)
           MOVE 0 TO SQL-SQINDS(17)
           MOVE 0 TO SQL-SQHARM(17)
           CALL "SQLADR" USING
               �l�S�O�|�O�����c��
               SQL-SQHSTV(18)
           MOVE 7 TO SQL-SQHSTL(18)
           MOVE 0 TO SQL-SQHSTS(18)
           MOVE 0 TO SQL-SQINDV(18)
           MOVE 0 TO SQL-SQINDS(18)
           MOVE 0 TO SQL-SQHARM(18)
           CALL "SQLADR" USING
               �l�S�O�|��������z
               SQL-SQHSTV(19)
           MOVE 7 TO SQL-SQHSTL(19)
           MOVE 0 TO SQL-SQHSTS(19)
           MOVE 0 TO SQL-SQINDV(19)
           MOVE 0 TO SQL-SQINDS(19)
           MOVE 0 TO SQL-SQHARM(19)
           CALL "SQLADR" USING
               �l�S�O�|���������z
               SQL-SQHSTV(20)
           MOVE 7 TO SQL-SQHSTL(20)
           MOVE 0 TO SQL-SQHSTS(20)
           MOVE 0 TO SQL-SQINDV(20)
           MOVE 0 TO SQL-SQINDS(20)
           MOVE 0 TO SQL-SQHARM(20)
           CALL "SQLADR" USING
               �l�S�O�|�������c��
               SQL-SQHSTV(21)
           MOVE 7 TO SQL-SQHSTL(21)
           MOVE 0 TO SQL-SQHSTS(21)
           MOVE 0 TO SQL-SQINDV(21)
           MOVE 0 TO SQL-SQINDS(21)
           MOVE 0 TO SQL-SQHARM(21)
           CALL "SQLADR" USING
               �l�S�O�|�����敪
               SQL-SQHSTV(22)
           MOVE 1 TO SQL-SQHSTL(22)
           MOVE 0 TO SQL-SQHSTS(22)
           MOVE 0 TO SQL-SQINDV(22)
           MOVE 0 TO SQL-SQINDS(22)
           MOVE 0 TO SQL-SQHARM(22)
           CALL "SQLADR" USING
               �l�S�O�|�O�����c������
               SQL-SQHSTV(23)
           MOVE 7 TO SQL-SQHSTL(23)
           MOVE 0 TO SQL-SQHSTS(23)
           MOVE 0 TO SQL-SQINDV(23)
           MOVE 0 TO SQL-SQINDS(23)
           MOVE 0 TO SQL-SQHARM(23)
           CALL "SQLADR" USING
               �l�S�O�|��������z����
               SQL-SQHSTV(24)
           MOVE 7 TO SQL-SQHSTL(24)
           MOVE 0 TO SQL-SQHSTS(24)
           MOVE 0 TO SQL-SQINDV(24)
           MOVE 0 TO SQL-SQINDS(24)
           MOVE 0 TO SQL-SQHARM(24)
           CALL "SQLADR" USING
               �l�S�O�|���������z����
               SQL-SQHSTV(25)
           MOVE 7 TO SQL-SQHSTL(25)
           MOVE 0 TO SQL-SQHSTS(25)
           MOVE 0 TO SQL-SQINDV(25)
           MOVE 0 TO SQL-SQINDS(25)
           MOVE 0 TO SQL-SQHARM(25)
           CALL "SQLADR" USING
               �l�S�O�|�������Љ�񕪗���
               SQL-SQHSTV(26)
           MOVE 7 TO SQL-SQHSTL(26)
           MOVE 0 TO SQL-SQHSTS(26)
           MOVE 0 TO SQL-SQINDV(26)
           MOVE 0 TO SQL-SQINDS(26)
           MOVE 0 TO SQL-SQHARM(26)
           CALL "SQLADR" USING
               �l�S�O�|�������Љ�񕪏����
               SQL-SQHSTV(27)
           MOVE 7 TO SQL-SQHSTL(27)
           MOVE 0 TO SQL-SQHSTS(27)
           MOVE 0 TO SQL-SQINDV(27)
           MOVE 0 TO SQL-SQINDS(27)
           MOVE 0 TO SQL-SQHARM(27)
           CALL "SQLADR" USING
               �l�S�O�|�������c������
               SQL-SQHSTV(28)
           MOVE 7 TO SQL-SQHSTL(28)
           MOVE 0 TO SQL-SQHSTS(28)
           MOVE 0 TO SQL-SQINDV(28)
           MOVE 0 TO SQL-SQINDS(28)
           MOVE 0 TO SQL-SQHARM(28)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
004210*                                                                 
004220*----------------------------------------------------------------*
004230*    �����e�[�u���J�[�\���Ǎ����m�F                              *
004240*----------------------------------------------------------------*
004250     EVALUATE   SQLCODE                                           
004260        WHEN   �萔�|�r�p�k�n�j                                   
004270*--<       ���� >                                                 
004280           COMPUTE  �v�|���́|����  =  �v�|���́|����  +  1       
004290        WHEN   �萔�|�r�p�k�d�m�c                                 
004300*--<       �Ǎ��I�� >                                             
004310           MOVE  "Y"                  TO  �v�|�I���|�t���O        
004320        WHEN   OTHER                                              
004330*--<       �Ǎ��G���[ >                                           
004340           MOVE     -5                TO  �v�|�G���[�R�[�h        
004350           PERFORM  �G���[����                                    
004360     END-EVALUATE.                                                
004370*                                                                 
004380 �����e�[�u���J�[�\���Ǎ��|�d�w�h�s.                              
004390     EXIT.                                                        
004400******************************************************************
004410*    �又��                                                      *
004420******************************************************************
004430 �又��                               SECTION.                    
004440 �又���|�r�s�`�q�s.                                              
004450*----------------------------------------------------------------*
004460*    ���ږ��̃}�X�^��荀�ڂ̒��o����                            *
004470*----------------------------------------------------------------*
004480     PERFORM  ���ږ��̃}�X�^���o����.                             
004490*----------------------------------------------------------------*
004500*    �����i��ʁj�c�a��荀�ڂ̒��o����                      *
004510*----------------------------------------------------------------*
004520     PERFORM  �����c�a���o����.                               
004530*----------------------------------------------------------------*
004540*    �O����󕥎c�����ԃt�@�C���o�͔��菈��                      *
004550*----------------------------------------------------------------*
004560     IF  �l�O�P�|�S�ۋ敪  NOT = "1"                              
004570*--<     �O����󕥎c�����ԃt�@�C�����ڕҏW�A�o�͏���>            
004580        PERFORM  �O����󕥎c�����ԃt�@�C���ҏW�o��               
004590     END-IF.                                                      
004600*----------------------------------------------------------------*
004610*    �����e�[�u���J�[�\���Ǎ��i�Q���ڈȍ~�j                      *
004620*----------------------------------------------------------------*
004630     PERFORM  �����e�[�u���J�[�\���Ǎ�.                           
004640*                                                                 
004650 �又���|�d�w�h�s.                                                
004660     EXIT.                                                        
004670******************************************************************
004680*    ���ږ��̃}�X�^��荀�ڂ̒��o����                            *
004690******************************************************************
004700 ���ږ��̃}�X�^���o����               SECTION.                    
004710 ���ږ��̃}�X�^���o�����|�r�s�`�q�s.                              
004720*                                                                 
004730*���ږ��̃}�X�^����_��敪���̂̒��o����                       
004740*----------------------------------------------------------------*
004750*    ���ږ��̃}�X�^�Ǎ�                                          *
004760*----------------------------------------------------------------*
004770     
      *    EXEC SQL                                                     
004780*       SELECT  ����                                              
004790*         INTO :�v�r�|���̂P                                      
004800*         FROM  D19MSY_TBL                                        
004810*        WHERE  �R�[�h�m�n = '038'                                
004820*          AND  SUBSTR(�R�[�h,1,1) = :�l�S�O�|�o���p��_��敪    
004830*    END-EXEC.
           CALL "SQLADR" USING SQ0003 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 228 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �v�r�|���̂P
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �l�S�O�|�o���p��_��敪
               SQL-SQHSTV(2)
           MOVE 1 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
004840*----------------------------------------------------------------*
004850*    ���ږ��̃}�X�^�������m�F                                    *
004860*----------------------------------------------------------------*
004870     EVALUATE   SQLCODE                                           
004880        WHEN   �萔�|�r�p�k�n�j                                   
004890*--<       ����̎� >                                             
004900           CONTINUE                                               
004910        WHEN   OTHER                                              
004920*--<       ���݂��Ȃ� >                                           
004930           MOVE     SPACE             TO  �v�r�|���̂P            
004940           MOVE     -6                TO  �v�|�G���[�R�[�h        
004950           PERFORM  �G���[����                                    
004960     END-EVALUATE.                                                
004970*                                                                 
004980*���ږ��̃}�X�^���ڋq�敪���̂̒��o����                         
004990*----------------------------------------------------------------*
005000*    ���ږ��̃}�X�^�Ǎ�                                          *
005010*----------------------------------------------------------------*
005020     
      *    EXEC SQL                                                     
005030*       SELECT  ����                                              
005040*         INTO :�v�r�|���̂Q                                      
005050*         FROM  D19MSY_TBL                                        
005060*        WHERE  �R�[�h�m�n = '005'                                
005070*          AND  SUBSTR(�R�[�h,1,2) = :�l�S�O�|�ڋq�敪            
005080*    END-EXEC.
           CALL "SQLADR" USING SQ0004 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 251 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �v�r�|���̂Q
               SQL-SQHSTV(1)
           MOVE 60 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �l�S�O�|�ڋq�敪
               SQL-SQHSTV(2)
           MOVE 2 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
005090*----------------------------------------------------------------*
005100*    ���ږ��̃}�X�^�������m�F                                    *
005110*----------------------------------------------------------------*
005120     EVALUATE   SQLCODE                                           
005130        WHEN   �萔�|�r�p�k�n�j                                   
005140*--<       ����̎� >                                             
005150           CONTINUE                                               
005160        WHEN   OTHER                                              
005170*--<       ���݂��Ȃ� >                                           
005180           MOVE     SPACE             TO  �v�r�|���̂Q            
005190           MOVE     -6                TO  �v�|�G���[�R�[�h        
005200           PERFORM  �G���[����                                    
005210     END-EVALUATE.                                                
005220*                                                                 
005230 ���ږ��̃}�X�^���o�����|�d�w�h�s.                                
005240     EXIT.                                                        
005250******************************************************************
005260*    �����i��ʁj�c�a��荀�ڂ̒��o����                      *
005270******************************************************************
005280 �����c�a���o����                 SECTION.                    
005290 �����c�a���o�����|�r�s�`�q�s.                                
005300*                                                                 
005310*----------------------------------------------------------------*
005320*    �����c�a�Ǎ�                                            *
005330*----------------------------------------------------------------*
005340     
      *    EXEC SQL                                                     
005350*       SELECT  ��ԃt���O                                        
005360*              ,���_�񌏖�                                      
005370*              ,�S�ۋ敪                                          
005380*         INTO :�l�O�P�|��ԃt���O                                
005390*             ,:�l�O�P�|���_�񌏖�                              
005400*             ,:�l�O�P�|�S�ۋ敪                                  
005410*         FROM  M01SAJ_TBL                                        
005420*        WHERE  ���R�[�h�敪 = '1'                                
005430*          AND  �_��ԍ� = :�l�S�O�|�_��ԍ�                      
005440*          AND  �ă��[�X�� = :�l�S�O�|�ă��[�X��              
005450*          AND  �_���� = :�l�S�O�|�_����                      
005460*    END-EXEC.
           CALL "SQLADR" USING SQ0005 SQL-STMT
           MOVE 1 TO SQL-ITERS
           MOVE 274 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           MOVE 1 TO SQL-SELERR
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY
           CALL "SQLADR" USING
               �l�O�P�|��ԃt���O
               SQL-SQHSTV(1)
           MOVE 1 TO SQL-SQHSTL(1)
           MOVE 0 TO SQL-SQHSTS(1)
           MOVE 0 TO SQL-SQINDV(1)
           MOVE 0 TO SQL-SQINDS(1)
           MOVE 0 TO SQL-SQHARM(1)
           CALL "SQLADR" USING
               �l�O�P�|���_�񌏖�
               SQL-SQHSTV(2)
           MOVE 40 TO SQL-SQHSTL(2)
           MOVE 0 TO SQL-SQHSTS(2)
           MOVE 0 TO SQL-SQINDV(2)
           MOVE 0 TO SQL-SQINDS(2)
           MOVE 0 TO SQL-SQHARM(2)
           CALL "SQLADR" USING
               �l�O�P�|�S�ۋ敪
               SQL-SQHSTV(3)
           MOVE 1 TO SQL-SQHSTL(3)
           MOVE 0 TO SQL-SQHSTS(3)
           MOVE 0 TO SQL-SQINDV(3)
           MOVE 0 TO SQL-SQINDS(3)
           MOVE 0 TO SQL-SQHARM(3)
           CALL "SQLADR" USING
               �l�S�O�|�_��ԍ�
               SQL-SQHSTV(4)
           MOVE 15 TO SQL-SQHSTL(4)
           MOVE 0 TO SQL-SQHSTS(4)
           MOVE 0 TO SQL-SQINDV(4)
           MOVE 0 TO SQL-SQINDS(4)
           MOVE 0 TO SQL-SQHARM(4)
           CALL "SQLADR" USING
               �l�S�O�|�ă��[�X��
               SQL-SQHSTV(5)
           MOVE 2 TO SQL-SQHSTL(5)
           MOVE 0 TO SQL-SQHSTS(5)
           MOVE 0 TO SQL-SQINDV(5)
           MOVE 0 TO SQL-SQINDS(5)
           MOVE 0 TO SQL-SQHARM(5)
           CALL "SQLADR" USING
               �l�S�O�|�_����
               SQL-SQHSTV(6)
           MOVE 3 TO SQL-SQHSTL(6)
           MOVE 0 TO SQL-SQHSTS(6)
           MOVE 0 TO SQL-SQINDV(6)
           MOVE 0 TO SQL-SQINDS(6)
           MOVE 0 TO SQL-SQHARM(6)
           CALL "SQLADR" USING
               SQL-SQHSTV(1)
               SQL-SQPHSV
           CALL "SQLADR" USING
               SQL-SQHSTL(1)
               SQL-SQPHSL
           CALL "SQLADR" USING
               SQL-SQHSTS(1)
               SQL-SQPHSS
           CALL "SQLADR" USING
               SQL-SQINDV(1)
               SQL-SQPIND
           CALL "SQLADR" USING
               SQL-SQINDS(1)
               SQL-SQPINS
           CALL "SQLADR" USING
               SQL-SQHARM(1)
               SQL-SQPARM
           CALL "SQLADR" USING
               SQL-SQHARC(1)
               SQL-SQPARC

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
005470*----------------------------------------------------------------*
005480*    �����c�a�������m�F                                      *
005490*----------------------------------------------------------------*
005500     EVALUATE   SQLCODE                                           
005510        WHEN   �萔�|�r�p�k�n�j                                   
005520*--<       ����̎� >                                             
005530           CONTINUE                                               
005540        WHEN   OTHER                                              
005550*--<       ���݂��Ȃ� >                                           
005560           MOVE     SPACE             TO  �l�O�P�|��ԃt���O      
005570           MOVE     SPACE             TO  �l�O�P�|���_�񌏖�    
005580           MOVE     "0"               TO  �l�O�P�|�S�ۋ敪        
005590           MOVE     -7                TO  �v�|�G���[�R�[�h        
005600           PERFORM  �G���[����                                    
005610     END-EVALUATE.                                                
005620*                                                                 
005630 �����c�a���o�����|�d�w�h�s.                                  
005640     EXIT.                                                        
005650******************************************************************
005660*    �O����󕥎c�����ԃt�@�C�����ڕҏW�A�o�͏���                *
005670******************************************************************
005680 �O����󕥎c�����ԃt�@�C���ҏW�o��   SECTION.                    
005690 �O����󕥎c�����ԃt�@�C���ҏW�o�́|�r�s�`�q�s.                  
005700*                                                                 
005710*--< �o�̓��R�[�h�̏��������� >                                   
005720     MOVE  SPACE                      TO  �o�́|���R�[�h.         
005730     INITIALIZE                           �o�́|���R�[�h.         
005740*--< ���Е��ʂ̕ҏW >                                           
005750     PERFORM  ���Е��ҏW.                                         
005760*--< ���Е��o�͔��� >                                             
005770     IF      �o�́|�O�����c��  NOT  =  0                          
005780         OR  �o�́|���������z  NOT  =  0                          
005790         OR  �o�́|���������z  NOT  =  0                          
005800         OR  �o�́|�������c��  NOT  =  0                          
005810         PERFORM  �O����󕥎c�����ԃt�@�C���o�͏���.             
005820*--< ���Е��ʂ̕ҏW >                                           
005830     IF  �l�S�O�|�����敪 = "2"                                   
005840        PERFORM  ���Е��ҏW�o��.                                  
005850*                                                                 
005860 �O����󕥎c�����ԃt�@�C���ҏW�o�́|�d�w�h�s.                    
005870     EXIT.                                                        
005880******************************************************************
005890*    ���Е��ҏW                                                  *
005900******************************************************************
005910 ���Е��ҏW                             SECTION.                  
005920 ���Е��ҏW�|�r�s�`�q�s.                                          
005930*                                                                 
005940*--< No.1 >                                                       
005950     IF  �l�O�P�|��ԃt���O < 3                                   
005960        MOVE  3                       TO  �o�́|�����Ћ敪        
005970     ELSE                                                         
005980        MOVE  1                       TO  �o�́|�����Ћ敪        
005990     END-IF.                                                      
006000*--< No.2 >                                                       
006010     MOVE  �l�S�O�|���R�[�h�敪       TO  �o�́|�O��敪.         
006020*--< No.3 >                                                       
006030     MOVE  �l�S�O�|�o���p��_��敪   TO  �o�́|��_��敪.       
006040*--< No.4 >                                                       
006050     MOVE  �l�S�O�|�ڋq�敪           TO  �o�́|�A���敪.         
006060*--< No.5 >                                                       
006070     MOVE  �c�O�P�|���񂹃R�[�h       TO  �o�́|���񂹃R�[�h.     
006080*--< No.6 >                                                       
006090     MOVE  �l�S�O�|����������R�[�h TO  �o�́|�����R�[�h.     
006100*--< No.7 >                                                       
006110     MOVE  �l�S�O�|������R�[�h       TO  �o�́|������R�[�h.     
006120*--< No.8 >                                                       
006130     MOVE  �l�S�O�|�_��ԍ�           TO  �o�́|�_��ԍ�.         
006140*--< No.9 >                                                       
006150     MOVE  �l�S�O�|�_����           TO  �o�́|�_����.         
006160*--< No.10 >                                                      
006170     MOVE  �c�V�O�|�o�b�`�p�Ɩ��N��   TO  �o�́|�Ɩ��N��.         
006180*--< No.11 >                                                      
006190     MOVE  �l�S�O�|�S�����ۃR�[�h     TO  �o�́|�S�����ۃR�[�h.   
006200*--< No.12 >                                                      
006210     MOVE  �l�O�P�|���_�񌏖�       TO  �o�́|�_�񌏖�.         
006220*--< No.13 >                                                      
006230     MOVE  �l�S�O�|�ă��[�X��       TO  �o�́|�ă��[�X��.     
006240*--< No.14 >                                                      
006250     MOVE  �l�S�O�|�[���J�n�N��       TO  �o�́|�[���J�n�N��.     
006260*--< No.15 >                                                      
006270     MOVE  �l�S�O�|�[������           TO  �o�́|�[������.         
006280*--< No.16 >                                                      
006290     MOVE  �l�S�O�|�O��������@       TO  �o�́|�O��������@.     
006300*--< No.17 >                                                      
006310     MOVE  �l�S�O�|������             TO  �o�́|������.           
006320*--< No.18 >                                                      
006330     MOVE  �l�S�O�|�����敪           TO  �o�́|�����敪.         
006340*--< No.19 >                                                      
006350     MOVE  �c�O�P�|����於��         TO  �o�́|����於��.       
006360*--< No.20 >                                                      
006370     MOVE  �c�O�Q�|�����於��         TO  �o�́|�����於��.       
006380*--< No.21 >                                                      
006390     MOVE  �v�r�|���̂P               TO  �o�́|��_��敪����.   
006400*--< No.22 >                                                      
006410     MOVE  �v�r�|���̂Q               TO  �o�́|�A���敪����.     
006420*--< No.23 >                                                      
006430     MOVE  �l�S�O�|�O�����c��         TO  �o�́|�O�����c��.       
006440*--< No.24 >                                                      
006450     MOVE  �l�S�O�|��������z         TO  �o�́|���������z.       
006460*--< No.25 >                                                      
006470     MOVE  �l�S�O�|���������z         TO  �o�́|���������z.       
006480*--< No.26 >                                                      
006490     MOVE  �l�S�O�|�������c��         TO  �o�́|�������c��.       
006500*                                                                 
006510 ���Е��ҏW�|�d�w�h�s.                                            
006520     EXIT.                                                        
006530******************************************************************
006540*    ���Е��ʕ����̕ҏW�o��                                    *
006550******************************************************************
006560 ���Е��ҏW�o��                       SECTION.                    
006570 ���Е��ҏW�o�́|�r�s�`�q�s.                                      
006580*                                                                 
006590*--< ���Е��ҏW >                                                 
006600*--< No.1 >                                                       
006610     IF  �l�O�P�|��ԃt���O < 3                                   
006620        MOVE  4                       TO  �o�́|�����Ћ敪        
006630     ELSE                                                         
006640        MOVE  2                       TO  �o�́|�����Ћ敪        
006650     END-IF.                                                      
006660*--< No.23 >                                                      
006670     MOVE  �l�S�O�|�O�����c������     TO  �o�́|�O�����c��.       
006680*--< No.24 >                                                      
006690     MOVE  �l�S�O�|��������z����     TO  �o�́|���������z.       
006700*--< No.25 >                                                      
006710     COMPUTE  �o�́|���������z  =  �l�S�O�|���������z����         
006720                                +  �l�S�O�|�������Љ�񕪗���     
006730                                +  �l�S�O�|�������Љ�񕪏����.  
006740*--< No.26 >                                                      
006750     COMPUTE  �o�́|�������c��  =  �l�S�O�|�������c������         
006760                                -  �l�S�O�|�������Љ�񕪗���     
006770                                -  �l�S�O�|�������Љ�񕪏����.  
006780*--< ���Е��o�͔��� >                                             
006790     IF      �o�́|�O�����c��  NOT  =  0                          
006800         OR  �o�́|���������z  NOT  =  0                          
006810         OR  �o�́|���������z  NOT  =  0                          
006820         OR  �o�́|�������c��  NOT  =  0                          
006830         PERFORM  �O����󕥎c�����ԃt�@�C���o�͏���.             
006840*                                                                 
006850 ���Е��ҏW�o�́|�d�w�h�s.                                        
006860     EXIT.                                                        
006870******************************************************************
006880*    �O����󕥎c�����ԃt�@�C���o�͏���                          *
006890******************************************************************
006900 �O����󕥎c�����ԃt�@�C���o�͏���   SECTION.                    
006910 �O����󕥎c�����ԃt�@�C���o�͏����|�r�s�`�q�s.                  
006920*                                                                 
006930     WRITE  �o�́|���R�[�h.                                       
006940*                                                                 
006950*--< �O����󕥎c�����ԃt�@�C���o�͂̏�Ԕ��� >                   
006960     EVALUATE  �v�|���                                           
006970        WHEN  ZERO                                                
006980*--<       �O����󕥎c�����ԃt�@�C���o�͌����̉��Z >             
006990           COMPUTE  �v�|�o�́|���� =  �v�|�o�́|���� + 1          
007000        WHEN  OTHER                                               
007010*--<       �t�@�C���o�̓G���[ >                                   
007020           MOVE     -8                TO  �v�|�G���[�R�[�h        
007030           PERFORM  �G���[����                                    
007040     END-EVALUATE.                                                
007050*                                                                 
007060 �O����󕥎c�����ԃt�@�C���o�͏����|�d�w�h�s.                    
007070     EXIT.                                                        
007080******************************************************************
007090*    �I������                                                    *
007100******************************************************************
007110 �I������                             SECTION.                    
007120 �I�������|�r�s�`�q�s.                                            
007130*                                                                 
007140*----------------------------------------------------------------*
007150*    �c�a�N���[�Y                                                *
007160*----------------------------------------------------------------*
007170     
      *    EXEC SQL                                                     
007180*       CLOSE  CUR1                                               
007190*    END-EXEC.
           MOVE 1 TO SQL-ITERS
           MOVE 313 TO SQL-OFFSET
           MOVE 0 TO SQL-OCCURS
           CALL "SQLADR" USING
               SQLCUD
               SQL-CUD
           CALL "SQLADR" USING
               SQLCA
               SQL-SQLEST
           MOVE 256 TO SQL-SQLETY

           CALL "SQLBEX" USING
               SQLCTX
               SQLEXD
               SQLFPN

           CALL "SQLGSS" USING
              SQLSTATE
               .
007200*----------------------------------------------------------------*
007210*    �t�@�C���N���[�Y                                            *
007220*----------------------------------------------------------------*
007230     CLOSE  �o�̓t�@�C��.                                         
007240*----------------------------------------------------------------*
007250*    �������b�Z�[�W�o��                                          *
007260*----------------------------------------------------------------*
007270     PERFORM  �������b�Z�[�W�o�͏���.                             
007280*----------------------------------------------------------------*
007290*    �I�����b�Z�[�W�o��                                          *
007300*----------------------------------------------------------------*
007310     PERFORM  �I�����b�Z�[�W�o��.                                 
007320*--< �v���O��������I�� >                                         
007330     MOVE  �萔�|������             TO  PROGRAM-STATUS.         
007340*                                                                 
007350 �I�������|�d�w�h�s.                                              
007360     EXIT.                                                        
007370******************************************************************
007380*    �I�����b�Z�[�W�o�͏���                                      *
007390******************************************************************
007400 �I�����b�Z�[�W�o��                   SECTION.                    
007410 �I�����b�Z�[�W�o�́|�r�s�`�q�s.                                  
007420*                                                                 
007430     INITIALIZE                       IF-CHOCO001.                
007440     MOVE  "3"                        TO  ���P�|�C�x���g���.     
007450     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
007460     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
007470     MOVE  "END"                      TO  ���P�|��������.         
007480     MOVE  �萔�|�v���O������         TO  ���P�|���̑����b�Z�[�W. 
007490     CALL  CLOCO001                USING  IF-CHOCO001.            
007500*                                                                 
007510 �I�����b�Z�[�W�o�́|�d�w�h�s.                                    
007520     EXIT.                                                        
007530******************************************************************
007540*    �������b�Z�[�W�o�͏���                                      *
007550******************************************************************
007560 �������b�Z�[�W�o�͏���               SECTION.                    
007570 �������b�Z�[�W�o�͏����|�r�s�`�q�s.                              
007580*                                                                 
007590     INITIALIZE                       IF-CHOCO001.                
007600     MOVE  "3"                        TO  ���P�|�C�x���g���.     
007610     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
007620     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
007630     MOVE  "M40MAB"                   TO  ���P�|�����e�[�u���h�c. 
007640     MOVE  "COUNT"                    TO  ���P�|��������.         
007650     MOVE  �v�|���́|����             TO  ���P�|�f�[�^���e.       
007660     MOVE  "�O����c�a���͌���"     TO  ���P�|���̑����b�Z�[�W. 
007670     CALL  CLOCO001                USING  IF-CHOCO001.            
007680*                                                                 
007690     INITIALIZE                       IF-CHOCO001.                
007700     MOVE  "3"                        TO  ���P�|�C�x���g���.     
007710     MOVE  �萔�|�v���O�����h�c       TO  ���P�|�\�[�X�h�c.       
007720     MOVE  "0"                        TO  ���P�|���A�R�[�h.       
007730     MOVE  "SFHSED25"                 TO  ���P�|�����e�[�u���h�c. 
007740     MOVE  "COUNT"                    TO  ���P�|��������.         
007750     MOVE  �v�|�o�́|����             TO  ���P�|�f�[�^���e.       
007760     MOVE  "�O����󕥎c�����ԃt�@�C���o�͌���"                   
007770                                      TO  ���P�|���̑����b�Z�[�W. 
007780     CALL  CLOCO001                USING  IF-CHOCO001.            
007790*                                                                 
007800 �������b�Z�[�W�o�͏����|�d�w�h�s.                                
007810     EXIT.                                                        
007820******************************************************************
007830*    �G���[����                                                  *
007840******************************************************************
007850 �G���[����                           SECTION.                    
007860 �G���[�����|�r�s�`�q�s.                                          
007870*                                                                 
007880     MOVE  "Y"                        TO �v�|�ُ�I���|�t���O.    
007890     INITIALIZE                           IF-CHOCO001.            
007900*                                                                 
007910     EVALUATE  �v�|�G���[�R�[�h                                   
007920        WHEN  -1                                                  
007930*--<       �n�q�`�b�k�d�ڑ����s >                                 
007940           MOVE  "1"                  TO  ���P�|�C�x���g���      
007950           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
007960           MOVE  "9"                  TO  ���P�|���A�R�[�h        
007970           MOVE  "CONNECT"            TO  ���P�|��������          
007980           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
007990           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008000           CALL  CLOCO001          USING  IF-CHOCO001             
008010*                                                                 
008020        WHEN  -2                                                  
008030*--<       �Ɩ��Ǘ��e�[�u���I�[�v���G���[ >                       
008040           MOVE  "1"                  TO  ���P�|�C�x���g���      
008050           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008060           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008070           MOVE  "D70GYM"             TO  ���P�|�����e�[�u���h�c  
008080           MOVE  "SELECT"             TO  ���P�|��������          
008090           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008100           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008110           CALL  CLOCO001          USING  IF-CHOCO001             
008120*                                                                 
008130        WHEN  -3                                                  
008140*--<       �����e�[�u���J�[�\���I�[�v�����s >                     
008150           MOVE  "1"                  TO  ���P�|�C�x���g���      
008160           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008170           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008180           MOVE  "M40MAB"             TO  ���P�|�����e�[�u���h�c  
008190           MOVE  "SELECT"             TO  ���P�|��������          
008200           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008210           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008220           CALL  CLOCO001          USING  IF-CHOCO001             
008230*                                                                 
008240        WHEN  -4                                                  
008250*--<       �O����󕥎c�����ԃt�@�C���I�[�v���G���[ >             
008260           MOVE  "1"                  TO  ���P�|�C�x���g���      
008270           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008280           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008290           MOVE  "SFHSED25"           TO  ���P�|�����e�[�u���h�c  
008300           MOVE  "OPEN"               TO  ���P�|��������          
008310           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008320           MOVE  "�O����󕥎c�����ԃt�@�C���I�[�v���G���["       
008330                                      TO  ���P�|���̑����b�Z�[�W  
008340           CALL  CLOCO001          USING  IF-CHOCO001             
008350*                                                                 
008360        WHEN  -5                                                  
008370*--<       �����e�[�u���Ǎ����s >                                 
008380           MOVE  "1"                  TO  ���P�|�C�x���g���      
008390           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008400           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008410           MOVE  "M40MAB"             TO  ���P�|�����e�[�u���h�c  
008420           MOVE  "FETCH"              TO  ���P�|��������          
008430           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008440           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008450           CALL  CLOCO001          USING  IF-CHOCO001             
008460*                                                                 
008470        WHEN  -6                                                  
008480*--<       ���ږ��̃}�X�^�I�[�v���G���[ >                         
008490           MOVE  "1"                  TO  ���P�|�C�x���g���      
008500           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008510           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008520           MOVE  "D19MSY"             TO  ���P�|�����e�[�u���h�c  
008530           MOVE  "SELECT"             TO  ���P�|��������          
008540           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008550           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008560           CALL  CLOCO001          USING  IF-CHOCO001             
008570*                                                                 
008580        WHEN  -7                                                  
008590*--<       �����i��ʁj�c�a�I�[�v���G���[ >                   
008600           MOVE  "1"                  TO  ���P�|�C�x���g���      
008610           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008620           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008630           MOVE  "M01SAJ"             TO  ���P�|�����e�[�u���h�c  
008640           MOVE  "SELECT"             TO  ���P�|��������          
008650           MOVE  SQLCODE              TO  ���P�|�f�[�^���e        
008660           MOVE  SQLERRMC             TO  ���P�|���̑����b�Z�[�W  
008670           CALL  CLOCO001          USING  IF-CHOCO001             
008680*                                                                 
008690        WHEN  -8                                                  
008700*--<       �O����󕥎c�����ԃt�@�C���o�̓G���[ >                 
008710           MOVE  "1"                  TO  ���P�|�C�x���g���      
008720           MOVE  �萔�|�v���O�����h�c TO  ���P�|�\�[�X�h�c        
008730           MOVE  "9"                  TO  ���P�|���A�R�[�h        
008740           MOVE  "SFHSED25"           TO  ���P�|�����e�[�u���h�c  
008750           MOVE  "WRITE"              TO  ���P�|��������          
008760           MOVE  �v�|���             TO  ���P�|�f�[�^���e        
008770           MOVE  "�O����󕥎c�����ԃt�@�C���o�̓G���[ "          
008780                                      TO  ���P�|���̑����b�Z�[�W  
008790           CALL  CLOCO001          USING  IF-CHOCO001             
008800*                                                                 
008810        WHEN  OTHER                                               
008820           MOVE  "N"                  TO �v�|�ُ�I���|�t���O     
008830     END-EVALUATE.                                                
008840*                                                                 
008850 �G���[�����|�d�w�h�s.                                            
008860     EXIT.                                                        
008870******************************************************************
008880*                  END OF PROGRAM                                *
008890******************************************************************
