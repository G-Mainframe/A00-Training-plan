CREATE TABLE APR_SJYOKEN_MST
(
    支払条件コード                 CHAR(2) NOT NULL,
    契約番号上１桁                 CHAR(1) NOT NULL,
    繰延月数                       NUMBER(4,2) NOT NULL,
    支払条件文言                   VARCHAR2(40) NOT NULL,
    CONSTRAINT SYS_C0022496 PRIMARY KEY (支払条件コード) USING INDEX
)
/
