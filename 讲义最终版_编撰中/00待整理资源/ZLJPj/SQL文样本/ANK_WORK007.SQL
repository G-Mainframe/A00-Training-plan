CREATE TABLE ANK_WORK007
(
    KEY                            CHAR(1) NOT NULL,
    見積書提出先                   VARCHAR2(60),
    住所                           VARCHAR2(100),
    担当部店                       VARCHAR2(20),
    電話番号                       VARCHAR2(20),
    ＦＡＸ番号                     VARCHAR2(20),
    テキスト１                     VARCHAR2(60),
    テキスト２                     VARCHAR2(60),
    テキスト３                     VARCHAR2(60),
    テキスト４                     VARCHAR2(60),
    テキスト５                     VARCHAR2(60),
    テキスト６                     VARCHAR2(60),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0022177 PRIMARY KEY (KEY) USING INDEX
)
/
