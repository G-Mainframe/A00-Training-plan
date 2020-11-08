prompt PL/SQL Developer import file
prompt Created on 2004年10月22日 by ren_dali
set feedback off
set define off
prompt Dropping D70GYM_TBL...
drop table D70GYM_TBL cascade constraints;
prompt Creating D70GYM_TBL...
create table D70GYM_TBL
(
  業務管理ＩＤ             CHAR(8) not null,
  業務年月                 CHAR(6) not null,
  期首年月                 CHAR(6) not null,
  期末年月                 CHAR(6) not null,
  旬処理日                 CHAR(8) not null,
  旬次締日                 CHAR(8) not null,
  旬次処理日               CHAR(8) not null,
  口振締日１               CHAR(2) not null,
  口振日１                 CHAR(8) not null,
  口振仮締日１             CHAR(8) not null,
  口振本締日１             CHAR(8) not null,
  口振締日２               CHAR(2) not null,
  口振日２                 CHAR(8) not null,
  口振仮締日２             CHAR(8) not null,
  口振本締日２             CHAR(8) not null,
  月次締日                 CHAR(8) not null,
  月次処理日               CHAR(8) not null,
  年末締日                 CHAR(8) not null,
  年末処理日               CHAR(8) not null,
  期末締日                 CHAR(8) not null,
  期末処理日               CHAR(8) not null,
  最新請求書番号           NUMBER(7) not null,
  更新年月日               CHAR(8) not null,
  更新時間                 CHAR(8) not null,
  更新者                   CHAR(8) not null,
  入力担当者コード         CHAR(8) not null,
  バッチ用業務年月         CHAR(6) not null,
  バッチ用期首年月         CHAR(6) not null,
  バッチ用期末年月         CHAR(6) not null,
  督促処理年月日           CHAR(8) not null,
  チェックリスト処理年月日 CHAR(8) not null,
  最高支払依頼番号         NUMBER(10) not null,
  月次処理開始年月日       CHAR(8) not null,
  月次処理開始時刻         CHAR(8) not null,
  月次処理終了年月日       CHAR(8) not null,
  月次処理終了時刻         CHAR(8) not null,
  前回督促処理年月日       CHAR(8) not null,
  バッチ処理状況フラグ     CHAR(1) not null
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
  is '業務管理';
alter table D70GYM_TBL
  add constraint PK_D70GYM_TBL primary key (業務管理ＩＤ)
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
