CREATE TABLE KOK_SOUKI
(
    顧客コード                     CHAR(8) NOT NULL,
    取引先名カナ                   VARCHAR2(70) NOT NULL,
    取引先名漢字                   VARCHAR2(100) NOT NULL,
    住所                           VARCHAR2(100) NOT NULL,
    生年月日                       CHAR(7) NOT NULL,
    代表者氏名                     VARCHAR2(30) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    削除区分                       CHAR(1) NOT NULL,
    CONSTRAINT SYS_C0025984 PRIMARY KEY (顧客コード) USING INDEX
)
/
