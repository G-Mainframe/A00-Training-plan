CREATE TABLE JOM_SJYOKEN_MST
(
    ジョモ支払条件コード           CHAR(2) NOT NULL,
    繰延月数                       NUMBER(4,2) NOT NULL,
    支払条件文言                   VARCHAR2(40) NOT NULL,
    CONSTRAINT SYS_C0024468 PRIMARY KEY (ジョモ支払条件コード) USING INDEX
)
/
