CREATE TABLE  LTRMBK  (
       ＢＯＴＬ契約ＮＯ                   CHAR(9)           NOT NULL,
       ダミー００１                       CHAR(7)           NOT NULL,
       事業所コード                       NUMBER(4,0)       NOT NULL,
       事業所名                           VARCHAR2(20)      NOT NULL,
       ユーザーコード                     CHAR(8)           NOT NULL,
       ユーザー名                         CHAR(20)          NOT NULL,
       ダミー００２                       CHAR(28)          NOT NULL,
       担当者コード                       NUMBER(4,0)       NOT NULL,
       ダミー００３                       CHAR(2)           NOT NULL,
       ＳＦＣレコード件数                 NUMBER(3,0)       NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMBK  PRIMARY KEY (
       ＢＯＴＬ契約ＮＯ));
