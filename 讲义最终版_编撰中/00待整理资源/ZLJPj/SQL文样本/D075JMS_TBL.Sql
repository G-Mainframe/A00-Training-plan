DROP   TABLE  D075JMS_TBL   ;
CREATE TABLE  D075JMS_TBL  (
       ジョモ支店コード                   CHAR(4)           NOT NULL,
       ジョモ支店名                       VARCHAR2(60)      NOT NULL,
       ジョモ支店名カナ                   VARCHAR2(30)      NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       支払先コード                       CHAR(5)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D075JMS_TBL  PRIMARY KEY (
       ジョモ支店コード));
