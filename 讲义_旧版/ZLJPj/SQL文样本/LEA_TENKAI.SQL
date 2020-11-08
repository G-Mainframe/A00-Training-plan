CREATE TABLE LEA_TENKAI
(
    KEY                            CHAR(1) NOT NULL,
    連番                           NUMBER(3,0),
    展開リース料                   NUMBER(13,0),
    回数                           NUMBER(3,0),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026366 PRIMARY KEY (KEY) USING INDEX
)
/
