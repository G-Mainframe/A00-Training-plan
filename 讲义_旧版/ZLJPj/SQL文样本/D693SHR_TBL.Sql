prompt PL/SQL Developer import file
prompt Created on 2004年8月27日 by ren_dali
set feedback off
set define off
prompt Dropping D693SHR_TBL...
drop table D693SHR_TBL cascade constraints;
prompt Creating D693SHR_TBL...
create table D693SHR_TBL
(
  契約番号                 CHAR(10) not null,
  物件番号                 NUMBER(4) not null,
  リース終了日             CHAR(8) not null,
  データ区分               NUMBER(2) not null,
  会員番号                 CHAR(16) not null,
  資産番号                 NUMBER(9) not null,
  一部部分区分             CHAR(1) not null,
  再リース請求金額合計     NUMBER(13) not null,
  再リース購入金額＿解約分 NUMBER(13) not null,
  再リース請求消費税額     NUMBER(13) not null,
  満了数量＿解約分         NUMBER(4) not null,
  満了個別リース料＿解約分 NUMBER(13) not null,
  満了購入金額＿解約分     NUMBER(13) not null,
  満了資産処分コード       NUMBER(1) not null,
  満了売却額               NUMBER(13) not null,
  満了売却事務代行手数料   NUMBER(13) not null,
  処理日                   CHAR(8) not null
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
comment on table D693SHR_TBL
  is '先日付累積テーブル';
comment on column D693SHR_TBL.契約番号
  is '東芝ファイナンス解約変更データの契約番号';
comment on column D693SHR_TBL.物件番号
  is '東芝ファイナンス解約変更データの物件番号';
comment on column D693SHR_TBL.リース終了日
  is '東芝ファイナンス解約変更データのリース終了日';
comment on column D693SHR_TBL.データ区分
  is '東芝ファイナンス解約変更データのデータ区分';
comment on column D693SHR_TBL.会員番号
  is '東芝ファイナンス解約変更データの会員番号';
comment on column D693SHR_TBL.資産番号
  is '東芝ファイナンス解約変更データの資産番号';
comment on column D693SHR_TBL.一部部分区分
  is '東芝ファイナンス解約変更データの一部・部分区分';
comment on column D693SHR_TBL.再リース請求金額合計
  is '東芝ファイナンス解約変更データの再リース・請求金額合計';
comment on column D693SHR_TBL.再リース購入金額＿解約分
  is '東芝ファイナンス解約変更データの再リース・購入金額（解約分）';
comment on column D693SHR_TBL.再リース請求消費税額
  is '東芝ファイナンス解約変更データの再リース・請求消費税額';
comment on column D693SHR_TBL.満了数量＿解約分
  is '東芝ファイナンス解約変更データの満了・数量（解約分）';
comment on column D693SHR_TBL.満了個別リース料＿解約分
  is '東芝ファイナンス解約変更データの満了・個別リース料（解約分）';
comment on column D693SHR_TBL.満了購入金額＿解約分
  is '東芝ファイナンス解約変更データの満了・購入金額（解約分）';
comment on column D693SHR_TBL.満了資産処分コード
  is '東芝ファイナンス解約変更データの満了・資産処分コード';
comment on column D693SHR_TBL.満了売却額
  is '東芝ファイナンス解約変更データの満了・売却額';
comment on column D693SHR_TBL.満了売却事務代行手数料
  is '東芝ファイナンス解約変更データの満了・売却事務代行手数料';
comment on column D693SHR_TBL.処理日
  is '東芝ファイナンス解約変更データの処理日';
alter table D693SHR_TBL
  add constraint PK596 primary key (契約番号,物件番号)
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

prompt Disabling triggers for D693SHR_TBL...
alter table D693SHR_TBL disable all triggers;
prompt Loading D693SHR_TBL...
prompt Table is empty
prompt Enabling triggers for D693SHR_TBL...
alter table D693SHR_TBL enable all triggers;
set feedback on
set define on
prompt Done.
