CREATE TABLE EMC_GINKO
(
    銀行短縮コード                 CHAR(2) NOT NULL,
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    銀行名                         VARCHAR2(30) NOT NULL,
    支店名                         VARCHAR2(30) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    口座名                         VARCHAR2(40) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022858 PRIMARY KEY (銀行短縮コード) USING INDEX
)
/
