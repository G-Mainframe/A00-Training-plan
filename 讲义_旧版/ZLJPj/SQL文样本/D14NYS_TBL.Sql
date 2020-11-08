DROP   TABLE  D14NYS_TBL   ;
CREATE TABLE  D14NYS_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       請求先コード                       CHAR(5)           NOT NULL,
       連番                               NUMBER(2,0)       NOT NULL,
       一括入金コード                     CHAR(5)           NOT NULL,
       振込名義人名                       VARCHAR2(48)      NOT NULL,
       仕向銀行名                         VARCHAR2(15)      NOT NULL,
       仕向支店名                         VARCHAR2(15)      NOT NULL,
       最新使用日                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       読替名                             VARCHAR2(48)      NOT NULL,
       振込手数料                         NUMBER(13,0)      NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D14NYS_TBL  PRIMARY KEY (
       取引先コード,
       請求先コード,
       連番));
