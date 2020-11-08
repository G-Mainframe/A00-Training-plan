DROP   TABLE  D181KKN_TBL   ;
CREATE TABLE  D181KKN_TBL  (
       金利区分                           CHAR(2)           NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       金利                               NUMBER(10,8)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D181KKN_TBL  PRIMARY KEY (
       金利区分,
       適用年月日));
