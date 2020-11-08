CREATE TABLE  LTRSKS  (
       ＫＥＹ項目請求先コード             CHAR(8)           NOT NULL,
       入金元コード                       CHAR(8)           NOT NULL,
       請求金額                           NUMBER(13,0)      NOT NULL,
       消込金額                           NUMBER(13,0)      NOT NULL,
       消込残高                           NUMBER(13,0)      NOT NULL,
       請求先名                           CHAR(30)          NOT NULL,
       ダミー００１                       CHAR(48)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRSKS  PRIMARY KEY (
       ＫＥＹ項目請求先コード));
