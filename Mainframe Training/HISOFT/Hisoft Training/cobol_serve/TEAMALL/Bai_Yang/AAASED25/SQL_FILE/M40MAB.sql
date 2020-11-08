prompt PL/SQL Developer import file
prompt Created on 2004年10月22日 by ren_dali
set feedback off
set define off
prompt Dropping M40MAB_TBL...
drop table M40MAB_TBL cascade constraints;
prompt Creating M40MAB_TBL...
create table M40MAB_TBL
(
  レコード区分                 CHAR(1) not null,
  契約番号                     CHAR(15) not null,
  再リース回数                 NUMBER(2) not null,
  契約種類                     CHAR(3) not null,
  前払金額                     NUMBER(13) not null,
  前払金額消費税               NUMBER(13) not null,
  前払回収方法                 CHAR(1) not null,
  前払回収サイト               NUMBER(2) not null,
  前払回収日                   CHAR(2) not null,
  充当開始回                   NUMBER(3) not null,
  充当月数                     NUMBER(3) not null,
  充当開始年月                 CHAR(6) not null,
  回収額                       NUMBER(13) not null,
  振込手数料                   NUMBER(13) not null,
  入金日                       CHAR(8) not null,
  他社前払金額                 NUMBER(13) not null,
  他社前払金額消費税           NUMBER(13) not null,
  他社回収額                   NUMBER(13) not null,
  他社回収額消費税             NUMBER(13) not null,
  他社解約分料金累計           NUMBER(13) not null,
  他社解約分消費税累計         NUMBER(13) not null,
  他社未回収額                 NUMBER(13) not null,
  当月消化額                   NUMBER(13) not null,
  消化日                       CHAR(8) not null,
  消化額累計                   NUMBER(13) not null,
  当月振替額                   NUMBER(13) not null,
  振替日                       CHAR(8) not null,
  振替額累計                   NUMBER(13) not null,
  前月末残高                   NUMBER(13) not null,
  当月回収額                   NUMBER(13) not null,
  当月末残高                   NUMBER(13) not null,
  残前受月数                   NUMBER(5,2) not null,
  契約開始日                   CHAR(8) not null,
  請求先取引先コード           CHAR(9) not null,
  顧客区分                     CHAR(2) not null,
  TASSコード                   CHAR(7) not null,
  貸倒年月日                   CHAR(8) not null,
  特定取引先区分               CHAR(1) not null,
  最大督促回数                 CHAR(1) not null,
  請求先コード                 CHAR(5) not null,
  契約先取引先コード           CHAR(9) not null,
  契約先コード                 CHAR(5) not null,
  担当部課コード               CHAR(4) not null,
  担当者コード                 CHAR(8) not null,
  協調区分                     CHAR(1) not null,
  管理債権レベル               CHAR(1) not null,
  主契約区分                   CHAR(1) not null,
  状態コード                   VARCHAR2(4) not null,
  銀行コード                   CHAR(4) not null,
  支店コード                   CHAR(4) not null,
  振込依頼人名                 VARCHAR2(48) not null,
  前受金受払残高表対象フラグ   CHAR(1) not null,
  仮受金内訳表対象フラグ       CHAR(1) not null,
  仮受金入金日                 CHAR(8) not null,
  仮受金ＳＥＱ＿ＮＯ           NUMBER(6) not null,
  会計部門コード               CHAR(2) not null,
  仕訳フラグ＿振替前受リース料 CHAR(1) not null,
  仕訳フラグ＿振替前受         CHAR(1) not null,
  仕訳フラグ＿振替仮受         CHAR(1) not null,
  費目                         CHAR(1) not null,
  当月回収額他社               NUMBER(13) not null,
  当月消化額他社               NUMBER(13) not null,
  消化額累計他社               NUMBER(13) not null,
  当月末残高他社               NUMBER(13) not null,
  前月末残高他社               NUMBER(13) not null,
  解約分料金累計               NUMBER(13) not null,
  解約分消費税累計             NUMBER(13) not null,
  経理用主契約区分             CHAR(1) not null,
  前月迄解約分料金累計         NUMBER(13) not null,
  前月迄解約分消費税累計       NUMBER(13) not null,
  前月迄他社解約分料金累計     NUMBER(13) not null,
  前月迄他社解約分消費税累計   NUMBER(13) not null,
  当月解約分料金               NUMBER(13) not null,
  当月解約分消費税             NUMBER(13) not null,
  当月他社解約分料金           NUMBER(13) not null,
  当月他社解約分消費税         NUMBER(13) not null,
  前月迄消化額累計             NUMBER(13) default 0 not null,
  前月迄消化額累計他社         NUMBER(13) default 0 not null,
  入金区分                     CHAR(2) not null,
  未回収額                     NUMBER(13) not null,
  取消区分                     CHAR(1) not null,
  前月迄振替額累計             NUMBER(13) not null,
  前月迄振替額累計他社         NUMBER(13) not null,
  当月振替額他社               NUMBER(13) not null,
  振替額累計他社               NUMBER(13) not null
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
  is '前受情報';
alter table M40MAB_TBL
  add constraint PK_M40MAB_TBL primary key (レコード区分,契約番号,再リース回数,契約種類,仮受金入金日,仮受金ＳＥＱ＿ＮＯ)
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
