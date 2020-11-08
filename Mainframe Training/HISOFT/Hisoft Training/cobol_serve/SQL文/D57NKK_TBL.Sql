DROP   TABLE  D57NKK_TBL   ;
CREATE TABLE  D57NKK_TBL  (
       消込通番                           CHAR(11)          NOT NULL,
       レコード区分                       CHAR(1)           NOT NULL,
       消込年月日                         CHAR(8)           NOT NULL,
       消込時刻                           CHAR(8)           NOT NULL,
       消込担当者                         VARCHAR2(20)      NOT NULL,
       仕訳短縮コード                     CHAR(2)           NOT NULL,
       摘要                               VARCHAR2(80)      NOT NULL,
       消込取消区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D57NKK_TBL  PRIMARY KEY (
       消込通番));
