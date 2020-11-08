CREATE TABLE MAN_PATCH_WK_MEISAI
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    請求先コード                   CHAR(8),
    回収方式１                     CHAR(1),
    回収方式２                     CHAR(1),
    銀行コード                     CHAR(7),
    口座番号                       CHAR(7),
    預金種類                       CHAR(1),
    更新回収方式１                 CHAR(1),
    更新回収方式２                 CHAR(1),
    更新銀行コード                 CHAR(7),
    更新口座番号                   CHAR(7),
    更新預金種類                   CHAR(1),
    CONSTRAINT SYS_C0026776 PRIMARY KEY (契約番号, 物件ＮＯ) USING INDEX
)
/
