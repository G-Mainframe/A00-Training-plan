CREATE TABLE MAN_FUSO_JUSIN
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    金型番号                       CHAR(13) NOT NULL,
    再リース料                     NUMBER(13,0) NOT NULL,
    再残価額                       NUMBER(13,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT MAN_FUSO_JUSIN PRIMARY KEY (契約番号, 物件ＮＯ) USING INDEX
)
/
