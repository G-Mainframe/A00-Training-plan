DROP   TABLE  D183TIZ_TBL   ;
CREATE TABLE  D183TIZ_TBL  (
       適用年月日                         CHAR(8)           NOT NULL,
       連番                               NUMBER(7,0)       NOT NULL,
       範囲金額                           NUMBER(13,0)      NOT NULL,
       印紙税                             NUMBER(13,0)      NOT NULL,
       文書種類区分                       CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D183TIZ_TBL  PRIMARY KEY (
       適用年月日,
       連番));
