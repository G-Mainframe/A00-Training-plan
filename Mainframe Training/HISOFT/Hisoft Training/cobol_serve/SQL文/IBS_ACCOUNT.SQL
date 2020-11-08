CREATE TABLE IBS_ACCOUNT
(
    勘定科目コード                 CHAR(2) DEFAULT '00' NOT NULL,
    使用区分                       CHAR(1) DEFAULT 0 NOT NULL,
    大分類コード                   CHAR(1) DEFAULT ' ' NOT NULL,
    科目コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    取引コード                     CHAR(2) DEFAULT ' ' NOT NULL,
    口座番号                       CHAR(8) DEFAULT ' ' NOT NULL,
    大分類名                       VARCHAR2(10) DEFAULT ' ' NOT NULL,
    勘定科目名                     VARCHAR2(24) DEFAULT ' ' NOT NULL,
    取引名                         VARCHAR2(10) DEFAULT ' ' NOT NULL,
    口座名                         VARCHAR2(32) DEFAULT ' ' NOT NULL,
    集計コード１                   CHAR(4) DEFAULT ' ' NOT NULL,
    集計コード２                   CHAR(4) DEFAULT ' ' NOT NULL,
    集計コード３                   CHAR(4) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023551 PRIMARY KEY (勘定科目コード) USING INDEX
)
/
