CREATE TABLE ANK_LOSTKBN
(
    ロスト理由区分                 CHAR(2) NOT NULL,
    ロスト理由                     VARCHAR2(20) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022108 PRIMARY KEY (ロスト理由区分) USING INDEX
)
/
