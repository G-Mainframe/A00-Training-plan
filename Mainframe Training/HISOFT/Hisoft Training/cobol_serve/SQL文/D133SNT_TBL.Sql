DROP   TABLE  D133SNT_TBL   ;
CREATE TABLE  D133SNT_TBL  (
       信託先コード                       CHAR(7)           NOT NULL,
       信託先名                           VARCHAR2(80)      NOT NULL,
       信託先名カナ                       VARCHAR2(40)      NOT NULL,
       銀行コード                         CHAR(4)           NOT NULL,
       支店コード                         CHAR(3)           NOT NULL,
       口座種類                           CHAR(1)           NOT NULL,
       口座番号                           CHAR(10)          NOT NULL,
       名義人                             VARCHAR2(30)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D133SNT_TBL  PRIMARY KEY (
       信託先コード));
