CREATE TABLE KEI_EDA_WK_THUMON3
(
    契約番号                       CHAR(9) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    番号                           CHAR(18) NOT NULL,
    支払繰延金額                   NUMBER(13,0),
    支払条件文言                   VARCHAR2(40),
    CONSTRAINT SYS_C0025086 PRIMARY KEY (契約番号, ディーラーコード, 端末番号, 番号) USING INDEX
)
/
