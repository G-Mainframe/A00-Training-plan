DROP   TABLE  D034KSR_TBL   ;
CREATE TABLE  D034KSR_TBL  (
       耐用年数                           NUMBER(2,0)       NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       固定資産償却率                     NUMBER(10,8)      NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       法定定額償却率                     NUMBER(10,8)      NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D034KSR_TBL  PRIMARY KEY (
       耐用年数,
       適用年月日));
