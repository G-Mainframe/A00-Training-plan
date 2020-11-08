prompt PL/SQL Developer import file
prompt Created on 2004年9月8日 by ren_dali
set feedback off
set define off
prompt Dropping D60SHR_TBL...
drop table D60SHR_TBL cascade constraints;
prompt Creating D60SHR_TBL...
create table D60SHR_TBL
(
  取引先コード         CHAR(9) not null,
  支払先コード         CHAR(5) not null,
  契約番号             CHAR(10) not null,
  再リース回数         NUMBER(2) not null,
  契約種類             CHAR(3) not null,
  支払種類             CHAR(2) not null,
  買掛連番             NUMBER(3) not null,
  連番                 NUMBER(6) not null,
  手形分割連番         NUMBER(3) not null,
  売上年月             CHAR(6) not null,
  支払予定日           CHAR(8) not null,
  引渡年月日           CHAR(8) not null,
  支払金額             NUMBER(13) not null,
  支払金額消費税       NUMBER(13) not null,
  相殺契約番号         CHAR(10) not null,
  相殺金額             NUMBER(13) not null,
  相殺金額消費税       NUMBER(13) not null,
  手数料負担区分       CHAR(1) not null,
  担当部課コード       CHAR(4) not null,
  担当者コード         CHAR(8) not null,
  支払依頼日           CHAR(8) not null,
  支払指示日           CHAR(8) not null,
  支払承認日           CHAR(8) not null,
  支払年月日           CHAR(8) not null,
  銀行コード           CHAR(4) not null,
  支店コード           CHAR(3) not null,
  口座種別コード       CHAR(1) not null,
  口座番号             CHAR(10) not null,
  名義人               VARCHAR2(30) not null,
  状態フラグ           CHAR(1) not null,
  支払方法             CHAR(1) not null,
  振込手数料           NUMBER(13) not null,
  実際支払額           NUMBER(13) not null,
  実際支払額消費税     NUMBER(13) not null,
  消費税補正額         NUMBER(13) not null,
  支払総金額           NUMBER(13) not null,
  依頼処理年月         CHAR(6) not null,
  指示処理年月         CHAR(6) not null,
  承認処理年月         CHAR(6) not null,
  支払処理年月         CHAR(6) not null,
  支払取消処理年月     CHAR(6) not null,
  引渡処理年月         CHAR(6) not null,
  顧客コード           CHAR(9) not null,
  分割元連番           NUMBER(6) not null,
  支払予定日２         CHAR(8) not null,
  振出日               CHAR(8) not null,
  受取方法             CHAR(1) not null,
  連絡先               VARCHAR2(60) not null,
  依頼番号             NUMBER(10) not null,
  経理締処理年月       CHAR(6) not null,
  経理締消費税補正額   NUMBER(13) not null,
  補正額計上処理年月日 CHAR(8) not null,
  特別処理区分         CHAR(1) not null,
  更新年月日           CHAR(8) not null,
  更新時間             CHAR(8) not null,
  更新者               CHAR(8) not null,
  入力担当者コード     CHAR(8) not null,
  当初取引先コード     CHAR(9) not null,
  当初支払先コード     CHAR(5) not null,
  当初支払種類         CHAR(2) not null,
  当初契約番号         CHAR(10) not null,
  当初再リース回数     NUMBER(2) not null,
  当初連番             NUMBER(6) not null,
  約定支払日           CHAR(8) not null,
  連絡先電話番号       CHAR(15) not null,
  消費税率             NUMBER(10,8) not null,
  消費税率区分         CHAR(2) not null,
  支払額月額           NUMBER(13) not null,
  支払金額消費税月額   NUMBER(13) not null,
  自動承認フラグ       CHAR(1) not null,
  支払依頼エントリ日   CHAR(8) not null,
  手形分割金額         NUMBER(13) not null,
  手形分割抑止区分     CHAR(1) not null,
  コメント             VARCHAR2(40) not null,
  受取手数料           NUMBER(13) not null,
  受取手数料消費税     NUMBER(13) not null,
  支払依頼承認日       CHAR(8) not null,
  支払依頼確定日       CHAR(8) not null,
  依頼承認処理年月     CHAR(6) not null,
  依頼確定処理年月     CHAR(6) not null,
  入金確認フラグ       CHAR(1) not null,
  請求書確認フラグ     CHAR(1) not null,
  支払依頼取消日       CHAR(8) not null,
  支払指示取消日       CHAR(8) not null,
  支払承認取消日       CHAR(8) not null,
  支払取消日           CHAR(8) not null,
  休日対応区分         CHAR(1) not null,
  支払金額消費税補正額 NUMBER(13) not null,
  手数料相殺金額       NUMBER(13) not null,
  手数料相殺金額消費税 NUMBER(13) not null,
  無効フラグ           CHAR(1) not null,
  取消再依頼区分       CHAR(1) not null,
  仕向銀行コード       CHAR(4) not null,
  仕向支店コード       CHAR(3) not null,
  仕向口座種類         CHAR(1) not null,
  仕向口座番号         CHAR(10) not null,
  仕向名義人           VARCHAR2(30) not null,
  登録年月日           CHAR(8) not null,
  登録時間             CHAR(8) not null,
  登録担当者           CHAR(8) not null
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
comment on table D60SHR_TBL
  is '支払';
comment on column D60SHR_TBL.取引先コード
  is '支払取引先コード';
comment on column D60SHR_TBL.支払先コード
  is '支払先コード';
comment on column D60SHR_TBL.契約番号
  is '契約番号';
comment on column D60SHR_TBL.再リース回数
  is '再リース回数';
comment on column D60SHR_TBL.契約種類
  is 'コード仕様書(No.40)を参照';
comment on column D60SHR_TBL.支払種類
  is '支払種類　コード仕様書(No.832)を参照';
comment on column D60SHR_TBL.買掛連番
  is '買掛の買掛連番';
comment on column D60SHR_TBL.連番
  is '取引先コード、支払先コード、契約種類、支払種類、契約番号、再リース回数毎の連番';
comment on column D60SHR_TBL.手形分割連番
  is '手形を分割した際の分割連番';
comment on column D60SHR_TBL.売上年月
  is '売上年月';
comment on column D60SHR_TBL.支払予定日
  is '支払予定日';
comment on column D60SHR_TBL.引渡年月日
  is '検収日';
comment on column D60SHR_TBL.支払金額
  is '支払予定金額';
comment on column D60SHR_TBL.支払金額消費税
  is '支払予定金額消費税';
comment on column D60SHR_TBL.相殺契約番号
  is '購入先との相殺契約番号';
comment on column D60SHR_TBL.相殺金額
  is '購入先との相殺金額';
comment on column D60SHR_TBL.相殺金額消費税
  is '相殺金額に対する消費税額';
comment on column D60SHR_TBL.手数料負担区分
  is '手数料の負担をどこが負うかを識別　コード仕様書(No.717)を参照';
comment on column D60SHR_TBL.担当部課コード
  is '担当部店コード　コード仕様書(No.85)を参照';
comment on column D60SHR_TBL.担当者コード
  is '担当者コード　コード仕様書(No.126)を参照';
comment on column D60SHR_TBL.支払依頼日
  is '支払依頼確定の入力日';
comment on column D60SHR_TBL.支払指示日
  is '支払指示の入力日';
comment on column D60SHR_TBL.支払承認日
  is '支払承認の入力日';
comment on column D60SHR_TBL.支払年月日
  is '支払日';
comment on column D60SHR_TBL.銀行コード
  is '銀行コード　コード仕様書(No.21)を参照';
comment on column D60SHR_TBL.支店コード
  is '支店コード　コード仕様書(No.124)を参照';
comment on column D60SHR_TBL.口座種別コード
  is 'コード仕様書(No.22)を参照';
comment on column D60SHR_TBL.口座番号
  is '支払先（保守会社）の口座番号';
comment on column D60SHR_TBL.名義人
  is '支払先（保守会社）の口座名義人';
comment on column D60SHR_TBL.状態フラグ
  is 'コード仕様書(No.738)を参照';
comment on column D60SHR_TBL.支払方法
  is 'コード仕様書(No.17)を参照';
comment on column D60SHR_TBL.振込手数料
  is '保守料の振り込み手数料';
comment on column D60SHR_TBL.実際支払額
  is '実際に支払った金額';
comment on column D60SHR_TBL.実際支払額消費税
  is '実際支払額の消費税額';
comment on column D60SHR_TBL.消費税補正額
  is '実際支払額の消費税補正額';
comment on column D60SHR_TBL.支払総金額
  is '契約期間内の支払額総額（消費税抜き）';
comment on column D60SHR_TBL.依頼処理年月
  is '支払依頼確定処理を行った業務年月';
comment on column D60SHR_TBL.指示処理年月
  is '支払指示処理を行った業務年月';
comment on column D60SHR_TBL.承認処理年月
  is '支払承認処理を行った業務年月';
comment on column D60SHR_TBL.支払処理年月
  is '支払処理を行った業務年月';
comment on column D60SHR_TBL.支払取消処理年月
  is '支払取消処理を行った業務年月';
comment on column D60SHR_TBL.引渡処理年月
  is '検収確定処理を行った業務年月';
comment on column D60SHR_TBL.顧客コード
  is '契約内容の取引先ｺｰﾄﾞ';
comment on column D60SHR_TBL.分割元連番
  is '支払保守を分割する前の連番';
comment on column D60SHR_TBL.支払予定日２
  is '支払パターンにのっとり検収日のずれを考慮した支払予定日';
comment on column D60SHR_TBL.振出日
  is '支払方法が手形の場合の手形振出日';
comment on column D60SHR_TBL.受取方法
  is '受取方法　コード仕様書（№A87）';
comment on column D60SHR_TBL.連絡先
  is '支払方法が手形の場合の連絡先';
comment on column D60SHR_TBL.依頼番号
  is '支払依頼単位での依頼番号';
comment on column D60SHR_TBL.経理締処理年月
  is '未使用';
comment on column D60SHR_TBL.経理締消費税補正額
  is '未使用';
comment on column D60SHR_TBL.補正額計上処理年月日
  is '未使用';
comment on column D60SHR_TBL.特別処理区分
  is '特別処理の区分　コード仕様書（№923）';
comment on column D60SHR_TBL.更新年月日
  is '支払テーブルの更新日付';
comment on column D60SHR_TBL.更新時間
  is '支払テーブルの更新時刻';
comment on column D60SHR_TBL.更新者
  is '支払テーブルの更新プログラムＩＤ';
comment on column D60SHR_TBL.入力担当者コード
  is 'コード仕様書(No.126)を参照';
comment on column D60SHR_TBL.当初取引先コード
  is '契約当初の取引先コード';
comment on column D60SHR_TBL.当初支払先コード
  is '契約当初の支払先コード';
comment on column D60SHR_TBL.当初支払種類
  is '契約当初の支払種類';
comment on column D60SHR_TBL.当初契約番号
  is '契約当初の契約番号';
comment on column D60SHR_TBL.当初再リース回数
  is '契約当初の再リース回数';
comment on column D60SHR_TBL.当初連番
  is '契約当初の同一契約番号毎の連番';
comment on column D60SHR_TBL.約定支払日
  is '支払依頼時に入力された約定の支払日';
comment on column D60SHR_TBL.連絡先電話番号
  is '支払方法が手形の場合の連絡先電話番号';
comment on column D60SHR_TBL.消費税率
  is '支払金額の消費税の税率';
comment on column D60SHR_TBL.消費税率区分
  is '支払金額の消費税区分';
comment on column D60SHR_TBL.支払額月額
  is '月当たりの支払額';
comment on column D60SHR_TBL.支払金額消費税月額
  is '月当たりの支払額消費税';
comment on column D60SHR_TBL.自動承認フラグ
  is '自動承認されたデータか否かの判断のためのフラグ';
comment on column D60SHR_TBL.支払依頼エントリ日
  is '担当者がエントリした支払依頼の入力日';
comment on column D60SHR_TBL.手形分割金額
  is '手形分割時の分割金額';
comment on column D60SHR_TBL.手形分割抑止区分
  is '手形を自動分割不可とするかを識別';
comment on column D60SHR_TBL.コメント
  is 'コメント';
comment on column D60SHR_TBL.受取手数料
  is '保守契約の受取手数料(回収額 - 支払額)';
comment on column D60SHR_TBL.受取手数料消費税
  is '保守契約の受取手数料消費税(回収額 - 支払額)';
comment on column D60SHR_TBL.支払依頼承認日
  is '支払依頼の承認の入力日';
comment on column D60SHR_TBL.支払依頼確定日
  is '支払依頼の確定の入力日';
comment on column D60SHR_TBL.依頼承認処理年月
  is '支払依頼承認処理を行った業務年月';
comment on column D60SHR_TBL.依頼確定処理年月
  is '支払依頼確定処理を行った業務年月';
comment on column D60SHR_TBL.入金確認フラグ
  is '保守、物件代金等の入金確認用のフラグ';
comment on column D60SHR_TBL.請求書確認フラグ
  is '保守、物件代金等の請求書確認用のフラグ';
comment on column D60SHR_TBL.支払依頼取消日
  is '支払依頼を取消した入力日';
comment on column D60SHR_TBL.支払指示取消日
  is '支払指示を取消した入力日';
comment on column D60SHR_TBL.支払承認取消日
  is '支払承認を取消した入力日';
comment on column D60SHR_TBL.支払取消日
  is '支払を取消した入力日';
comment on column D60SHR_TBL.休日対応区分
  is '支払約定日が休日の場合、前営業日とするか後営業日とするかを識別';
comment on column D60SHR_TBL.支払金額消費税補正額
  is '検収までに入力した支払金額消費税額の補正額';
comment on column D60SHR_TBL.手数料相殺金額
  is '手数料相殺金額　　営業貸付金、ファクタリングで使用';
comment on column D60SHR_TBL.手数料相殺金額消費税
  is '手数料相殺金額の消費税　　営業貸付金、ファクタリングで使用';
comment on column D60SHR_TBL.無効フラグ
  is '帳票に表示するか否かを識別　支払取消をした該当のデータに対して設定する(0:有効 1:無効)';
comment on column D60SHR_TBL.取消再依頼区分
  is '支払取消を行い再依頼が必要かを識別　支払取消を行い新規に追加された未依頼ﾃﾞｰﾀに対して設定(0:不要 1:必要)';
comment on column D60SHR_TBL.仕向銀行コード
  is '支払時の仕向銀行コード';
comment on column D60SHR_TBL.仕向支店コード
  is '支払時の仕向支店コード';
comment on column D60SHR_TBL.仕向口座種類
  is '支払時の仕向口座種類';
comment on column D60SHR_TBL.仕向口座番号
  is '支払時の仕向口座番号';
comment on column D60SHR_TBL.仕向名義人
  is '支払時の仕向名義人';
comment on column D60SHR_TBL.登録年月日
  is 'データを作成・更新した年月日';
comment on column D60SHR_TBL.登録時間
  is 'データを作成・更新した時間';
comment on column D60SHR_TBL.登録担当者
  is 'データを作成・更新した担当者';
alter table D60SHR_TBL
  add constraint PK22_3 primary key (取引先コード,支払先コード,契約番号,再リース回数,契約種類,支払種類,買掛連番,連番,手形分割連番)
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

prompt Disabling triggers for D60SHR_TBL...
alter table D60SHR_TBL disable all triggers;
prompt Loading D60SHR_TBL...
prompt Table is empty
prompt Enabling triggers for D60SHR_TBL...
alter table D60SHR_TBL enable all triggers;
set feedback on
set define on
prompt Done.
