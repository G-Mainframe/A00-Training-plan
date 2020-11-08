CREATE TABLE KEI_TOKUYAKU
(
    特約コード                     CHAR(2) NOT NULL,
    内容                           VARCHAR2(150) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025759 PRIMARY KEY (特約コード) USING INDEX
)
/
