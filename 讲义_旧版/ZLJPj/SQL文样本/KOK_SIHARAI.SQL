CREATE TABLE KOK_SIHARAI
(
    顧客コード                     CHAR(6) NOT NULL,
    銀行コード                     CHAR(4),
    銀行名                         VARCHAR2(30),
    支店コード                     CHAR(3),
    支店名                         VARCHAR2(30),
    預金種類                       CHAR(1),
    口座番号                       CHAR(7),
    口座名義人                     VARCHAR2(60),
    支払先コード                   CHAR(4),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0025968 PRIMARY KEY (顧客コード) USING INDEX
)
/
