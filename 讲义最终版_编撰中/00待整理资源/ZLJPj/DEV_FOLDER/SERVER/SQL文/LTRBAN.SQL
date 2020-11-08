CREATE TABLE  LTRBAN  (
       銀行コード                         CHAR(4)           NOT NULL,
       銀行名称漢字                       VARCHAR2(30)      NOT NULL,
       銀行名称カナ                       CHAR(30)          NOT NULL,
       ダミー００１                       CHAR(101)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRBAN  PRIMARY KEY (
       銀行コード));
