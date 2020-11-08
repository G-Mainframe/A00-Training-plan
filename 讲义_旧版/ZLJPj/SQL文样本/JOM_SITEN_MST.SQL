CREATE TABLE JOM_SITEN_MST
(
    ジョモ支店コード               CHAR(2) NOT NULL,
    支店名カナ                     VARCHAR2(30) NOT NULL,
    支店名漢字                     VARCHAR2(60) NOT NULL,
    CONSTRAINT SYS_C0024464 PRIMARY KEY (ジョモ支店コード) USING INDEX
)
/
