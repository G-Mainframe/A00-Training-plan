CREATE TABLE KSL_WK_ERR1
(
    契約番号                       CHAR(9) NOT NULL,
    内容                           VARCHAR2(60) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    検収日                         CHAR(8) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    金庫支店コード                 CHAR(5) NOT NULL,
    CONSTRAINT SYS_C009523 PRIMARY KEY (契約番号) USING INDEX
)
/
