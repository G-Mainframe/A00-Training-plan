CREATE TABLE ANK_TANNI
(
    単位コード                     CHAR(2) NOT NULL,
    単位                           VARCHAR2(4),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0022150 PRIMARY KEY (単位コード) USING INDEX
)
/
