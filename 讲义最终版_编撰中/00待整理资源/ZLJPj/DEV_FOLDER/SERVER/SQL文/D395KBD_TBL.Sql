DROP   TABLE  D395KBD_TBL   ;
CREATE TABLE  D395KBD_TBL  (
       先契約番号                         CHAR(10)          NOT NULL,
       先再リース回数                     NUMBER(2,0)       NOT NULL,
       元契約番号                         CHAR(10)          NOT NULL,
       元再リース回数                     NUMBER(2,0)       NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D395KBD_TBL  PRIMARY KEY (
       先契約番号,
       先再リース回数,
       元契約番号,
       元再リース回数));
