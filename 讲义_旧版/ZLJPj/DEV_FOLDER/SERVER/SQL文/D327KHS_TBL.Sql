DROP   TABLE  D327KHS_TBL   ;
CREATE TABLE  D327KHS_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       保証人取引先コード                 CHAR(9)           NOT NULL,
       保証人関係区分                     CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       入力順                             NUMBER(2,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D327KHS_TBL  PRIMARY KEY (
       契約番号,
       再リース回数,
       保証人取引先コード));
