CREATE TABLE IBS_PASSCODE
(
    暗証コード                     CHAR(10) DEFAULT ' ' NOT NULL,
    有効フラグ                     CHAR(1) DEFAULT ' ',
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023800 PRIMARY KEY (暗証コード) USING INDEX
)
/
