CREATE TABLE ANK_KINJITI
(
    結果ＮＯ                       NUMBER(1,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    リース料率                     NUMBER(10,8) NOT NULL,
    実質利回り                     NUMBER(10,8) NOT NULL,
    粗利                           NUMBER(13,0) NOT NULL,
    ＦＲＯＭ                       NUMBER(1,0) NOT NULL,
    ＴＯ                           NUMBER(1,0) NOT NULL,
    計算方式                       CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0022058 PRIMARY KEY (結果ＮＯ) USING INDEX
)
/
