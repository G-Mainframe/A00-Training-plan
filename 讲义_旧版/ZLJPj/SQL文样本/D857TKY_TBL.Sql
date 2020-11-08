DROP   TABLE  D857TKY_TBL   ;
CREATE TABLE  D857TKY_TBL  (
       与信管理先コード                   CHAR(9)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D857TKY_TBL  PRIMARY KEY (
       与信管理先コード));
