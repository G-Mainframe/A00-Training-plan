CREATE TABLE SFC_SITEN
(
    包括エリアコード               CHAR(1) NOT NULL,
    エリアコード                   CHAR(2) NOT NULL,
    支店コード                     CHAR(2) NOT NULL,
    包括エリア名                   VARCHAR2(60) NOT NULL,
    エリア名                       VARCHAR2(60) NOT NULL,
    支店名                         VARCHAR2(60) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0028491 PRIMARY KEY (包括エリアコード, エリアコード, 支店コード) USING INDEX
)
/
