DROP   TABLE  D646KZN_TBL   ;
CREATE TABLE  D646KZN_TBL  (
       月次年月                           CHAR(6)           NOT NULL,
       借入金番号                         CHAR(10)          NOT NULL,
       借入先種別                         CHAR(2)           NOT NULL,
       借入先コード                       CHAR(7)           NOT NULL,
       借入先名                           VARCHAR2(40)      NOT NULL,
       国内債権短期借入金残高             NUMBER(13,0)      NOT NULL,
       国内債権長期借入金残高             NUMBER(13,0)      NOT NULL,
       国内債権借入金残高                 NUMBER(13,0)      NOT NULL,
       差入率                             NUMBER(3,0)       NOT NULL,
       海外債権借入金残高                 NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録者                             CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D646KZN_TBL  PRIMARY KEY (
       月次年月,
       借入金番号));
