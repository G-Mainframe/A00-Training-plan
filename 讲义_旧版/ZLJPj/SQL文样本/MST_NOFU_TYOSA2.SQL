CREATE TABLE MST_NOFU_TYOSA2
(
    郵便番号                       CHAR(7) NOT NULL,
    住所                           VARCHAR2(100),
    誤＿納付先コード               CHAR(6),
    正＿納付先コード               CHAR(6),
    CONSTRAINT SYS_C0027276 PRIMARY KEY (郵便番号) USING INDEX
)
/
