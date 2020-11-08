DROP TABLE D021KYS_TBL CASCADE CONSTRAINTS
;
-- 
-- TABLE: D021KYS_TBL 
--

CREATE TABLE D021KYS_TBL(
    取引先コード                    CHAR(9)         NOT NULL,
    契約先コード                    CHAR(5)         NOT NULL,
    契約先名称                      VARCHAR2(80)    NOT NULL,
    部門名称                        VARCHAR2(60)    NOT NULL,
    客先担当者                      VARCHAR2(20)    NOT NULL,
    郵便番号                        CHAR(7)         NOT NULL,
    市町村コード                    CHAR(11)        NOT NULL,
    住所２                          VARCHAR2(60)    NOT NULL,
    住所３                          VARCHAR2(60)    NOT NULL,
    電話番号                        CHAR(15)        NOT NULL,
    更新日時                        CHAR(16)        NOT NULL,
    更新者                          CHAR(8)         NOT NULL,
    部門カナ名称                    VARCHAR2(30)    NOT NULL,
    顧客使用不可フラグ              CHAR(1)         NOT NULL,
    コメント欄                      VARCHAR2(60)    NOT NULL,
    入力担当者コード                CHAR(8)         NOT NULL,
    主担当部課コード                CHAR(4)         NOT NULL,
    現担当者                        CHAR(8)         NOT NULL,
    ＦＡＸ番号                      CHAR(15)        NOT NULL,
    住所１                          VARCHAR2(60)    NOT NULL,
    住所カナ名称                    VARCHAR2(60)    NOT NULL,
    特定動総保険料率使用区分        CHAR(1)         NOT NULL,
    再リース計算率区分              CHAR(1)         NOT NULL,
    再リース料率分子                NUMBER(4, 0)    NOT NULL,
    再リース料率分母                NUMBER(4, 0)    NOT NULL,
    再リース計算単位区分            CHAR(1)         NOT NULL,
    再リース計算方式区分            CHAR(1)         NOT NULL,
    満了通知明細書発行区分          CHAR(1)         NOT NULL,
    再リース自動更新フラグ          CHAR(1)         NOT NULL,
    満了条件区分                    CHAR(1)         NOT NULL,
    登録年月日                      CHAR(8)         NOT NULL,
    登録時間                        CHAR(8)         NOT NULL,
    登録担当者                      CHAR(8)         NOT NULL,
    更新年月日                      CHAR(8)         NOT NULL,
    更新時間                        CHAR(8)         NOT NULL,
    NetLeasing区分                  CHAR(1)         NOT NULL,
    売掛金債権手形譲渡基本契約日    CHAR(8)         NOT NULL,
    旧ユーザーコード                CHAR(8)         NOT NULL,
    転リース提携先コード            CHAR(3)         NOT NULL,
    借入先識別区分                  CHAR(1)         NOT NULL,
    借入先種別                      CHAR(2)         NOT NULL,
    担保差入率                      NUMBER(3, 0)    NOT NULL,
    CONSTRAINT PK5_4 PRIMARY KEY (取引先コード, 契約先コード)
) 
;


