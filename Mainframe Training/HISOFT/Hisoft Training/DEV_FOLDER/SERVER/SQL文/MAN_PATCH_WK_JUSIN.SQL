CREATE TABLE MAN_PATCH_WK_JUSIN
(
    契約番号                       CHAR(9) NOT NULL,
    請求先コード                   CHAR(8),
    回収方式                       CHAR(1),
    銀行コード                     CHAR(7),
    口座番号                       CHAR(7),
    預金種類                       CHAR(1),
    更新回収方式                   CHAR(1),
    更新銀行コード                 CHAR(7),
    更新口座番号                   CHAR(7),
    更新預金種類                   CHAR(1),
    CONSTRAINT SYS_C0026773 PRIMARY KEY (契約番号) USING INDEX
)
/
