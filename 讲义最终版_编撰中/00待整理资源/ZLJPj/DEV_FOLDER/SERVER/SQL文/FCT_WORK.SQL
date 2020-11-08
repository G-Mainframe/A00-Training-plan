CREATE TABLE FCT_WORK
(
    契約番号                       CHAR(7) NOT NULL,
    種類                           CHAR(1),
    新事業所コード                 CHAR(4),
    CONSTRAINT TEST001 PRIMARY KEY (契約番号) USING INDEX
)
/
COMMENT ON TABLE FCT_WORK IS '終了分削除＆事業所変換用　ファクタリングＫＥＹテーブル'
/
