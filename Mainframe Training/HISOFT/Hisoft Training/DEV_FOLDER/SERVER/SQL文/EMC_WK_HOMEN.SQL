CREATE TABLE EMC_WK_HOMEN
(
    契約番号                       CHAR(9) NOT NULL,
    物件名                         CHAR(30) NOT NULL,
    保守料                         NUMBER(13,0) NOT NULL,
    消費税                         NUMBER(13,0) NOT NULL,
    税率                           NUMBER(3,1) NOT NULL,
    区分                           CHAR(1),
    チェック１                     CHAR(1),
    チェック２                     CHAR(1),
    チェック３                     CHAR(1),
    チェック４                     CHAR(1),
    CONSTRAINT SYS_C0022948 PRIMARY KEY (契約番号) USING INDEX
)
/
