CREATE TABLE IBS_HOLIDAY
(
    休日＿年                       CHAR(4) DEFAULT '0000' NOT NULL,
    休日＿月                       CHAR(2) DEFAULT '00' NOT NULL,
    休日＿日                       CHAR(2) DEFAULT '00' NOT NULL,
    都市コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT PKEY_IBS_HOLIDAY PRIMARY KEY (休日＿年, 休日＿月, 休日＿日, 都市コード) USING INDEX
)
/
