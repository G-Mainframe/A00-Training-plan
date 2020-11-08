DROP   TABLE  D098HKJ_TBL   ;
CREATE TABLE  D098HKJ_TBL  (
       包括異例条件コード                 NUMBER(3,0)       NOT NULL,
       主管部店コード                     CHAR(4)           NOT NULL,
       包括異例条件名称                   VARCHAR2(40)      NOT NULL,
       管理レベル区分                     CHAR(1)           NOT NULL,
       包括条件有効区分                   CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D098HKJ_TBL  PRIMARY KEY (
       包括異例条件コード));
