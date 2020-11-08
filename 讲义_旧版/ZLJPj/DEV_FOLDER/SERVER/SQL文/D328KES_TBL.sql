DROP TABLE D328KES_TBL;
CREATE TABLE D328KES_TBL(
    契約番号              CHAR(10)        NOT NULL,
    再リース回数          NUMBER(2, 0)    NOT NULL,
    決裁種類              CHAR(1)         NOT NULL,
    申請連番              NUMBER(2, 0)    NOT NULL,
    決裁受付年月日        CHAR(8)         NOT NULL,
    決裁ランク            CHAR(1)         NOT NULL,
    決裁年月日            CHAR(8)         NOT NULL,
    決裁者コード          CHAR(8)         NOT NULL,
    承認区分              CHAR(1)         NOT NULL,
    決裁条件１            VARCHAR2(60)    NOT NULL,
    決裁条件２            VARCHAR2(60)    NOT NULL,
    決裁条件３            VARCHAR2(60)    NOT NULL,
    決裁条件４            VARCHAR2(60)    NOT NULL,
    決裁条件５            VARCHAR2(60)    NOT NULL,
    審査部意見欄１        VARCHAR2(60)    NOT NULL,
    審査部意見欄２        VARCHAR2(60)    NOT NULL,
    審査部意見欄３        VARCHAR2(60)    NOT NULL,
    審査部意見欄４        VARCHAR2(60)    NOT NULL,
    審査部意見欄５        VARCHAR2(60)    NOT NULL,
    決裁取消日            CHAR(8)         NOT NULL,
    登録年月日            CHAR(8)         NOT NULL,
    登録時間              CHAR(8)         NOT NULL,
    登録担当者            CHAR(8)         NOT NULL,
    更新年月日            CHAR(8)         NOT NULL,
    更新時間              CHAR(8)         NOT NULL,
    更新者                CHAR(8)         NOT NULL,
    入力担当者コード      CHAR(8)         NOT NULL,
    部店長承認日          CHAR(8)         NOT NULL,
    営業部意見欄１        VARCHAR2(60)    NOT NULL,
    営業部意見欄２        VARCHAR2(60)    NOT NULL,
    営業部意見欄３        VARCHAR2(60)    NOT NULL,
    営業部意見欄４        VARCHAR2(60)    NOT NULL,
    営業部意見欄５        VARCHAR2(60)    NOT NULL,
    営業部意見欄６        VARCHAR2(60)    NOT NULL,
    営業部意見欄７        VARCHAR2(60)    NOT NULL,
    営業部意見欄８        VARCHAR2(60)    NOT NULL,
    営業部意見欄９        VARCHAR2(60)    NOT NULL,
    営業部意見欄１０      VARCHAR2(60)    NOT NULL,
    申請書印刷済フラグ    CHAR(1)         NOT NULL,
    ロンコミ付議ＮＯ      CHAR(6)         NOT NULL,
    別紙区分              CHAR(1)         NOT NULL,
    物件チェック区分      CHAR(1)         NOT NULL,
    CONSTRAINT PK11_7 PRIMARY KEY (契約番号, 再リース回数, 決裁種類, 申請連番)
) 
;


COMMENT ON TABLE D328KES_TBL IS '決裁'
;
COMMENT ON COLUMN D328KES_TBL.契約番号 IS 'コード仕様書(No.56)を参照'
;
COMMENT ON COLUMN D328KES_TBL.再リース回数 IS '再リース回数'
;
COMMENT ON COLUMN D328KES_TBL.決裁種類 IS 'コード仕様書(No.842)を参照'
;
COMMENT ON COLUMN D328KES_TBL.申請連番 IS '申請毎の連番'
;
COMMENT ON COLUMN D328KES_TBL.決裁受付年月日 IS '本社決裁の受付日　部店長決裁時は本社の報告受付日'
;
COMMENT ON COLUMN D328KES_TBL.決裁ランク IS 'コード仕様書(No.734)を参照'
;
COMMENT ON COLUMN D328KES_TBL.決裁年月日 IS '決裁を行った年月日'
;
COMMENT ON COLUMN D328KES_TBL.決裁者コード IS '決裁を入力した担当者コード　コード仕様書(No.126)を参照'
;
COMMENT ON COLUMN D328KES_TBL.承認区分 IS 'コード仕様書(No.51)を参照'
;
COMMENT ON COLUMN D328KES_TBL.決裁条件１ IS '未使用　決裁条件(全角)'
;
COMMENT ON COLUMN D328KES_TBL.決裁条件２ IS '未使用　決裁条件(全角)'
;
COMMENT ON COLUMN D328KES_TBL.決裁条件３ IS '未使用　決裁条件(全角)'
;
COMMENT ON COLUMN D328KES_TBL.決裁条件４ IS '未使用　決裁条件(全角)'
;
COMMENT ON COLUMN D328KES_TBL.決裁条件５ IS '未使用　決裁条件(全角)'
;
COMMENT ON COLUMN D328KES_TBL.審査部意見欄１ IS '審査部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.審査部意見欄２ IS '審査部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.審査部意見欄３ IS '審査部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.審査部意見欄４ IS '審査部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.審査部意見欄５ IS '審査部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.決裁取消日 IS '決裁を取消した日'
;
COMMENT ON COLUMN D328KES_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D328KES_TBL.登録時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D328KES_TBL.登録担当者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D328KES_TBL.更新年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D328KES_TBL.更新時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D328KES_TBL.更新者 IS 'データを作成・更新したプログラムID'
;
COMMENT ON COLUMN D328KES_TBL.入力担当者コード IS 'コード仕様書(No.126)を参照'
;
COMMENT ON COLUMN D328KES_TBL.部店長承認日 IS '部店長が承認を行った年月日'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄１ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄２ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄３ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄４ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄５ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄６ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄７ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄８ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄９ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.営業部意見欄１０ IS '営業部意見(全角)'
;
COMMENT ON COLUMN D328KES_TBL.申請書印刷済フラグ IS '稟議書の印刷済フラグ　コード仕様書(No.128)を参照'
;
COMMENT ON COLUMN D328KES_TBL.ロンコミ付議ＮＯ IS '決裁ランクがロンコミの場合、採番'
;
COMMENT ON COLUMN D328KES_TBL.別紙区分 IS '意見欄における別紙存在フラグ（０：無　１：有）'
;
COMMENT ON COLUMN D328KES_TBL.物件チェック区分 IS 'コード仕様書（No.B37）を参照'
;