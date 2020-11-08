DROP   TABLE  D368HKK_TBL   ;
CREATE TABLE  D368HKK_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       申請連番                           NUMBER(2,0)       NOT NULL,
       現行金利                           NUMBER(10,8)      NOT NULL,
       変更金利                           NUMBER(10,8)      NOT NULL,
       変更予定日                         CHAR(8)           NOT NULL,
       確定日                             CHAR(8)           NOT NULL,
       更新済フラグ                       CHAR(1)           NOT NULL,
       粗利差額                           NUMBER(13,0)      NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D368HKK_TBL  PRIMARY KEY (
       契約番号,
       申請連番));
