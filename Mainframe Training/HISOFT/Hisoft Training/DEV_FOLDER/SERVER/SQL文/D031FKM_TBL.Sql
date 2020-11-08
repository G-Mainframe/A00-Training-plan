DROP   TABLE  D031FKM_TBL   ;
CREATE TABLE  D031FKM_TBL  (
       物件区分                           CHAR(2)           NOT NULL,
       種類区分                           CHAR(2)           NOT NULL,
       メーカー区分                       CHAR(3)           NOT NULL,
       物件区分名                         VARCHAR2(60)      NOT NULL,
       種類区分名                         VARCHAR2(60)      NOT NULL,
       メーカー名                         VARCHAR2(60)      NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D031FKM_TBL  PRIMARY KEY (
       物件区分,
       種類区分,
       メーカー区分));
