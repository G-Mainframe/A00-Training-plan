DROP   TABLE  D805NHN_TBL   ;
CREATE TABLE  D805NHN_TBL  (
       ＳＥＱ                             NUMBER(4,0)       NOT NULL,
       旧納付先コード                     CHAR(6)           NOT NULL,
       旧納付先コード名                   VARCHAR2(40)      NOT NULL,
       新納付先コード                     CHAR(6)           NOT NULL,
       新納付先コード名                   VARCHAR2(40)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D805NHN_TBL  PRIMARY KEY (
       ＳＥＱ,
       旧納付先コード));
