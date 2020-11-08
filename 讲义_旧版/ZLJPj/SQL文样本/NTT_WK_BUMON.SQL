CREATE TABLE NTT_WK_BUMON
(
    登録番号                       CHAR(4) NOT NULL,
    先方参照番号                   CHAR(10) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    部門名称１                     VARCHAR2(40) NOT NULL,
    部門名称２                     VARCHAR2(40) NOT NULL,
    処理区分                       CHAR(1) NOT NULL,
    チェック１                     CHAR(1) NOT NULL,
    チェック２                     CHAR(1) NOT NULL,
    チェック３                     CHAR(1) NOT NULL,
    チェック４                     CHAR(1) NOT NULL,
    CONSTRAINT SYS_C0027573 PRIMARY KEY (登録番号, 先方参照番号, 請求先コード, 処理区分) USING INDEX
)
/
