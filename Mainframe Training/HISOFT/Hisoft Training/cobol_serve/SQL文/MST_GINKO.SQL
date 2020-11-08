CREATE TABLE MST_GINKO
(
    銀行短縮コード                 CHAR(2) NOT NULL,
    銀行コード                     CHAR(4) NOT NULL,
    銀行名                         VARCHAR2(30) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    支店名                         VARCHAR2(30) NOT NULL,
    銀行支店名                     VARCHAR2(30) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    入金日                         CHAR(2) NOT NULL,
    回収方式                       CHAR(1) NOT NULL,
    適用日                         CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    入金日_２                      CHAR(2) DEFAULT ' ' NOT NULL,
    入金日_３                      CHAR(2) DEFAULT ' ' NOT NULL,
    入金日_４                      CHAR(2) DEFAULT ' ' NOT NULL,
    入金日_５                      CHAR(2) DEFAULT ' ' NOT NULL,
    入金日_６                      CHAR(2) DEFAULT ' ' NOT NULL,
    CONSTRAINT PK_MST_GINKO PRIMARY KEY (銀行短縮コード) USING INDEX
)
/
