CREATE TABLE EMC_HOSYU
(
    契約番号                       CHAR(9) NOT NULL,
    請求コード                     CHAR(2) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    物件名                         CHAR(30) NOT NULL,
    保守料                         NUMBER(13,0) NOT NULL,
    消費税                         NUMBER(13,0) NOT NULL,
    税率                           NUMBER(3,1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022873 PRIMARY KEY (契約番号, 請求コード) USING INDEX
)
/
