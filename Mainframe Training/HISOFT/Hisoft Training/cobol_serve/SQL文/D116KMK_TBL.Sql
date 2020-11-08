DROP   TABLE  D116KMK_TBL   ;
CREATE TABLE  D116KMK_TBL  (
       管理ＩＤ                           CHAR(8)           NOT NULL,
       広報メッセージ                     VARCHAR2(138)     NOT NULL,
       表示フラグ                         CHAR(1)           NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       文字色区分                         CHAR(1)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D116KMK_TBL  PRIMARY KEY (
       管理ＩＤ));
