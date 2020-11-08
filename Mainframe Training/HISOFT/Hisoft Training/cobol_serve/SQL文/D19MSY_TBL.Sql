DROP   TABLE  D19MSY_TBL   ;
CREATE TABLE  D19MSY_TBL  (
       コードＮＯ                         CHAR(12)          NOT NULL,
       コード                             VARCHAR2(5)       NOT NULL,
       コード名                           VARCHAR2(40)      NOT NULL,
       名称                               VARCHAR2(60)      NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       デフォルト区分                     CHAR(1)           NOT NULL,
       パスワード入力区分                 CHAR(1)           NOT NULL,
       ソート順                           NUMBER(3,0)       NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D19MSY_TBL  PRIMARY KEY (
       コードＮＯ,
       コード));
