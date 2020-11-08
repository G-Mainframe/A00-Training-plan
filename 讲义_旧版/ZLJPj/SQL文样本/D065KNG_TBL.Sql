DROP   TABLE  D065KNG_TBL   ;
CREATE TABLE  D065KNG_TBL  (
       権限レベル                         CHAR(3)           NOT NULL,
       メニューボタンＩＤ                 CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D065KNG_TBL  PRIMARY KEY (
       権限レベル,
       メニューボタンＩＤ));
