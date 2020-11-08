DROP   TABLE  D041STS_TBL   ;
CREATE TABLE  D041STS_TBL  (
       会社コード                         CHAR(10)          NOT NULL,
       会社名                             VARCHAR2(80)      NOT NULL,
       郵便番号                           CHAR(7)           NOT NULL,
       住所コード                         CHAR(11)          NOT NULL,
       住所２                             VARCHAR2(60)      NOT NULL,
       住所３                             VARCHAR2(60)      NOT NULL,
       電話番号                           CHAR(15)          NOT NULL,
       ＦＡＸ番号                         VARCHAR2(15)      NOT NULL,
       代表者名                           VARCHAR2(20)      NOT NULL,
       代表者役職名                       CHAR(30)          NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       住所１                             VARCHAR2(40)      NOT NULL,
       貸金業登録番号                     VARCHAR2(30)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D041STS_TBL  PRIMARY KEY (
       会社コード));
