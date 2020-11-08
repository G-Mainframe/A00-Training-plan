CREATE TABLE IBS_ASSET
(
    資金使途コード                 CHAR(4) DEFAULT '0000' NOT NULL,
    名称＿日本語                   VARCHAR2(30) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023578 PRIMARY KEY (資金使途コード) USING INDEX
)
/
