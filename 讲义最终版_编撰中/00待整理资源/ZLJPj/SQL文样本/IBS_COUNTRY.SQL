CREATE TABLE IBS_COUNTRY
(
    国コード                       CHAR(3) DEFAULT ' ' NOT NULL,
    エリアコード                   CHAR(1) DEFAULT 0 NOT NULL,
    エリア名称＿日本語             VARCHAR2(20) DEFAULT ' ' NOT NULL,
    エリア名称＿英語               VARCHAR2(20) DEFAULT ' ' NOT NULL,
    国名称＿日本語                 VARCHAR2(30) DEFAULT ' ' NOT NULL,
    国名称＿英語                   VARCHAR2(30) DEFAULT ' ' NOT NULL,
    ＬＤＣ区分                     CHAR(1) DEFAULT 0 NOT NULL,
    カントリーグレード             CHAR(1) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023698 PRIMARY KEY (国コード) USING INDEX
)
/
