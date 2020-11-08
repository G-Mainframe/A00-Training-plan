DROP   TABLE  D265MKC_TBL   ;
CREATE TABLE  D265MKC_TBL  (
       見積番号＿連番                     NUMBER(7,0)       NOT NULL,
       見積番号枝番                       NUMBER(2,0)       NOT NULL,
       協調取引先コード                   CHAR(9)           NOT NULL,
       取得価額                           NUMBER(13,0)      NOT NULL,
       物件回収サイト                     NUMBER(2,0)       NOT NULL,
       物件回収日                         NUMBER(2,0)       NOT NULL,
       月額料金                           NUMBER(13,0)      NOT NULL,
       他社購入区分                       CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       持分比率                           NUMBER(3,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D265MKC_TBL  PRIMARY KEY (
       見積番号＿連番,
       見積番号枝番,
       協調取引先コード));
