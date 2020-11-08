CREATE TABLE  LTRMEI530  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       メーカーコード                     CHAR(2)           NOT NULL,
       ダミー００１                       CHAR(9)           NOT NULL,
       購入先コード                       CHAR(8)           NOT NULL,
       購入先名                           VARCHAR2(40)      NOT NULL,
       支払繰延月数                       NUMBER(5,2)       NOT NULL,
       支払先コード                       CHAR(4)           NOT NULL,
       ダミー００２                       CHAR(94)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI530  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       メーカーコード,
       ダミー００１));
