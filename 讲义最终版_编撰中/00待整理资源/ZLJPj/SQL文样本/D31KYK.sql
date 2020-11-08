DROP TABLE D31KYK_TBL
;
CREATE TABLE D31KYK_TBL 
(
    契約番号                   CHAR(10)     NOT NULL,
    再リース回数               NUMBER(2)    NOT NULL,
    見積番号                   NUMBER(7)    NOT NULL,
    見積番号枝番               NUMBER(2)    NOT NULL,
    取引先コード               CHAR(9)      NOT NULL,
    稟議決裁日                 CHAR(8)      NOT NULL,
    貸付実行予定日             CHAR(8)      NOT NULL,
    成約年月日                 CHAR(8)      NOT NULL,
    引渡年月日                 CHAR(8)      NOT NULL,
    契約開始日                 CHAR(8)      NOT NULL,
    契約終了日                 CHAR(8)      NOT NULL,
    期間                       NUMBER(3)    NOT NULL,
    契約件名                   VARCHAR2(60) NOT NULL,
    エンドユーザコード         CHAR(9)      NOT NULL,
    契約区分                   CHAR(1)      NOT NULL,
    紹介ルート                 CHAR(1)      NOT NULL,
    担当部課コード             CHAR(4)      NOT NULL,
    担当者コード               CHAR(8)      NOT NULL,
    変則払                     CHAR(1)      NOT NULL,
    月額料金                   NUMBER(13)   NOT NULL,
    契約総額                   NUMBER(13)   NOT NULL,
    次回再リース料             NUMBER(13)   NOT NULL,
    再リース料金区分           CHAR(1)      NOT NULL,
    信用保険区分               CHAR(1)      NOT NULL,
    担保区分                   CHAR(1)      NOT NULL,
    協調区分                   CHAR(1)      NOT NULL,
    契約先コード               CHAR(5)      NOT NULL,
    主幹事先コード             CHAR(9)      NOT NULL,
    利回り                     NUMBER(10,8) NOT NULL,
    ユーザ利回り               NUMBER(10,8) NOT NULL,
    長プラ金利                 NUMBER(10,8) NOT NULL,
    社内金利                   NUMBER(10,8) NOT NULL,
    請求先コード               CHAR(5)      NOT NULL,
    請求書作成区分             CHAR(1)      NOT NULL,
    請求件名                   VARCHAR2(60) NOT NULL,
    第１回回収方法             CHAR(1)      NOT NULL,
    第１回回収サイト           NUMBER(2)    NOT NULL,
    第１回回収日               NUMBER(2)    NOT NULL,
    第１回回収回数             NUMBER(2)    NOT NULL,
    振替開始年月               CHAR(6)      NOT NULL,
    前払区分                   CHAR(1)      NOT NULL,
    頭金区分                   CHAR(1)      NOT NULL,
    営業コメント欄１           VARCHAR2(80) NOT NULL,
    営業コメント欄２           VARCHAR2(80) NOT NULL,
    状態フラグ                 CHAR(1)      NOT NULL,
    満了案内送付区分           CHAR(1)      NOT NULL,
    満了案内回答区分           CHAR(1)      NOT NULL,
    主契約区分                 CHAR(1)      NOT NULL,
    遡及処理区分               CHAR(1)      NOT NULL,
    遡及処理年月               CHAR(6)      NOT NULL,
    検収エントリ日             CHAR(8)      NOT NULL,
    検収取消日                 CHAR(8)      NOT NULL,
    検収取消エントリ日         CHAR(8)      NOT NULL,
    検収処理年月               CHAR(6)      NOT NULL,
    検収取消年月               CHAR(6)      NOT NULL,
    当初回収期間               NUMBER(3)    NOT NULL,
    最新回収期間               NUMBER(3)    NOT NULL,
    最終物件番号               NUMBER(4)    NOT NULL,
    再リースデータ作成区分     CHAR(1)      NOT NULL,
    再リース自動作成年月日     CHAR(8)      NOT NULL,
    リース割賦前払月数         NUMBER(2)    NOT NULL,
    頭金請求書作成フラグ       CHAR(1)      NOT NULL,
    前払請求書作成フラグ       CHAR(1)      NOT NULL,
    頭金請求済フラグ           CHAR(1)      NOT NULL,
    前払請求済フラグ           CHAR(1)      NOT NULL,
    解約申請フラグ             CHAR(1)      NOT NULL,
    解約フラグ                 CHAR(1)      NOT NULL,
    解約年月日                 CHAR(8)      NOT NULL,
    総回収回数                 NUMBER(3)    NOT NULL,
    物件確認                   CHAR(1)      NOT NULL,
    まるめ単位                 CHAR(1)      NOT NULL,
    内訳印刷方法               CHAR(1)      NOT NULL,
    契約期間回数印刷有無       CHAR(1)      NOT NULL,
    成約エントリ日             CHAR(8)      NOT NULL,
    成約取消エントリ日         CHAR(8)      NOT NULL,
    成約処理年月               CHAR(6)      NOT NULL,
    成約取消年月               CHAR(6)      NOT NULL,
    再リース請求間隔           NUMBER(2)    NOT NULL,
    再リース回収間隔           NUMBER(2)    NOT NULL,
    更新年月日                 CHAR(8)      NOT NULL,
    更新時間                   CHAR(8)      NOT NULL,
    更新者                     CHAR(8)      NOT NULL,
    当初利回り                 NUMBER(10,8) NOT NULL,
    当初粗利額                 NUMBER(13)   NOT NULL,
    当初月額料金               NUMBER(13)   NOT NULL,
    当初契約総額               NUMBER(13)   NOT NULL,
    以降回収サイト             NUMBER(2)    NOT NULL,
    以降回収日                 NUMBER(2)    NOT NULL,
    以降回収間隔               NUMBER(2)    NOT NULL,
    旧取引番号                 CHAR(10)     NOT NULL,
    解約エントリ日             CHAR(8)      NOT NULL,
    解約処理年月               CHAR(6)      NOT NULL,
    解約取消エントリ日         CHAR(8)      NOT NULL,
    解約取消処理年月           CHAR(6)      NOT NULL,
    満了予約フラグ             CHAR(1)      NOT NULL,
    満了予約エントリ日         CHAR(8)      NOT NULL,
    満了処理年月               CHAR(6)      NOT NULL,
    再リースエントリ日         CHAR(8)      NOT NULL,
    再リース処理年月           CHAR(6)      NOT NULL,
    再リース取消エントリ日     CHAR(8)      NOT NULL,
    再リース取消処理年月       CHAR(6)      NOT NULL,
    承継エントリ日             CHAR(8)      NOT NULL,
    承継処理年月               CHAR(6)      NOT NULL,
    承継取消エントリ日         CHAR(8)      NOT NULL,
    承継取消処理年月           CHAR(6)      NOT NULL,
    売却エントリ日             CHAR(8)      NOT NULL,
    売却処理年月               CHAR(6)      NOT NULL,
    条件変更エントリ日         CHAR(8)      NOT NULL,
    条件変更処理年月           CHAR(6)      NOT NULL,
    管理債権レベル             CHAR(1)      NOT NULL,
    契約料率                   NUMBER(10,8) NOT NULL,
    粗利額                     NUMBER(13)   NOT NULL,
    当初契約料率               NUMBER(10,8) NOT NULL,
    以降回収方法               CHAR(1)      NOT NULL,
    請求サイト                 NUMBER(2)    NOT NULL,
    請求間隔                   NUMBER(2)    NOT NULL,
    請求基準月                 NUMBER(2)    NOT NULL,
    契約取引区分               CHAR(1)      NOT NULL,
    責任区分                   CHAR(1)      NOT NULL,
    相殺区分                   CHAR(1)      NOT NULL,
    注文書出力区分             CHAR(1)      NOT NULL,
    満了案内帳票区分           CHAR(1)      NOT NULL,
    再リース料フラグ           CHAR(1)      NOT NULL,
    再リース自動継続区分       CHAR(1)      NOT NULL,
    契約書式                   CHAR(1)      NOT NULL,
    物件保管場所               CHAR(1)      NOT NULL,
    請求先区分                 CHAR(1)      NOT NULL,
    不動産担保設定額           NUMBER(13)   NOT NULL,
    有価証券担保設定額         NUMBER(13)   NOT NULL,
    その他担保設定額           NUMBER(13)   NOT NULL,
    保証人有無区分             CHAR(1)      NOT NULL,
    未収残高対象外フラグ       CHAR(1)      NOT NULL,
    保険会社区分               CHAR(4)      NOT NULL,
    動総保険料                 NUMBER(13)   NOT NULL,
    動総付保開始年月日         CHAR(8)      NOT NULL,
    入力担当者コード           CHAR(8)      NOT NULL,
    請求取引先コード           CHAR(9)      NOT NULL,
    問合せ番号                 CHAR(10)     NOT NULL,
    再リース区分               CHAR(1)      NOT NULL,
    旧契約番号                 CHAR(10)     NOT NULL,
    購入選択権付リース区分     CHAR(1)      NOT NULL,
    再リース申請書有無区分     CHAR(1)      NOT NULL,
    再リース申請フラグ         CHAR(1)      NOT NULL,
    承継申請フラグ             CHAR(1)      NOT NULL,
    申請連番                   NUMBER(2)    NOT NULL,
    リスケフラグ               CHAR(1)      NOT NULL,
    粗利益額_表                NUMBER(13)   NOT NULL,
    お支払明細書作成済フラグ   CHAR(1)      NOT NULL,
    お支払明細書要否           CHAR(1)      NOT NULL,
    申請年月日                 CHAR(8)      NOT NULL,
    対象元本額                 NUMBER(13)   NOT NULL,
    消費税率区分               CHAR(2)      NOT NULL,
    申請書出力年月日           CHAR(8)      NOT NULL,
    再リース申請書出力年月日   CHAR(8)      NOT NULL,
    請求基準                   CHAR(1)      NOT NULL,
    次回再リース回収サイト     NUMBER(2)    NOT NULL,
    次回再リース回収日         NUMBER(2)    NOT NULL,
    雑費保守料                 NUMBER(13)   NOT NULL,
    雑費販促費                 NUMBER(13)   NOT NULL,
    雑費信用保険               NUMBER(13)   NOT NULL,
    雑費その他                 NUMBER(13)   NOT NULL,
    徴求完了フラグ             CHAR(1)      NOT NULL,
    徴求完了取消フラグ         CHAR(1)      NOT NULL,
    次回再リース区分           CHAR(1)      NOT NULL,
    契約書発行済フラグ         CHAR(1)      NOT NULL,
    注文書発行済フラグ         CHAR(1)      NOT NULL,
    その他発行済フラグ         CHAR(1)      NOT NULL,
    営業コメント欄３           VARCHAR2(80) NOT NULL,
    社内金利区分               CHAR(1)      NOT NULL,
    雑費調整額                 NUMBER(13)   NOT NULL,
    オープンブラインド区分     CHAR(1)      NOT NULL,
    協調回収区分               CHAR(1)      NOT NULL,
    単年度契約                 CHAR(1)      NOT NULL,
    バック取引                 CHAR(1)      NOT NULL,
    否認区分                   CHAR(1)      NOT NULL,
    前渡金区分                 CHAR(1)      NOT NULL,
    非課税区分                 CHAR(1)      NOT NULL,
    包括区分                   CHAR(1)      NOT NULL,
    海外設置区分               CHAR(1)      NOT NULL,
    物件コメント               VARCHAR2(40) NOT NULL,
    解約金計算方法             CHAR(1)      NOT NULL,
    搬入予定日                 CHAR(8)      NOT NULL,
    申請契約額加算フラグ       CHAR(1)      NOT NULL,
    紹介先取引先               CHAR(9)      NOT NULL,
    紹介先契約先               CHAR(5)      NOT NULL,
    紹介先ＢＴＭ               CHAR(4)      NOT NULL,
    紹介先僚店                 CHAR(4)      NOT NULL,
    紹介先銀行                 CHAR(4)      NOT NULL,
    紹介先支店                 CHAR(3)      NOT NULL,
    請求日                     CHAR(2)      NOT NULL,
    契約取消理由１             VARCHAR2(80) NOT NULL,
    契約取消理由２             VARCHAR2(80) NOT NULL,
    契約取消申請書発行済フラグ CHAR(1)      NOT NULL,
    決裁登録申請フラグ         CHAR(1)      NOT NULL,
    契約登録申請フラグ         CHAR(1)      NOT NULL,
    検収登録申請フラグ         CHAR(1)      NOT NULL,
    契約取消申請フラグ         CHAR(1)      NOT NULL,
    検収取消申請フラグ         CHAR(1)      NOT NULL,
    変更申請フラグ             CHAR(1)      NOT NULL,
    変更フラグ                 CHAR(1)      NOT NULL,
    変更年月日                 CHAR(8)      NOT NULL,
    債務協調コード             CHAR(2)      NOT NULL,
    一般大口区分               CHAR(1)      NOT NULL,
    制度リース                 CHAR(1)      NOT NULL,
    基本利回り総額分           NUMBER(10,8) NOT NULL,
    実質利回り総額分           NUMBER(10,8) NOT NULL,
    粗利額総額分               NUMBER(13)   NOT NULL,
    一般社内金利               NUMBER(10,8) NOT NULL,
    一般基本利回り             NUMBER(10,8) NOT NULL,
    一般実質利回り             NUMBER(10,8) NOT NULL,
    一般粗利額                 NUMBER(13)   NOT NULL,
    一般基本利回り総額分       NUMBER(10,8) NOT NULL,
    一般実質利回り総額分       NUMBER(10,8) NOT NULL,
    一般粗利額自社分           NUMBER(13)   NOT NULL,
    強制保存フラグ             CHAR(1)      NOT NULL,
    登録年月日                 CHAR(8)      NOT NULL,
    登録時間                   CHAR(8)      NOT NULL,
    登録担当者                 CHAR(8)      NOT NULL,
    転リース提携先コード       CHAR(3)      NOT NULL,
    斡旋手数料                 NUMBER(13)   NOT NULL,
    業務区分                   CHAR(1)      NOT NULL,
    買戻義務区分               CHAR(1)      NOT NULL,
    代理回収                   CHAR(1)      NOT NULL,
    買取金額                   NUMBER(13)   NOT NULL,
    金利変動区分               CHAR(1)      NOT NULL,
    連動金利区分               CHAR(2)      NOT NULL,
    割引率                     NUMBER(10,8) NOT NULL,
    貸付金額                   NUMBER(13)   NOT NULL,
    貸付金利                   NUMBER(10,8) NOT NULL,
    資金使途区分               CHAR(2)      NOT NULL,
    資金使途文言               VARCHAR2(80) NOT NULL,
    支払委託取引形態           CHAR(1)      NOT NULL,
    融資方法                   CHAR(1)      NOT NULL,
    返済条件                   CHAR(1)      NOT NULL,
    リース種類区分             CHAR(1)      NOT NULL,
    資産科目区分               CHAR(1)      NOT NULL,
    重要性基準区分             CHAR(1)      NOT NULL,
    前渡金金利                 NUMBER(10,8) NOT NULL,
    トリプルオプション方式     CHAR(1)      NOT NULL,
    引合中止区分               CHAR(1)      NOT NULL,
    内容変更申請連番           NUMBER(2)    NOT NULL,
    承継分割種類               CHAR(1)      NOT NULL,
    承継区分                   CHAR(1)      NOT NULL,
    満了条件区分               CHAR(1)      NOT NULL,
    第１回目回収日文言         VARCHAR2(40) NOT NULL,
    第２回目以降回収日文言     VARCHAR2(40) NOT NULL,
    譲渡条件付リース区分       CHAR(1)      NOT NULL,
    残価回収サイト             NUMBER(4,2)  NOT NULL,
    債権買取区分               CHAR(1)      NOT NULL,
    支払基準月                 NUMBER(2)    NOT NULL,
    損害賠償金文言             VARCHAR2(80) NOT NULL,
    流動化番号                 CHAR(6)      NOT NULL,
    流動化先                   CHAR(7)      NOT NULL,
    信託先設定日               CHAR(8)      NOT NULL,
    信託終了日                 CHAR(8)      NOT NULL,
    債権流動化区分             CHAR(1)      NOT NULL,
    差入予約区分               CHAR(1)      NOT NULL,
    債権買取日                 CHAR(8)      NOT NULL,
    相殺条項区分               CHAR(1)      NOT NULL,
    譲渡禁止特約               CHAR(1)      NOT NULL,
    先方契約番号               CHAR(16)     NOT NULL,
    再リース料分子             NUMBER(4)    NOT NULL,
    再リース料分母             NUMBER(4)    NOT NULL,
    営業コメント欄４           VARCHAR2(80) NOT NULL,
    新規先区分                 CHAR(1)      NOT NULL,
    親密先区分                 CHAR(1)      NOT NULL,
    財務部金利                 NUMBER(10,8) NOT NULL,
    一般前渡金金利             NUMBER(10,8) NOT NULL,
    決裁ランク                 CHAR(1)      NOT NULL,
    お礼状発行フラグ           CHAR(1)      NOT NULL,
    移行フラグ                 CHAR(1)      NOT NULL,
    再リース申請条件区分       CHAR(2)      NOT NULL,
    問い合わせ担当部店コード   CHAR(4)      NOT NULL,
    問い合わせ担当者名         VARCHAR2(20) NOT NULL,
    再リース料支払予定日       CHAR(8)      NOT NULL,
    満了通知書回答期限         CHAR(8)      NOT NULL,
    申請区分                   CHAR(1)      NOT NULL,
    内容申請書印刷回数         NUMBER(2)    NOT NULL,
    内容申請書印刷済フラグ     CHAR(1)      NOT NULL,
    契約件名自動登録区分       CHAR(1)      NOT NULL,
    返済原資                   VARCHAR2(80) NOT NULL,
    否認処理区分               CHAR(1)      NOT NULL,
    解約理由                   CHAR(2)      NOT NULL,
    流動化先契約先コード       CHAR(5)      NOT NULL,
    CONSTRAINT PK4_9 PRIMARY KEY (契約番号, 再リース回数) USING INDEX)
