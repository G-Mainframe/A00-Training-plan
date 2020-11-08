DROP   TABLE  D997MTB_TBL   ;
CREATE TABLE  D997MTB_TBL  (
       サーバ番号                         CHAR(2)           NOT NULL,
       最新見積番号                       NUMBER(7,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D997MTB_TBL  PRIMARY KEY (
       サーバ番号));
