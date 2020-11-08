CREATE TABLE KOK_SOUKI_WKLIST
(
    顧客コード                     CHAR(8) NOT NULL,
    取引先名カナ                   VARCHAR2(70) NOT NULL,
    取引先名漢字                   VARCHAR2(100) NOT NULL,
    住所                           VARCHAR2(100) NOT NULL,
    生年月日                       CHAR(7) NOT NULL,
    代表者氏名                     VARCHAR2(30) NOT NULL,
    チェック１                     CHAR(2) NOT NULL,
    チェック２                     CHAR(2) NOT NULL,
    チェック３                     CHAR(2) NOT NULL,
    チェック４                     CHAR(2) NOT NULL,
    チェック５                     CHAR(2) NOT NULL,
    メッセージ                     VARCHAR2(80) NOT NULL,
    CONSTRAINT SYS_C0026003 PRIMARY KEY (顧客コード) USING INDEX
)
/
