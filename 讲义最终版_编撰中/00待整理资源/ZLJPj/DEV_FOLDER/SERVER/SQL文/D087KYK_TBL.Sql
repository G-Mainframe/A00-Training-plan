DROP   TABLE  D087KYK_TBL   ;
CREATE TABLE  D087KYK_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       契約先コード                       CHAR(5)           NOT NULL,
       履歴区分                           CHAR(2)           NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       内容登録日                         CHAR(8)           NOT NULL,
       内容登録者                         CHAR(8)           NOT NULL,
       内容文言                           VARCHAR2(120)     NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D087KYK_TBL  PRIMARY KEY (
       取引先コード,
       契約先コード,
       履歴区分,
       連番));
