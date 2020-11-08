DROP   TABLE  D57NKM_TBL   ;
CREATE TABLE  D57NKM_TBL  (
       消込通番                           CHAR(11)          NOT NULL,
       入金通番                           CHAR(11)          NOT NULL,
       消込対象額                         NUMBER(13,0)      NOT NULL,
       消込取消区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D57NKM_TBL  PRIMARY KEY (
       消込通番,
       入金通番));
