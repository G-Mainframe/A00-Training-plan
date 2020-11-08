CREATE TABLE ANK_SHOUHOU
(
    支払方法コード                 CHAR(2) NOT NULL,
    支払方法                       VARCHAR2(40) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022146 PRIMARY KEY (支払方法コード) USING INDEX
)
/
