CREATE TABLE  LTRTUUS1  (
       ＫＥＹ１                           CHAR(2)           NOT NULL,
       サブシステム区分                   CHAR(1)           NOT NULL,
       業務コード                         NUMBER(3,0)       NOT NULL,
       ダミー００１                       CHAR(4)           NOT NULL,
       一連番号採番用                     NUMBER(5,0)       NOT NULL,
       ダミー００２                       CHAR(50)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRTUUS1  PRIMARY KEY (
       ＫＥＹ１,
       サブシステム区分,
       業務コード,
       ダミー００１));
