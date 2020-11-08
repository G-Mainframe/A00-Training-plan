DROP   TABLE  D080TMB_TBL   ;
CREATE TABLE  D080TMB_TBL  (
       部室店コード                       CHAR(3)           NOT NULL,
       部室店名                           VARCHAR2(30)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D080TMB_TBL  PRIMARY KEY (
       部室店コード));
