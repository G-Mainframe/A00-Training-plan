CREATE TABLE LEA_BUKKEN
(
    KEY                            CHAR(1) NOT NULL,
    物件ＮＯ                       CHAR(3),
    購入金額                       NUMBER(13,0),
    残価額                         NUMBER(13,0),
    耐用年数                       NUMBER(2,0),
    動総保険料率                   NUMBER(5,3),
    固定資産税率                   NUMBER(4,2),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026324 PRIMARY KEY (KEY) USING INDEX
)
/
