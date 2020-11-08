CREATE TABLE KOK_TANTO
(
    顧客コード                     CHAR(6) NOT NULL,
    先方担当者名１                 VARCHAR2(14),
    役職名１                       VARCHAR2(14),
    直通電話１                     VARCHAR2(15),
    Ｅメール１                     VARCHAR2(40),
    コメント１                     VARCHAR2(200),
    先方担当者名２                 VARCHAR2(14),
    役職名２                       VARCHAR2(14),
    直通電話２                     VARCHAR2(15),
    Ｅメール２                     VARCHAR2(40),
    コメント２                     VARCHAR2(200),
    先方担当者名３                 VARCHAR2(14),
    役職名３                       VARCHAR2(14),
    先方担当者名４                 VARCHAR2(14),
    役職名４                       VARCHAR2(14),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026005 PRIMARY KEY (顧客コード) USING INDEX
)
/
