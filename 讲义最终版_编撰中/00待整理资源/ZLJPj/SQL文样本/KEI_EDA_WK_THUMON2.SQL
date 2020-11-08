CREATE TABLE KEI_EDA_WK_THUMON2
(
    契約番号                       CHAR(9) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    支払繰延金額1                  NUMBER(13,0),
    支払条件文言1                  VARCHAR2(40),
    支払繰延金額2                  NUMBER(13,0),
    支払条件文言2                  VARCHAR2(40),
    支払繰延金額3                  NUMBER(13,0),
    支払条件文言3                  VARCHAR2(40),
    支払繰延金額4                  NUMBER(13,0),
    支払条件文言4                  VARCHAR2(40),
    支払繰延金額5                  NUMBER(13,0),
    支払条件文言5                  VARCHAR2(40),
    CONSTRAINT SYS_C0025081 PRIMARY KEY (契約番号, ディーラーコード, 端末番号) USING INDEX
)
/
