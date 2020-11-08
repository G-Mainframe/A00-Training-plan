DROP   TABLE  D099HKS_TBL   ;
CREATE TABLE  D099HKS_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       契約先コード                       CHAR(5)           NOT NULL,
       承認部署                           CHAR(4)           NOT NULL,
       条件連番                           NUMBER(2,0)       NOT NULL,
       包括異例条件コード                 NUMBER(3,0)       NOT NULL,
       コメント                           VARCHAR2(40)      NOT NULL,
       承認日                             CHAR(8)           NOT NULL,
       適用期限年月                       CHAR(6)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D099HKS_TBL  PRIMARY KEY (
       取引先コード,
       契約先コード,
       承認部署,
       条件連番));
