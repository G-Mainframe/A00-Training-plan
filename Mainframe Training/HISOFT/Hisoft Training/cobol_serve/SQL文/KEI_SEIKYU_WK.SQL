CREATE TABLE KEI_SEIKYU_WK
(
    契約番号                       CHAR(9) NOT NULL,
    手形枚数                       NUMBER(3,0),
    入金基準日                     CHAR(2),
    預金種類                       CHAR(1),
    銀行コード                     CHAR(7),
    口座番号                       CHAR(7),
    銀行短縮コード                 CHAR(2),
    CONSTRAINT SYS_C0025696 PRIMARY KEY (契約番号) USING INDEX
)
/
