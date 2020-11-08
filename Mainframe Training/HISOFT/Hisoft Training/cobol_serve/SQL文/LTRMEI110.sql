CREATE TABLE  LTRMEI110  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       保険会社コード                     CHAR(1)           NOT NULL,
       ダミー００１                       CHAR(10)          NOT NULL,
       保険会社名                         VARCHAR2(20)      NOT NULL,
       保険会社名略称                     VARCHAR2(10)      NOT NULL,
       保険会社名カナ                     CHAR(25)          NOT NULL,
       保険会社名カナ略称                 CHAR(12)          NOT NULL,
       ダミー００２                       CHAR(83)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI110  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       保険会社コード,
       ダミー００１));
