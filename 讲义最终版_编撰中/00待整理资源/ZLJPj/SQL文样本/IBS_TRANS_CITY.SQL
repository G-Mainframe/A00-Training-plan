CREATE TABLE IBS_TRANS_CITY
(
    案件ＮＯ                         CHAR(12) DEFAULT ' ' NOT NULL,
    関連都市コード                 CHAR(3) DEFAULT ' ' NOT NULL,
    CONSTRAINT SYS_C0024076 PRIMARY KEY (案件ＮＯ, 関連都市コード) USING INDEX
)
/
