CREATE TABLE KEI_KYOCHO_CD
(
    債務協調コード                 CHAR(2) NOT NULL,
    内容                           VARCHAR2(50) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025418 PRIMARY KEY (債務協調コード) USING INDEX
)
/
