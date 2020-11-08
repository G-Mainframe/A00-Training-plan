CREATE TABLE  LTRCDM1430  (
       識別コード                         CHAR(4)           NOT NULL,
       ダミー００１                       CHAR(11)          NOT NULL,
       適用日＿世紀                       NUMBER(1,0)       NOT NULL,
       適用日＿年月日                     NUMBER(6,0)       NOT NULL,
       旧テーブル                         NUMBER(3,0)       NOT NULL,
       新テーブル                         NUMBER(3,0)       NOT NULL,
       ダミー００２                       CHAR(139)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRCDM1430  PRIMARY KEY (
       識別コード,
       ダミー００１));
