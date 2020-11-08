CREATE TABLE ANK_STATUS
(
    ステータス                     CHAR(1) NOT NULL,
    内容                           VARCHAR2(10),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0022148 PRIMARY KEY (ステータス) USING INDEX
)
/
