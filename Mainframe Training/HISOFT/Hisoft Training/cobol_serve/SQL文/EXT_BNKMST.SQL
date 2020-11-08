CREATE TABLE EXT_BNKMST
(
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    付加コード                     CHAR(1),
    短縮コード                     CHAR(4),
    委託者コード                   CHAR(10),
    銀行名                         CHAR(30) NOT NULL,
    銀行名カナ                     CHAR(15),
    支店名                         CHAR(30),
    支店名カナ                     CHAR(15),
    本店所在県                     CHAR(2),
    手形交換所                     CHAR(4),
    郵便番号                       CHAR(7),
    住所１                         CHAR(40),
    住所２                         CHAR(40),
    預金種類                       CHAR(1),
    口座番号                       CHAR(7),
    入金日                         CHAR(2),
    回収方式                       CHAR(1),
    適用日１                       CHAR(8),
    適用日２                       CHAR(8),
    適用日３                       CHAR(8),
    適用日４                       CHAR(8),
    適用日５                       CHAR(8),
    適用日６                       CHAR(8),
    自振ファイル名                 CHAR(8)
)
/
CREATE UNIQUE INDEX EXT_BNKMST
ON EXT_BNKMST
(銀行コード, 支店コード, 付加コード)
/
