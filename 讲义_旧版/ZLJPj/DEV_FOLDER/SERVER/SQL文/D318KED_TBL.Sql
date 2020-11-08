DROP   TABLE  D318KED_TBL   ;
CREATE TABLE  D318KED_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       最終枝番                           CHAR(2)           NOT NULL,
       包括申請連番                       NUMBER(2,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D318KED_TBL  PRIMARY KEY (
       契約番号));
