DROP   TABLE  D040KSJ_TBL   ;
CREATE TABLE  D040KSJ_TBL  (
       適用年月日                         CHAR(8)           NOT NULL,
       決裁グループコード                 CHAR(2)           NOT NULL,
       決裁区分                           CHAR(2)           NOT NULL,
       部所長決裁限度額                   NUMBER(13,0)      NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       基準レート                         NUMBER(9,7)       NOT NULL,
       格付                               CHAR(3)           NOT NULL,
       期間                               NUMBER(3,0)       NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D040KSJ_TBL  PRIMARY KEY (
       適用年月日,
       決裁グループコード,
       決裁区分));
