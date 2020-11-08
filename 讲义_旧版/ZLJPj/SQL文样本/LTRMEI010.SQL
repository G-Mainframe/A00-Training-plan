CREATE TABLE  LTRMEI010  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       担当者コード                       CHAR(4)           NOT NULL,
       ダミー００１                       CHAR(7)           NOT NULL,
       所属事業所コード                   NUMBER(4,0)       NOT NULL,
       個人番号                           NUMBER(7,0)       NOT NULL,
       姓                                 VARCHAR2(8)       NOT NULL,
       名                                 VARCHAR2(6)       NOT NULL,
       姓カナ                             CHAR(10)          NOT NULL,
       経営フラグ                         CHAR(1)           NOT NULL,
       ダミー００２                       CHAR(114)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI010  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       担当者コード,
       ダミー００１));
