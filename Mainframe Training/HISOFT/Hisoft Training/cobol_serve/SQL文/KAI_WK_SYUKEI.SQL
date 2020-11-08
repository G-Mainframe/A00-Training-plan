CREATE TABLE KAI_WK_SYUKEI
(
    契約番号                       CHAR(9) NOT NULL,
    物件NO                         CHAR(3) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    事業所名                       VARCHAR2(20) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    解約日                         CHAR(8) NOT NULL,
    解約対象区分                   NUMBER(1,0) NOT NULL,
    解約仕訳コード                 CHAR(3) NOT NULL,
    規定損害金額                   NUMBER(13,0) NOT NULL,
    解約物件金額                   NUMBER(13,0) NOT NULL,
    取引先名カナ                   VARCHAR2(30) NOT NULL,
    当月月度                       CHAR(8) NOT NULL,
    CONSTRAINT SYS_C0024978 PRIMARY KEY (契約番号, 物件NO) USING INDEX
)
/
