DROP TABLE D33BUK_TBL;
CREATE TABLE D33BUK_TBL(
    契約番号                      CHAR(10)         NOT NULL,
    契約種類                      CHAR(3)          NOT NULL,
    物件番号                      NUMBER(4, 0)     NOT NULL,
    再リース回数                  NUMBER(2, 0)     NOT NULL,
    Ｆ型名                        CHAR(25)         NOT NULL,
    取得年月日                    CHAR(8)          NOT NULL,
    解約年月日                    CHAR(8)          NOT NULL,
    移動年月日                    CHAR(8)          NOT NULL,
    売廃年月日                    CHAR(8)          NOT NULL,
    状態フラグ                    CHAR(1)          NOT NULL,
    解約フラグ                    CHAR(1)          NOT NULL,
    移動フラグ                    CHAR(1)          NOT NULL,
    売廃フラグ                    CHAR(1)          NOT NULL,
    承継フラグ                    CHAR(1)          NOT NULL,
    解約申請フラグ                CHAR(1)          NOT NULL,
    解約理由                      CHAR(2)          NOT NULL,
    移動理由                      CHAR(2)          NOT NULL,
    売廃理由                      CHAR(2)          NOT NULL,
    製造者名                      VARCHAR2(60)     NOT NULL,
    取得価額                      NUMBER(13, 0)    NOT NULL,
    取得消費税額                  NUMBER(13, 0)    NOT NULL,
    相殺金額                      NUMBER(13, 0)    NOT NULL,
    相殺金額消費税                NUMBER(13, 0)    NOT NULL,
    相殺契約番号                  CHAR(10)         NOT NULL,
    差引金額                      NUMBER(13, 0)    NOT NULL,
    差引金額消費税                NUMBER(13, 0)    NOT NULL,
    残価設定額                    NUMBER(13, 0)    NOT NULL,
    資産種類                      CHAR(7)          NOT NULL,
    数量                          NUMBER(5, 0)     NOT NULL,
    単位                          CHAR(1)          NOT NULL,
    税法区分                      CHAR(1)          NOT NULL,
    耐用年数                      NUMBER(2, 0)     NOT NULL,
    物件種類                      CHAR(2)          NOT NULL,
    ソフト区分                    CHAR(1)          NOT NULL,
    少額資産区分                  CHAR(1)          NOT NULL,
    中古資産区分                  CHAR(1)          NOT NULL,
    会社償却区分                  CHAR(1)          NOT NULL,
    固定資産税区分                CHAR(1)          NOT NULL,
    信用保険区分                  CHAR(1)          NOT NULL,
    機械類分類コード              CHAR(2)          NOT NULL,
    ディーラ取引先コード          CHAR(9)          NOT NULL,
    ディーラコード                CHAR(5)          NOT NULL,
    支払サイト                    NUMBER(2, 0)     NOT NULL,
    支払日                        NUMBER(2, 0)     NOT NULL,
    支払方法                      CHAR(1)          NOT NULL,
    手形サイト                    NUMBER(3, 0)     NOT NULL,
    納付先コード                  CHAR(6)          NOT NULL,
    住所２                        VARCHAR2(60)     NOT NULL,
    住所３                        VARCHAR2(60)     NOT NULL,
    物件リース料                  NUMBER(13, 0)    NOT NULL,
    旧契約番号                    CHAR(10)         NOT NULL,
    旧物件番号                    NUMBER(4, 0)     NOT NULL,
    処分先取引先コード            CHAR(9)          NOT NULL,
    処分先コード                  CHAR(5)          NOT NULL,
    売却代金                      NUMBER(13, 0)    NOT NULL,
    売却代回収日                  CHAR(8)          NOT NULL,
    売却代回収方法                CHAR(1)          NOT NULL,
    保険事故フラグ                CHAR(1)          NOT NULL,
    保険事故回数                  NUMBER(3, 0)     NOT NULL,
    事故年月日                    CHAR(8)          NOT NULL,
    事故台数                      NUMBER(3, 0)     NOT NULL,
    ユーザ向値引額                NUMBER(13, 0)    NOT NULL,
    当社向値引額                  NUMBER(13, 0)    NOT NULL,
    分割年月日                    CHAR(8)          NOT NULL,
    定額_月額償却費               NUMBER(13, 0)    NOT NULL,
    定額_月額償却費端数           NUMBER(13, 0)    NOT NULL,
    見積物件番号                  NUMBER(4, 0)     NOT NULL,
    再リース予定フラグ            CHAR(1)          NOT NULL,
    再リース料金                  NUMBER(13, 0)    NOT NULL,
    再リース残価                  NUMBER(13, 0)    NOT NULL,
    旧物件料金                    NUMBER(13, 0)    NOT NULL,
    旧残価設定額                  NUMBER(13, 0)    NOT NULL,
    自他社区分                    CHAR(1)          NOT NULL,
    取引先コード                  CHAR(9)          NOT NULL,
    支払先コード                  CHAR(5)          NOT NULL,
    設置場所コード                CHAR(11)         NOT NULL,
    保険会社区分                  CHAR(4)          NOT NULL,
    定価                          NUMBER(13, 0)    NOT NULL,
    レンタル倍率                  NUMBER(5, 3)     NOT NULL,
    レンタル料                    NUMBER(13, 0)    NOT NULL,
    売廃エントリ日                CHAR(8)          NOT NULL,
    売廃処理年月                  CHAR(6)          NOT NULL,
    売廃取消区分                  CHAR(1)          NOT NULL,
    売廃取消エントリ日            CHAR(8)          NOT NULL,
    売廃取消処理年月              CHAR(6)          NOT NULL,
    解約処理年月                  CHAR(6)          NOT NULL,
    解約取消処理年月              CHAR(6)          NOT NULL,
    貯蔵品評価額                  NUMBER(13, 0)    NOT NULL,
    承継元契約番号                CHAR(10)         NOT NULL,
    承継元物件番号                NUMBER(4, 0)     NOT NULL,
    承継年月日                    CHAR(8)          NOT NULL,
    承継処理年月                  CHAR(6)          NOT NULL,
    処分予定                      CHAR(1)          NOT NULL,
    満了エントリ日                CHAR(8)          NOT NULL,
    満了処理年月                  CHAR(6)          NOT NULL,
    満了取消エントリ日            CHAR(8)          NOT NULL,
    満了取消処理年月              CHAR(6)          NOT NULL,
    解約区分                      CHAR(1)          NOT NULL,
    売廃区分                      CHAR(1)          NOT NULL,
    協調取引先コード              CHAR(9)          NOT NULL,
    協調支払先コード              CHAR(5)          NOT NULL,
    更新年月日                    CHAR(8)          NOT NULL,
    更新時間                      CHAR(8)          NOT NULL,
    更新者                        CHAR(8)          NOT NULL,
    連番                          NUMBER(3, 0)     NOT NULL,
    貯蔵品区分                    CHAR(1)          NOT NULL,
    取得額丸め単位                CHAR(1)          NOT NULL,
    リース料丸め単位              CHAR(1)          NOT NULL,
    分割元物件番号                NUMBER(4, 0)     NOT NULL,
    分割処理年月                  CHAR(6)          NOT NULL,
    委託保守料支払総額            NUMBER(13, 0)    NOT NULL,
    工事費等組込区分              CHAR(1)          NOT NULL,
    工事費等                      NUMBER(13, 0)    NOT NULL,
    海外設置場所区分              CHAR(1)          NOT NULL,
    保証会社                      CHAR(9)          NOT NULL,
    物件名称                      VARCHAR2(60)     NOT NULL,
    承継二次済フラグ              CHAR(1)          NOT NULL,
    他社購入額                    NUMBER(13, 0)    NOT NULL,
    委託保守区分                  CHAR(1)          NOT NULL,
    委託保守料月額料金            NUMBER(13, 0)    NOT NULL,
    物件処分区分                  CHAR(1)          NOT NULL,
    入力担当者コード              CHAR(8)          NOT NULL,
    郵便番号                      CHAR(7)          NOT NULL,
    物件処分連番                  NUMBER(3, 0)     NOT NULL,
    見積_見積番号_担当者          CHAR(2)          NOT NULL,
    見積_見積番号_連番            NUMBER(7, 0)     NOT NULL,
    見積_物件番号                 NUMBER(3, 0)     NOT NULL,
    二次契約予約フラグ            CHAR(1)          NOT NULL,
    登録番号                      CHAR(8)          NOT NULL,
    物件処分申請状態フラグ        CHAR(1)          NOT NULL,
    他社残価設定額                NUMBER(13, 0)    NOT NULL,
    他社再リース残価              NUMBER(13, 0)    NOT NULL,
    旧他社残価設定額              NUMBER(13, 0)    NOT NULL,
    物件処分申請連番              NUMBER(2, 0)     NOT NULL,
    承継予約フラグ                CHAR(1)          NOT NULL,
    再リース委託保守区分          CHAR(1)          NOT NULL,
    再リース委託保守料支払総額    NUMBER(13, 0)    NOT NULL,
    再リース委託保守料月額料金    NUMBER(13, 0)    NOT NULL,
    旧委託保守区分                CHAR(1)          NOT NULL,
    旧委託保守料支払総額          NUMBER(13, 0)    NOT NULL,
    旧委託保守料月額料金          NUMBER(13, 0)    NOT NULL,
    物件区分                      CHAR(2)          NOT NULL,
    種類区分                      CHAR(2)          NOT NULL,
    メーカー区分                  CHAR(3)          NOT NULL,
    機械番号                      CHAR(20)         NOT NULL,
    物件名カナ                    VARCHAR2(60)     NOT NULL,
    住所１                        VARCHAR2(60)     NOT NULL,
    設置場所名                    VARCHAR2(80)     NOT NULL,
    設置場所名カナ                VARCHAR2(80)     NOT NULL,
    短縮申請区分                  CHAR(1)          NOT NULL,
    残価区分                      CHAR(1)          NOT NULL,
    採算物件作成連番              NUMBER(4, 0)     NOT NULL,
    指定電子計算機                VARCHAR2(40)     NOT NULL,
    電子計算機所有者              VARCHAR2(40)     NOT NULL,
    物件分割申請フラグ            CHAR(1)          NOT NULL,
    償却資産税率                  NUMBER(10, 8)    NOT NULL,
    リファレンス番号１            CHAR(16)         NOT NULL,
    リファレンス番号２            CHAR(16)         NOT NULL,
    リファレンス番号３            CHAR(16)         NOT NULL,
    リファレンス番号４            CHAR(16)         NOT NULL,
    登録年月日                    CHAR(8)          NOT NULL,
    登録時間                      CHAR(8)          NOT NULL,
    登録担当者                    CHAR(8)          NOT NULL,
    税込残価設定額                NUMBER(13, 0)    NOT NULL,
    税込残価設定額他社            NUMBER(13, 0)    NOT NULL,
    物件リース料消費税            NUMBER(13, 0)    NOT NULL,
    他社購入区分                  CHAR(1)          NOT NULL,
    自社リース料                  NUMBER(13, 0)    NOT NULL,
    他社リース料                  NUMBER(13, 0)    NOT NULL,
    所有リース会社                CHAR(9)          NOT NULL,
    特例期間                      NUMBER(2, 0)     NOT NULL,
    特例率_分子                   NUMBER(2, 0)     NOT NULL,
    特例率_分母                   NUMBER(3, 0)     NOT NULL,
    特例課税標準額                NUMBER(13, 0)    NOT NULL,
    固税負担区分                  CHAR(1)          NOT NULL,
    固税税区分                    CHAR(1)          NOT NULL,
    債権買取区分                  CHAR(1)          NOT NULL,
    債権買取金額                  NUMBER(13, 0)    NOT NULL,
    売却委託手数料                NUMBER(13, 0)    NOT NULL,
    引取負担区分                  CHAR(1)          NOT NULL,
    引取費用                      NUMBER(13, 0)    NOT NULL,
    売却見積フラグ                CHAR(1)          NOT NULL,
    付保率                        NUMBER(2, 0)     NOT NULL,
    通知書発送日                  CHAR(8)          NOT NULL,
    符号                          CHAR(5)          NOT NULL,
    信用保険料                    NUMBER(13, 0)    NOT NULL,
    機種名番号                    CHAR(2)          NOT NULL,
    自社購入額                    NUMBER(13, 0)    NOT NULL,
    損害保険区分                  CHAR(1)          NOT NULL,
    賠償保険区分                  CHAR(1)          NOT NULL,
    解約取消年月日                CHAR(8)          NOT NULL,
    承継取消年月日                CHAR(8)          NOT NULL,
    承継取消処理年月              CHAR(6)          NOT NULL,
    動総率                        NUMBER(10, 8)    NOT NULL,
    保守区分                      CHAR(1)          NOT NULL,
    解約申請連番                  NUMBER(3, 0)     NOT NULL,
    当初残価設定額                NUMBER(13, 0)    NOT NULL,
    当初他社残価設定額            NUMBER(13, 0)    NOT NULL,
    自社残価設定額                NUMBER(13, 0)    NOT NULL,
    信用保険コード                CHAR(6)          NOT NULL,
    動総付保区分                  CHAR(1)          NOT NULL,
    貯蔵品識別区分                CHAR(1)          NOT NULL,
    非稼動資産固税申告区分        CHAR(1)          NOT NULL,
    CONSTRAINT PK32_1 PRIMARY KEY (契約番号, 契約種類, 物件番号)
) 
;


