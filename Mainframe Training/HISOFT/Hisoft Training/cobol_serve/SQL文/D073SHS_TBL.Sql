DROP   TABLE  D073SHS_TBL   ;
CREATE TABLE  D073SHS_TBL  (
       包括エリアコード                   CHAR(1)           NOT NULL,
       エリアコード                       CHAR(2)           NOT NULL,
       シャープ支店コード                 CHAR(2)           NOT NULL,
       適用年月日                         CHAR(8)           NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       契約先コード                       CHAR(5)           NOT NULL,
       支店名                             VARCHAR2(60)      NOT NULL,
       支店名カナ                         CHAR(20)          NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D073SHS_TBL  PRIMARY KEY (
       包括エリアコード,
       エリアコード,
       シャープ支店コード,
       適用年月日));
