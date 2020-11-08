CREATE TABLE APR_SEIKYU_MEISAI
(
    契約番号                       CHAR(9) NOT NULL,
    明細ＮＯ                       CHAR(4) NOT NULL,
    物件名                         VARCHAR2(30) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    残価                           NUMBER(13,0) NOT NULL,
    個別リース料                   NUMBER(13,0) NOT NULL,
    設置場所名                     VARCHAR2(20) NOT NULL,
    ユーザーリファレンス１         CHAR(10) NOT NULL,
    ユーザーリファレンス２         CHAR(10) NOT NULL,
    ユーザーリファレンス３         CHAR(10) NOT NULL,
    ユーザーリファレンス４         CHAR(10) NOT NULL,
    CONSTRAINT SYS_C0022491 PRIMARY KEY (契約番号) USING INDEX
)
/
