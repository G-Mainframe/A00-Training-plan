CREATE TABLE APR_LPWK_ERROR
(
    端末番号                       CHAR(16) NOT NULL,
    アポロ契約番号                 CHAR(6) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    メッセージ                     VARCHAR2(60),
    CONSTRAINT SYS_C0022440 PRIMARY KEY (端末番号, アポロ契約番号, 契約番号) USING INDEX
)
/