COMMENT ON TABLE D021KYS_TBL IS '契約先マスタ'
;
COMMENT ON COLUMN D021KYS_TBL.取引先コード IS '取引先のコード　コード仕様書（№001）を参照'
;
COMMENT ON COLUMN D021KYS_TBL.契約先コード IS '契約先のコード　コード仕様書（№048）を参照'
;
COMMENT ON COLUMN D021KYS_TBL.契約先名称 IS '契約先の名称（全角）　（取引先名称）'
;
COMMENT ON COLUMN D021KYS_TBL.部門名称 IS '契約先の部門の名称（全角）'
;
COMMENT ON COLUMN D021KYS_TBL.客先担当者 IS '契約先の担当者名（全角）'
;
COMMENT ON COLUMN D021KYS_TBL.郵便番号 IS '契約先の郵便番号'
;
COMMENT ON COLUMN D021KYS_TBL.市町村コード IS '契約先の住所コード　コード仕様書（№003）を参照'
;
COMMENT ON COLUMN D021KYS_TBL.住所２ IS '契約先の補助住所（全角）'
;
COMMENT ON COLUMN D021KYS_TBL.住所３ IS '契約先の補助住所（全角）ビル名レベル'
;
COMMENT ON COLUMN D021KYS_TBL.電話番号 IS '契約先の電話番号'
;
COMMENT ON COLUMN D021KYS_TBL.更新日時 IS 'データの作成、更新した日時'
;
COMMENT ON COLUMN D021KYS_TBL.更新者 IS 'データの作成、更新した担当者'
;
COMMENT ON COLUMN D021KYS_TBL.部門カナ名称 IS '契約先の部門カナ名称（カナ）'
;
COMMENT ON COLUMN D021KYS_TBL.顧客使用不可フラグ IS '契約先が使用可能かどうか識別する。　コード仕様書（№820）を参照'
;
COMMENT ON COLUMN D021KYS_TBL.コメント欄 IS 'コメント欄（半角可）'
;
COMMENT ON COLUMN D021KYS_TBL.入力担当者コード IS 'コード仕様書(№126)を参照'
;
COMMENT ON COLUMN D021KYS_TBL.主担当部課コード IS '取引先の主担当部課のコード　コード仕様書（No.085）'
;
COMMENT ON COLUMN D021KYS_TBL.現担当者 IS '取引先に対するリース会社の担当者　コード仕様書（№126）'
;
COMMENT ON COLUMN D021KYS_TBL.ＦＡＸ番号 IS '契約先のＦＡＸ番号'
;
COMMENT ON COLUMN D021KYS_TBL.住所１ IS '契約先の住所　都道府県市町村レベル'
;
COMMENT ON COLUMN D021KYS_TBL.住所カナ名称 IS '住所読みがな（半角）'
;
COMMENT ON COLUMN D021KYS_TBL.特定動総保険料率使用区分 IS '動総保険料率を特定料率とする場合設定（検討中）'
;
COMMENT ON COLUMN D021KYS_TBL.再リース計算率区分 IS '再リースの計算率区分 1/10. 1/12 など'
;
COMMENT ON COLUMN D021KYS_TBL.再リース料率分子 IS '再リース計算率区分がその他の場合、料率の分子を設定'
;
COMMENT ON COLUMN D021KYS_TBL.再リース料率分母 IS '再リース計算率区分がその他の場合、料率の分母を設定'
;
COMMENT ON COLUMN D021KYS_TBL.再リース計算単位区分 IS '再リースの計算単位区分'
;
COMMENT ON COLUMN D021KYS_TBL.再リース計算方式区分 IS '再リースの計算方式区分'
;
COMMENT ON COLUMN D021KYS_TBL.満了通知明細書発行区分 IS '満了通知明細書の様式を指定する区分'
;
COMMENT ON COLUMN D021KYS_TBL.再リース自動更新フラグ IS '再リース自動更新を行うか否かの区分'
;
COMMENT ON COLUMN D021KYS_TBL.満了条件区分 IS '満了条件の有無区分'
;
COMMENT ON COLUMN D021KYS_TBL.登録年月日 IS '初期登録を行った年月日'
;
COMMENT ON COLUMN D021KYS_TBL.登録時間 IS '初期登録を行った時間'
;
COMMENT ON COLUMN D021KYS_TBL.登録担当者 IS '初期登録を行った入力者の担当者コード'
;
COMMENT ON COLUMN D021KYS_TBL.更新年月日 IS '最終更新を行った年月日'
;
COMMENT ON COLUMN D021KYS_TBL.更新時間 IS '最終更新を行った時間'
;
COMMENT ON COLUMN D021KYS_TBL.NetLeasing区分 IS 'NET-LEASINGの契約先は''1''、以外は初期値'
;
COMMENT ON COLUMN D021KYS_TBL.売掛金債権手形譲渡基本契約日 IS 'ファクタリングの基本契約を締結した年月日'
;
COMMENT ON COLUMN D021KYS_TBL.旧ユーザーコード IS '旧ユーザーのコード'
;
COMMENT ON COLUMN D021KYS_TBL.転リース提携先コード IS '転リース提携先であることを示すコード'
;
COMMENT ON COLUMN D021KYS_TBL.借入先識別区分 IS '該当の契約先が借入先かどうかを識別する区分（１：借入先　０：借入先以外）'
;
COMMENT ON COLUMN D021KYS_TBL.借入先種別 IS '借入先の種別を識別する区分'
;
COMMENT ON COLUMN D021KYS_TBL.担保差入率 IS '借入時の担保差入率（％）'
;
