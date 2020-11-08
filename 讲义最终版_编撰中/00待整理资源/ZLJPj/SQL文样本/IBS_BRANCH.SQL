CREATE TABLE IBS_BRANCH
(
    部店コード                     CHAR(4) DEFAULT '0000' NOT NULL,
    契約部店コード                 CHAR(1) DEFAULT ' ' NOT NULL,
    略称コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    都市コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    名称＿日本語                   VARCHAR2(50) DEFAULT ' ' NOT NULL,
    名称＿英語                     VARCHAR2(50) DEFAULT ' ' NOT NULL,
    略称                           VARCHAR2(18) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT PKEY_IBS_BRANCH PRIMARY KEY (部店コード) USING INDEX
)
/
