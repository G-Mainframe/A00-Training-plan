CREATE TABLE LEA_KEKKA
(
    KEY                            CHAR(1) NOT NULL,
    結果ＮＯ                       NUMBER(5,0),
    リース料                       NUMBER(13,0),
    リース料率                     NUMBER(10,8),
    実質利回り                     NUMBER(10,8),
    粗利                           NUMBER(13,0),
    ＦＲＯＭ                       NUMBER(1,0),
    ＴＯ                           NUMBER(1,0),
    計算方式                       CHAR(1),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026326 PRIMARY KEY (KEY) USING INDEX
)
/
