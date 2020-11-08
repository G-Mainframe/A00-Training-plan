CREATE TABLE KEI_BUNKATU_WORK
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    分割数                         NUMBER(3,0) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    購入金額均等割フラグ           CHAR(1) NOT NULL,
    個別リース料均等割フラグ       CHAR(1) NOT NULL,
    数量均等割フラグ               CHAR(1) NOT NULL,
    分割後購入金額                 NUMBER(13,0),
    分割後個別リース料             NUMBER(13,0),
    分割後数量                     NUMBER(4,0),
    CONSTRAINT SYS_C0025073 PRIMARY KEY (契約番号) USING INDEX
)
/
