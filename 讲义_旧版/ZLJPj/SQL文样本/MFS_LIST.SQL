CREATE TABLE MFS_LIST
(
    請求先コード                   CHAR(8) NOT NULL,
    データ区分                     CHAR(1),
    銀行コード                     CHAR(4) NOT NULL,
    銀行名                         CHAR(15) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    支店名                         CHAR(15) NOT NULL,
    ダミー                         CHAR(4) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    預金者名                       CHAR(30) NOT NULL,
    請求金額                       NUMBER(10,0) NOT NULL,
    新規コード                     CHAR(1),
    ＭＦＳ欄                       CHAR(8) NOT NULL,
    顧客番号                       CHAR(12) NOT NULL,
    振替結果                       CHAR(1),
    ダミー２                       CHAR(8) NOT NULL,
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4)
)
/
