CREATE TABLE KEI_KANJO_CD
(
    勘定処理コード                 CHAR(2) NOT NULL,
    内容                           VARCHAR2(30) NOT NULL,
    契約番号の上１桁               CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025144 PRIMARY KEY (勘定処理コード, 契約番号の上１桁) USING INDEX
)
/