COMMENT ON TABLE D33BUK_TBL IS '物件'
;
COMMENT ON COLUMN D33BUK_TBL.契約番号 IS '契約番号'
;
COMMENT ON COLUMN D33BUK_TBL.契約種類 IS '契約種類'
;
COMMENT ON COLUMN D33BUK_TBL.物件番号 IS '物件番号'
;
COMMENT ON COLUMN D33BUK_TBL.再リース回数 IS '再リース回数'
;
COMMENT ON COLUMN D33BUK_TBL.Ｆ型名 IS '物件の型式 (信用保険時に必要)   '
;
COMMENT ON COLUMN D33BUK_TBL.取得年月日 IS '物件の取得日'
;
COMMENT ON COLUMN D33BUK_TBL.解約年月日 IS '物件の解約日'
;
COMMENT ON COLUMN D33BUK_TBL.移動年月日 IS '物件の移動日'
;
COMMENT ON COLUMN D33BUK_TBL.売廃年月日 IS '物件の売却日'
;
COMMENT ON COLUMN D33BUK_TBL.状態フラグ IS '物件の契約状態を識別する    コード仕様書(No.721)'
;
COMMENT ON COLUMN D33BUK_TBL.解約フラグ IS '物件が中途解約状態か否かを識別する    コード仕様書(No.722)'
;
COMMENT ON COLUMN D33BUK_TBL.移動フラグ IS '移動の物件を行ったか否かを識別する'
;
COMMENT ON COLUMN D33BUK_TBL.売廃フラグ IS '物件が売廃されているか否かを識別する    コード仕様書(No.703)'
;
COMMENT ON COLUMN D33BUK_TBL.承継フラグ IS '物件が承継または二次されたかを識別(元の物件に設定)'
;
COMMENT ON COLUMN D33BUK_TBL.解約申請フラグ IS '解約の申請中か否かを識別する   コード仕様書(No.736)'
;
COMMENT ON COLUMN D33BUK_TBL.解約理由 IS '解約の理由       コード仕様書(No.68)'
;
COMMENT ON COLUMN D33BUK_TBL.移動理由 IS '移動の理由       コード仕様書(No.34)'
;
COMMENT ON COLUMN D33BUK_TBL.売廃理由 IS '売却・廃棄の理由   コード仕様書(No.36)'
;
COMMENT ON COLUMN D33BUK_TBL.製造者名 IS '物件の製造者（製造会社） 全角'
;
COMMENT ON COLUMN D33BUK_TBL.取得価額 IS '物件の取得価格（全体）'
;
COMMENT ON COLUMN D33BUK_TBL.取得消費税額 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.相殺金額 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.相殺金額消費税 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.相殺契約番号 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.差引金額 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.差引金額消費税 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.残価設定額 IS '物件の残価'
;
COMMENT ON COLUMN D33BUK_TBL.資産種類 IS '物件の資産種類を識別するためのコード   コード仕様書(No.42)'
;
COMMENT ON COLUMN D33BUK_TBL.数量 IS '物件の数量'
;
COMMENT ON COLUMN D33BUK_TBL.単位 IS '物件の数量単位     コード仕様書(No.65)'
;
COMMENT ON COLUMN D33BUK_TBL.税法区分 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.耐用年数 IS '物件の法定耐用年数'
;
COMMENT ON COLUMN D33BUK_TBL.物件種類 IS '物件の種類を識別するｺｰﾄﾞ（資産種類（5)+物件種類(2) コード仕様書(No.86)'
;
COMMENT ON COLUMN D33BUK_TBL.ソフト区分 IS '物件がソフト資産か否かを識別する為の区分    コード仕様書(No.730)'
;
COMMENT ON COLUMN D33BUK_TBL.少額資産区分 IS '物件が少額資産か否かを識別する為の区分  コード仕様書(No.729)'
;
COMMENT ON COLUMN D33BUK_TBL.中古資産区分 IS '物件が中古資産か否かを識別する為の区分  コード仕様書(No.041)'
;
COMMENT ON COLUMN D33BUK_TBL.会社償却区分 IS '会社償却方法を識別する    コード仕様書(No.728)'
;
COMMENT ON COLUMN D33BUK_TBL.固定資産税区分 IS '固定資産税申告をするか否かを識別する為の区分(1：申告対象　０：申告対象外）'
;
COMMENT ON COLUMN D33BUK_TBL.信用保険区分 IS '信用保険を付保するか否かの識別  コード仕様書(No.???)'
;
COMMENT ON COLUMN D33BUK_TBL.機械類分類コード IS '信用保険付保の物件に対する機械分類コード   コード仕様書(No.46)'
;
COMMENT ON COLUMN D33BUK_TBL.ディーラ取引先コード IS '物件購入先の取引先コード'
;
COMMENT ON COLUMN D33BUK_TBL.ディーラコード IS '物件購入先の取引先の支払先コード'
;
COMMENT ON COLUMN D33BUK_TBL.支払サイト IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.支払日 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.支払方法 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.手形サイト IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.納付先コード IS '税納付先コード'
;
COMMENT ON COLUMN D33BUK_TBL.住所２ IS '物件保管場所の補助住所２'
;
COMMENT ON COLUMN D33BUK_TBL.住所３ IS '物件保管場所の補助住所３'
;
COMMENT ON COLUMN D33BUK_TBL.物件リース料 IS '物件リース料（月額）'
;
COMMENT ON COLUMN D33BUK_TBL.旧契約番号 IS '当物件の前契約番号'
;
COMMENT ON COLUMN D33BUK_TBL.旧物件番号 IS '当物件の前物件番号'
;
COMMENT ON COLUMN D33BUK_TBL.処分先取引先コード IS '物件処分先の取引先コード'
;
COMMENT ON COLUMN D33BUK_TBL.処分先コード IS '物件処分先の請求先コード'
;
COMMENT ON COLUMN D33BUK_TBL.売却代金 IS '物件毎の売却代金'
;
COMMENT ON COLUMN D33BUK_TBL.売却代回収日 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.売却代回収方法 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.保険事故フラグ IS '保険事故物件かを識別'
;
COMMENT ON COLUMN D33BUK_TBL.保険事故回数 IS 'リース期間を償却月数としてセット'
;
COMMENT ON COLUMN D33BUK_TBL.事故年月日 IS '保険事故年月日（解約年月日）'
;
COMMENT ON COLUMN D33BUK_TBL.事故台数 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.ユーザ向値引額 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.当社向値引額 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.分割年月日 IS '資産分割を行った日付'
;
COMMENT ON COLUMN D33BUK_TBL.定額_月額償却費 IS '減価償却費（月額）＝　（取得価額－残価設定額）／期間　　'
;
COMMENT ON COLUMN D33BUK_TBL.定額_月額償却費端数 IS '減価償却費（端数）　 項番66での切り捨てされた端数'
;
COMMENT ON COLUMN D33BUK_TBL.見積物件番号 IS '見積時の物件番号'
;
COMMENT ON COLUMN D33BUK_TBL.再リース予定フラグ IS '再リースの予定をしているか否かを識別する'
;
COMMENT ON COLUMN D33BUK_TBL.再リース料金 IS '再リース予定時の再リース料金'
;
COMMENT ON COLUMN D33BUK_TBL.再リース残価 IS '再リース予定時の再リース時の残価'
;
COMMENT ON COLUMN D33BUK_TBL.旧物件料金 IS '当物件の前契約時の物件リース料'
;
COMMENT ON COLUMN D33BUK_TBL.旧残価設定額 IS '当物件の前契約時の残価設定額'
;
COMMENT ON COLUMN D33BUK_TBL.自他社区分 IS '物件の所有が自社・他社・自他社であるかを識別　　　コード仕様書(No.96)'
;
COMMENT ON COLUMN D33BUK_TBL.取引先コード IS '支払先の取引先コード　　　コード仕様書(No.1)'
;
COMMENT ON COLUMN D33BUK_TBL.支払先コード IS '支払先の支払先コード　　　コード仕様書(No.123)'
;
COMMENT ON COLUMN D33BUK_TBL.設置場所コード IS '設置場所住所コード'
;
COMMENT ON COLUMN D33BUK_TBL.保険会社区分 IS '動産総合保険会社及び料金区分を識別する　　　コード仕様書(No.43)'
;
COMMENT ON COLUMN D33BUK_TBL.定価 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.レンタル倍率 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.レンタル料 IS 'レンタル料'
;
COMMENT ON COLUMN D33BUK_TBL.売廃エントリ日 IS '物件売廃の入力日'
;
COMMENT ON COLUMN D33BUK_TBL.売廃処理年月 IS '物件売廃の処理年月'
;
COMMENT ON COLUMN D33BUK_TBL.売廃取消区分 IS '物件売廃の取消を行ったか否かを識別'
;
COMMENT ON COLUMN D33BUK_TBL.売廃取消エントリ日 IS '物件売廃の取消入力日'
;
COMMENT ON COLUMN D33BUK_TBL.売廃取消処理年月 IS '物件売廃の取消処理年月'
;
COMMENT ON COLUMN D33BUK_TBL.解約処理年月 IS '解約の処理年月'
;
COMMENT ON COLUMN D33BUK_TBL.解約取消処理年月 IS '解約の処理年月'
;
COMMENT ON COLUMN D33BUK_TBL.貯蔵品評価額 IS '物件が貯蔵品となった時の評価額'
;
COMMENT ON COLUMN D33BUK_TBL.承継元契約番号 IS '承継契約の元となる契約番号'
;
COMMENT ON COLUMN D33BUK_TBL.承継元物件番号 IS '承継契約の元となる物件番号'
;
COMMENT ON COLUMN D33BUK_TBL.承継年月日 IS '承継契約の年月日'
;
COMMENT ON COLUMN D33BUK_TBL.承継処理年月 IS '承継契約の処理年月'
;
COMMENT ON COLUMN D33BUK_TBL.処分予定 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.満了エントリ日 IS '満了の入力日'
;
COMMENT ON COLUMN D33BUK_TBL.満了処理年月 IS '満了の処理日付'
;
COMMENT ON COLUMN D33BUK_TBL.満了取消エントリ日 IS '満了取消の入力日'
;
COMMENT ON COLUMN D33BUK_TBL.満了取消処理年月 IS '満了取消の処理日付'
;
COMMENT ON COLUMN D33BUK_TBL.解約区分 IS '中途解約時の処理単位(一部/全部)を識別　　　コード仕様書(No.67)'
;
COMMENT ON COLUMN D33BUK_TBL.売廃区分 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.協調取引先コード IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.協調支払先コード IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.更新年月日 IS '物件テーブルの更新日付'
;
COMMENT ON COLUMN D33BUK_TBL.更新時間 IS '物件テーブルの更新時刻'
;
COMMENT ON COLUMN D33BUK_TBL.更新者 IS '物件テーブルの更新したＰＧのＩＤ'
;
COMMENT ON COLUMN D33BUK_TBL.連番 IS '買掛の連番'
;
COMMENT ON COLUMN D33BUK_TBL.貯蔵品区分 IS '貯蔵品であるか否かを識別'
;
COMMENT ON COLUMN D33BUK_TBL.取得額丸め単位 IS '取得額のまるめ単位を識別する　　コード仕様書(No.39)'
;
COMMENT ON COLUMN D33BUK_TBL.リース料丸め単位 IS '金額のまるめ単位を識別する　　　　コード仕様書(No.39)'
;
COMMENT ON COLUMN D33BUK_TBL.分割元物件番号 IS '物件分割時の分割元の物件番号'
;
COMMENT ON COLUMN D33BUK_TBL.分割処理年月 IS '物件分割の処理年月'
;
COMMENT ON COLUMN D33BUK_TBL.委託保守料支払総額 IS '委託保守料の支払総額'
;
COMMENT ON COLUMN D33BUK_TBL.工事費等組込区分 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.工事費等 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.海外設置場所区分 IS '未使用'
;
COMMENT ON COLUMN D33BUK_TBL.保証会社 IS '残価設定時の保証会社の取引先コード'
;
COMMENT ON COLUMN D33BUK_TBL.物件名称 IS '物件名称(全角)'
;
COMMENT ON COLUMN D33BUK_TBL.承継二次済フラグ IS '物件が承継あるいは二次されたかを判断。(元の物件に設定される)'
;
COMMENT ON COLUMN D33BUK_TBL.他社購入額 IS '他社分の購入額'
;
COMMENT ON COLUMN D33BUK_TBL.委託保守区分 IS '委託保守付きの物件か否かを識別  コード仕様書(No.830)'
;
COMMENT ON COLUMN D33BUK_TBL.委託保守料月額料金 IS '委託保守相当月額料金(リース料に対するメンテ料相当分)'
;
COMMENT ON COLUMN D33BUK_TBL.物件処分区分 IS '物件の処分方法を識別する コード仕様書(No.71)'
;
COMMENT ON COLUMN D33BUK_TBL.入力担当者コード IS '物件テーブルの更新した担当者コード'
;
COMMENT ON COLUMN D33BUK_TBL.郵便番号 IS '物件設置場所の郵便番号(住所マスタの郵便番号と異なる場合に設定)'
;
COMMENT ON COLUMN D33BUK_TBL.物件処分連番 IS '売却連番／廃棄連番／処分連番のいずれか'
;
COMMENT ON COLUMN D33BUK_TBL.見積_見積番号_担当者 IS '採算計算（二次）にて当物件を使用予約された場合の二次契約の見積番号_担当者'
;
COMMENT ON COLUMN D33BUK_TBL.見積_見積番号_連番 IS '採算計算（二次）にて当物件を使用予約された場合の二次契約の見積番号_連番'
;
COMMENT ON COLUMN D33BUK_TBL.見積_物件番号 IS '採算計算（二次）にて当物件を使用予約された場合の二次契約の見積番号_物件番号'
;
COMMENT ON COLUMN D33BUK_TBL.二次契約予約フラグ IS '採算計算（二次）にて当物件を使用予約されたか否かを識別コード仕様書（№907）'
;
COMMENT ON COLUMN D33BUK_TBL.登録番号 IS 'マッチングは下7桁でおこなう'
;
COMMENT ON COLUMN D33BUK_TBL.物件処分申請状態フラグ IS '物件処分の状態を識別する'
;
COMMENT ON COLUMN D33BUK_TBL.他社残価設定額 IS '物件の残価(協調の他社持ち分)'
;
COMMENT ON COLUMN D33BUK_TBL.他社再リース残価 IS '再リース予定時の再リース時の残価(協調の他社持ち分)'
;
COMMENT ON COLUMN D33BUK_TBL.旧他社残価設定額 IS '当物件の前契約時の残価設定額(協調の他社持ち分)'
;
COMMENT ON COLUMN D33BUK_TBL.物件処分申請連番 IS '物件処分申請時の申請連番'
;
COMMENT ON COLUMN D33BUK_TBL.承継予約フラグ IS '承継にて当物件を使用予約されたか否かを識別(承継元物件に設定)'
;
COMMENT ON COLUMN D33BUK_TBL.再リース委託保守区分 IS '再リース予定時の再リース時の委託保守区分'
;
COMMENT ON COLUMN D33BUK_TBL.再リース委託保守料支払総額 IS '再リース予定時の再リース時の委託保守支払総額'
;
COMMENT ON COLUMN D33BUK_TBL.再リース委託保守料月額料金 IS '再リース予定時の再リース時の委託保守料月額料金'
;
COMMENT ON COLUMN D33BUK_TBL.旧委託保守区分 IS '当物件の前契約時の委託保守区分'
;
COMMENT ON COLUMN D33BUK_TBL.旧委託保守料支払総額 IS '当物件の前契約時の委託保守料支払総額'
;
COMMENT ON COLUMN D33BUK_TBL.旧委託保守料月額料金 IS '当物件の前契約時の委託保守料月額料金'
;
COMMENT ON COLUMN D33BUK_TBL.物件区分 IS '物件コードの物件区分'
;
COMMENT ON COLUMN D33BUK_TBL.種類区分 IS '物件コードの種類区分'
;
COMMENT ON COLUMN D33BUK_TBL.メーカー区分 IS 'メーカー区分'
;
COMMENT ON COLUMN D33BUK_TBL.機械番号 IS '機械番号'
;
COMMENT ON COLUMN D33BUK_TBL.物件名カナ IS '物件名カナ（半角）'
;
COMMENT ON COLUMN D33BUK_TBL.住所１ IS '物件保管場所の補助住所１'
;
COMMENT ON COLUMN D33BUK_TBL.設置場所名 IS '設置場所名'
;
COMMENT ON COLUMN D33BUK_TBL.設置場所名カナ IS '設置場所名カナ（半角）'
;
COMMENT ON COLUMN D33BUK_TBL.短縮申請区分 IS '耐用年数を資産種類に定義されている耐用年数と変える場合に指定する'
;
COMMENT ON COLUMN D33BUK_TBL.残価区分 IS '残価の種類　コード仕様書（№xxx）'
;
COMMENT ON COLUMN D33BUK_TBL.採算物件作成連番 IS '採算物件から作成した物件連番（見積物件番号内の連番。連番＝１は採算登録物件）。'
;
COMMENT ON COLUMN D33BUK_TBL.指定電子計算機 IS 'プログラムプロダクト契約の場合、機種名（全角）を指定する'
;
COMMENT ON COLUMN D33BUK_TBL.電子計算機所有者 IS 'プログラムプロダクト契約の場合、所有者名（全角）を指定する'
;
COMMENT ON COLUMN D33BUK_TBL.物件分割申請フラグ IS '物件分割申請中かを識別する'
;
COMMENT ON COLUMN D33BUK_TBL.償却資産税率 IS '固定資産税の納付用の税率'
;
COMMENT ON COLUMN D33BUK_TBL.リファレンス番号１ IS 'リファレンス№１'
;
COMMENT ON COLUMN D33BUK_TBL.リファレンス番号２ IS 'リファレンス№２'
;
COMMENT ON COLUMN D33BUK_TBL.リファレンス番号３ IS 'リファレンス№３'
;
COMMENT ON COLUMN D33BUK_TBL.リファレンス番号４ IS 'リファレンス№４'
;
COMMENT ON COLUMN D33BUK_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D33BUK_TBL.登録時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D33BUK_TBL.登録担当者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D33BUK_TBL.税込残価設定額 IS '税込みの残価設定額(否認リースで使用)  ※購入額消費税との差額は最終物件で調整'
;
COMMENT ON COLUMN D33BUK_TBL.税込残価設定額他社 IS '税込みの残価設定額(否認リースで使用) 他社 ※購入額消費税との差額は最終物件で調整'
;
COMMENT ON COLUMN D33BUK_TBL.物件リース料消費税 IS '物件リース料（月額）に対する消費税'
;
COMMENT ON COLUMN D33BUK_TBL.他社購入区分 IS '他社が購入する物件かの識別を行う　コード仕様（No.701）購入区分'
;
COMMENT ON COLUMN D33BUK_TBL.自社リース料 IS '物件リース料（月額）の自社持分'
;
COMMENT ON COLUMN D33BUK_TBL.他社リース料 IS '物件リース料（月額）の他社持分'
;
COMMENT ON COLUMN D33BUK_TBL.所有リース会社 IS '物件の所有社（取引先コード）'
;
COMMENT ON COLUMN D33BUK_TBL.特例期間 IS '固定資産税申告の特例期間'
;
COMMENT ON COLUMN D33BUK_TBL.特例率_分子 IS '固定資産税申告の特例率の分子'
;
COMMENT ON COLUMN D33BUK_TBL.特例率_分母 IS '固定資産税申告の特例率の分母'
;
COMMENT ON COLUMN D33BUK_TBL.特例課税標準額 IS '固定資産税申告の特例対象の課税標準額'
;
COMMENT ON COLUMN D33BUK_TBL.固税負担区分 IS '固税負担が当社かユーザかを判断する区分（コード№044）'
;
COMMENT ON COLUMN D33BUK_TBL.固税税区分 IS '固定資産税申告の課税・非課税・不動産などを判定（コード№B25）'
;
COMMENT ON COLUMN D33BUK_TBL.債権買取区分 IS '債権買取の区分'
;
COMMENT ON COLUMN D33BUK_TBL.債権買取金額 IS '物件ごとの債権買取時の金額（簿価）'
;
COMMENT ON COLUMN D33BUK_TBL.売却委託手数料 IS '物件売却時の委託手数料'
;
COMMENT ON COLUMN D33BUK_TBL.引取負担区分 IS '物件の引取費用の負担区分（０：当社、１：ユーザー）'
;
COMMENT ON COLUMN D33BUK_TBL.引取費用 IS '物件の引取費用 '
;
COMMENT ON COLUMN D33BUK_TBL.売却見積フラグ IS '売却見積対象か否かを識別　'
;
COMMENT ON COLUMN D33BUK_TBL.付保率 IS '再リース時の動総保険の付保率 '
;
COMMENT ON COLUMN D33BUK_TBL.通知書発送日 IS '信用保険の通知書発送日'
;
COMMENT ON COLUMN D33BUK_TBL.符号 IS '信用保険の符号'
;
COMMENT ON COLUMN D33BUK_TBL.信用保険料 IS '信用保険料'
;
COMMENT ON COLUMN D33BUK_TBL.機種名番号 IS '信用保険の機種コード'
;
COMMENT ON COLUMN D33BUK_TBL.自社購入額 IS '自社分の購入額'
;
COMMENT ON COLUMN D33BUK_TBL.損害保険区分 IS '損害保険の種類を指定する'
;
COMMENT ON COLUMN D33BUK_TBL.賠償保険区分 IS '賠償保険の種類を指定する'
;
COMMENT ON COLUMN D33BUK_TBL.解約取消年月日 IS '解約取消の処理を行った年月日'
;
COMMENT ON COLUMN D33BUK_TBL.承継取消年月日 IS '承継取消の処理を行った年月日'
;
COMMENT ON COLUMN D33BUK_TBL.承継取消処理年月 IS '承継取消の確定処理が行われた年月'
;
COMMENT ON COLUMN D33BUK_TBL.動総率 IS '動産総合保険の保険料率'
;
COMMENT ON COLUMN D33BUK_TBL.保守区分 IS '物件に対する保守の種類を識別する。コード仕様書（No.B41）'
;
COMMENT ON COLUMN D33BUK_TBL.解約申請連番 IS '物件が解約申請された時の同一契約内での解約履歴通し連番。この物件が解約された解約履歴への紐付けとなる'
;
COMMENT ON COLUMN D33BUK_TBL.当初残価設定額 IS '（二次リースとなった後など）原契約における残価設定額を保存する。物件分割があれば相当の額に按分'
;
COMMENT ON COLUMN D33BUK_TBL.当初他社残価設定額 IS '（二次リースとなった後など）原契約における他社残価設定額を保存する。物件分割があれば相当の額に按分'
;
COMMENT ON COLUMN D33BUK_TBL.自社残価設定額 IS '物件の自社持ち分の残価設定額'
;
COMMENT ON COLUMN D33BUK_TBL.信用保険コード IS '信用保険を分類するコード（１桁目：付保区分、２桁目：ﾘｰｽ・割賦区分、3～4桁目：機械区分、5～6桁目：機種区分）'
;
COMMENT ON COLUMN D33BUK_TBL.動総付保区分 IS '動総保険を付保するか否かの識別'
;
COMMENT ON COLUMN D33BUK_TBL.貯蔵品識別区分 IS '貯蔵品対象かどうかを識別する区分'
;
COMMENT ON COLUMN D33BUK_TBL.非稼動資産固税申告区分 IS '非稼動資産の固定資産税申告対象かどうかを識別する区分'
;
