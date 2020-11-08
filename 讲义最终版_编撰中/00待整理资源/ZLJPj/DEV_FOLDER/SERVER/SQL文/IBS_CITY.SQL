CREATE TABLE IBS_CITY
(
    都市コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    国コード                       CHAR(3) DEFAULT ' ' NOT NULL,
    名称＿日本語                   VARCHAR2(20) DEFAULT ' ' NOT NULL,
    名称＿英語                     VARCHAR2(20) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT PKEY_IBS_CITY PRIMARY KEY (都市コード) USING INDEX
)
/
