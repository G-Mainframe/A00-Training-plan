prompt PL/SQL Developer import file
prompt Created on 2004年8月29日 by ren_dali
set feedback off
set define off
prompt Dropping D511HJS_TBL...
drop table D511HJS_TBL cascade constraints;
prompt Creating D511HJS_TBL...
create table D511HJS_TBL
(
  契約番号         CHAR(10) not null,
  契約種類         CHAR(3) not null,
  物件番号         NUMBER(4) not null,
  連番             NUMBER(3) not null,
  送金連番         NUMBER(2) not null,
  再リース回数     NUMBER(2) not null,
  送金先コード     CHAR(2) not null,
  送金先名         VARCHAR2(40) not null,
  送金額           NUMBER(13) not null,
  登録年月日       CHAR(8) not null,
  登録時間         CHAR(8) not null,
  登録担当者       CHAR(8) not null,
  更新年月日       CHAR(8) not null,
  更新時間         CHAR(8) not null,
  更新者           CHAR(8) not null,
  入力担当者コード CHAR(8) not null
)
tablespace USERS
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents 4096
    pctincrease 0
  );
comment on table D511HJS_TBL
  is '保険事故送金';
comment on column D511HJS_TBL.契約番号
  is '事故物件の契約番号';
comment on column D511HJS_TBL.契約種類
  is '事故物件の契約種類';
comment on column D511HJS_TBL.物件番号
  is '事故物件の物件番号';
comment on column D511HJS_TBL.連番
  is '事故物件単位の連番';
comment on column D511HJS_TBL.送金連番
  is '送金先の連番';
comment on column D511HJS_TBL.再リース回数
  is '再リース回数';
comment on column D511HJS_TBL.送金先コード
  is '保険金の送金先コード';
comment on column D511HJS_TBL.送金先名
  is '保険金の送金先名';
comment on column D511HJS_TBL.送金額
  is '保険金の送金先への総金額';
comment on column D511HJS_TBL.登録年月日
  is '初期登録を行った年月日';
comment on column D511HJS_TBL.登録時間
  is '初期登録を行った時間';
comment on column D511HJS_TBL.登録担当者
  is '初期登録を行った入力者の担当者コード';
comment on column D511HJS_TBL.更新年月日
  is 'このテーブルを登録・更新した日付';
comment on column D511HJS_TBL.更新時間
  is 'このテーブルを登録・更新した時刻';
comment on column D511HJS_TBL.更新者
  is 'このテーブルを登録・更新したPG-ID';
comment on column D511HJS_TBL.入力担当者コード
  is 'このテーブルを登録・更新した入力者の担当者コード';
alter table D511HJS_TBL
  add constraint PK2_2 primary key (契約番号,契約種類,物件番号,連番,送金連番,再リース回数)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents 4096
    pctincrease 0
  );

prompt Loading D511HJS_TBL...
prompt Table is empty
set feedback on
set define on
prompt Done.
