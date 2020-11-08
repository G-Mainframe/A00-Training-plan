DROP   TABLE  D071KHN_TBL   ;
CREATE TABLE  D071KHN_TBL  (
       転リース提携先コード               CHAR(3)           NOT NULL,
       先方購入先コード                   CHAR(6)           NOT NULL,
       取引先コード＿購入先               CHAR(9)           NOT NULL,
       支払先コード＿購入先               CHAR(5)           NOT NULL,
       取引先コード＿支払先               CHAR(9)           NOT NULL,
       支払先コード＿支払先               CHAR(5)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D071KHN_TBL  PRIMARY KEY (
       転リース提携先コード,
       先方購入先コード));
