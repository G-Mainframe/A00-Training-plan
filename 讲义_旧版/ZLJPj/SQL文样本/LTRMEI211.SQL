CREATE TABLE  LTRMEI211  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       機械区分                           CHAR(2)           NOT NULL,
       ダミー００１                       CHAR(9)           NOT NULL,
       機械類の区分名称割賦               VARCHAR2(70)      NOT NULL,
       ダミー００２                       CHAR(80)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI211  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       機械区分,
       ダミー００１));
