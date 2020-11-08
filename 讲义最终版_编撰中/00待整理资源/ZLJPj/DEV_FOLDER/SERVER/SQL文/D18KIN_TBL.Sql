DROP   TABLE  D18KIN_TBL   ;
CREATE TABLE  D18KIN_TBL  (
       金利区分                           CHAR(2)           NOT NULL,
       適用開始日                         CHAR(8)           NOT NULL,
       期間                               NUMBER(3,0)       NOT NULL,
       金利                               NUMBER(10,8)      NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       適用終了日                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       主契約区分                         CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       財務部ＩＯ                         NUMBER(10,8)      NOT NULL,
CONSTRAINT  PK_D18KIN_TBL  PRIMARY KEY (
       金利区分,
       適用開始日,
       期間));
