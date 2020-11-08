DROP   TABLE  D274MKK_TBL   ;
CREATE TABLE  D274MKK_TBL  (
       見積番号＿連番                     NUMBER(7,0)       NOT NULL,
       見積番号枝番                       NUMBER(2,0)       NOT NULL,
       明細番号                           NUMBER(3,0)       NOT NULL,
       書替元契約番号                     CHAR(10)          NOT NULL,
       書替元元本残高                     NUMBER(13,0)      NOT NULL,
       書替元利息額                       NUMBER(13,0)      NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D274MKK_TBL  PRIMARY KEY (
       見積番号＿連番,
       見積番号枝番,
       明細番号));
