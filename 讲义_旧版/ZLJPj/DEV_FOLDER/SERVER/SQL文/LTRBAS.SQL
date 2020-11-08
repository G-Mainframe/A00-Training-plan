CREATE TABLE  LTRBAS  (
       銀行コード                         CHAR(4)           NOT NULL,
       本支店コード                       CHAR(3)           NOT NULL,
       付加コード                         NUMBER(1,0)       NOT NULL,
       支店名漢字                         VARCHAR2(30)      NOT NULL,
       支店名カナ                         CHAR(15)          NOT NULL,
       本支店名略称漢字                   VARCHAR2(40)      NOT NULL,
       本支店名略称カナ                   CHAR(30)          NOT NULL,
       手形交換所番号                     CHAR(4)           NOT NULL,
       ダミー００１                       CHAR(42)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRBAS  PRIMARY KEY (
       銀行コード,
       本支店コード));
