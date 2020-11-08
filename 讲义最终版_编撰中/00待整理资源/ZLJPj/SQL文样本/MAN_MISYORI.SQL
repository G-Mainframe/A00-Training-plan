CREATE TABLE MAN_MISYORI
(
    端末番号                       VARCHAR2(16) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    枝番                           CHAR(3) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    事業所名                       VARCHAR2(20) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    契約先名                       VARCHAR2(60) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    満了日                         CHAR(8) NOT NULL,
    再リース開始日                 CHAR(8) NOT NULL,
    物件金額                       NUMBER(13,0) NOT NULL,
    残価額                         NUMBER(13,0) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    物件名                         VARCHAR2(40) NOT NULL,
    CONSTRAINT P_MAN_MISYORI PRIMARY KEY (端末番号, 契約番号, 枝番) USING INDEX
)
/
