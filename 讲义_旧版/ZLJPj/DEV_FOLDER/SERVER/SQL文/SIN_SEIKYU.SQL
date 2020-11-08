CREATE TABLE SIN_SEIKYU
(
    稟議ＮＯ                       CHAR(10) NOT NULL,
    第１回リース料受取条件         VARCHAR2(20) NOT NULL,
    第２回目以降リース料受取条件   VARCHAR2(20) NOT NULL,
    請求区分１                     CHAR(1) NOT NULL,
    請求区分２                     CHAR(1) NOT NULL,
    銀行短縮コード                 CHAR(2) NOT NULL,
    銀行名                         VARCHAR2(30) NOT NULL,
    手形枚数                       NUMBER(3,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0028766 PRIMARY KEY (稟議ＮＯ) USING INDEX
)
/
