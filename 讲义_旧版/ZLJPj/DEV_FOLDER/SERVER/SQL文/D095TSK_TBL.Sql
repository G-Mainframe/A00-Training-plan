DROP   TABLE  D095TSK_TBL   ;
CREATE TABLE  D095TSK_TBL  (
       金利区分                           CHAR(2)           NOT NULL,
       主契約区分                         CHAR(1)           NOT NULL,
       適用開始日                         CHAR(8)           NOT NULL,
       期日                               CHAR(6)           NOT NULL,
       金利                               NUMBER(10,8)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D095TSK_TBL  PRIMARY KEY (
       金利区分,
       主契約区分,
       適用開始日,
       期日));
