prompt PL/SQL Developer import file
prompt Created on 2004年8月29日 by ren_dali
set feedback off
set define off
prompt Dropping D51HJI_TBL...
drop table D51HJI_TBL cascade constraints;
prompt Creating D51HJI_TBL...
create table D51HJI_TBL
(
  契約番号             CHAR(10) not null,
  契約種類             CHAR(3) not null,
  物件番号             NUMBER(4) not null,
  連番                 NUMBER(3) not null,
  再リース回数         NUMBER(2) not null,
  事故年月日           CHAR(8) not null,
  事故時間             CHAR(4) not null,
  管理番号             CHAR(15) not null,
  物件名称             VARCHAR2(60) not null,
  契約開始日           CHAR(8) not null,
  契約終了日           CHAR(8) not null,
  期間                 NUMBER(3) not null,
  取得価額             NUMBER(13) not null,
  取引先コード         CHAR(9) not null,
  契約先コード         CHAR(5) not null,
  ユーザリファレンス   CHAR(16) not null,
  設置場所名           VARCHAR2(20) not null,
  転リース提携先コード CHAR(3) not null,
  残価設定額           NUMBER(13) not null,
  継続リース償却対象額 NUMBER(13) not null,
  勘定処理コード       CHAR(2) not null,
  保険会社コード       CHAR(4) not null,
  責任期間自           CHAR(8) not null,
  責任期間至           CHAR(8) not null,
  保険証券番号         CHAR(11) not null,
  動総保険価格         NUMBER(13) not null,
  再リース付保率       NUMBER(2) not null,
  事故請求登録日       CHAR(8) not null,
  事故区分             CHAR(1) not null,
  事故原因             CHAR(1) not null,
  被災物件金額         NUMBER(13) not null,
  被災物件残価額       NUMBER(13) not null,
  請求年月日           CHAR(8) not null,
  請求ＲＥＦＮＯ       CHAR(8) not null,
  請求保険金           NUMBER(13) not null,
  臨時費用保険金       NUMBER(13) not null,
  保険金請求額         NUMBER(13) not null,
  保険金請求済フラグ   CHAR(1) not null,
  入送金登録日         CHAR(8) not null,
  保険金入金日         CHAR(8) not null,
  保険金入金額         NUMBER(13) not null,
  保険金処理区分       CHAR(1) not null,
  登録年月日           CHAR(8) not null,
  登録時間             CHAR(8) not null,
  登録担当者           CHAR(8) not null,
  更新年月日           CHAR(8) not null,
  更新時間             CHAR(8) not null,
  更新者               CHAR(8) not null,
  入力担当者コード     CHAR(8) not null
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
comment on table D51HJI_TBL
  is '保険事故請求';
comment on column D51HJI_TBL.契約番号
  is '事故物件の契約番号';
comment on column D51HJI_TBL.契約種類
  is '事故物件の契約種類';
comment on column D51HJI_TBL.物件番号
  is '事故物件の物件番号';
comment on column D51HJI_TBL.連番
  is '事故物件単位の連番';
comment on column D51HJI_TBL.再リース回数
  is '事故物件の再リース回数';
comment on column D51HJI_TBL.事故年月日
  is '事故年月日';
comment on column D51HJI_TBL.事故時間
  is '事故時間';
comment on column D51HJI_TBL.管理番号
  is '管理ＮＯ';
comment on column D51HJI_TBL.物件名称
  is '事故物件の物件名';
comment on column D51HJI_TBL.契約開始日
  is '契約開始日';
comment on column D51HJI_TBL.契約終了日
  is '契約終了日';
comment on column D51HJI_TBL.期間
  is '期間';
comment on column D51HJI_TBL.取得価額
  is '取得価額';
comment on column D51HJI_TBL.取引先コード
  is '物件の取引先コード';
comment on column D51HJI_TBL.契約先コード
  is '物件の契約先コード';
comment on column D51HJI_TBL.ユーザリファレンス
  is '物件のＲＥＦＮＯ';
comment on column D51HJI_TBL.設置場所名
  is '物件の設置場所名';
comment on column D51HJI_TBL.転リース提携先コード
  is '物件の転リース提携先コード';
comment on column D51HJI_TBL.残価設定額
  is '二次リースの場合の残価設定額';
comment on column D51HJI_TBL.継続リース償却対象額
  is '継続リースの場合の償却対象額';
comment on column D51HJI_TBL.勘定処理コード
  is '物件の勘定処理コード';
comment on column D51HJI_TBL.保険会社コード
  is '物件の保険会社コード';
comment on column D51HJI_TBL.責任期間自
  is '保険の付保期間自';
comment on column D51HJI_TBL.責任期間至
  is '保険の付保期間至';
comment on column D51HJI_TBL.保険証券番号
  is '保険証券番号';
comment on column D51HJI_TBL.動総保険価格
  is '保険価格';
comment on column D51HJI_TBL.再リース付保率
  is '再リース時の動総付保率';
comment on column D51HJI_TBL.事故請求登録日
  is '事故請求エントリを行ったエントリ日';
comment on column D51HJI_TBL.事故区分
  is '事故区分（０：分損　１：全損）';
comment on column D51HJI_TBL.事故原因
  is '事故原因（Ａ：落雷　Ｂ：火災　Ｃ：盗難　Ｄ：その他）';
comment on column D51HJI_TBL.被災物件金額
  is '被災物件の取得価額';
comment on column D51HJI_TBL.被災物件残価額
  is '被災物件の残価額';
comment on column D51HJI_TBL.請求年月日
  is '保険金請求書作成日';
comment on column D51HJI_TBL.請求ＲＥＦＮＯ
  is '請求書作成時のＲＥＦＮＯ';
comment on column D51HJI_TBL.請求保険金
  is '請求保険金額';
comment on column D51HJI_TBL.臨時費用保険金
  is '臨時費用保険金額';
comment on column D51HJI_TBL.保険金請求額
  is '請求保険金額＋臨時費用保険金額';
comment on column D51HJI_TBL.保険金請求済フラグ
  is '請求書の作成済フラグ（０：未作成　１：作成済）';
comment on column D51HJI_TBL.入送金登録日
  is '保険金の入金登録日';
comment on column D51HJI_TBL.保険金入金日
  is '保険金の入金日';
comment on column D51HJI_TBL.保険金入金額
  is '保険金の入金額';
comment on column D51HJI_TBL.保険金処理区分
  is '入金時の処理区分';
comment on column D51HJI_TBL.登録年月日
  is '初期登録を行った年月日';
comment on column D51HJI_TBL.登録時間
  is '初期登録を行った時間';
comment on column D51HJI_TBL.登録担当者
  is '初期登録を行った入力者の担当者コード';
comment on column D51HJI_TBL.更新年月日
  is 'このテーブルを登録・更新した日付';
comment on column D51HJI_TBL.更新時間
  is 'このテーブルを登録・更新した時刻';
comment on column D51HJI_TBL.更新者
  is 'このテーブルを登録・更新したPG-ID';
comment on column D51HJI_TBL.入力担当者コード
  is 'このテーブルを登録・更新した入力者の担当者コード';
alter table D51HJI_TBL
  add constraint PK1_3 primary key (契約番号,契約種類,物件番号,連番)
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

prompt Disabling triggers for D51HJI_TBL...
alter table D51HJI_TBL disable all triggers;
prompt Loading D51HJI_TBL...
prompt Table is empty
prompt Enabling triggers for D51HJI_TBL...
alter table D51HJI_TBL enable all triggers;
set feedback on
set define on
prompt Done.
