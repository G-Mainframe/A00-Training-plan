DROP   TABLE  IKOTBL005   ;
CREATE TABLE  IKOTBL005  (
       現請求内訳コード                   CHAR(3)           NOT NULL,
       アクセス区分                       CHAR(1)           NOT NULL,
       勘定処理コード                     CHAR(2)           NOT NULL,
       消費税コード                       CHAR(2)           NOT NULL,
       徴収長短区分                       NUMBER(1,0)       NOT NULL,
       手数料請求コード                   CHAR(2)           NOT NULL,
       再リースコード                     NUMBER(1,0)       NOT NULL,
       計上区分                           NUMBER(1,0)       NOT NULL,
       区分１                             NUMBER(1,0)       NOT NULL,
       債協上１桁                         CHAR(1)           NOT NULL,
       区分２                             CHAR(1)           NOT NULL,
       契約種類上１桁                     NUMBER(1,0)       NOT NULL,
       新請求内訳コード                   CHAR(3)           ,
       新請求内訳コード２                 CHAR(3)           ,
CONSTRAINT  PK_IKOTBL005  PRIMARY KEY (
       現請求内訳コード,
       アクセス区分,
       勘定処理コード,
       消費税コード,
       徴収長短区分,
       手数料請求コード,
       再リースコード,
       計上区分,
       区分１,
       債協上１桁,
       区分２,
       契約種類上１桁));

COMMENT ON TABLE IKOTBL005 IS '請求内訳コード変換テーブル';
