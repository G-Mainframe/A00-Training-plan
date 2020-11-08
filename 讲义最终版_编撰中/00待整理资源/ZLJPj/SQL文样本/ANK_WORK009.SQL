CREATE TABLE ANK_WORK009
(
    KEY                            CHAR(1) NOT NULL,
    案件番号                       CHAR(10),
    見積枝番                       CHAR(2),
    物件ＮＯ                       CHAR(3),
    物件名_漢字                    VARCHAR2(40),
    購入金額                       NUMBER(13,0),
    耐用年数                       NUMBER(2,0),
    動総保険料率                   NUMBER(5,3),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0022181 PRIMARY KEY (KEY) USING INDEX
)
/
