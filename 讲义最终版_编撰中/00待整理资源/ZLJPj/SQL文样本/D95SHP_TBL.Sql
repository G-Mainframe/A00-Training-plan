DROP   TABLE  D95SHP_TBL   ;
CREATE TABLE  D95SHP_TBL  (
       主契約区分                         CHAR(1)           NOT NULL,
       信用保険料率パターン               CHAR(1)           NOT NULL,
       保険期間                           NUMBER(3,0)       NOT NULL,
       適用開始日                         CHAR(8)           NOT NULL,
       料率                               NUMBER(10,8)      NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D95SHP_TBL  PRIMARY KEY (
       主契約区分,
       信用保険料率パターン,
       保険期間,
       適用開始日));
