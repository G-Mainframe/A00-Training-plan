DROP   TABLE  D650TYK_TBL   ;
CREATE TABLE  D650TYK_TBL  (
       約款パターン                       CHAR(1)           NOT NULL,
       行番号                             NUMBER(3,0)       NOT NULL,
       文字種                             CHAR(1)           NOT NULL,
       フォントサイズ                     CHAR(2)           NOT NULL,
       文面                               VARCHAR2(110)     NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D650TYK_TBL  PRIMARY KEY (
       約款パターン,
       行番号));
