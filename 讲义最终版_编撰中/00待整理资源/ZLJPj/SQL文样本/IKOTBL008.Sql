DROP   TABLE  IKOTBL008   ;
CREATE TABLE  IKOTBL008  (
       旧入金仕訳短縮コード               CHAR(2)           NOT NULL,
       新入金仕訳短縮コード               CHAR(2)           NOT NULL,
CONSTRAINT  PK_IKOTBL008  PRIMARY KEY (
       旧入金仕訳短縮コード));

COMMENT ON TABLE IKOTBL008 IS '入金仕訳短縮コード';
