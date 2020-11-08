CREATE TABLE FCT_KEY
(
    事業所コード                   CHAR(4) NOT NULL,
    契約番号                       CHAR(7) NOT NULL,
    契約枝番                       CHAR(2) NOT NULL,
    処理ステータス                 CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT PK_FCT_KEY PRIMARY KEY (契約番号, 契約枝番) USING INDEX
)
/
