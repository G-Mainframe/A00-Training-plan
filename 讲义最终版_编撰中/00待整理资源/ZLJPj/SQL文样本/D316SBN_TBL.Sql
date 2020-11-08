DROP   TABLE  D316SBN_TBL   ;
CREATE TABLE  D316SBN_TBL  (
       期                                 CHAR(2)           NOT NULL,
       契約形態                           CHAR(1)           NOT NULL,
       特定取引先区分                     CHAR(1)           NOT NULL,
       最終契約番号                       CHAR(10)          NOT NULL,
       部所名                             CHAR(20)          NOT NULL,
       開始番号                           NUMBER(9,0)       NOT NULL,
       終了番号                           NUMBER(9,0)       NOT NULL,
       採番前最終番号                     CHAR(10)          NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D316SBN_TBL  PRIMARY KEY (
       期,
       契約形態,
       特定取引先区分));
