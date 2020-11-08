DROP   TABLE  D064BOT_TBL   ;
CREATE TABLE  D064BOT_TBL  (
       メニューボタンＩＤ                 CHAR(8)           NOT NULL,
       メニューボタン名称                 VARCHAR2(30)      NOT NULL,
       照会更新区分                       CHAR(1)           NOT NULL,
       メニュー画面ＩＤ                   CHAR(8)           NOT NULL,
       タグＩＤ                           CHAR(3)           NOT NULL,
       サブメニュー画面ＩＤ               CHAR(8)           NOT NULL,
       実行プロセスＩＤ                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D064BOT_TBL  PRIMARY KEY (
       メニューボタンＩＤ));
