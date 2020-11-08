CREATE TABLE MFS_HEADER
(
    データ区分                     CHAR(1) NOT NULL,
    種別コード                     CHAR(2) NOT NULL,
    コード区分                     CHAR(1) NOT NULL,
    ＭＦＳ使用欄                   CHAR(2) NOT NULL,
    委託者コード                   CHAR(8) NOT NULL,
    委託者名                       CHAR(40) NOT NULL,
    引落日                         CHAR(4) NOT NULL,
    取引銀行番号                   CHAR(4) NOT NULL,
    取引銀行名                     CHAR(15) NOT NULL,
    取引支店番号                   CHAR(3) NOT NULL,
    取引支店名                     CHAR(15) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    ダミー                         CHAR(17) NOT NULL
)
/
CREATE UNIQUE INDEX MFS_HEADER
ON MFS_HEADER
(引落日)
/
