DROP   TABLE  D076SYW_TBL   ;
CREATE TABLE  D076SYW_TBL  (
       期間                               NUMBER(3,0)       NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       割引係数                           NUMBER(7,5)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D076SYW_TBL  PRIMARY KEY (
       期間,
       適用年月日));
