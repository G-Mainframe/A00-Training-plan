CREATE TABLE KOK_PATCH_JIGYO
(
    取引先コード                   CHAR(8) NOT NULL,
    新事業所コード                 CHAR(4),
    新担当者コード                 CHAR(4),
    新サーバーコード               CHAR(2),
    CONSTRAINT SYS_C0025963 PRIMARY KEY (取引先コード) USING INDEX
)
/
