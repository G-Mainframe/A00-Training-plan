CREATE TABLE MAN_JIGYO_MISYORI
(
    端末番号                       VARCHAR2(16) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    当月以前区分                   CHAR(8) NOT NULL,
    未処理件数                     NUMBER(13,0) NOT NULL,
    CONSTRAINT P_MAN_JIGYO_MISYORI PRIMARY KEY (端末番号, 事業所コード, ユーザーコード, 当月以前区分) USING INDEX
)
/
