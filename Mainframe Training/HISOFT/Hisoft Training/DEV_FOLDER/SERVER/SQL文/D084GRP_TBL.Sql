DROP   TABLE  D084GRP_TBL   ;
CREATE TABLE  D084GRP_TBL  (
       グループコード                     CHAR(9)           NOT NULL,
       グループ名                         VARCHAR2(80)      NOT NULL,
       グループ名カナ                     VARCHAR2(40)      NOT NULL,
       部課コード                         CHAR(4)           NOT NULL,
       担当者コード                       CHAR(8)           NOT NULL,
       郵便番号                           CHAR(7)           NOT NULL,
       住所コード                         CHAR(11)          NOT NULL,
       住所１                             VARCHAR2(60)      NOT NULL,
       住所２                             VARCHAR2(60)      NOT NULL,
       住所３                             VARCHAR2(60)      NOT NULL,
       使用不可フラグ                     CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D084GRP_TBL  PRIMARY KEY (
       グループコード));
