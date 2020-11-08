CREATE TABLE  LTRMEI022  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       業種コード                         CHAR(2)           NOT NULL,
       ダミー００１                       CHAR(9)           NOT NULL,
       名称                               VARCHAR2(20)      NOT NULL,
       略称                               VARCHAR2(10)      NOT NULL,
       名称カナ                           CHAR(25)          NOT NULL,
       略称カナ                           CHAR(12)          NOT NULL,
       ダミー００２                       CHAR(83)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI022  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       業種コード,
       ダミー００１));
