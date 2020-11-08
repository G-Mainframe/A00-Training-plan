DROP   TABLE  D019TZR_TBL   ;
CREATE TABLE  D019TZR_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       決算年月                           CHAR(6)           NOT NULL,
       科目番号                           CHAR(4)           NOT NULL,
       金額位取り区分                     CHAR(1)           NOT NULL,
       金額                               NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D019TZR_TBL  PRIMARY KEY (
       取引先コード,
       決算年月,
       科目番号));
