DROP   TABLE  D858ZKD_TBL   ;
CREATE TABLE  D858ZKD_TBL  (
       管理与信起動管理区分               CHAR(6)           NOT NULL,
       管理与信随時起動区分               CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D858ZKD_TBL  PRIMARY KEY (
       管理与信起動管理区分));
