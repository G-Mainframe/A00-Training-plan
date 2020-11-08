DROP   TABLE  D185SFR_TBL   ;
CREATE TABLE  D185SFR_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       請求先コード                       CHAR(5)           NOT NULL,
       対象資産コード                     CHAR(7)           NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       付保率                             NUMBER(2,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D185SFR_TBL  PRIMARY KEY (
       取引先コード,
       請求先コード,
       対象資産コード,
       適用年月日,
       再リース回数));
