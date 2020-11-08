CREATE TABLE  LTRMEI420  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       請求内訳コード                     CHAR(3)           NOT NULL,
       ダミー００１                       CHAR(8)           NOT NULL,
       名称                               VARCHAR2(40)      NOT NULL,
       ダミー００２                       CHAR(110)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI420  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       請求内訳コード,
       ダミー００１));
