CREATE TABLE  LTRMEI410  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       支払条件コード                     CHAR(2)           NOT NULL,
       ダミー００１                       CHAR(9)           NOT NULL,
       支払条件名漢字                     VARCHAR2(40)      NOT NULL,
       ダミー００２                       CHAR(110)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI410  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       支払条件コード,
       ダミー００１));
