DROP   TABLE  D079TMT_TBL   ;
CREATE TABLE  D079TMT_TBL  (
       設置部店コード                     CHAR(5)           NOT NULL,
       設置部店名                         VARCHAR2(42)      NOT NULL,
       設置部店名カナ                     VARCHAR2(30)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D079TMT_TBL  PRIMARY KEY (
       設置部店コード));
