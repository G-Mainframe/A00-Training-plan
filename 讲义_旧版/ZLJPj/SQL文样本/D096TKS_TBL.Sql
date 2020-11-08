DROP   TABLE  D096TKS_TBL   ;
CREATE TABLE  D096TKS_TBL  (
       徴求管理種類                       CHAR(2)           NOT NULL,
       書類番号                           NUMBER(3,0)       NOT NULL,
       書類名称                           VARCHAR2(80)      NOT NULL,
       ソート順                           NUMBER(3,0)       NOT NULL,
       帳票内訳区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D096TKS_TBL  PRIMARY KEY (
       徴求管理種類,
       書類番号));
