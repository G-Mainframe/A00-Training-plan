DROP   TABLE  D645UTT_TBL   ;
CREATE TABLE  D645UTT_TBL  (
       代表契約番号                       CHAR(10)          NOT NULL,
       束数                               NUMBER(3,0)       NOT NULL,
       連番                               NUMBER(3,0)       NOT NULL,
       手形番号                           CHAR(10)          NOT NULL,
       期日                               CHAR(8)           NOT NULL,
       金額                               NUMBER(13,0)      NOT NULL,
       振出人取引先コード                 CHAR(9)           NOT NULL,
       振出人契約先コード                 CHAR(5)           NOT NULL,
       振出人名称                         VARCHAR2(40)      NOT NULL,
       振出人名称カナ                     VARCHAR2(40)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       手形状態                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_D645UTT_TBL  PRIMARY KEY (
       代表契約番号,
       束数,
       連番));
