DROP   TABLE  D111HTR_TBL   ;
CREATE TABLE  D111HTR_TBL  (
       保険会社区分                       CHAR(4)           NOT NULL,
       適用開始日                         CHAR(8)           NOT NULL,
       経過月日                           CHAR(4)           NOT NULL,
       短期保険料率                       NUMBER(10,8)      NOT NULL,
       保険会社区分名称                   VARCHAR2(80)      NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       圏内区分                           CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D111HTR_TBL  PRIMARY KEY (
       保険会社区分,
       適用開始日,
       経過月日));
