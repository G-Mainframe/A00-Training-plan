DROP   TABLE  D082NFH_TBL   ;
CREATE TABLE  D082NFH_TBL  (
       転リース提携先コード               CHAR(3)           NOT NULL,
       先方納付先コード                   CHAR(6)           NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       納付先コード                       CHAR(6)           NOT NULL,
       設置場所名                         VARCHAR2(20)      NOT NULL,
       設置場所名カナ                     VARCHAR2(20)      NOT NULL,
       設置場所郵便番号                   CHAR(7)           NOT NULL,
       設置場所住所                       VARCHAR2(40)      NOT NULL,
       設置場所住所２                     VARCHAR2(60)      NOT NULL,
       設置場所住所３                     VARCHAR2(60)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D082NFH_TBL  PRIMARY KEY (
       転リース提携先コード,
       先方納付先コード,
       適用年月日));
