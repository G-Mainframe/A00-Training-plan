CREATE TABLE MAN_PATCH_WK_SIN
(
    契約番号                       CHAR(9) NOT NULL,
    請求先コード_新                CHAR(8),
    回収方式１_新                  CHAR(1),
    回収方式２_新                  CHAR(1),
    銀行コード_新                  CHAR(7),
    口座番号_新                    CHAR(7),
    預金種類_新                    CHAR(1),
    更新回収方式１_新              CHAR(1),
    更新回収方式２_新              CHAR(1),
    更新銀行コード_新              CHAR(7),
    更新口座番号_新                CHAR(7),
    更新預金種類_新                CHAR(1),
    CONSTRAINT SYS_C0026778 PRIMARY KEY (契約番号) USING INDEX
)
/
