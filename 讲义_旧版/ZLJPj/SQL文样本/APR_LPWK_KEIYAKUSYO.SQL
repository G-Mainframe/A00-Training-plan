CREATE TABLE APR_LPWK_KEIYAKUSYO
(
    端末番号                       VARCHAR2(16) NOT NULL,
    リース割賦区分                 CHAR(1) NOT NULL,
    開始アポロ契約番号             CHAR(7) NOT NULL,
    ページ区分                     NUMBER(1,0) NOT NULL,
    レコード区分                   NUMBER(1,0) NOT NULL,
    申込日                         CHAR(8) NOT NULL,
    承諾日                         CHAR(8) NOT NULL,
    終了アポロ契約番号             CHAR(7) NOT NULL,
    物件名                         VARCHAR2(20) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    リース料総額                   NUMBER(13,0) NOT NULL,
    消費税額                       NUMBER(11,0) NOT NULL,
    合計額                         NUMBER(13,0) NOT NULL,
    CONSTRAINT SYS_C0022455 PRIMARY KEY (端末番号, リース割賦区分, 開始アポロ契約番号) USING INDEX
)
/
