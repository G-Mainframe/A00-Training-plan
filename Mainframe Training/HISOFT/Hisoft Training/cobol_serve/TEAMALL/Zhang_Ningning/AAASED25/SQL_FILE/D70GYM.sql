prompt PL/SQL Developer import file
prompt Created on 2004�N10��22�� by ren_dali
set feedback off
set define off
prompt Dropping D70GYM_TBL...
drop table D70GYM_TBL cascade constraints;
prompt Creating D70GYM_TBL...
create table D70GYM_TBL
(
  �Ɩ��Ǘ��h�c             CHAR(8) not null,
  �Ɩ��N��                 CHAR(6) not null,
  ����N��                 CHAR(6) not null,
  �����N��                 CHAR(6) not null,
  �{������                 CHAR(8) not null,
  �{������                 CHAR(8) not null,
  �{��������               CHAR(8) not null,
  ���U�����P               CHAR(2) not null,
  ���U���P                 CHAR(8) not null,
  ���U�������P             CHAR(8) not null,
  ���U�{�����P             CHAR(8) not null,
  ���U�����Q               CHAR(2) not null,
  ���U���Q                 CHAR(8) not null,
  ���U�������Q             CHAR(8) not null,
  ���U�{�����Q             CHAR(8) not null,
  ��������                 CHAR(8) not null,
  ����������               CHAR(8) not null,
  �N������                 CHAR(8) not null,
  �N��������               CHAR(8) not null,
  ��������                 CHAR(8) not null,
  ����������               CHAR(8) not null,
  �ŐV�������ԍ�           NUMBER(7) not null,
  �X�V�N����               CHAR(8) not null,
  �X�V����                 CHAR(8) not null,
  �X�V��                   CHAR(8) not null,
  ���͒S���҃R�[�h         CHAR(8) not null,
  �o�b�`�p�Ɩ��N��         CHAR(6) not null,
  �o�b�`�p����N��         CHAR(6) not null,
  �o�b�`�p�����N��         CHAR(6) not null,
  �������N����           CHAR(8) not null,
  �`�F�b�N���X�g�����N���� CHAR(8) not null,
  �ō��x���˗��ԍ�         NUMBER(10) not null,
  ���������J�n�N����       CHAR(8) not null,
  ���������J�n����         CHAR(8) not null,
  ���������I���N����       CHAR(8) not null,
  ���������I������         CHAR(8) not null,
  �O��������N����       CHAR(8) not null,
  �o�b�`�����󋵃t���O     CHAR(1) not null
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
comment on table D70GYM_TBL
  is '�Ɩ��Ǘ�';
alter table D70GYM_TBL
  add constraint PK_D70GYM_TBL primary key (�Ɩ��Ǘ��h�c)
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

prompt Disabling triggers for D70GYM_TBL...
alter table D70GYM_TBL disable all triggers;
prompt Loading D70GYM_TBL...
prompt Table is empty
prompt Enabling triggers for D70GYM_TBL...
alter table D70GYM_TBL enable all triggers;
set feedback on
set define on
prompt Done.
