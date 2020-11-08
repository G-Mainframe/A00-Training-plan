DROP  TABLE D99FBH_TBL;
CREATE TABLE D99FBH_TBL(
    種別コード          CHAR(2)     NOT NULL,
    作成日              CHAR(6)     NOT NULL,
    勘定日_自           CHAR(6)     NOT NULL,
    勘定日_至           CHAR(6)     NOT NULL,
    銀行コード          CHAR(4)     NOT NULL,
    支店コード          CHAR(3)     NOT NULL,
    預金種目            CHAR(1)     NOT NULL,
    口座番号            CHAR(10)    NOT NULL,
    口座名              CHAR(40)    NOT NULL,
    取引前残高          CHAR(14)    NOT NULL,
    支店名              CHAR(15)    NOT NULL,
    銀行名              CHAR(15)    NOT NULL,
    更新年月日          CHAR(8)     NOT NULL,
    更新時間            CHAR(8)     NOT NULL,
    更新者              CHAR(8)     NOT NULL,
    照会番号            CHAR(6)     NOT NULL,
    振込依頼人名        CHAR(48)    NOT NULL,
    仕向銀行名          CHAR(15)    NOT NULL,
    仕向支店名          CHAR(15)    NOT NULL,
    取引金額            CHAR(10)    NOT NULL,
    入力担当者コード    CHAR(8)     NOT NULL,
    登録年月日          CHAR(8)     NOT NULL,
    登録時間            CHAR(8)     NOT NULL,
    登録担当者          CHAR(8)     NOT NULL,
    CONSTRAINT PK21_1 PRIMARY KEY (種別コード, 作成日, 勘定日_自, 勘定日_至, 銀行コード, 支店コード, 預金種目, 口座番号, 口座名, 取引前残高)
) 
;


COMMENT ON TABLE D99FBH_TBL IS 'ＦＢヘッダーレコードテーブル'
;
COMMENT ON COLUMN D99FBH_TBL.種別コード IS '業務種別（ＦＢデータヘッダ情報の種別コードを設定）'
;
COMMENT ON COLUMN D99FBH_TBL.作成日 IS '作成日（ＦＢデータヘッダ情報の作成日を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.勘定日_自 IS '勘定日＿自（ＦＢデータヘッダ情報の勘定日＿自を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.勘定日_至 IS '勘定日＿至（ＦＢデータヘッダ情報の勘定日＿至を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.銀行コード IS '振込先銀行コード（ＦＢデータヘッダ情報の銀行コードを設定）'
;
COMMENT ON COLUMN D99FBH_TBL.支店コード IS '振込先支店コード（ＦＢデータヘッダ情報の支店コードを設定）'
;
COMMENT ON COLUMN D99FBH_TBL.預金種目 IS '振込先預金種目（ＦＢデータヘッダ情報の預金種目を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.口座番号 IS '振込先口座番号（ＦＢデータヘッダ情報の口座番号を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.口座名 IS '振込先口座名（ＦＢデータヘッダ情報の口座名を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.取引前残高 IS '未使用（ゼロを設定）'
;
COMMENT ON COLUMN D99FBH_TBL.支店名 IS '振込先支店名（ＦＢデータヘッダ情報の支店名を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.銀行名 IS '振込先銀行名（ＦＢデータヘッダ情報の銀行名を設定）'
;
COMMENT ON COLUMN D99FBH_TBL.更新年月日 IS 'データの更新日'
;
COMMENT ON COLUMN D99FBH_TBL.更新時間 IS 'データの更新時間'
;
COMMENT ON COLUMN D99FBH_TBL.更新者 IS 'データの更新ＰＧ－ＩＤ'
;
COMMENT ON COLUMN D99FBH_TBL.照会番号 IS 'ＦＢデータの明細レコード1件目にある照会番号を設定'
;
COMMENT ON COLUMN D99FBH_TBL.振込依頼人名 IS 'ＦＢデータの明細レコード1件目にある振込依頼人名を設定'
;
COMMENT ON COLUMN D99FBH_TBL.仕向銀行名 IS 'ＦＢデータの明細レコード1件目にある仕向銀行名を設定'
;
COMMENT ON COLUMN D99FBH_TBL.仕向支店名 IS 'ＦＢデータの明細レコード1件目にある仕向支店名を設定'
;
COMMENT ON COLUMN D99FBH_TBL.取引金額 IS 'ＦＢデータの明細レコード1件目にある取引金額を設定'
;
COMMENT ON COLUMN D99FBH_TBL.入力担当者コード IS 'コード仕様書(No.126)を参照'
;
COMMENT ON COLUMN D99FBH_TBL.登録年月日 IS '初期登録を行った年月日'
;
COMMENT ON COLUMN D99FBH_TBL.登録時間 IS '初期登録を行った時間'
;
COMMENT ON COLUMN D99FBH_TBL.登録担当者 IS '初期登録を行った入力者の担当者コード'
;
