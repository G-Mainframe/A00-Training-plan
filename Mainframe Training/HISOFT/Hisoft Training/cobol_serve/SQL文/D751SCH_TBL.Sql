DROP   TABLE  D751SCH_TBL   ;
CREATE TABLE  D751SCH_TBL  (
       処理年月日                         CHAR(8)           NOT NULL,
       旬処理フラグ                       CHAR(1)           NOT NULL,
       処理済フラグ                       CHAR(1)           NOT NULL,
       請求書発行開始日                   CHAR(8)           NOT NULL,
       請求書発行終了日                   CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D751SCH_TBL  PRIMARY KEY (
       処理年月日));
