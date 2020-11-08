CREATE TABLE KEI_MONGON
(
    支払条件コード                 CHAR(2) NOT NULL,
    支払条件                       VARCHAR2(60) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025654 PRIMARY KEY (支払条件コード) USING INDEX
)
/
