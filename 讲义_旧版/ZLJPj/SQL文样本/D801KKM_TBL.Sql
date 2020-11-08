DROP   TABLE  D801KKM_TBL   ;
CREATE TABLE  D801KKM_TBL  (
       休日年月日                         CHAR(8)           NOT NULL,
       カレンダ区分                       CHAR(1)           NOT NULL,
       休日区分                           CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D801KKM_TBL  PRIMARY KEY (
       休日年月日,
       カレンダ区分));
