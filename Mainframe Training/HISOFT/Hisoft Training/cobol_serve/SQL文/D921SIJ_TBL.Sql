prompt PL/SQL Developer import file
prompt Created on 2004年8月30日 by ren_dali
set feedback off
set define off
prompt Dropping D921SIJ_TBL...
drop table D921SIJ_TBL cascade constraints;
prompt Creating D921SIJ_TBL...
create table D921SIJ_TBL
(
  キー情報＿契約番号             CHAR(10) not null,
  キー情報＿契約種類             CHAR(3) not null,
  キー情報＿物件番号             NUMBER(4) not null,
  契約内容＿再リース回数         NUMBER(2) not null,
  契約内容＿主契約区分           CHAR(1) not null,
  契約内容＿契約区分             CHAR(1) not null,
  契約内容＿協調区分             CHAR(1) not null,
  契約内容＿契約開始日           CHAR(8) not null,
  契約内容＿契約終了日           CHAR(8) not null,
  契約内容＿期間                 NUMBER(3) not null,
  契約内容＿引渡年月日           CHAR(8) not null,
  契約内容＿検収処理年月         CHAR(6) not null,
  契約内容＿契約処理年月         CHAR(6) not null,
  契約内容＿成約年月日           CHAR(8) not null,
  契約内容＿検収取消年月日       CHAR(8) not null,
  契約内容＿検収取消処理年月     CHAR(6) not null,
  契約内容＿検収取消エントリ日   CHAR(8) not null,
  契約内容＿担当部課コード       CHAR(4) not null,
  契約内容＿担当者コード         CHAR(8) not null,
  契約内容＿取引先コード         CHAR(9) not null,
  契約内容＿契約先コード         CHAR(5) not null,
  契約内容＿顧客区分             CHAR(2) not null,
  債権＿勘定処理コード           NUMBER(2) not null,
  物件＿取得年月日               CHAR(8) not null,
  物件＿移動年月日               CHAR(8) not null,
  物件＿状態フラグ               CHAR(1) not null,
  物件＿移動理由                 CHAR(2) not null,
  物件＿物件処分連番             NUMBER(3) not null,
  物件＿取得価額                 NUMBER(13) not null,
  物件＿取消取得価額             NUMBER(13) not null,
  物件＿物件取得価額             NUMBER(13) not null,
  物件＿残価区分                 CHAR(1) not null,
  物件＿契約残価設定額           NUMBER(13) not null,
  物件＿他社購入額               NUMBER(13) not null,
  物件＿他社残価設定額           NUMBER(13) not null,
  物件＿定額＿月額償却費         NUMBER(13) not null,
  物件＿定額＿月額償却費端数     NUMBER(13) not null,
  物件＿物件リース料             NUMBER(13) not null,
  物件＿数量                     NUMBER(5) not null,
  物件＿資産種類                 CHAR(7) not null,
  物件＿耐用年数                 NUMBER(2) not null,
  物件＿物件種類                 CHAR(2) not null,
  物件＿自他社区分               CHAR(1) not null,
  物件＿ソフト区分               CHAR(1) not null,
  物件＿少額資産区分             CHAR(1) not null,
  物件＿中古資産区分             CHAR(1) not null,
  物件＿会社償却区分             CHAR(1) not null,
  物件＿固定資産税区分           CHAR(1) not null,
  物件＿海外設置場所区分         CHAR(1) not null,
  物件＿旧契約番号               CHAR(10) not null,
  物件＿旧物件番号               NUMBER(4) not null,
  物件＿分割年月日               CHAR(8) not null,
  物件＿分割元物件番号           NUMBER(4) not null,
  物件＿物件名称                 VARCHAR2(60) not null,
  物件＿Ｆ型名                   CHAR(25) not null,
  物件＿ディーラ取引先           CHAR(9) not null,
  物件＿ディーラコード           CHAR(5) not null,
  解約満了＿解約申請フラグ       CHAR(1) not null,
  解約満了＿解約フラグ           CHAR(1) not null,
  解約満了＿解約年月日           CHAR(8) not null,
  解約満了＿解約処理年月         CHAR(6) not null,
  解約満了＿解約取消処理年月     CHAR(6) not null,
  解約満了＿解約理由             CHAR(2) not null,
  解約満了＿解約区分             CHAR(1) not null,
  解約満了＿解約月数             NUMBER(3) not null,
  解約満了＿解約取消フラグ       CHAR(1) not null,
  解約満了＿取消解約日           CHAR(8) not null,
  解約満了＿満了処理年月         CHAR(6) not null,
  解約満了＿満了取消処理年月     CHAR(6) not null,
  物件処分＿売廃フラグ           CHAR(1) not null,
  物件処分＿物件処分区分         CHAR(1) not null,
  物件処分＿申請状態フラグ       CHAR(1) not null,
  物件処分＿物件処分申請連番     NUMBER(2) not null,
  物件処分＿処分先取引先コード   CHAR(9) not null,
  物件処分＿処分先コード         CHAR(5) not null,
  物件処分＿売廃年月日           CHAR(8) not null,
  物件処分＿売廃処理年月         CHAR(6) not null,
  物件処分＿売廃月数             NUMBER(3) not null,
  物件処分＿売廃理由             CHAR(2) not null,
  物件処分＿売廃取消区分         CHAR(1) not null,
  物件処分＿売廃取消処理年月     CHAR(6) not null,
  承継＿承継フラグ               CHAR(1) not null,
  承継＿承継二次済フラグ         CHAR(1) not null,
  承継＿承継元契約番号           CHAR(10) not null,
  承継＿承継元物件番号           NUMBER(4) not null,
  承継＿承継処理年月             CHAR(6) not null,
  承継＿承継日                   CHAR(8) not null,
  承継＿承継時簿価               NUMBER(13) not null,
  承継＿承継時償却累計額         NUMBER(13) not null,
  承継＿承継取消年月日           CHAR(8) not null,
  動総保険＿動総付保区分         CHAR(1) not null,
  動総保険＿付保日               CHAR(8) not null,
  動総保険＿付保日数             NUMBER(3) not null,
  動総保険＿動総付保開始年月日   CHAR(8) not null,
  動総保険＿動総保険料           NUMBER(13) not null,
  動総保険＿事故有無             CHAR(1) not null,
  動総保険＿事故日               CHAR(8) not null,
  動総保険＿保険継続             CHAR(1) not null,
  動総保険＿保険料率             NUMBER(9,7) not null,
  動総保険＿保険価格             NUMBER(13) not null,
  動総保険＿返戻保険料           NUMBER(13) not null,
  動総保険＿動総保険証券番号     CHAR(11) not null,
  動総保険＿付保率               NUMBER(2) not null,
  動総保険＿継続リース償却対象額 NUMBER(13) not null,
  動総保険＿設置場所名カナ       VARCHAR2(80) not null,
  動総保険＿賠償保険区分         CHAR(1) not null,
  信用保険＿信用保険区分         CHAR(1) not null,
  信用保険＿保険会社区分         CHAR(4) not null,
  信用保険＿信用保険会社コード   CHAR(1) not null,
  信用保険＿機械類分類コード     CHAR(2) not null,
  信用保険＿通知書発送日         CHAR(8) not null,
  信用保険＿通知書番号           NUMBER(3) not null,
  信用保険＿保険料               NUMBER(13) not null,
  信用保険＿符号                 CHAR(5) not null,
  信用保険＿契約総額             NUMBER(13) not null,
  信用保険＿控除すべき金額       NUMBER(13) not null,
  信用保険＿以降回収サイト       NUMBER(2) not null,
  固定資産税＿残存率             NUMBER(9,7) not null,
  固定資産税＿前年度納付先コード CHAR(11) not null,
  固定資産税＿納付先コード       CHAR(6) not null,
  固定資産税＿固定資産税率       NUMBER(9,7) not null,
  固定資産税＿対象取得価額       NUMBER(13) not null,
  固定資産税＿年税額             NUMBER(13) not null,
  固定資産税＿前年度評価額       NUMBER(13) not null,
  固定資産税＿前年度理論簿価     NUMBER(13) not null,
  固定資産税＿当年度評価額       NUMBER(13) not null,
  固定資産税＿当年度理論簿価     NUMBER(13) not null,
  固定資産税＿残存到達フラグ     CHAR(1) not null,
  固定資産税＿残存到達年月       CHAR(6) not null,
  固定資産税＿申告フラグ         CHAR(1) not null,
  前月＿前月状態フラグ           CHAR(1) not null,
  前月＿前月検収処理年月         CHAR(6) not null,
  前月＿前月契約開始日           CHAR(8) not null,
  前月＿前月再リース回数         NUMBER(2) not null,
  前月＿前月解約日               CHAR(8) not null,
  前月＿前月解約年月             CHAR(6) not null,
  前月＿前月売廃日               CHAR(8) not null,
  前月＿前月売廃年月             CHAR(6) not null,
  前月＿前月売廃理由             CHAR(2) not null,
  前月＿取消解約理由             CHAR(2) not null,
  前月＿前期解約年月日           CHAR(8) not null,
  前月＿遡及処理区分             CHAR(1) not null,
  前月＿遡及処理年月             CHAR(6) not null,
  前月＿前月経過月数             NUMBER(3) not null,
  共通＿期末年月                 CHAR(6) not null,
  共通＿期首年月                 CHAR(6) not null,
  共通＿月次年月                 CHAR(6) not null,
  共通＿追加減少フラグ           CHAR(1) not null,
  共通＿取得年度                 CHAR(4) not null,
  共通＿償却月数                 NUMBER(3) not null,
  共通＿当月迄償却経過月数       NUMBER(3) not null,
  共通＿当期償却月数             NUMBER(13) not null,
  共通＿処理区分                 CHAR(1) not null,
  共通＿当月償却対象フラグ       CHAR(1) not null,
  共通＿定率償却調整可能フラグ   CHAR(1) not null,
  会社理論＿償却停止フラグ       CHAR(1) not null,
  会社理論＿償却停止日           CHAR(8) not null,
  会社理論＿前期末簿価           NUMBER(13) not null,
  会社理論＿前期迄償却額累計     NUMBER(13) not null,
  会社理論＿償却残価設定額       NUMBER(13) not null,
  会社理論＿前月償却額           NUMBER(13) not null,
  会社理論＿前月迄償却額累計     NUMBER(13) not null,
  会社理論＿現在簿価             NUMBER(13) not null,
  会社理論＿除却簿価             NUMBER(13) not null,
  会社理論＿当月迄償却額累計     NUMBER(13) not null,
  会社理論＿当月償却額           NUMBER(13) not null,
  会社理論＿当期償却額           NUMBER(13) not null,
  管理会計＿前期末簿価           NUMBER(13) not null,
  管理会計＿前期迄償却額累計     NUMBER(13) not null,
  管理会計＿前月償却額           NUMBER(13) not null,
  管理会計＿前月迄償却額累計     NUMBER(13) not null,
  管理会計＿現在簿価             NUMBER(13) not null,
  管理会計＿当月迄償却額累計     NUMBER(13) not null,
  管理会計＿当月償却額           NUMBER(13) not null,
  管理会計＿当期償却額           NUMBER(13) not null,
  税務＿償却率                   NUMBER(9,7) not null,
  税務＿割増償却                 CHAR(2) not null,
  税務＿割増償却率               NUMBER(9,7) not null,
  税務＿割増償却費               NUMBER(13) not null,
  税務＿特別償却率分子           NUMBER(2) not null,
  税務＿特別償却率分母           NUMBER(3) not null,
  税務＿特別償却費               NUMBER(13) not null,
  税務＿前期末実施額簿価         NUMBER(13) not null,
  税務＿前期実施額累計           NUMBER(13) not null,
  税務＿前期繰越超過額           NUMBER(13) not null,
  税務＿前期償却不足額           NUMBER(13) not null,
  税務＿当期償却限度額           NUMBER(13) not null,
  税務＿当期償却実施額           NUMBER(13) not null,
  税務＿当期償却実施額累計       NUMBER(13) not null,
  税務＿当期償却不足額           NUMBER(13) not null,
  税務＿当期償却超過額           NUMBER(13) not null,
  税務＿当期償却への振替額       NUMBER(13) not null,
  税務＿当期末実施額簿価         NUMBER(13) not null,
  税務＿申告残存到達フラグ       CHAR(1) not null,
  税務＿税務申告残存到達年月     CHAR(6) not null,
  税務＿前期末法定簿価           NUMBER(13) not null,
  税務＿当期末法定簿価           NUMBER(13) not null,
  管理情報＿登録年月日           CHAR(8) not null,
  管理情報＿登録時間             CHAR(8) not null,
  管理情報＿登録担当者           CHAR(8) not null,
  管理情報＿更新年月日           CHAR(8) not null,
  管理情報＿更新時間             CHAR(8) not null,
  管理情報＿更新者               CHAR(8) not null,
  管理情報＿入力担当者コード     CHAR(8) not null
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
comment on table D921SIJ_TBL
  is '資産情報テーブル';
comment on column D921SIJ_TBL.キー情報＿契約番号
  is '契約データを管理するためのコード';
comment on column D921SIJ_TBL.キー情報＿契約種類
  is 'コード仕様書（No.056)参照';
comment on column D921SIJ_TBL.キー情報＿物件番号
  is 'コード仕様書（No.040)参照';
comment on column D921SIJ_TBL.契約内容＿主契約区分
  is '０：割賦、１：レンタル、２：支払委託、４：立替払、５：リース、・・・';
comment on column D921SIJ_TBL.契約内容＿契約区分
  is '契約の識別をするためのコード
０：通常、１：承継、２：二次リース';
comment on column D921SIJ_TBL.契約内容＿協調区分
  is '協調転区分 のこと  協調、転であるかの識別
０：単独、１：協調（幹事）、２：協調（非幹事）、３：斡旋（リース＆リース）、４：斡旋（リース＆割賦）５：斡旋（割賦＆割賦）、６：斡旋（レンタル＆レンタル）、７：転';
comment on column D921SIJ_TBL.契約内容＿引渡年月日
  is '検収日  受付中は予定日
承継のとき、承継年月日';
comment on column D921SIJ_TBL.契約内容＿成約年月日
  is '契約を交わした日(契約日)  受付中は予定日';
comment on column D921SIJ_TBL.契約内容＿担当部課コード
  is '契約を当初担当した担当部課コード';
comment on column D921SIJ_TBL.契約内容＿担当者コード
  is '契約を当初担当した担当者コード';
comment on column D921SIJ_TBL.契約内容＿取引先コード
  is '契約先の取引先コード　　協調非幹事はユーザ、転非幹事はリース会社';
comment on column D921SIJ_TBL.契約内容＿契約先コード
  is '取引先内の契約先を識別するコード';
comment on column D921SIJ_TBL.契約内容＿顧客区分
  is '１：法人、２：個人、３：官公庁、４：その他';
comment on column D921SIJ_TBL.債権＿勘定処理コード
  is '商品を会計的に識別するコード
１０：リース及び継続リース
２０：再リース
・・・';
comment on column D921SIJ_TBL.物件＿取得年月日
  is '物件の取得年月日
承継';
comment on column D921SIJ_TBL.物件＿状態フラグ
  is '０ ：取引承認申請済、１：決裁済、２：成約済、３：検収済、・・・';
comment on column D921SIJ_TBL.物件＿物件処分連番
  is '売却連番／廃棄連番／処分連番のいずれか';
comment on column D921SIJ_TBL.物件＿取得価額
  is '物件の取得価格（全体）';
comment on column D921SIJ_TBL.物件＿物件取得価額
  is '物件の取得価額（自社分）';
comment on column D921SIJ_TBL.物件＿残価区分
  is '０：なし、１：自社（再リース）、２：自社（売却）、３：ユーザ保証、４：第三者保証';
comment on column D921SIJ_TBL.物件＿契約残価設定額
  is '契約残価額';
comment on column D921SIJ_TBL.物件＿他社購入額
  is '他社分の購入額';
comment on column D921SIJ_TBL.物件＿他社残価設定額
  is '物件の残価(協調の他社持ち分)';
comment on column D921SIJ_TBL.物件＿定額＿月額償却費
  is '減価償却費（月額）＝　（取得価額－残価設定額）／期間　　';
comment on column D921SIJ_TBL.物件＿定額＿月額償却費端数
  is '減価償却費（端数）';
comment on column D921SIJ_TBL.物件＿物件リース料
  is '物件リース料（月額）';
comment on column D921SIJ_TBL.物件＿数量
  is '１物件番号単位の物件の数量';
comment on column D921SIJ_TBL.物件＿資産種類
  is '物件の資産種類を識別するためのコード';
comment on column D921SIJ_TBL.物件＿耐用年数
  is '物件の法定耐用年数';
comment on column D921SIJ_TBL.物件＿物件種類
  is '物件の種類を識別するｺｰﾄﾞ（資産種類（5)+物件種類(2)';
comment on column D921SIJ_TBL.物件＿自他社区分
  is '１：自社、２：他社、３：自他';
comment on column D921SIJ_TBL.物件＿ソフト区分
  is '０ ：ソフト以外、１：ソフト';
comment on column D921SIJ_TBL.物件＿少額資産区分
  is '０ ：償却資産、１：少額資産(１０万円未満）、２：少額資産(２０万円未満）';
comment on column D921SIJ_TBL.物件＿中古資産区分
  is '０：新品、１：中古';
comment on column D921SIJ_TBL.物件＿会社償却区分
  is '０：リース定額、１：法定定率、２：償却しない';
comment on column D921SIJ_TBL.物件＿固定資産税区分
  is '０：申告対象外、１：申告対象　';
comment on column D921SIJ_TBL.物件＿海外設置場所区分
  is '０：国内、１：クロスボーダー、２：内国法人';
comment on column D921SIJ_TBL.物件＿旧契約番号
  is '当物件の前契約番号';
comment on column D921SIJ_TBL.物件＿旧物件番号
  is '当物件の前物件番号';
comment on column D921SIJ_TBL.物件＿分割年月日
  is '資産分割を行った日付';
comment on column D921SIJ_TBL.物件＿分割元物件番号
  is '物件分割時の分割元の物件番号';
comment on column D921SIJ_TBL.物件＿物件名称
  is '物件の名称';
comment on column D921SIJ_TBL.物件＿Ｆ型名
  is '物件の型式 (信用保険時に必要)   ';
comment on column D921SIJ_TBL.物件＿ディーラ取引先
  is '物件購入先の取引先コード';
comment on column D921SIJ_TBL.物件＿ディーラコード
  is '物件購入先の取引先の支払先コード';
comment on column D921SIJ_TBL.解約満了＿解約申請フラグ
  is '０：未申請、１：申請済、２：申請書印刷済、３：部店長決裁済、４：決裁済、５：確定済';
comment on column D921SIJ_TBL.解約満了＿解約フラグ
  is '０：未解約、１：解約済';
comment on column D921SIJ_TBL.解約満了＿解約処理年月
  is '解約の処理年月';
comment on column D921SIJ_TBL.解約満了＿解約取消処理年月
  is '解約の取消処理年月';
comment on column D921SIJ_TBL.解約満了＿解約区分
  is '０：全部解約、１：一部解約';
comment on column D921SIJ_TBL.解約満了＿解約月数
  is '解約月数。契約開始年月日から解約年月日迄の月数を算出';
comment on column D921SIJ_TBL.解約満了＿満了処理年月
  is '満了の処理日付';
comment on column D921SIJ_TBL.解約満了＿満了取消処理年月
  is '満了取消の入力日';
comment on column D921SIJ_TBL.物件処分＿売廃フラグ
  is '０：未売廃、１：売廃 ';
comment on column D921SIJ_TBL.物件処分＿物件処分区分
  is '１：売却、２：廃棄、５：その他（紛失等・・・除却）、６：処分保留（終了回答は来ているが、売却先・廃棄先は未定・・・保管）、７：未処理（再リース・終了回答が来ていない）、８：再リース';
comment on column D921SIJ_TBL.物件処分＿申請状態フラグ
  is '物件処分の状態を識別する';
comment on column D921SIJ_TBL.物件処分＿物件処分申請連番
  is '物件処分申請時の申請連番';
comment on column D921SIJ_TBL.物件処分＿処分先取引先コード
  is '物件処分先の取引先コード';
comment on column D921SIJ_TBL.物件処分＿処分先コード
  is '物件処分先の請求先コード';
comment on column D921SIJ_TBL.物件処分＿売廃年月日
  is '物件の売却日';
comment on column D921SIJ_TBL.物件処分＿売廃処理年月
  is '物件売廃の処理年月';
comment on column D921SIJ_TBL.物件処分＿売廃月数
  is '契約開始年月日から解約年月日迄の月数を算出
   ';
comment on column D921SIJ_TBL.物件処分＿売廃理由
  is '売却・廃棄の理由
１１：売却、２１：陳腐化、２２：使用不可、２９：その他、３１：紛失、３２：寄付、３３：所有権移転、３４：行方不明、３５：保険事故、３９：その他、４１：保管 ';
comment on column D921SIJ_TBL.物件処分＿売廃取消区分
  is '物件売廃の取消を行ったか否かを識別';
comment on column D921SIJ_TBL.物件処分＿売廃取消処理年月
  is '物件売廃の取消処理年月';
comment on column D921SIJ_TBL.承継＿承継二次済フラグ
  is '当物件（元契約）が承継されているか
０：その他、１：承継済、２：二次リース済';
comment on column D921SIJ_TBL.承継＿承継元契約番号
  is '承継契約の元となる契約番号';
comment on column D921SIJ_TBL.承継＿承継元物件番号
  is '承継契約の元となる物件番号';
comment on column D921SIJ_TBL.承継＿承継処理年月
  is '承継契約の処理年月';
comment on column D921SIJ_TBL.承継＿承継時簿価
  is '承継時の引継簿価（会社理論）';
comment on column D921SIJ_TBL.承継＿承継時償却累計額
  is '承継時の償却累計引継額（会社理論）';
comment on column D921SIJ_TBL.承継＿承継取消年月日
  is '承継が取消された年月日';
comment on column D921SIJ_TBL.動総保険＿付保日
  is '動産総合保険の開始年月日';
comment on column D921SIJ_TBL.動総保険＿事故有無
  is '保険事故物件かを識別';
comment on column D921SIJ_TBL.動総保険＿動総保険証券番号
  is '動産総合保険の保険証券番号';
comment on column D921SIJ_TBL.動総保険＿付保率
  is '再リース時の動総保険の付保率 ';
comment on column D921SIJ_TBL.動総保険＿継続リース償却対象額
  is '継続リースの場合の償却対象額';
comment on column D921SIJ_TBL.動総保険＿設置場所名カナ
  is '設置場所名カナ（半角）';
comment on column D921SIJ_TBL.動総保険＿賠償保険区分
  is '賠償保険の種類を指定する';
comment on column D921SIJ_TBL.信用保険＿信用保険区分
  is '０：非付保、１：付保、２：全て';
comment on column D921SIJ_TBL.信用保険＿保険会社区分
  is '動産総合保険会社及び料金区分を識別する';
comment on column D921SIJ_TBL.信用保険＿機械類分類コード
  is '信用保険付保の物件に対する機械分類コード';
comment on column D921SIJ_TBL.信用保険＿通知書発送日
  is '信用保険の通知書発送日';
comment on column D921SIJ_TBL.信用保険＿符号
  is '信用保険を付保した時の連番';
comment on column D921SIJ_TBL.信用保険＿以降回収サイト
  is '契約の初回以降回収サイト';
comment on column D921SIJ_TBL.固定資産税＿残存率
  is '固定資産償却の残存率';
comment on column D921SIJ_TBL.固定資産税＿前年度納付先コード
  is '固定資産税の当年度評価額';
comment on column D921SIJ_TBL.固定資産税＿残存到達フラグ
  is 'コード仕様書（No.723)参照';
comment on column D921SIJ_TBL.前月＿遡及処理区分
  is '遡及処理の状態を識別
０：通常､１：遡及検収､２：遡及検収取消､５：遡及検収取消→遡及検収';
comment on column D921SIJ_TBL.共通＿期末年月
  is '期末年月';
comment on column D921SIJ_TBL.共通＿期首年月
  is '期首年月';
comment on column D921SIJ_TBL.共通＿月次年月
  is '月次処理年月';
comment on column D921SIJ_TBL.共通＿追加減少フラグ
  is '物件と資産情報でマッチングした場合のフラグ      １：減少、 ２：追加、 ３：継続';
comment on column D921SIJ_TBL.共通＿取得年度
  is '物件を取得した年度';
comment on column D921SIJ_TBL.共通＿償却月数
  is '償却を行う月数';
comment on column D921SIJ_TBL.共通＿当月迄償却経過月数
  is '当月迄の償却経過月数';
comment on column D921SIJ_TBL.共通＿当期償却月数
  is '当期償却を行った月数';
comment on column D921SIJ_TBL.共通＿処理区分
  is '０：通常、１：当月処分取消、２：当月処分';
comment on column D921SIJ_TBL.共通＿当月償却対象フラグ
  is '０：対象外、１：定率償却対象';
comment on column D921SIJ_TBL.共通＿定率償却調整可能フラグ
  is '０：対象外、１：配布調整可能物件';
comment on column D921SIJ_TBL.会社理論＿償却停止フラグ
  is '会社償却を続行してよいかどうか   ０：償却可、１：償却不可';
comment on column D921SIJ_TBL.会社理論＿償却停止日
  is '会社償却を停止した日';
comment on column D921SIJ_TBL.会社理論＿前期末簿価
  is '会社償却の前期末簿価（不可変）';
comment on column D921SIJ_TBL.会社理論＿前期迄償却額累計
  is '会社償却の前期末償却累計（不可変）';
comment on column D921SIJ_TBL.会社理論＿償却残価設定額
  is '会社償却で使用する残価（契約残価または見積残価を設定）';
comment on column D921SIJ_TBL.会社理論＿前月償却額
  is '会社償却の前月償却額';
comment on column D921SIJ_TBL.会社理論＿前月迄償却額累計
  is '会社償却の前月迄償却累計額';
comment on column D921SIJ_TBL.会社理論＿現在簿価
  is '会社償却の現在簿価';
comment on column D921SIJ_TBL.会社理論＿除却簿価
  is '除却損計上額
※仕訳上は、解約・満了で未処理のものも除却損計上するが、資産情報テーブル上は、実際に処分されたもののみを除却損として編集する。';
comment on column D921SIJ_TBL.会社理論＿当月迄償却額累計
  is '会社償却の当月までの償却額';
comment on column D921SIJ_TBL.会社理論＿当月償却額
  is '会社償却の当月償却額';
comment on column D921SIJ_TBL.会社理論＿当期償却額
  is '会社償却の当期の償却額';
comment on column D921SIJ_TBL.管理会計＿前期末簿価
  is '見積残価0％償却の前期末簿価（不可変）';
comment on column D921SIJ_TBL.管理会計＿前期迄償却額累計
  is '見積残価0％償却の前期末償却累計';
comment on column D921SIJ_TBL.管理会計＿前月償却額
  is '見積残価0％償却の前月償却額';
comment on column D921SIJ_TBL.管理会計＿前月迄償却額累計
  is '見積残価0％償却の前月迄償却累計額';
comment on column D921SIJ_TBL.管理会計＿現在簿価
  is '見積残価0％償却の現在簿価';
comment on column D921SIJ_TBL.管理会計＿当月迄償却額累計
  is '見積残価0％償却の当月までの償却額';
comment on column D921SIJ_TBL.管理会計＿当月償却額
  is '見積残価0％償却の当月償却額';
comment on column D921SIJ_TBL.管理会計＿当期償却額
  is '見積残価0％償却の当期の償却額';
comment on column D921SIJ_TBL.税務＿償却率
  is '償却資産税率';
comment on column D921SIJ_TBL.税務＿割増償却
  is '法定償却の割増償却';
comment on column D921SIJ_TBL.税務＿割増償却率
  is '法定償却の割増償却率';
comment on column D921SIJ_TBL.税務＿割増償却費
  is '法定償却の割増償却費  ';
comment on column D921SIJ_TBL.税務＿特別償却率分子
  is '法定償却の特別償却率分子';
comment on column D921SIJ_TBL.税務＿特別償却率分母
  is '法定償却の特別償却率分母';
comment on column D921SIJ_TBL.税務＿特別償却費
  is '法定償却の特別償却費  ';
comment on column D921SIJ_TBL.税務＿前期末実施額簿価
  is '前期の償却実施額簿価';
comment on column D921SIJ_TBL.税務＿前期実施額累計
  is '前期の償却実施額累計';
comment on column D921SIJ_TBL.税務＿前期繰越超過額
  is '前期の償却超過額';
comment on column D921SIJ_TBL.税務＿前期償却不足額
  is '前期の償却不足額';
comment on column D921SIJ_TBL.税務＿当期償却限度額
  is '当期の法定償却限度額';
comment on column D921SIJ_TBL.税務＿当期償却実施額
  is '当期の償却実施額（配賦調整後）';
comment on column D921SIJ_TBL.税務＿当期償却実施額累計
  is '当期までの償却実施額の累計';
comment on column D921SIJ_TBL.税務＿当期償却不足額
  is '当期の償却不足額';
comment on column D921SIJ_TBL.税務＿当期償却超過額
  is '当期の償却超過額';
comment on column D921SIJ_TBL.税務＿当期償却への振替額
  is '除却時の、税務簿価と会社簿価との差額
（償却費へと振替える）';
comment on column D921SIJ_TBL.税務＿当期末実施額簿価
  is '当期の償却実施額簿価（配賦調整後簿価）';
comment on column D921SIJ_TBL.税務＿申告残存到達フラグ
  is '税務償却が続行可能か否か
０：償却可、１：償却不可';
comment on column D921SIJ_TBL.税務＿税務申告残存到達年月
  is '限度額簿価に到達した日';
comment on column D921SIJ_TBL.税務＿前期末法定簿価
  is '前期の法定簿価（＝実施額の簿価）';
comment on column D921SIJ_TBL.税務＿当期末法定簿価
  is '前期の法定簿価
（実施額の簿価から限度額を引いたもの）';
comment on column D921SIJ_TBL.管理情報＿登録年月日
  is '初期登録を行った年月日';
comment on column D921SIJ_TBL.管理情報＿登録時間
  is '初期登録を行った時間';
comment on column D921SIJ_TBL.管理情報＿登録担当者
  is '初期登録を行った入力者の担当者コード';
comment on column D921SIJ_TBL.管理情報＿更新年月日
  is '最終更新を行った年月日';
comment on column D921SIJ_TBL.管理情報＿更新時間
  is '最終更新を行った時間';
comment on column D921SIJ_TBL.管理情報＿更新者
  is 'データを作成、更新したＰＧのＩＤ';
comment on column D921SIJ_TBL.管理情報＿入力担当者コード
  is 'データ入力した担当者コード';
alter table D921SIJ_TBL
  add constraint PK372 primary key (キー情報＿契約番号,キー情報＿契約種類,キー情報＿物件番号)
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

prompt Disabling triggers for D921SIJ_TBL...
alter table D921SIJ_TBL disable all triggers;
prompt Loading D921SIJ_TBL...
prompt Table is empty
prompt Enabling triggers for D921SIJ_TBL...
alter table D921SIJ_TBL enable all triggers;
set feedback on
set define on
prompt Done.
