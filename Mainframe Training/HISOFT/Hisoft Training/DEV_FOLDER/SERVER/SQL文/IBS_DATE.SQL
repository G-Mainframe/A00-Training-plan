CREATE TABLE IBS_DATE
(
    業務年                         CHAR(4) DEFAULT '0000' NOT NULL,
    業務月                         CHAR(2) DEFAULT '00' NOT NULL,
    業務日                         CHAR(2) DEFAULT '00' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023758 PRIMARY KEY (業務年, 業務月) USING INDEX
)
/
