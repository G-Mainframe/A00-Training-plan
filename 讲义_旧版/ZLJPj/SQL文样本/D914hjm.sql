DROP TABLE D914HJM_TBL CASCADE CONSTRAINTS
;
-- 
-- TABLE: D914HJM_TBL 
--

CREATE TABLE D914HJM_TBL(
    契約番号              CHAR(10)         NOT NULL,
    契約種類              CHAR(3)          NOT NULL,
    物件番号              NUMBER(4, 0)     NOT NULL,
    処理年月              CHAR(6)          NOT NULL,
    再リース回数          NUMBER(2, 0)     NOT NULL,
    主契約区分            CHAR(1)          NOT NULL,
    契約形態              VARCHAR2(20)     NOT NULL,
    保険会社識別コード    CHAR(2)          NOT NULL,
    保険会社名            VARCHAR2(40)     NOT NULL,
    "当月＿当月外区分"    CHAR(1)          NOT NULL,
    "当月＿当月外"        VARCHAR2(12)     NOT NULL,
    ユーザー名            VARCHAR2(40)     NOT NULL,
    物件名称              VARCHAR2(40)     NOT NULL,
    付保日                CHAR(8)          NOT NULL,
    購入金額              NUMBER(13, 0)    NOT NULL,
    保険価格              NUMBER(13, 0)    NOT NULL,
    保険会社区分          CHAR(4)          NOT NULL,
    料率                  NUMBER(9, 7)     NOT NULL,
    保険料                NUMBER(13, 0)    NOT NULL,
    残価有                VARCHAR2(1)      NOT NULL,
    勘定処理コード        CHAR(2)          NOT NULL,
    新規継続区分          CHAR(1)          NOT NULL,
    登録年月日            CHAR(8)          NOT NULL,
    登録時刻              CHAR(8)          NOT NULL,
    登録者                CHAR(8)          NOT NULL,
    更新年月日            CHAR(8)          NOT NULL,
    更新時刻              CHAR(8)          NOT NULL,
    更新者                CHAR(8)          NOT NULL,
    入力担当者コード      CHAR(8)          NOT NULL,
    CONSTRAINT PK546 PRIMARY KEY (契約番号, 契約種類, 物件番号, 処理年月, 再リース回数)
) 
;


COMMENT ON TABLE D914HJM_TBL IS '保険情報'
;
COMMENT ON COLUMN D914HJM_TBL.契約番号 IS '契約データを管理するためのコード'
;
COMMENT ON COLUMN D914HJM_TBL.契約種類 IS 'コード仕様書（№056）参照'
;
COMMENT ON COLUMN D914HJM_TBL.物件番号 IS 'コード仕様書（№040）参照'
;
COMMENT ON COLUMN D914HJM_TBL.処理年月 IS '処理年月'
;
COMMENT ON COLUMN D914HJM_TBL.再リース回数 IS '再リース回数'
;
COMMENT ON COLUMN D914HJM_TBL.主契約区分 IS 'コード仕様書（№038）参照'
;
COMMENT ON COLUMN D914HJM_TBL.契約形態 IS '契約の種類'
;
COMMENT ON COLUMN D914HJM_TBL.保険会社識別コード IS '保険会社識別のためのコード'
;
COMMENT ON COLUMN D914HJM_TBL.保険会社名 IS '保険会社名'
;
COMMENT ON COLUMN D914HJM_TBL."当月・当月外区分" IS '０：当月　１：当月外'
;
COMMENT ON COLUMN D914HJM_TBL."当月・当月外" IS '０：当月分付保　１：当月外分付保'
;
COMMENT ON COLUMN D914HJM_TBL.ユーザー名 IS 'ユーザーの名称'
;
COMMENT ON COLUMN D914HJM_TBL.物件名称 IS '物件の名称'
;
COMMENT ON COLUMN D914HJM_TBL.付保日 IS '動産総合保険の開始年月日'
;
COMMENT ON COLUMN D914HJM_TBL.購入金額 IS '購入金額'
;
COMMENT ON COLUMN D914HJM_TBL.保険価格 IS '保険価格'
;
COMMENT ON COLUMN D914HJM_TBL.保険会社区分 IS '動産総合保険会社及び料金区分を識別する'
;
COMMENT ON COLUMN D914HJM_TBL.料率 IS '保険の料率'
;
COMMENT ON COLUMN D914HJM_TBL.保険料 IS '保険料'
;
COMMENT ON COLUMN D914HJM_TBL.残価有 IS '物件の残価がある場合　有'
;
COMMENT ON COLUMN D914HJM_TBL.勘定処理コード IS '商品を会計的に識別するコード　１０：リース及び継続リース　２０：再リース・・・'
;
COMMENT ON COLUMN D914HJM_TBL.新規継続区分 IS '１：新規　２：継続'
;
COMMENT ON COLUMN D914HJM_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D914HJM_TBL.登録時刻 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D914HJM_TBL.登録者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D914HJM_TBL.更新年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D914HJM_TBL.更新時刻 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D914HJM_TBL.更新者 IS 'データを作成・更新したプログラムID'
;
COMMENT ON COLUMN D914HJM_TBL.入力担当者コード IS 'コード仕様書(No.126)を参照'
;
