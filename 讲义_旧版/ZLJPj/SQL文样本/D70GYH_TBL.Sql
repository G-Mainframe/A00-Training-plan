DROP   TABLE  D70GYH_TBL   ;
CREATE TABLE  D70GYH_TBL  (
       業務内訳コード                     CHAR(2)           NOT NULL,
       グループＩＤ                       NUMBER(3,0)       NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       管理年                             CHAR(4)           NOT NULL,
       管理月                             CHAR(2)           NOT NULL,
       管理日                             CHAR(2)           NOT NULL,
       レコード説明                       VARCHAR2(50)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D70GYH_TBL  PRIMARY KEY (
       業務内訳コード,
       グループＩＤ,
       連番));
