DROP   TABLE  D121SHK_TBL   ;
CREATE TABLE  D121SHK_TBL  (
       資産種類                           CHAR(7)           NOT NULL,
       資産種類判定区分                   CHAR(1)           NOT NULL,
       資産種類判定コード                 CHAR(2)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D121SHK_TBL  PRIMARY KEY (
       資産種類,
       資産種類判定区分));
