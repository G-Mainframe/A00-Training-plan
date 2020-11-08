CREATE TABLE MST_KIHON
(
    個人ＩＤ                       CHAR(4) NOT NULL,
    個人名_漢字                    VARCHAR2(20) DEFAULT ' ' NOT NULL,
    個人名_仮名                    VARCHAR2(30) DEFAULT ' ' NOT NULL,
    所属事業所コード               CHAR(4) DEFAULT ' ' NOT NULL,
    兼務事業所コード_１            CHAR(4) DEFAULT ' ' NOT NULL,
    兼務事業所コード_２            CHAR(4) DEFAULT ' ' NOT NULL,
    兼務事業所コード_３            CHAR(4) DEFAULT ' ' NOT NULL,
    兼務事業所コード_４            CHAR(4) DEFAULT ' ' NOT NULL,
    兼務事業所コード_５            CHAR(4) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT ' ' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    更新日                         CHAR(8) DEFAULT ' ' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    ワーク                         CHAR(1) DEFAULT ' ' NOT NULL,
    CONSTRAINT SYS_C0027210 PRIMARY KEY (個人ＩＤ) USING INDEX
)
/
