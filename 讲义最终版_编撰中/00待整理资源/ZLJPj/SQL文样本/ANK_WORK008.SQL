CREATE TABLE ANK_WORK008
(
    KEY                            CHAR(1) NOT NULL,
    案件番号                       CHAR(10),
    見積枝番                       CHAR(2),
    取引先名                       VARCHAR2(60),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0022179 PRIMARY KEY (KEY) USING INDEX
)
/
