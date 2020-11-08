CREATE TABLE  LTRTUUX  (
       ＫＥＹ１                           CHAR(4)           NOT NULL,
       ダミー００１                       CHAR(6)           NOT NULL,
       契約番号                           CHAR(9)           NOT NULL,
       前月度＿世紀                       NUMBER(1,0)       NOT NULL,
       前月度＿年月日                     CHAR(6)           NOT NULL,
       ダミー００２                       CHAR(39)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRTUUX  PRIMARY KEY (
       ＫＥＹ１,
       ダミー００１));
