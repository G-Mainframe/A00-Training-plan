DROP   TABLE  D069KNS_TBL   ;
CREATE TABLE  D069KNS_TBL  (
       担当者コード                       CHAR(8)           NOT NULL,
       メニューボタンＩＤ                 CHAR(8)           NOT NULL,
       実行権限有無フラグ                 CHAR(1)           NOT NULL,
       メニュー画面ＩＤ                   CHAR(8)           NOT NULL,
       タグＩＤ                           CHAR(3)           NOT NULL,
       照会更新区分                       CHAR(1)           NOT NULL,
       提供時間判定フラグ                 CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D069KNS_TBL  PRIMARY KEY (
       担当者コード,
       メニューボタンＩＤ));
