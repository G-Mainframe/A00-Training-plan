DROP   TABLE  D086NLS_TBL   ;
CREATE TABLE  D086NLS_TBL  (
       社員ＩＤ                           CHAR(4)           NOT NULL,
       名前                               CHAR(72)          NOT NULL,
       メールアドレス                     CHAR(50)          NOT NULL,
       電話番号                           CHAR(15)          NOT NULL,
       支店名称                           CHAR(40)          NOT NULL,
       部名称                             CHAR(48)          NOT NULL,
       課名称                             CHAR(48)          NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D086NLS_TBL  PRIMARY KEY (
       社員ＩＤ));
