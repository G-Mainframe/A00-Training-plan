CREATE TABLE ANK_TENKAI
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    連番                           NUMBER(3,0) NOT NULL,
    展開リース料                   NUMBER(13,0) NOT NULL,
    回数                           NUMBER(3,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022162 PRIMARY KEY (案件番号, 見積枝番, 連番) USING INDEX
)
/
