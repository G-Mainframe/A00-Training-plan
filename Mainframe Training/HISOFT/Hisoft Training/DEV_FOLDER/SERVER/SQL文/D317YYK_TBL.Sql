DROP   TABLE  D317YYK_TBL   ;
CREATE TABLE  D317YYK_TBL  (
       契約番号                           CHAR(10)          NOT NULL,
       期                                 CHAR(2)           NOT NULL,
       契約形態                           CHAR(1)           NOT NULL,
       特定取引先区分                     CHAR(1)           NOT NULL,
       状態                               CHAR(1)           NOT NULL,
       担当者コード                       CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       コメント                           VARCHAR2(40)      NOT NULL,
       使用中フラグ                       CHAR(1)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D317YYK_TBL  PRIMARY KEY (
       契約番号));
