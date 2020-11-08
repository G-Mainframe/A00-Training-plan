CREATE TABLE JOM_FORM_0002
(
    SHTNUM                         NUMBER(2,0),
    ジョモ支払条件コード           CHAR(2),
    支払条件文言                   VARCHAR2(40) NOT NULL,
    事業所名_１                    VARCHAR2(20),
    契約日                         CHAR(8) NOT NULL,
    検収日                         CHAR(8),
    設置場所名＿漢字               VARCHAR2(40) NOT NULL,
    ジョモ契約番号                 CHAR(9) NOT NULL,
    契約番号                       CHAR(7) NOT NULL,
    開始枝番                       CHAR(2) NOT NULL,
    最終枝番                       CHAR(2) NOT NULL,
    受取手数料                     NUMBER(13,0)
)
/
CREATE UNIQUE INDEX JOM_FORM_0002
ON JOM_FORM_0002
(ジョモ支払条件コード, SHTNUM)
/
