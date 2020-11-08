DROP   TABLE  D643YJM_TBL   ;
CREATE TABLE  D643YJM_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       与信条件文言番号                   CHAR(3)           NOT NULL,
       与信条件文言                       VARCHAR2(120)     NOT NULL,
       担保受付区分                       CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D643YJM_TBL  PRIMARY KEY (
       契約番号,
       再リース回数,
       連番));
