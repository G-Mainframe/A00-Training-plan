CREATE TABLE EMC_WK_JUMEN
(
    ユーザーコード                 CHAR(8) NOT NULL,
    郵便番号                       CHAR(7) NOT NULL,
    住所１                         VARCHAR2(40) NOT NULL,
    住所２                         VARCHAR2(20) NOT NULL,
    取引先名                       VARCHAR2(40) NOT NULL,
    部署名                         VARCHAR2(40) NOT NULL,
    区分                           CHAR(1),
    チェック１                     CHAR(1),
    チェック２                     CHAR(1),
    チェック３                     CHAR(1),
    チェック４                     CHAR(1),
    チェック５                     CHAR(1),
    CONSTRAINT SYS_C0022955 PRIMARY KEY (ユーザーコード) USING INDEX
)
/
