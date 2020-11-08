DROP   TABLE  IKOTBL003   ;
CREATE TABLE  IKOTBL003  (
       旧支払先コード                     CHAR(4)           NOT NULL,
       旧取引先コード                     CHAR(8)           NOT NULL,
       項目区分                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_IKOTBL003  PRIMARY KEY (
       旧支払先コード));

COMMENT ON TABLE IKOTBL003 IS '支払取引先変換テーブル';
