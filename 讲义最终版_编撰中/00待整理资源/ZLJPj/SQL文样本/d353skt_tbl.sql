DROP   TABLE  D353SKT_TBL
;
CREATE TABLE D353SKT_TBL(
    契約番号            CHAR(10)         NOT NULL,
    再リース回数        NUMBER(2, 0)     NOT NULL,
    契約種類            CHAR(3)          NOT NULL,
    連番                NUMBER(3, 0)     NOT NULL,
    取引先コード        CHAR(9)          NOT NULL,
    支払先コード        CHAR(5)          NOT NULL,
    売上年月            CHAR(6)          NOT NULL,
    支払年月日          CHAR(8)          NOT NULL,
    支払金額            NUMBER(13, 0)    NOT NULL,
    利息月数            NUMBER(3, 2)     NOT NULL,
    元本                NUMBER(13, 0)    NOT NULL,
    利息                NUMBER(13, 0)    NOT NULL,
    諸費用              NUMBER(13, 0)    NOT NULL,
    当月利息            NUMBER(13, 0)    NOT NULL,
    支払種類            CHAR(2)          NOT NULL,
    元本残高            NUMBER(13, 0)    NOT NULL,
    展開金利            NUMBER(10, 8)    NOT NULL,
    変更元本残高調整    NUMBER(13, 0)    NOT NULL,
    更新年月日          CHAR(8)          NOT NULL,
    更新時間            CHAR(8)          NOT NULL,
    更新者              CHAR(8)          NOT NULL,
    登録年月日          CHAR(8)          NOT NULL,
    登録時間            CHAR(8)          NOT NULL,
    登録担当者          CHAR(8)          NOT NULL,
    入力担当者コード    CHAR(8)          NOT NULL,
    CONSTRAINT PK20_3 PRIMARY KEY (契約番号, 再リース回数, 契約種類, 連番, 取引先コード, 支払先コード)
) 
;


COMMENT ON TABLE D353SKT_TBL IS '債務割賦展開'
;
COMMENT ON COLUMN D353SKT_TBL.契約番号 IS '契約番号'
;
COMMENT ON COLUMN D353SKT_TBL.再リース回数 IS '契約の再リース回数'
;
COMMENT ON COLUMN D353SKT_TBL.契約種類 IS '商品を管理するコード'
;
COMMENT ON COLUMN D353SKT_TBL.連番 IS '契約内の連番'
;
COMMENT ON COLUMN D353SKT_TBL.取引先コード IS '支払先（協調非幹事会社）の取引先コード'
;
COMMENT ON COLUMN D353SKT_TBL.支払先コード IS '支払先（協調非幹事会社）の支払先コード'
;
COMMENT ON COLUMN D353SKT_TBL.売上年月 IS '契約開始日からの年月'
;
COMMENT ON COLUMN D353SKT_TBL.支払年月日 IS '回収予定年月日'
;
COMMENT ON COLUMN D353SKT_TBL.支払金額 IS '支払金額'
;
COMMENT ON COLUMN D353SKT_TBL.利息月数 IS '今回利息を計算する月数。月に満たない端数日数は小数点で表現'
;
COMMENT ON COLUMN D353SKT_TBL.元本 IS '元本'
;
COMMENT ON COLUMN D353SKT_TBL.利息 IS '利息'
;
COMMENT ON COLUMN D353SKT_TBL.諸費用 IS '諸費用'
;
COMMENT ON COLUMN D353SKT_TBL.当月利息 IS '売上年月のに対する利息(日割り計算)  ※「利息」は前回の約定日から今回の約定日迄の月額利息'
;
COMMENT ON COLUMN D353SKT_TBL.支払種類 IS '支払内容の種類　　コード仕様書（No.832）'
;
COMMENT ON COLUMN D353SKT_TBL.元本残高 IS '月初元本残高（今回利息の計算対象元本）'
;
COMMENT ON COLUMN D353SKT_TBL.展開金利 IS '利息計算に用いた金利　支払内容の「基本利回り」を設定　（解約等で変更された場合以降変更される）'
;
COMMENT ON COLUMN D353SKT_TBL.変更元本残高調整 IS '今回の元本残高が一部解約などで変更された場合にその調整差額（解約分元本など）を保持。減額はマイナス'
;
COMMENT ON COLUMN D353SKT_TBL.更新年月日 IS '更新日'
;
COMMENT ON COLUMN D353SKT_TBL.更新時間 IS '更新時刻'
;
COMMENT ON COLUMN D353SKT_TBL.更新者 IS '更新PG-ID'
;
COMMENT ON COLUMN D353SKT_TBL.登録年月日 IS 'データを作成・更新した年月日'
;
COMMENT ON COLUMN D353SKT_TBL.登録時間 IS 'データを作成・更新した時間'
;
COMMENT ON COLUMN D353SKT_TBL.登録担当者 IS 'データを作成・更新した担当者'
;
COMMENT ON COLUMN D353SKT_TBL.入力担当者コード IS 'コード仕様書(No.126)を参照'
;