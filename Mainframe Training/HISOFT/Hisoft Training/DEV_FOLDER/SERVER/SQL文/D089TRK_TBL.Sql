DROP   TABLE  D089TRK_TBL   ;
CREATE TABLE  D089TRK_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       格付承認日                         CHAR(8)           NOT NULL,
       格付ランク                         CHAR(3)           NOT NULL,
       スコアリング評点                   NUMBER(3,0)       NOT NULL,
       帝国評点                           NUMBER(3,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D089TRK_TBL  PRIMARY KEY (
       取引先コード,
       格付承認日));
