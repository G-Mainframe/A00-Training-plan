CREATE TABLE KEI_LPWK_EDA_THUMON3
(
    契約番号                       CHAR(9) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    支払条件文言                   VARCHAR2(40) NOT NULL,
    番号                           NUMBER(3,0) NOT NULL,
    支払繰延金額                   NUMBER(13,0),
    支払繰延月数                   NUMBER(4,2),
    CONSTRAINT SYS_C0025487 PRIMARY KEY (契約番号, 端末番号, ディーラーコード, 支払条件文言, 番号) USING INDEX
)
/
