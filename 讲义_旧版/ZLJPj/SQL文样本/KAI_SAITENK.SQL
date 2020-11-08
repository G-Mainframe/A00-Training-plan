CREATE TABLE KAI_SAITENK
(
    契約番号                       CHAR(9) NOT NULL,
    物件NO                         CHAR(3) NOT NULL,
    展開番号                       CHAR(3) NOT NULL,
    不均等リース料                 NUMBER(13,0) NOT NULL,
    月数                           NUMBER(3,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT PK_KAI_SAITENK PRIMARY KEY (契約番号, 物件NO, 展開番号) USING INDEX
)
/
