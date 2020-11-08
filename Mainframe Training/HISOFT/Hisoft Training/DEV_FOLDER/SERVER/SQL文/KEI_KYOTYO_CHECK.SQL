CREATE TABLE KEI_KYOTYO_CHECK
(
    幹事＿非幹事区分               CHAR(1) NOT NULL,
    ＯＰＥＮ＿ＣＬＯＳＥ区分       CHAR(1) NOT NULL,
    協調回収手順                   CHAR(1) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    債務協調コード                 CHAR(2) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025430 PRIMARY KEY (幹事＿非幹事区分, ＯＰＥＮ＿ＣＬＯＳＥ区分, 協調回収手順, 勘定処理コード, 債務協調コード) USING INDEX
)
/
