DROP TABLE D411STK_TBL CASCADE CONSTRAINTS
;
-- 
-- TABLE: D411STK_TBL 
--

CREATE TABLE D411STK_TBL(
    契約番号              CHAR(10)         NOT NULL,
    再リース回数          NUMBER(2, 0)     NOT NULL,
    契約種類              CHAR(3)          NOT NULL,
    連番                  NUMBER(3, 0)     NOT NULL,
    消費税率              NUMBER(10, 8)    NOT NULL,
    消費税率区分          CHAR(2)          NOT NULL,
    売上年月              CHAR(6)          NOT NULL,
    売上額                NUMBER(13, 0)    NOT NULL,
    売上消費税            NUMBER(13, 0)    NOT NULL,
    売上消費税補正額      NUMBER(13, 0)    NOT NULL,
    取引先コード          CHAR(9)          NOT NULL,
    請求先コード          CHAR(5)          NOT NULL,
    請求年月日            CHAR(8)          NOT NULL,
    請求額                NUMBER(13, 0)    NOT NULL,
    請求消費税            NUMBER(13, 0)    NOT NULL,
    請求消費税補正額      NUMBER(13, 0)    NOT NULL,
    回収予定日            CHAR(8)          NOT NULL,
    回収年月日            CHAR(8)          NOT NULL,
    回収額                NUMBER(13, 0)    NOT NULL,
    回収額消費税          NUMBER(13, 0)    NOT NULL,
    請求書発行済フラグ    CHAR(1)          NOT NULL,
    更新年月日            CHAR(8)          NOT NULL,
    更新時間              CHAR(8)          NOT NULL,
    更新者                CHAR(8)          NOT NULL,
    請求書発行日          CHAR(8)          NOT NULL,
    請求書番号            NUMBER(7, 0)     NOT NULL,
    未回収額              NUMBER(13, 0)    NOT NULL,
    委託保守区分          CHAR(1)          NOT NULL,
    委託保守料            NUMBER(13, 0)    NOT NULL,
    委託保守消費税        NUMBER(13, 0)    NOT NULL,
    請求契約番号          CHAR(15)         NOT NULL,
    回収方法              CHAR(1)          NOT NULL,
    入力担当者コード      CHAR(8)          NOT NULL,
    手形受取フラグ        CHAR(1)          NOT NULL,
    他社回収額            NUMBER(13, 0)    NOT NULL,
    他社回収額消費税      NUMBER(13, 0)    NOT NULL,
    自社請求額            NUMBER(13, 0)    NOT NULL,
    自社請求消費税        NUMBER(13, 0)    NOT NULL,
    請求内訳コード        CHAR(3)          NOT NULL,
    利息請求内訳コード    CHAR(3)          NOT NULL,
    消込通番              CHAR(11)         NOT NULL,
    履歴連番              NUMBER(2, 0)     NOT NULL,
    売上債権残            NUMBER(13, 0)    NOT NULL,
    売上債権残調整        NUMBER(13, 0)    NOT NULL,
    請求債権残            NUMBER(13, 0)    NOT NULL,
    請求債権残調整        NUMBER(13, 0)    NOT NULL,
    自社請求債権残        NUMBER(13, 0)    NOT NULL,
    自社請求債権残調整    NUMBER(13, 0)    NOT NULL,
    請求元本              NUMBER(13, 0)    NOT NULL,
    請求利息              NUMBER(13, 0)    NOT NULL,
    請求元本残高          NUMBER(13, 0)    NOT NULL,
    元本回収額            NUMBER(13, 0)    NOT NULL,
    利息回収額            NUMBER(13, 0)    NOT NULL,
    自社固定資産税        NUMBER(13, 0)    NOT NULL,
    自社動総保険料        NUMBER(13, 0)    NOT NULL,
    自社委託保守料        NUMBER(13, 0)    NOT NULL,
    自社売上元本          NUMBER(13, 0)    NOT NULL,
    自社売上利息          NUMBER(13, 0)    NOT NULL,
    自社売上元本残高      NUMBER(13, 0)    NOT NULL,
    収益展開利回り        NUMBER(10, 8)    NOT NULL,
    自社売上元本調整      NUMBER(13, 0)    NOT NULL,
    自社分支払利息適用    NUMBER(13, 0)    NOT NULL,
    自社分支払利息一般    NUMBER(13, 0)    NOT NULL,
    金利                  NUMBER(10, 8)    NOT NULL,
    返済年月日            CHAR(8)          NOT NULL,
    期間月数              NUMBER(3, 0)     NOT NULL,
    期間日数              NUMBER(3, 0)     NOT NULL,
    利息計算開始日        CHAR(8)          NOT NULL,
    利息計算終了日        CHAR(8)          NOT NULL,
    自社回収額            NUMBER(13, 0)    NOT NULL,
    自社回収消費税        NUMBER(13, 0)    NOT NULL,
    登録年月日            CHAR(8)          NOT NULL,
    登録時間              CHAR(8)          NOT NULL,
    登録担当者            CHAR(8)          NOT NULL,
    初回入金日            CHAR(8)          NOT NULL,
    前払充当区分          CHAR(1)          NOT NULL,
    請求回                NUMBER(3, 0)     NOT NULL,
    消込年月日            CHAR(8)          NOT NULL,
    他社請求額            NUMBER(13, 0)    NOT NULL,
    他社請求額消費税      NUMBER(13, 0)    NOT NULL,
    自社その他諸費用      NUMBER(13, 0)    NOT NULL,
    CONSTRAINT PK13_8 PRIMARY KEY (契約番号, 再リース回数, 契約種類, 連番)
) 
;


