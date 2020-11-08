DROP   TABLE  D056KSM_TBL   ;
CREATE TABLE  D056KSM_TBL  (
       主契約区分                         CHAR(1)           NOT NULL,
       適用年月                           CHAR(6)           NOT NULL,
       機械類コード                       CHAR(2)           NOT NULL,
       機種名番号                         CHAR(2)           NOT NULL,
       機種名                             VARCHAR2(60)      NOT NULL,
       機種名カナ                         VARCHAR2(10)      NOT NULL,
       付保対象区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D056KSM_TBL  PRIMARY KEY (
       主契約区分,
       適用年月,
       機械類コード,
       機種名番号));
