CREATE TABLE IBS_CURRENCY
(
    幣種コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    国コード                       CHAR(3) DEFAULT ' ' NOT NULL,
    ＳＷＩＦＴコード               CHAR(3) DEFAULT ' ' NOT NULL,
    ユニット単位                   NUMBER(5,0) DEFAULT 1 NOT NULL,
    小数点位                       NUMBER(1,0) DEFAULT 0 NOT NULL,
    名称＿日本語                   VARCHAR2(30) DEFAULT ' ' NOT NULL,
    名称＿英語                     VARCHAR2(30) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023712 PRIMARY KEY (幣種コード) USING INDEX,
    CONSTRAINT SYS_C0029030 FOREIGN KEY (国コード) REFERENCES IBS_COUNTRY (国コード)
)
/
