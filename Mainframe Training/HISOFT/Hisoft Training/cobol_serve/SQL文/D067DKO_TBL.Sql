DROP   TABLE  D067DKO_TBL   ;
CREATE TABLE  D067DKO_TBL  (
       担当者コード                       CHAR(8)           NOT NULL,
       代行担当者コード                   CHAR(8)           NOT NULL,
       履歴番号                           NUMBER(3,0)       NOT NULL,
       代行開始年月日                     CHAR(8)           NOT NULL,
       代行終了年月日                     CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D067DKO_TBL  PRIMARY KEY (
       担当者コード,
       代行担当者コード,
       履歴番号));
