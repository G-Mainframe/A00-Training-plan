DROP   TABLE  IKOTBL009   ;
CREATE TABLE  IKOTBL009  (
       契約ＮＯ                           CHAR(9)           NOT NULL,
       再リースコード                     NUMBER(1,0)       NOT NULL,
       債務勘定処理コード                 NUMBER(2,0)       NOT NULL,
       債務取引先コード                   CHAR(8)           NOT NULL,
       現支払先コード                     CHAR(8)           NOT NULL,
       支払先新取引先コード               CHAR(7)           ,
       支払先枝番                         CHAR(3)           ,
CONSTRAINT  PK_IKOTBL009  PRIMARY KEY (
       契約ＮＯ,
       再リースコード,
       債務勘定処理コード,
       債務取引先コード,
       現支払先コード));

COMMENT ON TABLE IKOTBL009 IS '債務支払先コード変換テーブル';
