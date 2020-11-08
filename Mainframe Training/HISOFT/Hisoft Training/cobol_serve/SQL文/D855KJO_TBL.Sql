DROP   TABLE  D855KJO_TBL   ;
CREATE TABLE  D855KJO_TBL  (
       与信管理先コード                   CHAR(9)           NOT NULL,
       状況識別区分                       CHAR(1)           NOT NULL,
       連番                               NUMBER(4,0)       NOT NULL,
       年月日                             CHAR(8)           NOT NULL,
       状況内容                           VARCHAR2(200)     NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D855KJO_TBL  PRIMARY KEY (
       与信管理先コード,
       状況識別区分,
       連番));
