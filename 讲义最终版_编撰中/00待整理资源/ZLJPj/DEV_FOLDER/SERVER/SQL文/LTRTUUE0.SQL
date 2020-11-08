CREATE TABLE  LTRTUUE0  (
       ＫＥＹ１                           CHAR(2)           NOT NULL,
       発行区分                           CHAR(1)           NOT NULL,
       期フラグ                           CHAR(1)           NOT NULL,
       ダミー００１                       CHAR(6)           NOT NULL,
       振出期                             NUMBER(2,0)       NOT NULL,
       管理番号                           NUMBER(5,0)       NOT NULL,
       ダミー００２                       CHAR(48)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRTUUE0  PRIMARY KEY (
       ＫＥＹ１,
       発行区分,
       期フラグ,
       ダミー００１));
