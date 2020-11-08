DROP   TABLE  D061GLS_TBL   ;
CREATE TABLE  D061GLS_TBL  (
       ユーザＩＤ                         CHAR(10)          NOT NULL,
       会社コード                         CHAR(2)           NOT NULL,
       アクセス権限                       CHAR(12)          NOT NULL,
       自部門コード１                     CHAR(5)           NOT NULL,
       自部門コード２                     CHAR(5)           NOT NULL,
       自部門コード３                     CHAR(5)           NOT NULL,
       自部門コード４                     CHAR(5)           NOT NULL,
       自部門コード５                     CHAR(5)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D061GLS_TBL  PRIMARY KEY (
       ユーザＩＤ));
