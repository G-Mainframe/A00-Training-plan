CREATE TABLE ANK_KEITAI
(
    取引形態コード                 CHAR(2) NOT NULL,
    内容                           VARCHAR2(50),
    契約番号上１桁                 CHAR(1),
    ソートＫＥＹ                   NUMBER(2,0),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0021999 PRIMARY KEY (取引形態コード) USING INDEX
)
/
