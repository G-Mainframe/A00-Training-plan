prompt PL/SQL Developer import file
prompt Created on 2004年9月3日 by ren_dali
set feedback off
set define off
prompt Dropping D322SSA_TBL...
drop table D322SSA_TBL cascade constraints;
prompt Creating D322SSA_TBL...
create table D322SSA_TBL
(
  契約番号                 CHAR(10) not null,
  再リース回数             NUMBER(2) not null,
  契約種類                 CHAR(3) not null,
  回収サイト               NUMBER(2) not null,
  回収日                   NUMBER(2) not null,
  回収方法                 CHAR(1) not null,
  基本利回り               NUMBER(10,8) not null,
  実質利回り               NUMBER(10,8) not null,
  粗利額                   NUMBER(13) not null,
  基本利回り総額           NUMBER(10,8) not null,
  売上基本利回り           NUMBER(10,8) not null,
  一般基本利回り           NUMBER(10,8) not null,
  一般実質利回り           NUMBER(10,8) not null,
  一般粗利額               NUMBER(13) not null,
  固定資産税               NUMBER(13) not null,
  動総保険料               NUMBER(13) not null,
  委託保守料               NUMBER(13) not null,
  固定資産税現価           NUMBER(13) not null,
  動総保険料現価           NUMBER(13) not null,
  委託保守料現価           NUMBER(13) not null,
  一般固定資産税現価       NUMBER(13) not null,
  一般動総保険料現価       NUMBER(13) not null,
  一般委託保守料現価       NUMBER(13) not null,
  前受メリット             NUMBER(13) not null,
  一般前受メリット         NUMBER(13) not null,
  繰延メリット             NUMBER(13) not null,
  一般繰延メリット         NUMBER(13) not null,
  基本リース料総額         NUMBER(13) not null,
  基本リース料１回分       NUMBER(13) not null,
  固定資産税費用総額       NUMBER(13) not null,
  固定資産税費用１回分     NUMBER(13) not null,
  動総保険料費用総額       NUMBER(13) not null,
  動総保険料費用１回分     NUMBER(13) not null,
  リース料総額             NUMBER(13) not null,
  リース料１回分           NUMBER(13) not null,
  前受メリット総額         NUMBER(13) not null,
  前受メリット１回分       NUMBER(13) not null,
  繰延メリット総額         NUMBER(13) not null,
  繰延メリット１回分       NUMBER(13) not null,
  実質リース料総額         NUMBER(13) not null,
  実質リース料１回分       NUMBER(13) not null,
  実質リース料現価         NUMBER(13) not null,
  初期費用                 NUMBER(13) not null,
  期中費用現価             NUMBER(13) not null,
  基本リース料総額当社     NUMBER(13) not null,
  基本リース料１回分当社   NUMBER(13) not null,
  固定資産税費用総額当社   NUMBER(13) not null,
  固定資産税費用１回分当社 NUMBER(13) not null,
  動総保険料費用総額当社   NUMBER(13) not null,
  動総保険料費用１回分当社 NUMBER(13) not null,
  リース料総額当社         NUMBER(13) not null,
  リース料１回分当社       NUMBER(13) not null,
  前受メリット総額当社     NUMBER(13) not null,
  前受メリット１回分当社   NUMBER(13) not null,
  繰延メリット総額当社     NUMBER(13) not null,
  繰延メリット１回分当社   NUMBER(13) not null,
  実質リース料総額当社     NUMBER(13) not null,
  実質リース料１回分当社   NUMBER(13) not null,
  実質リース料現価当社     NUMBER(13) not null,
  残価回収現価当社         NUMBER(13) not null,
  初期費用当社             NUMBER(13) not null,
  期中費用現価当社         NUMBER(13) not null,
  残価回収現価             NUMBER(13) not null,
  粗利益全体               NUMBER(13) not null,
  一般実質リース料現価     NUMBER(13) not null,
  一般残価回収現価         NUMBER(13) not null,
  一般期中費用現価         NUMBER(13) not null,
  一般粗利額全体           NUMBER(13) not null,
  一般実質リース料現価当社 NUMBER(13) not null,
  一般残価回収現価当社     NUMBER(13) not null,
  一般期中費用現価当社     NUMBER(13) not null,
  当社持分比率             NUMBER(3) not null,
  基本元本金額             NUMBER(13) not null,
  リース料現価             NUMBER(13) not null,
  リース料現価当社         NUMBER(13) not null,
  その他諸費用             NUMBER(13) not null,
  その他諸費用現価         NUMBER(13) not null,
  一般その他諸費用現価     NUMBER(13) not null,
  委託保険料費用総額       NUMBER(13) not null,
  委託保険料費用１回分     NUMBER(13) not null,
  その他諸費用総額         NUMBER(13) not null,
  その他諸費用１回分       NUMBER(13) not null,
  委託保険料費用総額当社   NUMBER(13) not null,
  委託保険料費用１回分当社 NUMBER(13) not null,
  その他諸費用総額当社     NUMBER(13) not null,
  その他諸費用１回分当社   NUMBER(13) not null,
  更新年月日               CHAR(8) not null,
  更新時間                 CHAR(8) not null,
  更新者                   CHAR(8) not null,
  登録年月日               CHAR(8) not null,
  登録時間                 CHAR(8) not null,
  登録担当者               CHAR(8) not null,
  入力担当者コード         CHAR(8) not null
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
comment on table D322SSA_TBL
  is '債権採算';
comment on column D322SSA_TBL.契約番号
  is '契約番号';
comment on column D322SSA_TBL.再リース回数
  is '再リース回数';
comment on column D322SSA_TBL.契約種類
  is '商品を管理するコード       コード仕様書（No.040）';
comment on column D322SSA_TBL.回収サイト
  is '回収サイト　コード仕様書（No.016）';
comment on column D322SSA_TBL.回収日
  is '回収日（DD)';
comment on column D322SSA_TBL.回収方法
  is '回収方法　コード仕様書（No.017）';
comment on column D322SSA_TBL.基本利回り
  is '適用金利での基本利回り';
comment on column D322SSA_TBL.実質利回り
  is '適用金利での実質利回り';
comment on column D322SSA_TBL.粗利額
  is '適用金利での粗利額';
comment on column D322SSA_TBL.基本利回り総額
  is '協調幹事の場合請求額（総額）の金融展開利回り　　　　　　請求額対応、全体分、適用金利';
comment on column D322SSA_TBL.売上基本利回り
  is '自社売上額ベースに対する金融展開利回り　　　　　　　　　売上額対応、自社分、適用金利';
comment on column D322SSA_TBL.一般基本利回り
  is '一般金利での基本利回り';
comment on column D322SSA_TBL.一般実質利回り
  is '一般金利での実質利回り';
comment on column D322SSA_TBL.一般粗利額
  is '一般金利での粗利額';
comment on column D322SSA_TBL.固定資産税
  is '契約種類毎の固定資産税';
comment on column D322SSA_TBL.動総保険料
  is '契約種類毎の動総保険金額';
comment on column D322SSA_TBL.委託保守料
  is '契約種類毎の委託保守料';
comment on column D322SSA_TBL.固定資産税現価
  is '契約種類毎の固定資産税現価';
comment on column D322SSA_TBL.動総保険料現価
  is '契約種類毎の動総保険現価';
comment on column D322SSA_TBL.委託保守料現価
  is '契約種類毎の委託保守料現価';
comment on column D322SSA_TBL.一般固定資産税現価
  is '契約種類毎の固定資産税現価（一般金利による）';
comment on column D322SSA_TBL.一般動総保険料現価
  is '契約種類毎の動総保険現価（一般金利による）';
comment on column D322SSA_TBL.一般委託保守料現価
  is '契約種類毎の委託保守料現価（一般金利による）';
comment on column D322SSA_TBL.前受メリット
  is '前受リース料の運用益金額';
comment on column D322SSA_TBL.一般前受メリット
  is '前受リース料の運用益金額（一般金利による）';
comment on column D322SSA_TBL.繰延メリット
  is '物件代金支払サイトの運用益';
comment on column D322SSA_TBL.一般繰延メリット
  is '物件代金支払サイトの運用益（一般金利による）';
comment on column D322SSA_TBL.基本リース料総額
  is '基本リース料の総額（全体）';
comment on column D322SSA_TBL.基本リース料１回分
  is '１回分の基本リース料（全体）';
comment on column D322SSA_TBL.固定資産税費用総額
  is '費用回収額としての固定資産分（全体）';
comment on column D322SSA_TBL.固定資産税費用１回分
  is '上記固定資産費用回収の１回分（全体）';
comment on column D322SSA_TBL.動総保険料費用総額
  is '費用回収額としての動総保険分（全体）';
comment on column D322SSA_TBL.動総保険料費用１回分
  is '上記動総保険費用回収の１回分（全体）';
comment on column D322SSA_TBL.リース料総額
  is '契約金額（全体）';
comment on column D322SSA_TBL.リース料１回分
  is '１回分のリース料（全体）';
comment on column D322SSA_TBL.前受メリット総額
  is '前受リース料運用益を賦金した１回分の合計（全体）';
comment on column D322SSA_TBL.前受メリット１回分
  is '前受リース料運用益を賦金した１回分の金額（全体）';
comment on column D322SSA_TBL.繰延メリット総額
  is '繰延支払運用益を賦金した１回分の合計（全体）';
comment on column D322SSA_TBL.繰延メリット１回分
  is '繰延支払運用益を賦金した１回分の金額（全体）';
comment on column D322SSA_TBL.実質リース料総額
  is '実質リース料総額（全体）';
comment on column D322SSA_TBL.実質リース料１回分
  is '実質リース料１回分（全体）';
comment on column D322SSA_TBL.実質リース料現価
  is '実質リース料ｐｖ（全体）';
comment on column D322SSA_TBL.初期費用
  is '採算で算入する初期費用（全体）';
comment on column D322SSA_TBL.期中費用現価
  is '採算で算入する期中費用ｐｖ（全体）';
comment on column D322SSA_TBL.基本リース料総額当社
  is '基本リース料の総額（当社分）';
comment on column D322SSA_TBL.基本リース料１回分当社
  is '１回分の基本リース料（当社分）';
comment on column D322SSA_TBL.固定資産税費用総額当社
  is '費用回収額としての固定資産分（当社分）';
comment on column D322SSA_TBL.固定資産税費用１回分当社
  is '上記固定資産費用回収の１回分（当社分）';
comment on column D322SSA_TBL.動総保険料費用総額当社
  is '費用回収額としての動総保険分（当社分）';
comment on column D322SSA_TBL.動総保険料費用１回分当社
  is '上記動総保険費用回収の１回分（当社分）';
comment on column D322SSA_TBL.リース料総額当社
  is '契約金額（当社分）';
comment on column D322SSA_TBL.リース料１回分当社
  is '１回分のリース料（当社分）';
comment on column D322SSA_TBL.前受メリット総額当社
  is '前受リース料運用益を賦金した１回分の合計（当社分）';
comment on column D322SSA_TBL.前受メリット１回分当社
  is '前受リース料運用益を賦金した１回分の金額（当社分）';
comment on column D322SSA_TBL.繰延メリット総額当社
  is '繰延支払運用益を賦金した１回分の合計（当社分）';
comment on column D322SSA_TBL.繰延メリット１回分当社
  is '繰延支払運用益を賦金した１回分の金額（当社分）';
comment on column D322SSA_TBL.実質リース料総額当社
  is '実質リース料総額（当社分）';
comment on column D322SSA_TBL.実質リース料１回分当社
  is '実質リース料１回分（当社分）';
comment on column D322SSA_TBL.実質リース料現価当社
  is '実質リース料ｐｖ（当社分）';
comment on column D322SSA_TBL.残価回収現価当社
  is '残価回収ｐｖ（当社分）';
comment on column D322SSA_TBL.初期費用当社
  is '採算で算入する初期費用（当社分）';
comment on column D322SSA_TBL.期中費用現価当社
  is '採算で算入する期中費用ｐｖ（当社分）';
comment on column D322SSA_TBL.残価回収現価
  is '残価ｐｖ（適用金利による）（全体）';
comment on column D322SSA_TBL.粗利益全体
  is '粗利額（適用金利による）（全体）';
comment on column D322SSA_TBL.一般実質リース料現価
  is '実質リース料ｐｖ（一般金利による)（全体）';
comment on column D322SSA_TBL.一般残価回収現価
  is '残価ｐｖ（一般金利による）（全体）';
comment on column D322SSA_TBL.一般期中費用現価
  is '期中費用ｐｖ（一般金利による）（全体）';
comment on column D322SSA_TBL.一般粗利額全体
  is '粗利額（一般金利による）（全体）';
comment on column D322SSA_TBL.一般実質リース料現価当社
  is '実質リース料ｐｖ（一般金利による)（当社分）';
comment on column D322SSA_TBL.一般残価回収現価当社
  is '残価ｐｖ（一般金利による）（当社分）';
comment on column D322SSA_TBL.一般期中費用現価当社
  is '期中費用ｐｖ（一般金利による）（当社分）';
comment on column D322SSA_TBL.当社持分比率
  is '協調幹事取引の場合、物件取得価額の当社持分（％表示）それ以外の場合「０」を設定';
comment on column D322SSA_TBL.基本元本金額
  is '物件取得価額、支払他社解約金など当採算の元本金額（全体）';
comment on column D322SSA_TBL.リース料現価
  is 'リース料賦払金の検収日時点の現在価値（全体）';
comment on column D322SSA_TBL.リース料現価当社
  is 'リース料賦払金の検収日時点の現在価値（当社分）';
comment on column D322SSA_TBL.その他諸費用
  is '契約種類ごとのその他諸費用';
comment on column D322SSA_TBL.その他諸費用現価
  is '契約種類毎のその他諸費用の現価';
comment on column D322SSA_TBL.一般その他諸費用現価
  is '契約種類毎のその他諸費用現価（一般金利による）';
comment on column D322SSA_TBL.委託保険料費用総額
  is '費用回収額としての委託保守分（全体）';
comment on column D322SSA_TBL.委託保険料費用１回分
  is '上記委託保守費用回収の１回分（全体）';
comment on column D322SSA_TBL.その他諸費用総額
  is '費用回収額としてのその他諸費用分（全体）';
comment on column D322SSA_TBL.その他諸費用１回分
  is '上記その他諸費用の回収の１回分（全体）';
comment on column D322SSA_TBL.委託保険料費用総額当社
  is '費用回収額としての委託保守分（当社分）';
comment on column D322SSA_TBL.委託保険料費用１回分当社
  is '上記委託保守費用回収の１回分（当社分）';
comment on column D322SSA_TBL.その他諸費用総額当社
  is '費用回収額としてのその他諸費用分（当社分）';
comment on column D322SSA_TBL.その他諸費用１回分当社
  is '上記その他諸費用回収の１回分（当社分）';
comment on column D322SSA_TBL.更新年月日
  is '更新日付';
comment on column D322SSA_TBL.更新時間
  is '更新時刻';
comment on column D322SSA_TBL.更新者
  is '更新したＰＧのＩＤ';
comment on column D322SSA_TBL.登録年月日
  is 'データを作成・更新した年月日';
comment on column D322SSA_TBL.登録時間
  is 'データを作成・更新した時間';
comment on column D322SSA_TBL.登録担当者
  is 'データを作成・更新した担当者';
comment on column D322SSA_TBL.入力担当者コード
  is '更新担当者コード';
alter table D322SSA_TBL
  add constraint PK19_3 primary key (契約番号,再リース回数,契約種類)
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

prompt Disabling triggers for D322SSA_TBL...
alter table D322SSA_TBL disable all triggers;
prompt Loading D322SSA_TBL...
prompt Table is empty
prompt Enabling triggers for D322SSA_TBL...
alter table D322SSA_TBL enable all triggers;
set feedback on
set define on
prompt Done.
