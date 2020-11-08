CREATE TABLE ANK_KEY
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    課                             CHAR(1) NOT NULL,
    担当者コード                   CHAR(4) NOT NULL,
    処理ステータス                 CHAR(1) NOT NULL,
    案件状況区分                   CHAR(2) NOT NULL,
    案件発生区分                   CHAR(1) NOT NULL,
    削除区分                       CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022015 PRIMARY KEY (案件番号, 見積枝番) USING INDEX
)
/
