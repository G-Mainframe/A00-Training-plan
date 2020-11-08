DROP   TABLE  D115SCH_TBL   ;
CREATE TABLE  D115SCH_TBL  (
       業務年月日                         CHAR(8)           NOT NULL,
       照会更新区分                       CHAR(1)           NOT NULL,
       メニューボタンＩＤ                 CHAR(8)           NOT NULL,
       開始時間                           CHAR(4)           NOT NULL,
       終了時間                           CHAR(4)           NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D115SCH_TBL  PRIMARY KEY (
       業務年月日,
       照会更新区分,
       メニューボタンＩＤ));
