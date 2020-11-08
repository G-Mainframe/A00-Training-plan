CREATE TABLE KEI_MIZUHO_20020719
(
    顧客番号                       CHAR(20) NOT NULL,
    ﾃﾞｰﾀ区分                       CHAR(1),
    旧銀行CD                       CHAR(4),
    旧支店CD                       CHAR(3),
    旧預金種目                     CHAR(1),
    旧口座番号                     CHAR(7),
    新支店CD                       CHAR(3),
    新支店名                       VARCHAR2(15),
    新預金種目                     CHAR(1),
    新口座番号                     CHAR(7),
    新銀行CD                       CHAR(4),
    新銀行名                       VARCHAR2(20),
    結果ＣＤ                       CHAR(1),
    CONSTRAINT SYS_C0025641 PRIMARY KEY (顧客番号) USING INDEX
)
/
