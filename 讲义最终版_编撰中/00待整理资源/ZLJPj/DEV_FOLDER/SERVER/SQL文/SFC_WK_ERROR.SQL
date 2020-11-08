CREATE TABLE SFC_WK_ERROR
(
    端末番号                       VARCHAR2(16) NOT NULL,
    シャープ契約番号               CHAR(12) NOT NULL,
    エラー連番                     NUMBER(2,0) NOT NULL,
    シャープ商品連番               CHAR(3) NOT NULL,
    項目連番                       NUMBER(2,0) NOT NULL,
    メッセージ                     CHAR(60) NOT NULL,
    CONSTRAINT SYS_C0028498 PRIMARY KEY (端末番号, シャープ契約番号, エラー連番, シャープ商品連番, 項目連番) USING INDEX
)
/
