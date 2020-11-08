DROP   TABLE  D34HNS_TBL   ;
CREATE TABLE  D34HNS_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       契約種類                           CHAR(3)           NOT NULL,
       開始回                             NUMBER(3,0)       NOT NULL,
       開始年月                           CHAR(6)           NOT NULL,
       終了回                             NUMBER(3,0)       NOT NULL,
       終了年月                           CHAR(6)           NOT NULL,
       金額                               NUMBER(13,0)      NOT NULL,
       消費税                             NUMBER(13,0)      NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D34HNS_TBL  PRIMARY KEY (
       契約番号,
       再リース回数,
       契約種類,
       開始回));
