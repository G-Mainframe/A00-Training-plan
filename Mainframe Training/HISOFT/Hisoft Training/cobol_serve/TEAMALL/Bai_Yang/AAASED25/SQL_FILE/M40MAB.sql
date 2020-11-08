prompt PL/SQL Developer import file
prompt Created on 2004�N10��22�� by ren_dali
set feedback off
set define off
prompt Dropping M40MAB_TBL...
drop table M40MAB_TBL cascade constraints;
prompt Creating M40MAB_TBL...
create table M40MAB_TBL
(
  ���R�[�h�敪                 CHAR(1) not null,
  �_��ԍ�                     CHAR(15) not null,
  �ă��[�X��                 NUMBER(2) not null,
  �_����                     CHAR(3) not null,
  �O�����z                     NUMBER(13) not null,
  �O�����z�����               NUMBER(13) not null,
  �O��������@                 CHAR(1) not null,
  �O������T�C�g               NUMBER(2) not null,
  �O�������                   CHAR(2) not null,
  �[���J�n��                   NUMBER(3) not null,
  �[������                     NUMBER(3) not null,
  �[���J�n�N��                 CHAR(6) not null,
  ����z                       NUMBER(13) not null,
  �U���萔��                   NUMBER(13) not null,
  ������                       CHAR(8) not null,
  ���БO�����z                 NUMBER(13) not null,
  ���БO�����z�����           NUMBER(13) not null,
  ���Љ���z                   NUMBER(13) not null,
  ���Љ���z�����             NUMBER(13) not null,
  ���Љ�񕪗����݌v           NUMBER(13) not null,
  ���Љ�񕪏���ŗ݌v         NUMBER(13) not null,
  ���Ж�����z                 NUMBER(13) not null,
  ���������z                   NUMBER(13) not null,
  ������                       CHAR(8) not null,
  �����z�݌v                   NUMBER(13) not null,
  �����U�֊z                   NUMBER(13) not null,
  �U�֓�                       CHAR(8) not null,
  �U�֊z�݌v                   NUMBER(13) not null,
  �O�����c��                   NUMBER(13) not null,
  ��������z                   NUMBER(13) not null,
  �������c��                   NUMBER(13) not null,
  �c�O�󌎐�                   NUMBER(5,2) not null,
  �_��J�n��                   CHAR(8) not null,
  ����������R�[�h           CHAR(9) not null,
  �ڋq�敪                     CHAR(2) not null,
  TASS�R�[�h                   CHAR(7) not null,
  �ݓ|�N����                   CHAR(8) not null,
  ��������敪               CHAR(1) not null,
  �ő����                 CHAR(1) not null,
  ������R�[�h                 CHAR(5) not null,
  �_�������R�[�h           CHAR(9) not null,
  �_���R�[�h                 CHAR(5) not null,
  �S�����ۃR�[�h               CHAR(4) not null,
  �S���҃R�[�h                 CHAR(8) not null,
  �����敪                     CHAR(1) not null,
  �Ǘ������x��               CHAR(1) not null,
  ��_��敪                   CHAR(1) not null,
  ��ԃR�[�h                   VARCHAR2(4) not null,
  ��s�R�[�h                   CHAR(4) not null,
  �x�X�R�[�h                   CHAR(4) not null,
  �U���˗��l��                 VARCHAR2(48) not null,
  �O����󕥎c���\�Ώۃt���O   CHAR(1) not null,
  ���������\�Ώۃt���O       CHAR(1) not null,
  �����������                 CHAR(8) not null,
  ������r�d�p�Q�m�n           NUMBER(6) not null,
  ��v����R�[�h               CHAR(2) not null,
  �d��t���O�Q�U�֑O�󃊁[�X�� CHAR(1) not null,
  �d��t���O�Q�U�֑O��         CHAR(1) not null,
  �d��t���O�Q�U�։���         CHAR(1) not null,
  ���                         CHAR(1) not null,
  ��������z����               NUMBER(13) not null,
  ���������z����               NUMBER(13) not null,
  �����z�݌v����               NUMBER(13) not null,
  �������c������               NUMBER(13) not null,
  �O�����c������               NUMBER(13) not null,
  ��񕪗����݌v               NUMBER(13) not null,
  ��񕪏���ŗ݌v             NUMBER(13) not null,
  �o���p��_��敪             CHAR(1) not null,
  �O������񕪗����݌v         NUMBER(13) not null,
  �O������񕪏���ŗ݌v       NUMBER(13) not null,
  �O�������Љ�񕪗����݌v     NUMBER(13) not null,
  �O�������Љ�񕪏���ŗ݌v   NUMBER(13) not null,
  ������񕪗���               NUMBER(13) not null,
  ������񕪏����             NUMBER(13) not null,
  �������Љ�񕪗���           NUMBER(13) not null,
  �������Љ�񕪏����         NUMBER(13) not null,
  �O���������z�݌v             NUMBER(13) default 0 not null,
  �O���������z�݌v����         NUMBER(13) default 0 not null,
  �����敪                     CHAR(2) not null,
  ������z                     NUMBER(13) not null,
  ����敪                     CHAR(1) not null,
  �O�����U�֊z�݌v             NUMBER(13) not null,
  �O�����U�֊z�݌v����         NUMBER(13) not null,
  �����U�֊z����               NUMBER(13) not null,
  �U�֊z�݌v����               NUMBER(13) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table M40MAB_TBL
  is '�O����';
alter table M40MAB_TBL
  add constraint PK_M40MAB_TBL primary key (���R�[�h�敪,�_��ԍ�,�ă��[�X��,�_����,�����������,������r�d�p�Q�m�n)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for M40MAB_TBL...
alter table M40MAB_TBL disable all triggers;
prompt Loading M40MAB_TBL...
prompt Table is empty
prompt Enabling triggers for M40MAB_TBL...
alter table M40MAB_TBL enable all triggers;
set feedback on
set define on
prompt Done.
