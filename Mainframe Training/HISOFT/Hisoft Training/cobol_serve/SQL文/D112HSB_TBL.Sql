DROP   TABLE  D112HSB_TBL   ;
CREATE TABLE  D112HSB_TBL  (
       保険会社識別コード                 CHAR(2)           NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       動総保険証券番号                   CHAR(11)          NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D112HSB_TBL  PRIMARY KEY (
       保険会社識別コード,
       適用年月日));
