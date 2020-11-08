CREATE TABLE KEI_KEY
(
    契約番号                       CHAR(9) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    処理ステータス                 CHAR(1) NOT NULL,
    申請書作成済区分               CHAR(1) NOT NULL,
    検収済_削除区分                CHAR(1) NOT NULL,
    送信区分                       CHAR(1) NOT NULL,
    契約番号採番日                 CHAR(8) NOT NULL,
    契約番号採番時刻               CHAR(6) NOT NULL,
    契約番号採番担当者コード       CHAR(4) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025170 PRIMARY KEY (契約番号) USING INDEX
)
/
