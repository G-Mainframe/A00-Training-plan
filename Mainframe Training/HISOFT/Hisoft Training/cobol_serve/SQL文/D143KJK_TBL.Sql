DROP   TABLE  D143KJK_TBL   ;
CREATE TABLE  D143KJK_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       開示先コード                       NUMBER(5,0)       NOT NULL,
       契約先コード                       CHAR(5)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D143KJK_TBL  PRIMARY KEY (
       取引先コード,
       開示先コード,
       契約先コード));
