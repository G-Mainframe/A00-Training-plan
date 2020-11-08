CREATE TABLE BANK_CHANGE
(
    旧銀行コード                   CHAR(4) NOT NULL,
    旧支店コード                   CHAR(3) NOT NULL,
    新銀行コード                   CHAR(4) NOT NULL,
    新支店コード                   CHAR(3) NOT NULL,
    新銀行名＿漢字                 VARCHAR2(20),
    新銀行名＿カナ                 VARCHAR2(15),
    新支店名＿漢字                 VARCHAR2(20),
    新支店名＿カナ                 VARCHAR2(15)
)
/
CREATE UNIQUE INDEX BANK_CHANGE
ON BANK_CHANGE
(旧銀行コード, 旧支店コード)
/
