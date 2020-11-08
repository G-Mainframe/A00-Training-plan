DROP   TABLE  D871KFS_TBL   ;
CREATE TABLE  D871KFS_TBL  (
       振替銀行コード                     CHAR(4)           NOT NULL,
       約定年月日                         CHAR(8)           NOT NULL,
       振替日                             CHAR(8)           NOT NULL,
       約定日                             CHAR(2)           NOT NULL,
       作成日                             CHAR(8)           NOT NULL,
       口振ステータス                     CHAR(1)           NOT NULL,
       銀行数                             NUMBER(8,0)       NOT NULL,
       請求件数                           NUMBER(8,0)       NOT NULL,
       請求金額                           NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       変更済フラグ                       CHAR(1)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D871KFS_TBL  PRIMARY KEY (
       振替銀行コード,
       約定年月日));
