CREATE TABLE JOM_KINRI
(
    ＫＥＹ                         CHAR(3) NOT NULL,
    リース期間ＦＲＯＭ             NUMBER(3,0) NOT NULL,
    リース期間ＴＯ                 NUMBER(3,0) NOT NULL,
    社内金利                       NUMBER(4,2) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0024358 PRIMARY KEY (ＫＥＹ) USING INDEX
)
/
