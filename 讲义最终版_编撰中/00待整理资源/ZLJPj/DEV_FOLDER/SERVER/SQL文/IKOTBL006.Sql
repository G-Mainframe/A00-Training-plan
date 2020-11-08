DROP   TABLE  IKOTBL006   ;
CREATE TABLE  IKOTBL006  (
       旧取引先コード                     CHAR(8)           NOT NULL,
       目的ＣＤ                           CHAR(1)           NOT NULL,
       旧ユーザーコード                   CHAR(7)           NOT NULL,
       新取引先コード                     CHAR(7)           NOT NULL,
       枝番                               CHAR(8)           NOT NULL,
CONSTRAINT  PK_IKOTBL006  PRIMARY KEY (
       旧取引先コード,
       目的ＣＤ,
       旧ユーザーコード));

COMMENT ON TABLE IKOTBL006 IS 'マスタコード変換テーブル';
