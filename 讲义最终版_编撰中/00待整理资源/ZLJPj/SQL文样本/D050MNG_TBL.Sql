DROP   TABLE  D050MNG_TBL   ;
CREATE TABLE  D050MNG_TBL  (
       文言グループコード                 CHAR(2)           NOT NULL,
       文言番号                           CHAR(3)           NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       文言                               VARCHAR2(120)     NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D050MNG_TBL  PRIMARY KEY (
       文言グループコード,
       文言番号,
       連番));
