CREATE TABLE APR_KESSAI_MST
(
    決済先コード                   CHAR(6) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022247 PRIMARY KEY (決済先コード) USING INDEX
)
/
