CREATE TABLE KEI_TEIKEI_CD
(
    転リース提携先コード           CHAR(2) NOT NULL,
    取引先名                       VARCHAR2(30) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025728 PRIMARY KEY (転リース提携先コード) USING INDEX
)
/
