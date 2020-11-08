DROP   TABLE  D078TMS_TBL   ;
CREATE TABLE  D078TMS_TBL  (
       主管部コード                       CHAR(6)           NOT NULL,
       主管部名                           VARCHAR2(62)      NOT NULL,
       主管部名カナ                       VARCHAR2(30)      NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       請求先コード                       CHAR(5)           NOT NULL,
       入金日                             CHAR(2)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D078TMS_TBL  PRIMARY KEY (
       主管部コード));
