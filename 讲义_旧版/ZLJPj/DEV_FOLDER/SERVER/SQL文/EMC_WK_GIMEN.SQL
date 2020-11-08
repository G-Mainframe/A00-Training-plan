CREATE TABLE EMC_WK_GIMEN
(
    銀行短縮コード                 CHAR(2) NOT NULL,
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    銀行名                         VARCHAR2(30) NOT NULL,
    支店名                         VARCHAR2(30) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    口座名                         VARCHAR2(40) NOT NULL,
    区分                           CHAR(1),
    チェック１                     CHAR(1),
    チェック２                     CHAR(1),
    チェック３                     CHAR(1),
    チェック４                     CHAR(1),
    チェック５                     CHAR(1),
    チェック６                     CHAR(1),
    チェック７                     CHAR(1),
    CONSTRAINT SYS_C0022942 PRIMARY KEY (銀行短縮コード) USING INDEX
)
/
