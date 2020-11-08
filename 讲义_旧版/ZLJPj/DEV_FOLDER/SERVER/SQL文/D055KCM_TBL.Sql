DROP   TABLE  D055KCM_TBL   ;
CREATE TABLE  D055KCM_TBL  (
       主契約区分                         CHAR(1)           NOT NULL,
       適用年月                           CHAR(6)           NOT NULL,
       機械類コード                       CHAR(2)           NOT NULL,
       信用保険会社コード                 CHAR(1)           NOT NULL,
       機械類名                           VARCHAR2(60)      NOT NULL,
       最長保険期間                       NUMBER(2,0)       NOT NULL,
       一台当たりの限度額上限             NUMBER(9,0)       NOT NULL,
       一台当たりの限度額下限             NUMBER(9,0)       NOT NULL,
       信用保険料率パターン               CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D055KCM_TBL  PRIMARY KEY (
       主契約区分,
       適用年月,
       機械類コード));
