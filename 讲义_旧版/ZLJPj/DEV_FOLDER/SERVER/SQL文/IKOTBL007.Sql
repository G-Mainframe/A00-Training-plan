DROP   TABLE  IKOTBL007   ;
CREATE TABLE  IKOTBL007  (
       契約ＮＯ                           CHAR(9)           NOT NULL,
       購入先識別番号                     NUMBER(2,0)       NOT NULL,
       債権勘定処理コード                 NUMBER(2,0)       NOT NULL,
       債務勘定処理コード                 NUMBER(2,0)       NOT NULL,
       現ディーラーコード                 CHAR(5)           NOT NULL,
       購入先新取引先コード               CHAR(7)           ,
       購入先枝番                         CHAR(3)           ,
       支払先新取引先コード               CHAR(7)           ,
       支払先枝番                         CHAR(3)           ,
CONSTRAINT  PK_IKOTBL007  PRIMARY KEY (
       契約ＮＯ,
       購入先識別番号,
       債権勘定処理コード,
       債務勘定処理コード,
       現ディーラーコード));

COMMENT ON TABLE IKOTBL007 IS '支払先コード変換テーブル';
