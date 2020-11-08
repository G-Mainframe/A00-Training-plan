DROP   TABLE  D315KNO_TBL   ;
CREATE TABLE  D315KNO_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       最新再リース回数                   NUMBER(2,0)       NOT NULL,
       最終物件番号                       NUMBER(4,0)       NOT NULL,
       請求回収条件変更フラグ             CHAR(1)           NOT NULL,
       欠落請求書発行済フラグ             CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       年号                               CHAR(2)           NOT NULL,
       物件処分申請連番                   NUMBER(2,0)       NOT NULL,
       予約中再リース回数                 NUMBER(2,0)       NOT NULL,
       前回再リース回数                   NUMBER(2,0)       NOT NULL,
       依頼番号                           NUMBER(7,0)       NOT NULL,
       最終枝番                           CHAR(2)           NOT NULL,
       包括申請連番                       NUMBER(2,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D315KNO_TBL  PRIMARY KEY (
       契約番号));
