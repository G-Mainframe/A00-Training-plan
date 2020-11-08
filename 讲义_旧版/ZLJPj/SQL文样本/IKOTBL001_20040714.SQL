DROP   TABLE  IKOTBL001   ;
CREATE TABLE  IKOTBL001  (
       取引先コード                       CHAR(8)           NOT NULL,
       目的ＣＤ                           CHAR(1)           NOT NULL,
       新取引先コード                     CHAR(7)           NOT NULL,
       枝番                               CHAR(3)           NOT NULL,
       与信括りコード                     CHAR(7)           NOT NULL,
CONSTRAINT  PK_IKOTBL001  PRIMARY KEY (
       取引先コード,
       目的ＣＤ));

COMMENT ON TABLE IKOTBL001 IS '変換テーブル';
