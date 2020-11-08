CREATE TABLE JOM_FORM_0010
(
    端末番号                       VARCHAR2(16) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    ジョモ支店コード               CHAR(2) NOT NULL,
    支店名漢字                     VARCHAR2(60) NOT NULL,
    設置場所名                     VARCHAR2(20) NOT NULL,
    ジョモ商品コード               CHAR(4) NOT NULL,
    物件名                         VARCHAR2(30) NOT NULL,
    解約後リース料                 NUMBER(13,0) NOT NULL,
    変更済標識                     CHAR(1)
)
/
CREATE UNIQUE INDEX JOM_FORM_0010
ON JOM_FORM_0010
(契約番号, 物件ＮＯ)
/
