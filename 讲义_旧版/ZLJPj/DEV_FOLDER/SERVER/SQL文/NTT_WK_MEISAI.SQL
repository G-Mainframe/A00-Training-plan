CREATE TABLE NTT_WK_MEISAI
(
    契約番号                       CHAR(9) NOT NULL,
    明細ＮＯ                       CHAR(4) NOT NULL,
    物件名                         CHAR(30) NOT NULL,
    先方参照番号                   CHAR(10) NOT NULL,
    個別リース料                   NUMBER(13,0) NOT NULL,
    請求コード                     CHAR(2) NOT NULL,
    CONSTRAINT SYS_C0027612 PRIMARY KEY (契約番号, 明細ＮＯ, 請求コード) USING INDEX
)
/
