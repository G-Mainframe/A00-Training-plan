DROP   TABLE  D012STK_TBL   ;
CREATE TABLE  D012STK_TBL  (
       サーバ番号                         CHAR(2)           NOT NULL,
       最新取引先コード                   NUMBER(9,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D012STK_TBL  PRIMARY KEY (
       サーバ番号));
