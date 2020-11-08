DROP   TABLE  D352KHS_TBL   ;
CREATE TABLE  D352KHS_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       費用種類                           CHAR(3)           NOT NULL,
       繰延月数                           NUMBER(3,0)       NOT NULL,
       費用区分                           CHAR(1)           NOT NULL,
       費用金額                           NUMBER(13,0)      NOT NULL,
       初回支払予定年月                   CHAR(4)           NOT NULL,
       支払間隔                           NUMBER(2,0)       NOT NULL,
       支払回数                           NUMBER(3,0)       NOT NULL,
       支払種類                           CHAR(2)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D352KHS_TBL  PRIMARY KEY (
       契約番号,
       再リース回数,
       費用種類,
       繰延月数));
