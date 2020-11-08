DROP   TABLE  D57NKF_TBL   ;
CREATE TABLE  D57NKF_TBL  (
       消込通番                           CHAR(11)          NOT NULL,
       明細番号                           NUMBER(3,0)       NOT NULL,
       借方科目コード                     CHAR(6)           NOT NULL,
       借方金額                           NUMBER(13,0)      NOT NULL,
       借方課税区分                       CHAR(3)           NOT NULL,
       借方ＲＥＦＮＯ                     VARCHAR2(20)      NOT NULL,
       貸方科目コード                     CHAR(6)           NOT NULL,
       貸方金額                           NUMBER(13,0)      NOT NULL,
       貸方課税区分                       CHAR(3)           NOT NULL,
       貸方ＲＥＦＮＯ                     VARCHAR2(20)      NOT NULL,
       消込取消区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D57NKF_TBL  PRIMARY KEY (
       消込通番,
       明細番号));
