CREATE TABLE JOM_FORM_0004
(
    ジョモ支払条件コード           CHAR(2) NOT NULL,
    ジョモ支店コード               CHAR(2) NOT NULL,
    ジョモ契約番号                 CHAR(9) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    設置場所名＿漢字               VARCHAR2(40) NOT NULL,
    設置場所住所                   VARCHAR2(100) NOT NULL,
    物件名＿漢字                   VARCHAR2(40) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    支払条件文言                   VARCHAR2(40) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    仕入消費税等額                 NUMBER(13,0) NOT NULL
)
/
