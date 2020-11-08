DROP   TABLE  D264MHS_TBL   ;
CREATE TABLE  D264MHS_TBL  (
       見積番号＿連番                     NUMBER(7,0)       NOT NULL,
       見積番号枝番                       NUMBER(2,0)       NOT NULL,
       費用種類                           CHAR(3)           NOT NULL,
       繰延月数                           NUMBER(3,0)       NOT NULL,
       費用区分                           CHAR(1)           NOT NULL,
       費用金額                           NUMBER(13,0)      NOT NULL,
       初回支払予定年月                   CHAR(6)           NOT NULL,
       支払間隔                           NUMBER(2,0)       NOT NULL,
       支払回数                           NUMBER(3,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D264MHS_TBL  PRIMARY KEY (
       見積番号＿連番,
       見積番号枝番,
       費用種類,
       繰延月数));
