CREATE TABLE KEI_PATTERN_MST
(
    顧客コード                     CHAR(6) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    CONSTRAINT SYS_C0025661 PRIMARY KEY (顧客コード) USING INDEX
)
/
