CREATE TABLE EMC_WK_LIST
(
    契約番号                       CHAR(9) NOT NULL,
    請求コード                     CHAR(2) NOT NULL,
    物件ＮＯ                       CHAR(4) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    銀行短縮コード                 CHAR(2) NOT NULL,
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    名称１                         VARCHAR2(40) NOT NULL,
    名称２                         VARCHAR2(40) NOT NULL,
    保守料                         NUMBER(13,0) NOT NULL,
    リファレンス１                 CHAR(12) NOT NULL,
    リファレンス２                 CHAR(12) NOT NULL,
    リファレンス３                 CHAR(12) NOT NULL,
    リファレンス４                 CHAR(12) NOT NULL,
    メッセージ                     VARCHAR2(50) NOT NULL,
    CONSTRAINT SYS_C0022973 PRIMARY KEY (契約番号, 請求コード, 物件ＮＯ) USING INDEX
)
/
