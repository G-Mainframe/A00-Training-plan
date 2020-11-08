DROP   TABLE  D854KSH_TBL   ;
CREATE TABLE  D854KSH_TBL  (
       与信管理先コード                   CHAR(9)           NOT NULL,
       支払予定年月日                     CHAR(8)           NOT NULL,
       支払連番                           NUMBER(4,0)       NOT NULL,
       支払先名                           VARCHAR2(80)      NOT NULL,
       支払理由                           VARCHAR2(20)      NOT NULL,
       支払金額                           NUMBER(13,0)      NOT NULL,
       支払消費税金額                     NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D854KSH_TBL  PRIMARY KEY (
       与信管理先コード,
       支払予定年月日,
       支払連番));
