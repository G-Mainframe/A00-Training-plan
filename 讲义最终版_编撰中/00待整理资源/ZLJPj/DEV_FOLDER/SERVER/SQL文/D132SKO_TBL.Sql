DROP   TABLE  D132SKO_TBL   ;
CREATE TABLE  D132SKO_TBL  (
       主契約区分                         CHAR(1)           NOT NULL,
       部店コード                         CHAR(4)           NOT NULL,
       銀行コード                         CHAR(4)           NOT NULL,
       支店コード                         CHAR(3)           NOT NULL,
       預金種類                           CHAR(1)           NOT NULL,
       口座番号                           CHAR(10)          NOT NULL,
       銀行名                             VARCHAR2(40)      NOT NULL,
       支店名                             VARCHAR2(40)      NOT NULL,
       名義人                             VARCHAR2(30)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D132SKO_TBL  PRIMARY KEY (
       主契約区分));
