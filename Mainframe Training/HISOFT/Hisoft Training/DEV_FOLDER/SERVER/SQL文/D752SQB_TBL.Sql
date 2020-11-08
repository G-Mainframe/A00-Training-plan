DROP   TABLE  D752SQB_TBL   ;
CREATE TABLE  D752SQB_TBL  (
       請求書番号ＩＤ                     CHAR(8)           NOT NULL,
       請求書番号                         NUMBER(7,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D752SQB_TBL  PRIMARY KEY (
       請求書番号ＩＤ));
