CREATE TABLE SIN_IKEN
(
    稟議ＮＯ                       CHAR(10) NOT NULL,
    営業部意見                     VARCHAR2(340) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0028624 PRIMARY KEY (稟議ＮＯ) USING INDEX
)
/
