CREATE TABLE  LTRCDM1120  (
       識別コード                         CHAR(4)           NOT NULL,
       ダミー００１                       CHAR(11)          NOT NULL,
       ダミー００２                       CHAR(150)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRCDM1120  PRIMARY KEY (
       識別コード,
       ダミー００１));
