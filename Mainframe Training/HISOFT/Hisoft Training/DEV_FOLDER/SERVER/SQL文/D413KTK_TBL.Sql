prompt PL/SQL Developer import file
prompt Created on 2004年8月31日 by ren_dali
set feedback off
set define off
prompt Dropping D413KTK_TBL...
drop table D413KTK_TBL cascade constraints;
prompt Creating D413KTK_TBL...
create table D413KTK_TBL
(
  契約番号             CHAR(10) not null,
  再リース回数         NUMBER(2) not null,
  契約種類             CHAR(3) not null,
  連番                 NUMBER(3) not null,
  売上年月             CHAR(6) not null,
  展開年月日           CHAR(8) not null,
  利息月数             NUMBER(3,2) not null,
  請求額               NUMBER(13) not null,
  元本                 NUMBER(13) not null,
  利息                 NUMBER(13) not null,
  諸費用               NUMBER(13) not null,
  元本残高             NUMBER(13) not null,
  利回り               NUMBER(10,8) not null,
  元本調整額           NUMBER(13) not null,
  自社請求額           NUMBER(13) not null,
  自社元本             NUMBER(13) not null,
  自社利息             NUMBER(13) not null,
  自社諸費用           NUMBER(13) not null,
  自社元本残高         NUMBER(13) not null,
  自社社内金利利息適用 NUMBER(13) not null,
  自社社内金利利息一般 NUMBER(13) not null,
  当月利息             NUMBER(13) not null,
  自社利回り           NUMBER(10,8) not null,
  自社元本調整額       NUMBER(13) not null,
  登録年月日           CHAR(8) not null,
  登録時間             CHAR(8) not null,
  登録担当者           CHAR(8) not null,
  入力担当者コード     CHAR(8) not null,
  更新年月日           CHAR(8) not null,
  更新時間             CHAR(8) not null,
  更新者               CHAR(8) not null
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
comment on table D413KTK_TBL
  is '金融展開';
comment on column D413KTK_TBL.契約番号
  is 'コード仕様書（No.056）';
comment on column D413KTK_TBL.再リース回数
  is '契約の再リース回数';
comment on column D413KTK_TBL.契約種類
  is 'コード仕様書（No.040）';
comment on column D413KTK_TBL.連番
  is '債権内の連番。　展開件数は検収月から最終回収月まで';
comment on column D413KTK_TBL.売上年月
  is '契約の売上年月　債権展開テーブルとの連携用。売上月以降の場合は"00000000"設定';
comment on column D413KTK_TBL.展開年月日
  is '検収月から回収回収月までの毎月期日。日（DD)は次回実回収日のDD';
comment on column D413KTK_TBL.利息月数
  is '利息計算月数。　1ヶ月以下は小数点で保持';
comment on column D413KTK_TBL.請求額
  is '契約の請求額      協調の時、全体の請求額';
comment on column D413KTK_TBL.元本
  is '元本内入金額　　　協調の時、全体';
comment on column D413KTK_TBL.利息
  is '発生利息額　　　　協調の時、全体　';
comment on column D413KTK_TBL.諸費用
  is 'リース料賦払金の内訳としての諸費用（固税、保険、保守料）　協調の時、全体　適用金利ベース';
comment on column D413KTK_TBL.元本残高
  is '当月元本内入額を回収前の月初元本。';
comment on column D413KTK_TBL.利回り
  is '当月の利息を計算した利回り　（解約等変動有り）';
comment on column D413KTK_TBL.元本調整額
  is '当月元本内入額を回収後の次回利息計算元本を解約等で減額する金額。通常回は０';
comment on column D413KTK_TBL.自社請求額
  is '協調(幹事)の場合、請求額（全体）の内の自社持分（総額　－　非幹事分）　';
comment on column D413KTK_TBL.自社元本
  is '自社分の元本';
comment on column D413KTK_TBL.自社利息
  is '自社分の利息　　　　　';
comment on column D413KTK_TBL.自社諸費用
  is '自社分の諸費用（固税、保険、保守料）　適用金利ベース';
comment on column D413KTK_TBL.自社元本残高
  is '自社分の当月元本内入額を回収前の月初元本。';
comment on column D413KTK_TBL.自社社内金利利息適用
  is '自社元本残高に対する適用社内金利による支払利息額';
comment on column D413KTK_TBL.自社社内金利利息一般
  is '自社元本残高に対する一般社内金利による支払利息額';
comment on column D413KTK_TBL.当月利息
  is '月複利計算による月中利息　割賦（延払型を除く）の場合のみ設定。';
comment on column D413KTK_TBL.自社利回り
  is '当月の利息を計算した自社利回り　（解約等変動有り）';
comment on column D413KTK_TBL.自社元本調整額
  is '当月元本内入額を回収後の次回利息計算元本を解約等で減額する金額。通常回は０　自社分';
comment on column D413KTK_TBL.登録年月日
  is '初期登録を行った年月日';
comment on column D413KTK_TBL.登録時間
  is '初期登録を行った時間';
comment on column D413KTK_TBL.登録担当者
  is '初期登録を行った入力者の担当者コード';
comment on column D413KTK_TBL.入力担当者コード
  is 'コード仕様書(No.126)';
comment on column D413KTK_TBL.更新年月日
  is 'データを作成、更新した年月日';
comment on column D413KTK_TBL.更新時間
  is 'データを作成、更新した時間';
comment on column D413KTK_TBL.更新者
  is 'データを作成、更新したプログラムＩＤ';
alter table D413KTK_TBL
  add constraint PK412 primary key (契約番号,再リース回数,契約種類,連番)
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

prompt Disabling triggers for D413KTK_TBL...
alter table D413KTK_TBL disable all triggers;
prompt Loading D413KTK_TBL...
prompt Table is empty
prompt Enabling triggers for D413KTK_TBL...
alter table D413KTK_TBL enable all triggers;
set feedback on
set define on
prompt Done.
