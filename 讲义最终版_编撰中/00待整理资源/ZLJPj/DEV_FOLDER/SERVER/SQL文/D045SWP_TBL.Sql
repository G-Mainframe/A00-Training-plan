DROP   TABLE  D045SWP_TBL   ;
CREATE TABLE  D045SWP_TBL  (
       仕訳コード                         CHAR(6)           NOT NULL,
       貸借区分                           CHAR(1)           NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       入金＿消込短縮区分                 CHAR(1)           NOT NULL,
       仕訳短縮コード                     CHAR(3)           NOT NULL,
       仕訳名称                           CHAR(40)          NOT NULL,
       勘定科目                           CHAR(6)           NOT NULL,
       口座番号                           CHAR(10)          NOT NULL,
       課税区分コード                     CHAR(3)           NOT NULL,
       主管部店                           CHAR(4)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D045SWP_TBL  PRIMARY KEY (
       仕訳コード,
       貸借区分,
       連番));
