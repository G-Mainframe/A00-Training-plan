CREATE TABLE MFS_TORERA
(
    データ区分                     CHAR(1) NOT NULL,
    請求合計件数                   NUMBER(6,0) NOT NULL,
    請求合計金額                   NUMBER(12,0) NOT NULL,
    振替済合計件数                 CHAR(6) NOT NULL,
    振替済合計金額                 CHAR(12) NOT NULL,
    振替不能合計件数               CHAR(6) NOT NULL,
    振替不能合計金額               CHAR(12) NOT NULL,
    ダミー                         CHAR(65) NOT NULL,
    CONSTRAINT SYS_C0027082 PRIMARY KEY (データ区分) USING INDEX
)
/
