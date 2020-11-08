DROP   TABLE  D991KAN_TBL   ;
CREATE TABLE  D991KAN_TBL  (
       連番                               NUMBER(3,0)       NOT NULL,
       冠頭                               CHAR(10)          NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D991KAN_TBL  PRIMARY KEY (
       連番));
