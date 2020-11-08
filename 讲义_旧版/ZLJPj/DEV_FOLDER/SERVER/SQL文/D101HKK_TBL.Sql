DROP   TABLE  D101HKK_TBL   ;
CREATE TABLE  D101HKK_TBL  (
       保険会社識別コード                 CHAR(2)           NOT NULL,
       保険会社名                         VARCHAR2(80)      NOT NULL,
       保険会社名略称                     VARCHAR2(10)      NOT NULL,
       保険会社名カナ                     VARCHAR2(50)      NOT NULL,
       保険会社名略称カナ                 VARCHAR2(12)      NOT NULL,
       保険会社代理店コード               CHAR(9)           NOT NULL,
       保険会社代理店名                   VARCHAR2(80)      NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D101HKK_TBL  PRIMARY KEY (
       保険会社識別コード));
