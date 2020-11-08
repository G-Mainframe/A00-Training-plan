DROP   TABLE  D184SKR_TBL   ;
CREATE TABLE  D184SKR_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       請求先コード                       CHAR(5)           NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       計算単位                           CHAR(1)           NOT NULL,
       端数処理区分                       CHAR(1)           NOT NULL,
       計算率分子                         NUMBER(3,0)       NOT NULL,
       計算率分母                         NUMBER(4,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D184SKR_TBL  PRIMARY KEY (
       取引先コード,
       請求先コード,
       適用年月日,
       再リース回数));
