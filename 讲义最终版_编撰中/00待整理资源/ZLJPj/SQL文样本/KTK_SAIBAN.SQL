CREATE TABLE KTK_SAIBAN
(
    事業所コード                   CHAR(4) NOT NULL,
    契約形態                       CHAR(1) NOT NULL,
    期                             NUMBER(2,0) NOT NULL,
    担当部店                       CHAR(1) DEFAULT ' ' NOT NULL,
    連番                           CHAR(3) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT ' ' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    更新日                         CHAR(8) DEFAULT ' ' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    CONSTRAINT PK_KTK_SAIBAN PRIMARY KEY (事業所コード, 契約形態, 期) USING INDEX
)
/
