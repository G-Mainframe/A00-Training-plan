DROP   TABLE  D661MKH_TBL   ;
CREATE TABLE  D661MKH_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       満了処理年月                       CHAR(6)           NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       契約開始日                         CHAR(8)           NOT NULL,
       契約終了日                         CHAR(8)           NOT NULL,
       期間                               NUMBER(3,0)       NOT NULL,
       提携先略称                         CHAR(3)           NOT NULL,
       契約レコード件数                   NUMBER(4,0)       NOT NULL,
       最終物件番号                       NUMBER(4,0)       NOT NULL,
       満了予約フラグ                     CHAR(1)           NOT NULL,
       一般反映区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録者                             CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D661MKH_TBL  PRIMARY KEY (
       契約番号,
       満了処理年月));
