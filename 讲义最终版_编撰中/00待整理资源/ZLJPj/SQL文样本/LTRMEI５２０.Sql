DROP   TABLE  LTRMEI５２０   ;
CREATE TABLE  LTRMEI５２０  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       所在場所コード                     CHAR(5)           NOT NULL,
       ダミー００１                       CHAR(6)           NOT NULL,
       納付先コード                       CHAR(6)           NOT NULL,
       設置場所名漢字                     VARCHAR2(40)      NOT NULL,
       設置場所名カナ                     CHAR(20)          NOT NULL,
       設置場所郵便番号                   CHAR(7)           NOT NULL,
       設置場所住所漢字                   VARCHAR2(60)      NOT NULL,
       ダミー００２                       CHAR(17)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI５２０  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       所在場所コード,
       ダミー));
