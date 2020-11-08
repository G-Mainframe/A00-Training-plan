DROP   TABLE  IKOTBL010   ;
CREATE TABLE  IKOTBL010  (
       契約番号                           CHAR(10)          NOT NULL,
       物件番号                           NUMBER(4,0)       NOT NULL,
       解約日                             CHAR(7)           NOT NULL,
       西暦解約日                         CHAR(8)           NOT NULL,
       新物件番号                         NUMBER(4,0)       NOT NULL,
       ＩＮ区分                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_IKOTBL010  PRIMARY KEY (
       契約番号,
       物件番号,
       解約日));

COMMENT ON TABLE IKOTBL010 IS '新物件番号採番テーブル';
