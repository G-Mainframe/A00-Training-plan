CREATE TABLE KEI_LPWK_SEIKYUSYO_TENKAI
(
    契約番号                       CHAR(9) NOT NULL,
    連番                           NUMBER(3,0) NOT NULL,
    消費税額                       NUMBER(13,0),
    手形枚数                       NUMBER(3,0),
    消費税計算フラグ               CHAR(1),
    端末番号                       VARCHAR2(16),
    CONSTRAINT SYS_C0025579 PRIMARY KEY (契約番号, 連番) USING INDEX
)
/
