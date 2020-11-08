CREATE TABLE ANK_WORK010
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    物件名_漢字                    VARCHAR2(40) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    単位                           VARCHAR2(4) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    購入金額非表示区分             NUMBER(1,0),
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022195 PRIMARY KEY (案件番号, 見積枝番, 物件ＮＯ) USING INDEX
)
/
