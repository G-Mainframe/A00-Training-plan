CREATE TABLE LEA_KYOTU
(
    KEY                            CHAR(1) NOT NULL,
    事業所コード                   CHAR(4),
    担当者                         CHAR(4),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026364 PRIMARY KEY (KEY) USING INDEX
)
/
