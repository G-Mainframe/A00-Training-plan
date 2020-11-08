DROP   TABLE  IKOTBL004   ;
CREATE TABLE  IKOTBL004  (
       取引先コード                       CHAR(8)           NOT NULL,
       転リース提携先コード               CHAR(3)           NOT NULL,
CONSTRAINT  PK_IKOTBL004  PRIMARY KEY (
       取引先コード));

COMMENT ON TABLE IKOTBL004 IS '転リース提携先コード変換テーブル';
