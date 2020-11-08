CREATE TABLE KEI_JOKEN2
(
    リース料受取条件コード         CHAR(2) NOT NULL,
    リース料受取条件               VARCHAR2(60) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025132 PRIMARY KEY (リース料受取条件コード) USING INDEX
)
/
