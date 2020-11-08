DROP   TABLE  IKOTBL002   ;
CREATE TABLE  IKOTBL002  (
       契約ＮＯ                           CHAR(9)           NOT NULL,
       再リースコード                     NUMBER(1,0)       NOT NULL,
       旧債権勘定処理コード               NUMBER(2,0)       NOT NULL,
       旧債務勘定処理コード               NUMBER(2,0)       NOT NULL,
       再リース回数                       NUMBER(2,0)       NOT NULL,
       債権勘定処理コード                 NUMBER(2,0)       NOT NULL,
       債務勘定処理コード                 NUMBER(2,0)       NOT NULL,
       契約種類                           CHAR(3)           NOT NULL,
       主契約区分                         CHAR(1)           NOT NULL,
       回収手順                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_IKOTBL002  PRIMARY KEY (
       契約ＮＯ,
       再リースコード,
       旧債権勘定処理コード,
       旧債務勘定処理コード));

COMMENT ON TABLE IKOTBL002 IS '契約種類等変換テーブル';
