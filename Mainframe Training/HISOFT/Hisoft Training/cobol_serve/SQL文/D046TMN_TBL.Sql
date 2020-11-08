DROP   TABLE  D046TMN_TBL   ;
CREATE TABLE  D046TMN_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       メモ区分                           CHAR(2)           NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       メモ登録日                         CHAR(8)           NOT NULL,
       メモ登録者                         CHAR(8)           NOT NULL,
       メモ内容                           VARCHAR2(120)     NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D046TMN_TBL  PRIMARY KEY (
       取引先コード,
       メモ区分,
       連番));
