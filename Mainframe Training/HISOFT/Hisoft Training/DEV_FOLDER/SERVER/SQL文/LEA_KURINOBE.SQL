CREATE TABLE LEA_KURINOBE
(
    KEY                            CHAR(1) NOT NULL,
    繰延ＮＯ                       NUMBER(2,0),
    繰延金額                       NUMBER(13,0),
    繰延月数                       NUMBER(4,2),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026362 PRIMARY KEY (KEY) USING INDEX
)
/
