CREATE TABLE EMC_JUSYO_DAIRI
(
    請求先コード                   CHAR(8) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    郵便番号                       CHAR(7) NOT NULL,
    住所１                         VARCHAR2(40) NOT NULL,
    住所２                         VARCHAR2(40) NOT NULL,
    取引先名                       VARCHAR2(40) NOT NULL,
    部署名                         VARCHAR2(40) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022897 PRIMARY KEY (請求先コード, ユーザーコード, 名寄せコード) USING INDEX
)
/
