CREATE TABLE KEI_MIZUHO_ERROR
(
    契約番号                       CHAR(9) NOT NULL,
    事業所コード                   CHAR(4),
    請求先コード                   CHAR(8),
    取引先名                       VARCHAR2(60),
    検収済_削除区分                CHAR(1),
    契約銀行コード                 CHAR(7),
    顧客銀行コード                 CHAR(7),
    CONSTRAINT SYS_C0025643 PRIMARY KEY (契約番号) USING INDEX
)
/
