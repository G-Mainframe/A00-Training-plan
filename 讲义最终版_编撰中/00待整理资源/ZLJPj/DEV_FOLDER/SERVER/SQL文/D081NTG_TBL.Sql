DROP   TABLE  D081NTG_TBL   ;
CREATE TABLE  D081NTG_TBL  (
       登録番号                           CHAR(4)           NOT NULL,
       先方参照番号                       CHAR(10)          NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       請求先コード                       CHAR(5)           NOT NULL,
       部門名称１                         VARCHAR2(40)      NOT NULL,
       部門名称２                         VARCHAR2(40)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D081NTG_TBL  PRIMARY KEY (
       登録番号));
