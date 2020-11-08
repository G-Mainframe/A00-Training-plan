CREATE TABLE IBS_RATE
(
    年                             CHAR(4) DEFAULT '0000' NOT NULL,
    月                             CHAR(2) DEFAULT '00' NOT NULL,
    幣種コード                     CHAR(3) DEFAULT ' ' NOT NULL,
    ＴＴＳ                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    ＴＴＢ                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    ＴＴＭ                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023813 PRIMARY KEY (年, 月, 幣種コード) USING INDEX,
    CONSTRAINT SYS_C0029031 FOREIGN KEY (幣種コード) REFERENCES IBS_CURRENCY (幣種コード) ON DELETE CASCADE
)
/
