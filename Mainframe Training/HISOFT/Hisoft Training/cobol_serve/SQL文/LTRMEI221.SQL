CREATE TABLE  LTRMEI221  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       機械区分                           CHAR(2)           NOT NULL,
       機種名番号                         CHAR(2)           NOT NULL,
       ダミー００１                       CHAR(7)           NOT NULL,
       機種名割賦                         VARCHAR2(40)      NOT NULL,
       機種コードカナ名                   CHAR(10)          NOT NULL,
       ダミー００２                       CHAR(99)          NOT NULL,
       付保対象区分                       CHAR(1)           NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI221  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       機械区分,
       機種名番号,
       ダミー００１));
