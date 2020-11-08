CREATE TABLE KEI_PATTERN_WK
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    物件コード                     CHAR(3) NOT NULL,
    設置場所コード                 CHAR(3) NOT NULL,
    CONSTRAINT SYS_C0025666 PRIMARY KEY (契約番号, 物件ＮＯ) USING INDEX
)
/
