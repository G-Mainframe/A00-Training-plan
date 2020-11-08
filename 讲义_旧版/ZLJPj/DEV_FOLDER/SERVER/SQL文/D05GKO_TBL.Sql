DROP TABLE D05GKO_TBL;
CREATE TABLE D05GKO_TBL(
    銀行短縮コード      CHAR(2)         NOT NULL,
    銀行コード          CHAR(4)         NOT NULL,
    支店コード          CHAR(3)         NOT NULL,
    預金種類            CHAR(1)         NOT NULL,
    口座番号            CHAR(10)        NOT NULL,
    銀行名              VARCHAR2(40)    NOT NULL,
    支店名              VARCHAR2(40)    NOT NULL,
    名義人              VARCHAR2(30)    NOT NULL,
    更新者              CHAR(8)         NOT NULL,
    入力担当者コード    CHAR(8)         NOT NULL,
    適用年月日          CHAR(8)         NOT NULL,
    銀行支店名          VARCHAR2(40)    NOT NULL,
    登録年月日          CHAR(8)         NOT NULL,
    登録時間            CHAR(8)         NOT NULL,
    登録担当者          CHAR(8)         NOT NULL,
    更新年月日          CHAR(8)         NOT NULL,
    更新時間            CHAR(8)         NOT NULL,
    CONSTRAINT PK21 PRIMARY KEY (銀行短縮コード)
) 
;


COMMENT ON TABLE D05GKO_TBL IS '受取口座マスタ'
;
COMMENT ON COLUMN D05GKO_TBL.銀行短縮コード IS '受取口座を識別するための銀行短縮コード'
;
COMMENT ON COLUMN D05GKO_TBL.銀行コード IS '金融機関のコード　コード仕様書（No.21）を参照'
;
COMMENT ON COLUMN D05GKO_TBL.支店コード IS '本支店のコード'
;
COMMENT ON COLUMN D05GKO_TBL.預金種類 IS '銀行の預金種類　コード仕様書（No.22）を参照'
;
COMMENT ON COLUMN D05GKO_TBL.口座番号 IS '銀行の口座番号'
;
COMMENT ON COLUMN D05GKO_TBL.銀行名 IS '銀行名称(全角)'
;
COMMENT ON COLUMN D05GKO_TBL.支店名 IS '銀行支店名称(全角)'
;
COMMENT ON COLUMN D05GKO_TBL.名義人 IS '銀行の名義人(全角)'
;
COMMENT ON COLUMN D05GKO_TBL.更新者 IS 'データを作成、更新したプログラム名'
;
COMMENT ON COLUMN D05GKO_TBL.入力担当者コード IS 'データ入力した担当者コード'
;
COMMENT ON COLUMN D05GKO_TBL.適用年月日 IS '受取口座の適用開始年月日'
;
COMMENT ON COLUMN D05GKO_TBL.銀行支店名 IS '銀行名と支店名を合わせた名称（全角）'
;
COMMENT ON COLUMN D05GKO_TBL.登録年月日 IS '初期登録を行った年月日'
;
COMMENT ON COLUMN D05GKO_TBL.登録時間 IS '初期登録を行った時間'
;
COMMENT ON COLUMN D05GKO_TBL.登録担当者 IS '初期登録を行った入力者の担当者コード'
;
COMMENT ON COLUMN D05GKO_TBL.更新年月日 IS '最終更新を行った年月日'
;
COMMENT ON COLUMN D05GKO_TBL.更新時間 IS '最終更新を行った時間'
;
