CREATE TABLE  LTRNKS  (
       消込通番                           NUMBER(9,0)       NOT NULL,
       請求先コード                       CHAR(8)           NOT NULL,
       請求金額                           NUMBER(13,0)      NOT NULL,
       契約ＮＯ                           CHAR(9)           NOT NULL,
       再リースコード                     NUMBER(1,0)       NOT NULL,
       入金予定日                         CHAR(7)           NOT NULL,
       請求内訳コード                     CHAR(3)           NOT NULL,
       回収区分                           NUMBER(1,0)       NOT NULL,
       充当回数回数                       NUMBER(3,0)       NOT NULL,
       最新入金日＿世紀                   NUMBER(1,0)       NOT NULL,
       最新入金日＿年月日                 CHAR(6)           NOT NULL,
       ダミー００１                       CHAR(19)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRNKS  PRIMARY KEY (
       消込通番,
       請求先コード));
