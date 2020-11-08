CREATE TABLE NTT_WK_HBUMON
(
    登録番号                       CHAR(4) NOT NULL,
    先方参照番号                   CHAR(10) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    部門名称１                     VARCHAR2(40) NOT NULL,
    部門名称２                     VARCHAR2(40) NOT NULL,
    CONSTRAINT SYS_C0027579 PRIMARY KEY (登録番号) USING INDEX
)
/
