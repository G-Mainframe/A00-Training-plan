DROP   TABLE  D11SHR_TBL   ;
CREATE TABLE  D11SHR_TBL  (
       消費税率区分                       CHAR(2)           NOT NULL,
       適用開始日                         CHAR(8)           NOT NULL,
       消費税率                           NUMBER(10,8)      NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       税率区分                           CHAR(2)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       経過措置適用開始日                 CHAR(8)           NOT NULL,
       経過措置適用終了日                 CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D11SHR_TBL  PRIMARY KEY (
       消費税率区分,
       適用開始日));
