DROP   TABLE  D114HSK_TBL   ;
CREATE TABLE  D114HSK_TBL  (
       送金先コード                       CHAR(2)           NOT NULL,
       送金先名                           VARCHAR2(80)      NOT NULL,
       送金先名略称                       VARCHAR2(10)      NOT NULL,
       送金先名カナ                       VARCHAR2(25)      NOT NULL,
       送金先名略称カナ                   VARCHAR2(12)      NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       支払先コード                       CHAR(5)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D114HSK_TBL  PRIMARY KEY (
       送金先コード));
