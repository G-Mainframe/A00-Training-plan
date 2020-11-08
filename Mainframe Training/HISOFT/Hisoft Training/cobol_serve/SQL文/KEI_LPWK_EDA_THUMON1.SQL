CREATE TABLE KEI_LPWK_EDA_THUMON1
(
    契約番号                       CHAR(9) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    番号                           NUMBER(3,0) NOT NULL,
    購入先名                       VARCHAR2(60),
    購入先住所                     VARCHAR2(100),
    購入金額合計                   NUMBER(13,0),
    仕入消費税等額                 NUMBER(13,0),
    CONSTRAINT SYS_C0025476 PRIMARY KEY (契約番号, 端末番号, ディーラーコード, 番号) USING INDEX
)
/
