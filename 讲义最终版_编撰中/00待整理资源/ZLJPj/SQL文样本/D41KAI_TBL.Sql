prompt PL/SQL Developer import file
prompt Created on 2004年9月1日 by ren_dali
set feedback off
set define off
prompt Dropping D41KAI_TBL...
drop table D41KAI_TBL cascade constraints;
prompt Creating D41KAI_TBL...
create table D41KAI_TBL
(
  契約番号           CHAR(10) not null,
  再リース回数       NUMBER(2) not null,
  契約種類           CHAR(3) not null,
  請求区分           CHAR(1) not null,
  連番               NUMBER(6) not null,
  申請連番           NUMBER(2) not null,
  損害金請求方法     CHAR(1) not null,
  消込通番           CHAR(11) not null,
  消込回数           NUMBER(3) not null,
  収入予定日         CHAR(8) not null,
  入金日             CHAR(8) not null,
  回収方法           CHAR(1) not null,
  入金科目           CHAR(5) not null,
  入金額             NUMBER(13) not null,
  入金額消費税       NUMBER(13) not null,
  振込手数料         NUMBER(13) not null,
  入金種類           CHAR(1) not null,
  仮受金番号         CHAR(15) not null,
  エントリ日         CHAR(8) not null,
  取引先コード       CHAR(9) not null,
  請求先コード       CHAR(5) not null,
  銀行コード         CHAR(4) not null,
  支店コード         CHAR(3) not null,
  口座種類           CHAR(1) not null,
  口座番号           CHAR(10) not null,
  入金区分           CHAR(2) not null,
  更新年月日         CHAR(8) not null,
  更新時間           CHAR(8) not null,
  更新者             CHAR(8) not null,
  入力担当者コード   CHAR(8) not null,
  督促段階           CHAR(1) not null,
  督促処理年月日     CHAR(8) not null,
  費目               CHAR(1) not null,
  当社他社識別       CHAR(1) not null,
  返金経路           CHAR(1) not null,
  入返金区分         CHAR(1) not null,
  他社入金額         NUMBER(13) not null,
  協調転区分         CHAR(1) not null,
  主契約区分         CHAR(1) not null,
  仮受金処理済フラグ CHAR(1) not null,
  主_請求区分        CHAR(1) not null,
  登録年月日         CHAR(8) not null,
  登録時間           CHAR(8) not null,
  登録担当者         CHAR(8) not null,
  元本入金額         NUMBER(13) not null,
  利息入金額         NUMBER(13) not null,
  回収履歴区分       CHAR(1) not null,
  消込対象額         NUMBER(13) not null,
  消込対象額消費税   NUMBER(13) not null,
  消込取消区分       CHAR(1) not null,
  消込時回収年月日   CHAR(8) not null,
  消込時入金年月日   CHAR(8) not null,
  他社入金額消費税   NUMBER(13) not null,
  自社入金額         NUMBER(13) not null,
  自社入金額消費税   NUMBER(13) not null
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
comment on table D41KAI_TBL
  is '回収履歴';
comment on column D41KAI_TBL.契約番号
  is 'コード仕様書（№056）を参照';
comment on column D41KAI_TBL.再リース回数
  is '再リース回数';
comment on column D41KAI_TBL.契約種類
  is 'コード仕様書（№040）を参照';
comment on column D41KAI_TBL.請求区分
  is '消込み対象のDBを表す。     コード仕様書（№073）を参照';
comment on column D41KAI_TBL.連番
  is '債権展開、解約履歴、売却履歴、汎用請求等のキー部の連番に対応する。';
comment on column D41KAI_TBL.申請連番
  is '解約履歴、売却履歴の申請連番に対応する。';
comment on column D41KAI_TBL.損害金請求方法
  is '解約履歴の損害金請求方法に対応する。';
comment on column D41KAI_TBL.消込通番
  is '入金消込時の消込通番';
comment on column D41KAI_TBL.消込回数
  is '未使用';
comment on column D41KAI_TBL.収入予定日
  is '回収予定日';
comment on column D41KAI_TBL.入金日
  is '消込を行った日';
comment on column D41KAI_TBL.回収方法
  is 'コード仕様書（№017）を参照';
comment on column D41KAI_TBL.入金科目
  is '未使用';
comment on column D41KAI_TBL.入金額
  is '消込を行った金額';
comment on column D41KAI_TBL.入金額消費税
  is '消込を行った金額の消費税分';
comment on column D41KAI_TBL.振込手数料
  is '未使用';
comment on column D41KAI_TBL.入金種類
  is '未使用';
comment on column D41KAI_TBL.仮受金番号
  is '未使用';
comment on column D41KAI_TBL.エントリ日
  is '消込日';
comment on column D41KAI_TBL.取引先コード
  is 'コード仕様書（№001）を参照';
comment on column D41KAI_TBL.請求先コード
  is 'コード仕様書（№015）を参照　';
comment on column D41KAI_TBL.銀行コード
  is '未使用';
comment on column D41KAI_TBL.支店コード
  is '未使用';
comment on column D41KAI_TBL.口座種類
  is '未使用';
comment on column D41KAI_TBL.口座番号
  is '未使用';
comment on column D41KAI_TBL.入金区分
  is 'コード仕様書（№074）を参照';
comment on column D41KAI_TBL.更新年月日
  is '回収履歴テーブルの更新日付';
comment on column D41KAI_TBL.更新時間
  is '回収履歴テーブルの更新時刻';
comment on column D41KAI_TBL.更新者
  is '回収履歴テーブルの更新プログラムID';
comment on column D41KAI_TBL.入力担当者コード
  is 'コード仕様書（№126）を参照';
comment on column D41KAI_TBL.督促段階
  is '未使用';
comment on column D41KAI_TBL.督促処理年月日
  is '未使用';
comment on column D41KAI_TBL.費目
  is '未使用';
comment on column D41KAI_TBL.当社他社識別
  is '未使用';
comment on column D41KAI_TBL.返金経路
  is '未使用';
comment on column D41KAI_TBL.入返金区分
  is '未使用';
comment on column D41KAI_TBL.他社入金額
  is '協調(幹事)の場合、他社売上金額に対する消込額。(他社→自社の順に消込する)';
comment on column D41KAI_TBL.協調転区分
  is '未使用';
comment on column D41KAI_TBL.主契約区分
  is '未使用';
comment on column D41KAI_TBL.仮受金処理済フラグ
  is '未使用';
comment on column D41KAI_TBL.主_請求区分
  is '未使用';
comment on column D41KAI_TBL.登録年月日
  is '初期登録を行った年月日';
comment on column D41KAI_TBL.登録時間
  is '初期登録を行った時間';
comment on column D41KAI_TBL.登録担当者
  is '初期登録を行った入力者の担当者コード';
comment on column D41KAI_TBL.元本入金額
  is '元本入金額';
comment on column D41KAI_TBL.利息入金額
  is '利息入金額';
comment on column D41KAI_TBL.回収履歴区分
  is '回収履歴の種類を管理する。０：入金消込、１：入金消込取消';
comment on column D41KAI_TBL.消込対象額
  is '消込の対象額を管理する。消込取消時には’０’となる。（消込取消時使用項目）';
comment on column D41KAI_TBL.消込対象額消費税
  is '消込の対象額に対する消費税を管理する。消込取消時には’０’となる。（消込取消時使用項目）';
comment on column D41KAI_TBL.消込取消区分
  is '入金消込の取消状況を管理する。コード仕様書（Ｎｏ.B82）を参照';
comment on column D41KAI_TBL.消込時回収年月日
  is '消込時の回収年月日を保持する。（消込取消時使用項目）';
comment on column D41KAI_TBL.消込時入金年月日
  is '消込時の入金年月日を保持する。（消込取消時使用項目）';
comment on column D41KAI_TBL.他社入金額消費税
  is '協調(幹事)の場合、他社売上消費税に対する消込額';
comment on column D41KAI_TBL.自社入金額
  is '協調(幹事)の場合、消込額（全体）の内の自社持分（総額　－　非幹事分）　';
comment on column D41KAI_TBL.自社入金額消費税
  is '協調(幹事)の場合、消込消費税額（全体）の内の自社持分（総額　－　非幹事分）';
alter table D41KAI_TBL
  add constraint PK309 primary key (契約番号,再リース回数,契約種類,請求区分,連番,申請連番,損害金請求方法,消込通番,取引先コード,請求先コード)
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

prompt Disabling triggers for D41KAI_TBL...
alter table D41KAI_TBL disable all triggers;
prompt Loading D41KAI_TBL...
prompt Table is empty
prompt Enabling triggers for D41KAI_TBL...
alter table D41KAI_TBL enable all triggers;
set feedback on
set define on
prompt Done.
