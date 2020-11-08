CREATE TABLE  LTRTUUK1  (
       ＫＥＹ１                           CHAR(2)           NOT NULL,
       サブシステム区分                   CHAR(1)           NOT NULL,
       ダミー００１                       CHAR(7)           NOT NULL,
       一連番号採番用                     NUMBER(5,0)       NOT NULL,
       ダミー００２                       CHAR(50)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRTUUK1  PRIMARY KEY (
       ＫＥＹ１,
       サブシステム区分,
       ダミー００１));
