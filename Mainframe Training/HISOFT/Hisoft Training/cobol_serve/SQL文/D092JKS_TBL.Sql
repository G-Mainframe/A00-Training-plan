DROP   TABLE  D092JKS_TBL   ;
CREATE TABLE  D092JKS_TBL  (
       区分                               CHAR(1)           NOT NULL,
       条件指示番号                       NUMBER(3,0)       NOT NULL,
       条件指示名称                       VARCHAR2(120)     NOT NULL,
       担保徴求区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D092JKS_TBL  PRIMARY KEY (
       区分,
       条件指示番号));
