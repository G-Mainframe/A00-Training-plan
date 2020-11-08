CREATE TABLE  LTRCDM1440  (
       識別コード                         CHAR(4)           NOT NULL,
       請求先コード                       CHAR(8)           NOT NULL,
       ダミー００１                       CHAR(3)           NOT NULL,
       ダミー００２                       CHAR(150)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRCDM1440  PRIMARY KEY (
       識別コード,
       請求先コード,
       ダミー００１));