COMMENT ON TABLE D411STK_TBL IS '債権展開'
;
COMMENT ON COLUMN D411STK_TBL.契約番号 IS 'コード仕様書（No.056）'
;
COMMENT ON COLUMN D411STK_TBL.再リース回数 IS '契約の再リース回数'
;
COMMENT ON COLUMN D411STK_TBL.契約種類 IS 'コード仕様書（No.040）'
;
COMMENT ON COLUMN D411STK_TBL.連番 IS '債権内の連番'
;
COMMENT ON COLUMN D411STK_TBL.消費税率 IS '請求書の消費税の税率  Ex) ５％の時 0.05をｾｯﾄ'
;
COMMENT ON COLUMN D411STK_TBL.消費税率区分 IS '請求額の消費税区分'
;
COMMENT ON COLUMN D411STK_TBL.売上年月 IS '契約の売上年月'
;
COMMENT ON COLUMN D411STK_TBL.売上額 IS '契約の売上額    協調の時、全体売上額　'
;
COMMENT ON COLUMN D411STK_TBL.売上消費税 IS '売上額の消費税'
;
COMMENT ON COLUMN D411STK_TBL.売上消費税補正額 IS '売上額の消費税を補正する額'
;
COMMENT ON COLUMN D411STK_TBL.取引先コード IS 'コード仕様書（No.001）'
;
COMMENT ON COLUMN D411STK_TBL.請求先コード IS 'コード仕様書（No.012）'
;
COMMENT ON COLUMN D411STK_TBL.請求年月日 IS '契約の請求年月日    （請求予定日）'
;
COMMENT ON COLUMN D411STK_TBL.請求額 IS '契約の請求額      協調の時、全体の請求額'
;
COMMENT ON COLUMN D411STK_TBL.請求消費税 IS '請求額の消費税'
;
COMMENT ON COLUMN D411STK_TBL.請求消費税補正額 IS '請求額の消費税を補正する額'
;
COMMENT ON COLUMN D411STK_TBL.回収予定日 IS '契約の回収予定日'
;
COMMENT ON COLUMN D411STK_TBL.回収年月日 IS '入金された日（入金日）。複数回の入金が合った場合には日付が新しい日が設定される。'
;
COMMENT ON COLUMN D411STK_TBL.回収額 IS '契約の回収額'
;
COMMENT ON COLUMN D411STK_TBL.回収額消費税 IS '契約の回収額の消費税'
;
COMMENT ON COLUMN D411STK_TBL.請求書発行済フラグ IS 'コード仕様書（No.951）'
;
COMMENT ON COLUMN D411STK_TBL.更新年月日 IS 'データを作成、更新した年月日'
;
COMMENT ON COLUMN D411STK_TBL.更新時間 IS 'データを作成、更新した時間'
;
COMMENT ON COLUMN D411STK_TBL.更新者 IS 'データを作成、更新したプログラムＩＤ'
;
COMMENT ON COLUMN D411STK_TBL.請求書発行日 IS '請求書を発行した年月日'
;
COMMENT ON COLUMN D411STK_TBL.請求書番号 IS '請求書番号'
;
COMMENT ON COLUMN D411STK_TBL.未回収額 IS '請求額に対する最新の未回収額　'
;
COMMENT ON COLUMN D411STK_TBL.委託保守区分 IS 'コード仕様書(No.830)'
;
COMMENT ON COLUMN D411STK_TBL.委託保守料 IS '債権単位の委託保守料'
;
COMMENT ON COLUMN D411STK_TBL.委託保守消費税 IS '債権単位の委託保守消費税'
;
COMMENT ON COLUMN D411STK_TBL.請求契約番号 IS '契約番号'
;
COMMENT ON COLUMN D411STK_TBL.回収方法 IS 'コード仕様書(No.017)'
;
COMMENT ON COLUMN D411STK_TBL.入力担当者コード IS 'コード仕様書(No.126)'
;
COMMENT ON COLUMN D411STK_TBL.手形受取フラグ IS '回収方法が手形の時のみ　コード仕様書(No.964)'
;
COMMENT ON COLUMN D411STK_TBL.他社回収額 IS '協調(幹事)の場合、他社売上に対する回収額。(他社→自社の順に回収する)'
;
COMMENT ON COLUMN D411STK_TBL.他社回収額消費税 IS '協調(幹事)の場合、他社売上に対する回収額消費税'
;
COMMENT ON COLUMN D411STK_TBL.自社請求額 IS '協調(幹事)の場合、請求額（全体）の内の自社持分（総額　－　非幹事分）　'
;
COMMENT ON COLUMN D411STK_TBL.自社請求消費税 IS '協調(幹事)の場合、請求消費税（全体）の内の自社持分（総額　－　非幹事分）（補正を含む）　'
;
COMMENT ON COLUMN D411STK_TBL.請求内訳コード IS '請求情報の内容で自動仕訳に関連する対応科目を識別する。'
;
COMMENT ON COLUMN D411STK_TBL.利息請求内訳コード IS '利息分の請求内訳コード。（貸付金のみ設定）'
;
COMMENT ON COLUMN D411STK_TBL.消込通番 IS '入金消込を行った際にセットされる最新の消込通番'
;
COMMENT ON COLUMN D411STK_TBL.履歴連番 IS '再リースエントリでの履歴連番を設定する。'
;
COMMENT ON COLUMN D411STK_TBL.売上債権残 IS '売上の債権残　総額'
;
COMMENT ON COLUMN D411STK_TBL.売上債権残調整 IS '解約等による当月売上債権残の変動額。'
;
COMMENT ON COLUMN D411STK_TBL.請求債権残 IS '請求額の月初約定残高'
;
COMMENT ON COLUMN D411STK_TBL.請求債権残調整 IS '解約、リスケ等による当月請求債権残高の変動額（今回債権残は調整済みの金額）　通常回は０'
;
COMMENT ON COLUMN D411STK_TBL.自社請求債権残 IS '自社請求額の月初約定残高'
;
COMMENT ON COLUMN D411STK_TBL.自社請求債権残調整 IS '解約、リスケ等による当月自社請求債権残高の変動額（今回債権残は調整済みの金額）　通常回は０'
;
COMMENT ON COLUMN D411STK_TBL.請求元本 IS '請求元本　（請求書記載）　貸付金のみ設定'
;
COMMENT ON COLUMN D411STK_TBL.請求利息 IS '請求利息　（請求書記載）　貸付金のみ設定'
;
COMMENT ON COLUMN D411STK_TBL.請求元本残高 IS '当月元本回収前の元本残高（約定月初元本残）　貸付金のみ設定'
;
COMMENT ON COLUMN D411STK_TBL.元本回収額 IS '元本の回収実績　貸付金のみ設定'
;
COMMENT ON COLUMN D411STK_TBL.利息回収額 IS '利息の回収実績　貸付金のみ設定'
;
COMMENT ON COLUMN D411STK_TBL.自社固定資産税 IS '諸費用固定資産分　自社分　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.自社動総保険料 IS '諸費用動総保険料分　自社分　　　　　　　　　　　　　　　　　　　　　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.自社委託保守料 IS '諸費用委託保守料分　自社分　　　　　　　　　　　　　　　　　　　　　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.自社売上元本 IS '自社売上額ベースに対する元本内入額　　　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.自社売上利息 IS '自社売上額ベースに対する利息回収額　　　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.自社売上元本残高 IS '自社売上額ベースに対する元本残高　　　　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.収益展開利回り IS '今回自社売上利息の計算に用いた利回り'
;
COMMENT ON COLUMN D411STK_TBL.自社売上元本調整 IS '解約等で発生した今回自社売上元本残高の調整額（売上元本残高には調整済みの値を設定）'
;
COMMENT ON COLUMN D411STK_TBL.自社分支払利息適用 IS '月初元本に対する適用社内金利による支払利息金額  自社分　　　　　　　　　売上額対応、自社分、適用金利'
;
COMMENT ON COLUMN D411STK_TBL.自社分支払利息一般 IS '月初元本に対する一般社内金利による支払利息金額　自社分　　　　　　　　　売上額対応、自社分、一般金利'
;
COMMENT ON COLUMN D411STK_TBL.金利 IS '当月利息計算に使用した金利（基本利回り）（貸付用）'
;
COMMENT ON COLUMN D411STK_TBL.返済年月日 IS '返済日（貸付用）'
;
COMMENT ON COLUMN D411STK_TBL.期間月数 IS '利息計算期間の月数（貸付用）'
;
COMMENT ON COLUMN D411STK_TBL.期間日数 IS '利息計算期間の日数（貸付用）'
;
COMMENT ON COLUMN D411STK_TBL.利息計算開始日 IS '利息計算の開始日　（貸付用）'
;
COMMENT ON COLUMN D411STK_TBL.利息計算終了日 IS '利息計算の終了日　（貸付用）'
;
COMMENT ON COLUMN D411STK_TBL.自社回収額 IS '協調(幹事)の場合、回収額（全体）の内の自社持分（総額　－　非幹事分）　'
;
COMMENT ON COLUMN D411STK_TBL.自社回収消費税 IS '協調(幹事)の場合、回収消費税（全体）の内の自社持分（総額　－　非幹事分）（補正を含む）　'
;
COMMENT ON COLUMN D411STK_TBL.登録年月日 IS '初期登録を行った年月日'
;
COMMENT ON COLUMN D411STK_TBL.登録時間 IS '初期登録を行った時間'
;
COMMENT ON COLUMN D411STK_TBL.登録担当者 IS '初期登録を行った入力者の担当者コード'
;
COMMENT ON COLUMN D411STK_TBL.初回入金日 IS '当債権に対して最初に入金された年月日。複数の入金があった場合でも最初の入金日を持つ'
;
COMMENT ON COLUMN D411STK_TBL.前払充当区分 IS '前払金で充当（消費税含む）する回か否かを示す。０：充当なし（通常）　１：前払充当回'
;
COMMENT ON COLUMN D411STK_TBL.請求回 IS '請求額が０でない回の先頭からの連番。請求額が０の回には"０”を設定。'
;
COMMENT ON COLUMN D411STK_TBL.消込年月日 IS '入金消込を行った年月日。'
;
COMMENT ON COLUMN D411STK_TBL.他社請求額 IS '請求額のうち他社分　（持分請求の場合は設定せず）'
;
COMMENT ON COLUMN D411STK_TBL.他社請求額消費税 IS '請求額消費税のうち他社分　（持分請求の場合は設定せず）'
;
COMMENT ON COLUMN D411STK_TBL.自社その他諸費用 IS 'その他諸費用　自社分　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　売上額対応、自社分、適用金利'
;
