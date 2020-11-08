CREATE TABLE KSL_KEI_MITUMO
(
    契約番号                       CHAR(9) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    代表物件名                     VARCHAR2(40) NOT NULL,
    物件金額合計                   NUMBER(13,0) NOT NULL,
    物件金額消費税                 NUMBER(10,0) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    加重耐用年数                   NUMBER(4,2) NOT NULL,
    加重繰延月数                   NUMBER(4,2) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    前受月数                       NUMBER(2,0) NOT NULL,
    金庫支店コード                 CHAR(5) NOT NULL,
    金庫名                         VARCHAR2(20) NOT NULL,
    支店名                         VARCHAR2(20) NOT NULL,
    東銀リース料                   NUMBER(13,0) NOT NULL,
    東銀前受リース料               NUMBER(13,0) NOT NULL,
    備考                           VARCHAR2(100) NOT NULL,
    出力区分                       CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C009387 PRIMARY KEY (契約番号) USING INDEX
)
/
