DROP   TABLE  D063GLT_TBL   ;
CREATE TABLE  D063GLT_TBL  (
       ユーザＩＤ                         CHAR(10)          NOT NULL,
       会社コード                         CHAR(2)           NOT NULL,
       社員コード                         CHAR(8)           NOT NULL,
       パスワード                         CHAR(10)          NOT NULL,
       パスワード有効期間区分             CHAR(2)           NOT NULL,
       データベース利用者名               CHAR(10)          NOT NULL,
       データベースパスワード             CHAR(10)          NOT NULL,
       ＬｉｓｔＷＯＲＫ連携用利用者名     CHAR(10)          NOT NULL,
       ＬｉｓｔＷＯＲＫ連携用パスワード   CHAR(10)          NOT NULL,
       ユーザ開放域                       CHAR(64)          NOT NULL,
       システムリザーブ                   CHAR(64)          NOT NULL,
       利用者区分                         CHAR(2)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D063GLT_TBL  PRIMARY KEY (
       ユーザＩＤ));
