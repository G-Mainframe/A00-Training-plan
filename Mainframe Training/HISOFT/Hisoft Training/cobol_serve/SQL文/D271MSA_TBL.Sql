DROP   TABLE  D271MSA_TBL   ;
CREATE TABLE  D271MSA_TBL  (
       見積番号＿連番                     NUMBER(7,0)       NOT NULL,
       見積番号枝番                       NUMBER(2,0)       NOT NULL,
       契約種類                           CHAR(3)           NOT NULL,
       回収回数                           NUMBER(3,0)       NOT NULL,
       回収サイト                         NUMBER(4,2)       NOT NULL,
       回収サイクル                       NUMBER(2,0)       NOT NULL,
       回収日                             NUMBER(2,0)       NOT NULL,
       変則払有無                         CHAR(1)           NOT NULL,
       回収金額                           NUMBER(13,0)      NOT NULL,
       回収総額                           NUMBER(13,0)      NOT NULL,
       回収金額消費税                     NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D271MSA_TBL  PRIMARY KEY (
       見積番号＿連番,
       見積番号枝番,
       契約種類));
