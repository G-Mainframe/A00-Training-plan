DROP   TABLE  D999MTS_TBL   ;
CREATE TABLE  D999MTS_TBL  (
       見積番号                           NUMBER(7,0)       NOT NULL,
       最終枝番                           NUMBER(2,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D999MTS_TBL  PRIMARY KEY (
       見積番号));
