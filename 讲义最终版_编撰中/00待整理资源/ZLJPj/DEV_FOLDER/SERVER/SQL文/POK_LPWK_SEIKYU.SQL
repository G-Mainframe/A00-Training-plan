CREATE TABLE POK_LPWK_SEIKYU
(
    契約番号                       CHAR(9) NOT NULL,
    回数                           NUMBER(1,0),
    リース期間                     NUMBER(3,0),
    消費税率                       NUMBER(3,1),
    リース料                       NUMBER(13,0),
    物件名＿漢字                    VARCHAR2(40),
    CONSTRAINT SYS_C0028235 PRIMARY KEY (契約番号) USING INDEX
)
/
