DROP   TABLE  D270MST_TBL   ;
CREATE TABLE  D270MST_TBL  (
       見積番号＿連番                     NUMBER(7,0)       NOT NULL,
       見積番号枝番                       NUMBER(2,0)       NOT NULL,
       契約種類                           CHAR(3)           NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       物件番号                           NUMBER(3,0)       NOT NULL,
       見積番号＿担当者                   CHAR(2)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       回収年月日                         CHAR(8)           NOT NULL,
       回収額                             NUMBER(13,0)      NOT NULL,
       回収額消費税                       NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D270MST_TBL  PRIMARY KEY (
       見積番号＿連番,
       見積番号枝番,
       契約種類,
       連番));
