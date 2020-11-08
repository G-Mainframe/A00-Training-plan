DROP   TABLE  D571HNS_TBL   ;
CREATE TABLE  D571HNS_TBL  (
       入金日                             CHAR(8)           NOT NULL,
       ＳＥＱ番号                         NUMBER(6,0)       NOT NULL,
       明細番号                           NUMBER(3,0)       NOT NULL,
       借方科目コード                     CHAR(6)           NOT NULL,
       借方金額                           NUMBER(13,0)      NOT NULL,
       借方課税区分                       CHAR(3)           NOT NULL,
       貸方科目コード                     CHAR(6)           NOT NULL,
       貸方金額                           NUMBER(13,0)      NOT NULL,
       貸方課税区分                       CHAR(3)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D571HNS_TBL  PRIMARY KEY (
       入金日,
       ＳＥＱ番号,
       明細番号));
