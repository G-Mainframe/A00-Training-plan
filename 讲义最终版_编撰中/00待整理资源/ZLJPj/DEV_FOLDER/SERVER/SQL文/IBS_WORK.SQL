CREATE TABLE IBS_WORK
(
    取引先コード                   CHAR(8) DEFAULT ' ' NOT NULL,
    取引先名称＿漢字               VARCHAR2(40) DEFAULT ' ' NOT NULL,
    CONSTRAINT WRK_C0000001 PRIMARY KEY (取引先コード) USING INDEX
)
/
