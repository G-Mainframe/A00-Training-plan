CREATE TABLE MFS_WK_ERR
(
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    預金者名                       CHAR(30) NOT NULL,
    請求金額                       NUMBER(10,0) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    PAYDAY                         CHAR(4),
    CONSTRAINT SYS_C0027090 PRIMARY KEY (請求先コード) USING INDEX
)
/
