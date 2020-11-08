CREATE TABLE ANK_FUZUI
(
    付随条項コード                 CHAR(2) NOT NULL,
    内容                           VARCHAR2(80) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0021839 PRIMARY KEY (付随条項コード) USING INDEX
)
/
