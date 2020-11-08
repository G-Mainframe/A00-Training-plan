CREATE TABLE MFS_MEIGI
(
    請求先コード                   CHAR(8) NOT NULL,
    口座名義人名                   CHAR(30) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0027067 PRIMARY KEY (請求先コード) USING INDEX
)
/
