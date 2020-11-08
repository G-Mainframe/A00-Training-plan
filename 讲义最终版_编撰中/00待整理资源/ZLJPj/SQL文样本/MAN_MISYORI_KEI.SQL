CREATE TABLE MAN_MISYORI_KEI
(
    端末番号                       VARCHAR2(16) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    契約件数合計                   NUMBER(5,0) NOT NULL,
    物件金額合計                   NUMBER(13,0) NOT NULL,
    残価額合計                     NUMBER(13,0) NOT NULL,
    契約金額合計                   NUMBER(13,0) NOT NULL,
    CONSTRAINT P_MAN_MISYORI_KEI PRIMARY KEY (端末番号, 事業所コード, ユーザーコード) USING INDEX
)
/
