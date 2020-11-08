CREATE TABLE EMC_BIKO
(
    契約番号                       CHAR(9) NOT NULL,
    備考                           VARCHAR2(70) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022843 PRIMARY KEY (契約番号) USING INDEX
)
/
