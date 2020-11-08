CREATE TABLE KEI_KEITAI_CD
(
    取引形態コード                 CHAR(2) NOT NULL,
    取引形態                       VARCHAR2(30) NOT NULL,
    契約番号の上１桁               VARCHAR2(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025154 PRIMARY KEY (取引形態コード) USING INDEX
)
/