;
COMMENT ON TABLE D31KYK_TBL IS 
'契約内容'
;
COMMENT ON COLUMN D31KYK_TBL.契約番号 IS '契約番号'
;
COMMENT ON COLUMN D31KYK_TBL.再リース回数 IS '再リース回数'
;
COMMENT ON COLUMN D31KYK_TBL.見積番号 IS '見積番号（案件番号）'
;
COMMENT ON COLUMN D31KYK_TBL.見積番号枝番 IS '見積・案件のバリエーションを示す枝番'
;
COMMENT ON COLUMN D31KYK_TBL.取引先コード IS '契約先の取引先コード　　協調非幹事はユーザ、転非幹事はリース会社'
;
COMMENT ON COLUMN D31KYK_TBL.稟議決裁日 IS '契約の決裁年月日'
;
COMMENT ON COLUMN D31KYK_TBL.貸付実行予定日 IS '貸付実行の予定日（金消、立替払、ファクタリング時ｾｯﾄ）'
;
COMMENT ON COLUMN D31KYK_TBL.成約年月日 IS '契約を交わした日(契約日)  受付中は予定日'
;
COMMENT ON COLUMN D31KYK_TBL.引渡年月日 IS '検収日  受付中は予定日'
;
COMMENT ON COLUMN D31KYK_TBL.契約開始日 IS '契約の開始年月日'
;
COMMENT ON COLUMN D31KYK_TBL.契約終了日 IS '契約の終了年月日'
;
COMMENT ON COLUMN D31KYK_TBL.期間 IS '契約期間(月数)'
;
COMMENT ON COLUMN D31KYK_TBL.契約件名 IS '契約件名(全角)'
;
COMMENT ON COLUMN D31KYK_TBL.エンドユーザコード IS '転非幹事の場合にエンドユーザの取引先コード'
;
COMMENT ON COLUMN D31KYK_TBL.契約区分 IS '契約の識別をするためのコード       コード仕様書（No.313)'
;
COMMENT ON COLUMN D31KYK_TBL.紹介ルート IS '契約がどのような紹介できたかを識別する    コード仕様書(No.059)'
;
COMMENT ON COLUMN D31KYK_TBL.担当部課コード IS '契約を当初担当した担当部店コード    コード仕様書（No.085）'
;
COMMENT ON COLUMN D31KYK_TBL.担当者コード IS '契約を当初担当した担当者コード   コード仕様書（No.126）'
;
COMMENT ON COLUMN D31KYK_TBL.変則払 IS '契約で回収が変則払いであるかの識別。    コード仕様書(No.047)'
;
COMMENT ON COLUMN D31KYK_TBL.月額料金 IS '月額リース料金／割賦販売代金　　　複数債権の場合は合計　　'
;
COMMENT ON COLUMN D31KYK_TBL.契約総額 IS 'リース・割賦等の契約総額　　     複数債権の場合は合計'
;
COMMENT ON COLUMN D31KYK_TBL.次回再リース料 IS '次回再リース料(年額の場合は年額、月払は月額)　複数債権時は合計'
;
COMMENT ON COLUMN D31KYK_TBL.再リース料金区分 IS '再リース料が年額が月額かを識別する    コード仕様書（No.060）'
;
COMMENT ON COLUMN D31KYK_TBL.信用保険区分 IS '信用保険の有無を識別する　　'
;
COMMENT ON COLUMN D31KYK_TBL.担保区分 IS '担保を受け取るか否かの区分'
;
COMMENT ON COLUMN D31KYK_TBL.協調区分 IS '協調転区分 のこと  協調、転であるかの識別   コード仕様書(No.058)'
;
COMMENT ON COLUMN D31KYK_TBL.契約先コード IS '取引先内の契約先を識別するコード'
;
COMMENT ON COLUMN D31KYK_TBL.主幹事先コード IS '協調非幹事の時、契約先コード'
;
COMMENT ON COLUMN D31KYK_TBL.利回り IS '適用金利での基本利回り。（単独、協調当社持分）'
;
COMMENT ON COLUMN D31KYK_TBL.ユーザ利回り IS '適用金利での実質利回り。（単独、協調当社持分）'
;
COMMENT ON COLUMN D31KYK_TBL.長プラ金利 IS '長プラ金利'
;
COMMENT ON COLUMN D31KYK_TBL.社内金利 IS '適用した社内金利'
;
COMMENT ON COLUMN D31KYK_TBL.請求先コード IS '取引先内の請求先を識別するコード'
;
COMMENT ON COLUMN D31KYK_TBL.請求書作成区分 IS '請求書を作成するか否かの区分     コード仕様書(No.092)'
;
COMMENT ON COLUMN D31KYK_TBL.請求件名 IS '請求書に記載する件名(全角)　'
;
COMMENT ON COLUMN D31KYK_TBL.第１回回収方法 IS '契約の初回回収方法'
;
COMMENT ON COLUMN D31KYK_TBL.第１回回収サイト IS '契約の初回回収サイト'
;
COMMENT ON COLUMN D31KYK_TBL.第１回回収日 IS '契約の初回回収日'
;
COMMENT ON COLUMN D31KYK_TBL.第１回回収回数 IS '初回と指定した回数'
;
COMMENT ON COLUMN D31KYK_TBL.振替開始年月 IS '自振作成の開始年月'
;
COMMENT ON COLUMN D31KYK_TBL.前払区分 IS '前受リース料があるか否かを識別   コード仕様書（No.702）'
;
COMMENT ON COLUMN D31KYK_TBL.頭金区分 IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.営業コメント欄１ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.営業コメント欄２ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.状態フラグ IS '契約の状態を表す    コード仕様書（No.049）'
;
COMMENT ON COLUMN D31KYK_TBL.満了案内送付区分 IS '満了案内の取り扱いを識別    コード仕様書（No.061）'
;
COMMENT ON COLUMN D31KYK_TBL.満了案内回答区分 IS '回答指示があったかどうかを識別'
;
COMMENT ON COLUMN D31KYK_TBL.主契約区分 IS '主たる契約を識別するコード    コード仕様書（No.038）'
;
COMMENT ON COLUMN D31KYK_TBL.遡及処理区分 IS '遡及処理の状態を識別　０：通常､１：遡及検収､２：遡及検収取消､
５：遡及検収取消→遡及検収'
;
COMMENT ON COLUMN D31KYK_TBL.遡及処理年月 IS '契約開始日の年月が業務年月以前の契約の場合、遡及処理を行う年月'
;
COMMENT ON COLUMN D31KYK_TBL.検収エントリ日 IS '検収登録の年月日'
;
COMMENT ON COLUMN D31KYK_TBL.検収取消日 IS '検収取消計上日'
;
COMMENT ON COLUMN D31KYK_TBL.検収取消エントリ日 IS '検収取消を登録した日'
;
COMMENT ON COLUMN D31KYK_TBL.検収処理年月 IS '検収が実行された業務年月'
;
COMMENT ON COLUMN D31KYK_TBL.検収取消年月 IS '検収取消が実行された業務年月'
;
COMMENT ON COLUMN D31KYK_TBL.当初回収期間 IS '契約当初の回収期間（月数）'
;
COMMENT ON COLUMN D31KYK_TBL.最新回収期間 IS '最新状態の回収期間（月数）'
;
COMMENT ON COLUMN D31KYK_TBL.最終物件番号 IS '契約内の最終物件番号'
;
COMMENT ON COLUMN D31KYK_TBL.再リースデータ作成区分 IS '再リースデータの作成方法を識別する（１：自動継続　２：エントリ）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース自動作成年月日 IS '再リースデータを自動作成した日付'
;
COMMENT ON COLUMN D31KYK_TBL.リース割賦前払月数 IS '前受リース料の月数'
;
COMMENT ON COLUMN D31KYK_TBL.頭金請求書作成フラグ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.前払請求書作成フラグ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.頭金請求済フラグ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.前払請求済フラグ IS '前受リース料の請求をしたか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.解約申請フラグ IS '中途解約申請がされているか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.解約フラグ IS '契約が解約済(満了済)であるか否かを識別   コード仕様書（No.722）'
;
COMMENT ON COLUMN D31KYK_TBL.解約年月日 IS '中途解約年月日(満了年月日)'
;
COMMENT ON COLUMN D31KYK_TBL.総回収回数 IS '総回収回数'
;
COMMENT ON COLUMN D31KYK_TBL.物件確認 IS '物件確認基準　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D31KYK_TBL.まるめ単位 IS '料金のまるめ単位を識別'
;
COMMENT ON COLUMN D31KYK_TBL.内訳印刷方法 IS '請求書の様式（内訳の印刷単位）を識別する'
;
COMMENT ON COLUMN D31KYK_TBL.契約期間回数印刷有無 IS '請求書の様式（期間回数を印刷するか否か）を識別する'
;
COMMENT ON COLUMN D31KYK_TBL.成約エントリ日 IS '成約入力したエントリ日'
;
COMMENT ON COLUMN D31KYK_TBL.成約取消エントリ日 IS '成約取消した計上年月'
;
COMMENT ON COLUMN D31KYK_TBL.成約処理年月 IS '成約処理した業務年月'
;
COMMENT ON COLUMN D31KYK_TBL.成約取消年月 IS '成約取消した計上年月'
;
COMMENT ON COLUMN D31KYK_TBL.再リース請求間隔 IS '再リース時の請求間隔'
;
COMMENT ON COLUMN D31KYK_TBL.再リース回収間隔 IS '再リース時の回収間隔'
;
COMMENT ON COLUMN D31KYK_TBL.更新年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D31KYK_TBL.更新時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D31KYK_TBL.更新者 IS 'データを作成・更新したプログラムID'
;
COMMENT ON COLUMN D31KYK_TBL.当初利回り IS '契約時の採算計算による運用利回り'
;
COMMENT ON COLUMN D31KYK_TBL.当初粗利額 IS '契約時の採算計算による粗利益額'
;
COMMENT ON COLUMN D31KYK_TBL.当初月額料金 IS '契約時の月額料金'
;
COMMENT ON COLUMN D31KYK_TBL.当初契約総額 IS '契約時の契約金額の総額'
;
COMMENT ON COLUMN D31KYK_TBL.以降回収サイト IS '契約の初回以降回収サイト'
;
COMMENT ON COLUMN D31KYK_TBL.以降回収日 IS '契約の初回以降回収日(DD)'
;
COMMENT ON COLUMN D31KYK_TBL.以降回収間隔 IS '契約の初回以降回収間隔(サイクル)     コード仕様書（No.018）'
;
COMMENT ON COLUMN D31KYK_TBL.旧取引番号 IS '承継、二次リース等の旧契約番号'
;
COMMENT ON COLUMN D31KYK_TBL.解約エントリ日 IS '中途解約入力したエントリ日'
;
COMMENT ON COLUMN D31KYK_TBL.解約処理年月 IS '中途解約計上年月'
;
COMMENT ON COLUMN D31KYK_TBL.解約取消エントリ日 IS '中途解約取消入力したエントリ日'
;
COMMENT ON COLUMN D31KYK_TBL.解約取消処理年月 IS '中途解約取消計上年月'
;
COMMENT ON COLUMN D31KYK_TBL.満了予約フラグ IS '満了予約が行われているか否かを識別する'
;
COMMENT ON COLUMN D31KYK_TBL.満了予約エントリ日 IS '満了予約登録された日'
;
COMMENT ON COLUMN D31KYK_TBL.満了処理年月 IS '満了処理を実行した業務年月'
;
COMMENT ON COLUMN D31KYK_TBL.再リースエントリ日 IS '再リース入力したエントリ日'
;
COMMENT ON COLUMN D31KYK_TBL.再リース処理年月 IS '再リース処理を実行した年月'
;
COMMENT ON COLUMN D31KYK_TBL.再リース取消エントリ日 IS '再リース取消を登録された日'
;
COMMENT ON COLUMN D31KYK_TBL.再リース取消処理年月 IS '再リース取消を実行した年月'
;
COMMENT ON COLUMN D31KYK_TBL.承継エントリ日 IS '承継の入力日'
;
COMMENT ON COLUMN D31KYK_TBL.承継処理年月 IS '承継処理を実行した年月'
;
COMMENT ON COLUMN D31KYK_TBL.承継取消エントリ日 IS '承継取消の入力日'
;
COMMENT ON COLUMN D31KYK_TBL.承継取消処理年月 IS '承継取消の計上した年月'
;
COMMENT ON COLUMN D31KYK_TBL.売却エントリ日 IS '売却登録された日'
;
COMMENT ON COLUMN D31KYK_TBL.売却処理年月 IS '売却処理を実行する年月'
;
COMMENT ON COLUMN D31KYK_TBL.条件変更エントリ日 IS '請求の条件変更を登録した日'
;
COMMENT ON COLUMN D31KYK_TBL.条件変更処理年月 IS '請求の条件変更を実行する年月'
;
COMMENT ON COLUMN D31KYK_TBL.管理債権レベル IS '管理債権か否かを識別する  コード仕様書（No.867）'
;
COMMENT ON COLUMN D31KYK_TBL.契約料率 IS '契約全体のリース料率'
;
COMMENT ON COLUMN D31KYK_TBL.粗利額 IS '契約時の契約の採算算定の粗利額。（単独、当社持分）'
;
COMMENT ON COLUMN D31KYK_TBL.当初契約料率 IS '契約時の契約全体の採算算定のリース料率'
;
COMMENT ON COLUMN D31KYK_TBL.以降回収方法 IS '契約の初回以降回収方法'
;
COMMENT ON COLUMN D31KYK_TBL.請求サイト IS '請求を作成するサイト　コード仕様書（No.016）'
;
COMMENT ON COLUMN D31KYK_TBL.請求間隔 IS '請求を作成する間隔　コード仕様書（No.018）'
;
COMMENT ON COLUMN D31KYK_TBL.請求基準月 IS '請求間隔の基準となる月'
;
COMMENT ON COLUMN D31KYK_TBL.契約取引区分 IS '契約が通常取引かクレライン取引かを識別 コード仕様書（No.805）'
;
COMMENT ON COLUMN D31KYK_TBL.責任区分 IS '承継時の責任区分を識別   コード仕様書（No.816）'
;
COMMENT ON COLUMN D31KYK_TBL.相殺区分 IS '買掛で相殺されているかを判断する。    コード仕様書（No.823）'
;
COMMENT ON COLUMN D31KYK_TBL.注文書出力区分 IS '注文書の出力が必要か否かを判断    コード仕様書（No.826）'
;
COMMENT ON COLUMN D31KYK_TBL.満了案内帳票区分 IS '満了案内の種類を表す  コード仕様書（No.800）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース料フラグ IS '次回再リース料が年額の1/10か1/12かを識別  コード仕様書（No.802）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース自動継続区分 IS '契約で再リース自動継続対象であるかを表す コード仕様書（No.825）'
;
COMMENT ON COLUMN D31KYK_TBL.契約書式 IS '契約書式の種類を表す  コード仕様書（No.834）'
;
COMMENT ON COLUMN D31KYK_TBL.物件保管場所 IS '物件の保管先を識別する(決裁申請書に使用) コード仕様書（No.835）'
;
COMMENT ON COLUMN D31KYK_TBL.請求先区分 IS '請求先を識別する。   コード仕様書（No.836）'
;
COMMENT ON COLUMN D31KYK_TBL.不動産担保設定額 IS '不動産担保設定額'
;
COMMENT ON COLUMN D31KYK_TBL.有価証券担保設定額 IS '質権担保設定額'
;
COMMENT ON COLUMN D31KYK_TBL.その他担保設定額 IS 'その他担保設定額'
;
COMMENT ON COLUMN D31KYK_TBL.保証人有無区分 IS '契約に保証人が設定されているか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.未収残高対象外フラグ IS '延滞となった場合に未収残高証明書の対象外にするかの識別
期間延長を行ったかの識別（No.882）'
;
COMMENT ON COLUMN D31KYK_TBL.保険会社区分 IS '動産総合保険会社及び料率区分を識別するためのコード（No.043）'
;
COMMENT ON COLUMN D31KYK_TBL.動総保険料 IS '入力した保険料総額(採算計算時の参考値)'
;
COMMENT ON COLUMN D31KYK_TBL.動総付保開始年月日 IS '動産総合保険の開始年月日'
;
COMMENT ON COLUMN D31KYK_TBL.入力担当者コード IS '契約内容テーブル更新担当者コード'
;
COMMENT ON COLUMN D31KYK_TBL.請求取引先コード IS '請求先の取引先コード'
;
COMMENT ON COLUMN D31KYK_TBL.問合せ番号 IS '満了案内の問合せ番号  満了年月（６桁）＋連番（４桁）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース区分 IS '元になった再リース契約が全部再リースか一部再リースかを識別 コード仕様書（No.885）'
;
COMMENT ON COLUMN D31KYK_TBL.旧契約番号 IS '移行データの場合、新体系の契約番号（新規データは契約番号と同じ）'
;
COMMENT ON COLUMN D31KYK_TBL.購入選択権付リース区分 IS '購入選択権付きのリースであるか否かを識別 コード仕様書（No.833）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース申請書有無区分 IS '再リース申請書が必要か否かを識別  コード仕様書（No.902）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース申請フラグ IS '再リースの状態を表す  コード仕様書（No.903）'
;
COMMENT ON COLUMN D31KYK_TBL.承継申請フラグ IS '承継の状態を表す  コード仕様書（No.904）'
;
COMMENT ON COLUMN D31KYK_TBL.申請連番 IS '稟議番号の申請連番 稟議書に出力される'
;
COMMENT ON COLUMN D31KYK_TBL.リスケフラグ IS '契約がリスケされているかを識別する  コード仕様書（No.854）'
;
COMMENT ON COLUMN D31KYK_TBL.粗利益額_表 IS '適用金利での協調・斡旋総額の粗利額。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.お支払明細書作成済フラグ IS 'お支払明細書を月次処理にて作成したか否かを識別　コード仕様書（№905）'
;
COMMENT ON COLUMN D31KYK_TBL.お支払明細書要否 IS 'お支払明細書の印刷が必要か否かを識別　コード仕様書（№906）'
;
COMMENT ON COLUMN D31KYK_TBL.申請年月日 IS '申請の年月日'
;
COMMENT ON COLUMN D31KYK_TBL.対象元本額 IS '転幹事の時に、裏の分で採算計算をする際に対象となった元本の金額'
;
COMMENT ON COLUMN D31KYK_TBL.消費税率区分 IS '消費税区分　コード仕様書（№850）'
;
COMMENT ON COLUMN D31KYK_TBL.申請書出力年月日 IS '稟議書を出力した年月日'
;
COMMENT ON COLUMN D31KYK_TBL.再リース申請書出力年月日 IS '再リース申請書を出力した年月日（再リース）'
;
COMMENT ON COLUMN D31KYK_TBL.請求基準 IS '請求書の作成基準（通常、特別）　コード仕様書（No.868）を参照'
;
COMMENT ON COLUMN D31KYK_TBL.次回再リース回収サイト IS '次回再リース契約の回収サイト'
;
COMMENT ON COLUMN D31KYK_TBL.次回再リース回収日 IS '次回再リース契約の回収日'
;
COMMENT ON COLUMN D31KYK_TBL.雑費保守料 IS '雑費保守料'
;
COMMENT ON COLUMN D31KYK_TBL.雑費販促費 IS '雑費販促費'
;
COMMENT ON COLUMN D31KYK_TBL.雑費信用保険 IS '雑費信用保険'
;
COMMENT ON COLUMN D31KYK_TBL.雑費その他 IS '雑費その他'
;
COMMENT ON COLUMN D31KYK_TBL.徴求完了フラグ IS '徴求書類一覧作成済か否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.徴求完了取消フラグ IS '徴求書類一覧作成済を取消したか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.次回再リース区分 IS '次回の再リース契約が全部再リースか一部再リースかを識別 コード仕様書（No.885）'
;
COMMENT ON COLUMN D31KYK_TBL.契約書発行済フラグ IS '契約書が発行されていれば''1''、それ以外は''0'''
;
COMMENT ON COLUMN D31KYK_TBL.注文書発行済フラグ IS '注文書が発行されていれば''1''、それ以外は''0'''
;
COMMENT ON COLUMN D31KYK_TBL.その他発行済フラグ IS '上記以外でデフォルトになっている印刷物が発行されていれば''1''、それ以外は''0'''
;
COMMENT ON COLUMN D31KYK_TBL.営業コメント欄３ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.社内金利区分 IS '適用金利区分　コード仕様書（No.A33）を参照'
;
COMMENT ON COLUMN D31KYK_TBL.雑費調整額 IS '採算計算時の原価調整額'
;
COMMENT ON COLUMN D31KYK_TBL.オープンブラインド区分 IS '協調契約時、非幹事会社をｵｰﾌﾟﾝとするかﾌﾞﾗｲﾝﾄﾞとするかを識別'
;
COMMENT ON COLUMN D31KYK_TBL.協調回収区分 IS 'ｵｰﾌﾟﾝ契約時、非幹事会社がｴﾝﾄﾞﾕｰｻﾞに請求を行うかを識別'
;
COMMENT ON COLUMN D31KYK_TBL.単年度契約 IS '契約が単年度であるか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.バック取引 IS 'リースバック、割賦バック契約かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.否認区分 IS '否認リースを識別　コード仕様書（№C50）否認種類　0:通常　1:自己否認　2:税務否認　3:移行否認'
;
COMMENT ON COLUMN D31KYK_TBL.前渡金区分 IS '前渡金ありとするかを識別'
;
COMMENT ON COLUMN D31KYK_TBL.非課税区分 IS '非課税契約か否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.包括区分 IS '個別契約を包括契約とするかを識別　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D31KYK_TBL.海外設置区分 IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.物件コメント IS '物件確認基準を変更した場合に入力するコメント'
;
COMMENT ON COLUMN D31KYK_TBL.解約金計算方法 IS '規損金の計算方法　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D31KYK_TBL.搬入予定日 IS '搬入予定日　プログラムプロダクト契約時'
;
COMMENT ON COLUMN D31KYK_TBL.申請契約額加算フラグ IS '稟議書出力時、該当契約額を申請済与信残高に加算したか否かの区分'
;
COMMENT ON COLUMN D31KYK_TBL.紹介先取引先 IS '紹介先が取引先の場合、取引先コード'
;
COMMENT ON COLUMN D31KYK_TBL.紹介先契約先 IS '紹介先が契約先の場合、契約先コード'
;
COMMENT ON COLUMN D31KYK_TBL.紹介先ＢＴＭ IS '紹介先がＢＴＭの場合、銀行コード'
;
COMMENT ON COLUMN D31KYK_TBL.紹介先僚店 IS '紹介先が僚店の場合、部店コード'
;
COMMENT ON COLUMN D31KYK_TBL.紹介先銀行 IS '紹介先が他行、信金等からの場合、銀行コード'
;
COMMENT ON COLUMN D31KYK_TBL.紹介先支店 IS '紹介先が他行、信金等からの場合、支店コード'
;
COMMENT ON COLUMN D31KYK_TBL.請求日 IS '請求書発行日'
;
COMMENT ON COLUMN D31KYK_TBL.契約取消理由１ IS '契約取消時の取消理由　契約取消申請／報告書に表示'
;
COMMENT ON COLUMN D31KYK_TBL.契約取消理由２ IS '契約取消時の取消理由　契約取消申請／報告書に表示'
;
COMMENT ON COLUMN D31KYK_TBL.契約取消申請書発行済フラグ IS '契約取消申請書／報告書の発行済状態を管理'
;
COMMENT ON COLUMN D31KYK_TBL.決裁登録申請フラグ IS '決裁登録の状態を管理'
;
COMMENT ON COLUMN D31KYK_TBL.契約登録申請フラグ IS '契約登録の状態を管理'
;
COMMENT ON COLUMN D31KYK_TBL.検収登録申請フラグ IS '検収登録の状態を管理'
;
COMMENT ON COLUMN D31KYK_TBL.契約取消申請フラグ IS '契約取消依頼の状態を管理'
;
COMMENT ON COLUMN D31KYK_TBL.検収取消申請フラグ IS '検収取消依頼の状態を管理'
;
COMMENT ON COLUMN D31KYK_TBL.変更申請フラグ IS '内容変更申請がされているか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.変更フラグ IS '契約が内容変更をしたか否かを識別'
;
COMMENT ON COLUMN D31KYK_TBL.変更年月日 IS '内容変更が確定した年月日'
;
COMMENT ON COLUMN D31KYK_TBL.債務協調コード IS '債務協調コード　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D31KYK_TBL.一般大口区分 IS '１：一般　　２：大口'
;
COMMENT ON COLUMN D31KYK_TBL.制度リース IS '制度リースか否かを識別　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D31KYK_TBL.基本利回り総額分 IS '適用金利での協調・斡旋総額の基本利回り。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.実質利回り総額分 IS '適用金利での協調・斡旋総額の実質利回り。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.粗利額総額分 IS '適用金利での協調・斡旋総額の粗利額。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.一般社内金利 IS '社内金利（一般金利、社内金利区分が一般の場合も同値設定）'
;
COMMENT ON COLUMN D31KYK_TBL.一般基本利回り IS '一般金利での基本利回り（単独、当社持分）'
;
COMMENT ON COLUMN D31KYK_TBL.一般実質利回り IS '一般金利での実質利回り（単独、当社持分）'
;
COMMENT ON COLUMN D31KYK_TBL.一般粗利額 IS '一般金利での粗利額（単独、当社持分）'
;
COMMENT ON COLUMN D31KYK_TBL.一般基本利回り総額分 IS '一般金利での協調・斡旋総額の基本利回り。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.一般実質利回り総額分 IS '一般金利での協調・斡旋総額の実質利回り。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.一般粗利額自社分 IS '一般金利での協調・斡旋総額の粗利額。単独時はゼロ'
;
COMMENT ON COLUMN D31KYK_TBL.強制保存フラグ IS '稟議申請を強制的に保存したかを識別'
;
COMMENT ON COLUMN D31KYK_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D31KYK_TBL.登録時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D31KYK_TBL.登録担当者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D31KYK_TBL.転リース提携先コード IS '提携会社を識別する区分'
;
COMMENT ON COLUMN D31KYK_TBL.斡旋手数料 IS '提携会社で斡旋手数料を支払場合の斡旋手数料'
;
COMMENT ON COLUMN D31KYK_TBL.業務区分 IS 'ファクタリング用　 コード仕様書(No.B57)を参照'
;
COMMENT ON COLUMN D31KYK_TBL.買戻義務区分 IS 'ファクタリング用　 コード仕様書(No.B54)を参照'
;
COMMENT ON COLUMN D31KYK_TBL.代理回収 IS 'ファクタリング用　 コード仕様書(No.B53)を参照'
;
COMMENT ON COLUMN D31KYK_TBL.買取金額 IS 'ファクタリングの買取債権金額'
;
COMMENT ON COLUMN D31KYK_TBL.金利変動区分 IS '固定・変動'
;
COMMENT ON COLUMN D31KYK_TBL.連動金利区分 IS '非連動・短プラ・長プラ・ユーロ円・為尻・公定歩合・新長プラ等'
;
COMMENT ON COLUMN D31KYK_TBL.割引率 IS 'ファクタリングの割引料率'
;
COMMENT ON COLUMN D31KYK_TBL.貸付金額 IS '貸付金の貸付金額'
;
COMMENT ON COLUMN D31KYK_TBL.貸付金利 IS '貸付金の貸付金利'
;
COMMENT ON COLUMN D31KYK_TBL.資金使途区分 IS '運転資金等'
;
COMMENT ON COLUMN D31KYK_TBL.資金使途文言 IS '支払委託取引の資金使途'
;
COMMENT ON COLUMN D31KYK_TBL.支払委託取引形態 IS '支払委託取引の取引形態区分（二者間・三者間）。コード仕様書(No.XXX)を参照'
;
COMMENT ON COLUMN D31KYK_TBL.融資方法 IS '手貸・証貸'
;
COMMENT ON COLUMN D31KYK_TBL.返済条件 IS '元金均等・元利均等・一括・不均等'
;
COMMENT ON COLUMN D31KYK_TBL.リース種類区分 IS 'ﾘｰｽ会計基準開示でﾌｧｲﾅﾝｽとするかｵﾍﾟとするかを区分 コード仕様書（No.B74）'
;
COMMENT ON COLUMN D31KYK_TBL.資産科目区分 IS 'リース会計基準開示で分類すべき代表物件の資産科目を区分'
;
COMMENT ON COLUMN D31KYK_TBL.重要性基準区分 IS 'ﾘｰｽ会計基準開示で注記省略可の判定をおこなう重要性基準区分（０：無　１：有）'
;
COMMENT ON COLUMN D31KYK_TBL.前渡金金利 IS '前渡金ありの場合、適用した前渡金金利'
;
COMMENT ON COLUMN D31KYK_TBL.トリプルオプション方式 IS 'トリプルオプションレンタルの場合のみ、Ａ，Ｂ，Ｃの方式を設定する。'
;
COMMENT ON COLUMN D31KYK_TBL.引合中止区分 IS 'コード仕様書(No.B72)を参照'
;
COMMENT ON COLUMN D31KYK_TBL.内容変更申請連番 IS '内容変更申請の連番。内容変更時の申請連番'
;
COMMENT ON COLUMN D31KYK_TBL.承継分割種類 IS '承継機能により承継、請求先分割、契約分割のいずれを行ったかを示す（承継先）'
;
COMMENT ON COLUMN D31KYK_TBL.承継区分 IS '全部承継、一部承継の区別をしめす（承継先に付ける）'
;
COMMENT ON COLUMN D31KYK_TBL.満了条件区分 IS '満了時、条件あり／なしを識別'
;
COMMENT ON COLUMN D31KYK_TBL.第１回目回収日文言 IS '第１回回収日の表示用文言'
;
COMMENT ON COLUMN D31KYK_TBL.第２回目以降回収日文言 IS '２回目以降回収日の表示用文言'
;
COMMENT ON COLUMN D31KYK_TBL.譲渡条件付リース区分 IS '譲渡条件付契約か否かを示す。  コード仕様書（No.ｘｘｘ）'
;
COMMENT ON COLUMN D31KYK_TBL.残価回収サイト IS '残価回収サイト（満了からの経過期間）'
;
COMMENT ON COLUMN D31KYK_TBL.債権買取区分 IS 'レッサー地位譲渡方式を示す。'
;
COMMENT ON COLUMN D31KYK_TBL.支払基準月 IS '支払間隔の基準となる月'
;
COMMENT ON COLUMN D31KYK_TBL.損害賠償金文言 IS '契約書の表示する損害賠償金の文言'
;
COMMENT ON COLUMN D31KYK_TBL.流動化番号 IS '流動化債権の管理番号'
;
COMMENT ON COLUMN D31KYK_TBL.流動化先 IS '信託先コード'
;
COMMENT ON COLUMN D31KYK_TBL.信託先設定日 IS '信託設定日'
;
COMMENT ON COLUMN D31KYK_TBL.信託終了日 IS '信託終了日'
;
COMMENT ON COLUMN D31KYK_TBL.債権流動化区分 IS '債権流動化の長期、短期と譲渡担保を切り分ける（コード№xxxx）'
;
COMMENT ON COLUMN D31KYK_TBL.差入予約区分 IS '譲渡担保の予約と差入済を識別する（コード№xxxx差入予約区分）'
;
COMMENT ON COLUMN D31KYK_TBL.債権買取日 IS '債権（中古資産）の債権を買取った年月日'
;
COMMENT ON COLUMN D31KYK_TBL.相殺条項区分 IS '取引先との相殺条項がついている場合、抽出債権から除外するための区分'
;
COMMENT ON COLUMN D31KYK_TBL.譲渡禁止特約 IS '譲渡禁止特約がついている場合、抽出債権から除外するための区分'
;
COMMENT ON COLUMN D31KYK_TBL.先方契約番号 IS '協調非幹事の時、契約先コード場合、顧客と幹事会社間の契約番号'
;
COMMENT ON COLUMN D31KYK_TBL.再リース料分子 IS '再リース料フラグがその他料率の場合、料率の分子を設定'
;
COMMENT ON COLUMN D31KYK_TBL.再リース料分母 IS '再リース料フラグがその他料率の場合、料率の分母を設定'
;
COMMENT ON COLUMN D31KYK_TBL.営業コメント欄４ IS '未使用'
;
COMMENT ON COLUMN D31KYK_TBL.新規先区分 IS '新規取引先に対する契約の場合’１’　以外は’０’'
;
COMMENT ON COLUMN D31KYK_TBL.親密先区分 IS '親密取引先に対する契約の場合’１’　以外は’０’'
;
COMMENT ON COLUMN D31KYK_TBL.財務部金利 IS '財務部で管理する固有の金利'
;
COMMENT ON COLUMN D31KYK_TBL.一般前渡金金利 IS '金利マスタで規定される通常の前渡金金利'
;
COMMENT ON COLUMN D31KYK_TBL.決裁ランク IS '稟議申請時の決裁ランク。コード値（１；部店長裁量、９：未受付（本部裁量））。コード仕様書(No.734)を参照'
;
COMMENT ON COLUMN D31KYK_TBL.お礼状発行フラグ IS 'お礼状の発行有無（０：未　１：済）を管理する。（分割検収時、１契約でも対象としたら全ての契約を済にする）'
;
COMMENT ON COLUMN D31KYK_TBL.移行フラグ IS '移行データかを識別　０：新システムでエントリした契約　１：移行データ'
;
COMMENT ON COLUMN D31KYK_TBL.再リース申請条件区分 IS '再リース申請時に決裁が必要な場合に設定する。コード仕様書（No.B71）'
;
COMMENT ON COLUMN D31KYK_TBL.問い合わせ担当部店コード IS '満了処理時の問い合わせ先担当部店コード　コード仕様書（No.085）'
;
COMMENT ON COLUMN D31KYK_TBL.問い合わせ担当者名 IS '満了処理時の問い合わせ先担当者名（全角）'
;
COMMENT ON COLUMN D31KYK_TBL.再リース料支払予定日 IS '満了通知書表示用の再リース料支払予定日'
;
COMMENT ON COLUMN D31KYK_TBL.満了通知書回答期限 IS '満了通知書表示用の満了通知書回答期限'
;
COMMENT ON COLUMN D31KYK_TBL.申請区分 IS '契約を申請により作成したか、再申請により作成したかを識別する。コード仕様書（No.C22）'
;
COMMENT ON COLUMN D31KYK_TBL.内容申請書印刷回数 IS '内容変更申請書の印刷回数'
;
COMMENT ON COLUMN D31KYK_TBL.内容申請書印刷済フラグ IS '内容変更申請書の印刷状態　（１：印刷済　０：未印刷）'
;
COMMENT ON COLUMN D31KYK_TBL.契約件名自動登録区分 IS '契約件名を自動で設定するか否かを識別　コード仕様書（No.C33）'
;
COMMENT ON COLUMN D31KYK_TBL.返済原資 IS '稟議書に表示'
;
COMMENT ON COLUMN D31KYK_TBL.否認処理区分 IS '否認リースの会計処理方法を区分　コード仕様書（№C51）　'
;
COMMENT ON COLUMN D31KYK_TBL.解約理由 IS 'コード仕様書(No.068)を参照　承継種類　承継、請求分割、契約分割'
;
COMMENT ON COLUMN D31KYK_TBL.流動化先契約先コード IS '債権流動化の流動化先の契約先コード'
;
