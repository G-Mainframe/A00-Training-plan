CREATE TABLE EMC_JUSYO
(
    請求先コード                   CHAR(8) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    郵便番号                       CHAR(7) NOT NULL,
    住所１                         VARCHAR2(40) NOT NULL,
    住所２                         VARCHAR2(40) NOT NULL,
    取引先名                       VARCHAR2(40) NOT NULL,
    部署名                         VARCHAR2(40) NOT NULL,
    CONSTRAINT SYS_C0022882 PRIMARY KEY (請求先コード, ユーザーコード) USING INDEX
)
/
