DROP   TABLE  D276MKI_TBL   ;
CREATE TABLE  D276MKI_TBL  (
       見積番号                           NUMBER(7,0)       NOT NULL,
       見積番号枝番                       NUMBER(2,0)       NOT NULL,
       契約種類                           CHAR(3)           NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       繰延期間                           NUMBER(4,2)       NOT NULL,
       前渡金区分                         CHAR(1)           NOT NULL,
       支払サイト                         NUMBER(2,0)       NOT NULL,
       支払日                             NUMBER(2,0)       NOT NULL,
       支払金額                           NUMBER(13,0)      NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D276MKI_TBL  PRIMARY KEY (
       見積番号,
       見積番号枝番,
       契約種類,
       連番));
