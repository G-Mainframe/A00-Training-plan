DROP   TABLE  D833GYS_TBL   ;
CREATE TABLE  D833GYS_TBL  (
       帝国業種コード                     CHAR(5)           NOT NULL,
       帝国業種名称                       VARCHAR2(60)      NOT NULL,
       帝国業種カナ名称                   VARCHAR2(60)      NOT NULL,
       日銀業種コード                     CHAR(7)           NOT NULL,
       日銀業種名称                       VARCHAR2(60)      NOT NULL,
       日本産業分類コード                 CHAR(7)           NOT NULL,
       日本産業分類名称                   VARCHAR2(60)      NOT NULL,
       ＢＴＭ業種コード                   CHAR(7)           NOT NULL,
       ＢＴＭ業種名称                     VARCHAR2(60)      NOT NULL,
       予備１                             CHAR(7)           NOT NULL,
       名称１                             VARCHAR2(60)      NOT NULL,
       予備２                             CHAR(7)           NOT NULL,
       名称２                             VARCHAR2(60)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D833GYS_TBL  PRIMARY KEY (
       帝国業種コード));
