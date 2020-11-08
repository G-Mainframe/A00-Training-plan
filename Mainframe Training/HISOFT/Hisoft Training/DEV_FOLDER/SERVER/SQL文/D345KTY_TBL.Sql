DROP   TABLE  D345KTY_TBL   ;
CREATE TABLE  D345KTY_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       文言番号                           NUMBER(3,0)       NOT NULL,
       行番号                             NUMBER(3,0)       NOT NULL,
       特約条項                           VARCHAR2(120)     NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D345KTY_TBL  PRIMARY KEY (
       契約番号,
       再リース回数,
       連番));
