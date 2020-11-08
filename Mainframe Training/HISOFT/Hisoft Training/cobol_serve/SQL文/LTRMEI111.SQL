CREATE TABLE  LTRMEI111  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       送金先コード                       NUMBER(2,0)       NOT NULL,
       ダミー００１                       CHAR(9)           NOT NULL,
       送金先名                           VARCHAR2(40)      NOT NULL,
       ダミー００２                       CHAR(110)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI111  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       送金先コード,
       ダミー００１));
