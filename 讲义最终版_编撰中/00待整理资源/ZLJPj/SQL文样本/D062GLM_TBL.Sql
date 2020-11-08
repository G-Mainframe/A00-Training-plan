DROP   TABLE  D062GLM_TBL   ;
CREATE TABLE  D062GLM_TBL  (
       ユーザＩＤ                         CHAR(10)          NOT NULL,
       会社コード                         CHAR(2)           NOT NULL,
       ユーザタイプ                       CHAR(3)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D062GLM_TBL  PRIMARY KEY (
       ユーザＩＤ));
