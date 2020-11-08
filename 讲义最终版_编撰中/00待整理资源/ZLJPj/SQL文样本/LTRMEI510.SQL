CREATE TABLE  LTRMEI510  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       支店コード                         CHAR(2)           NOT NULL,
       ダミー００１                       CHAR(9)           NOT NULL,
       会社名漢字                         VARCHAR2(30)      NOT NULL,
       会社名カナ                         CHAR(20)          NOT NULL,
       支店名漢字                         VARCHAR2(20)      NOT NULL,
       支店名カナ                         CHAR(20)          NOT NULL,
       ダミー００２                       CHAR(60)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI510  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       支店コード,
       ダミー００１));
