CREATE TABLE KAI_MONGON
(
    キー項目                       NUMBER(2,0) NOT NULL,
    文言                           VARCHAR2(600) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT PK_KAI_MONGON PRIMARY KEY (キー項目) USING INDEX
)
/
