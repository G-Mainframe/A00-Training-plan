CREATE TABLE ANK_KURINOBE
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    繰延ＮＯ                       NUMBER(2,0) NOT NULL,
    繰延金額                       NUMBER(13,0) NOT NULL,
    繰延月数                       NUMBER(4,2) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022070 PRIMARY KEY (案件番号, 見積枝番, 繰延ＮＯ) USING INDEX
)
/
