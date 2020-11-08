CREATE TABLE ELP_LONPAY
(
    LONNUM                         CHAR(5) NOT NULL,
    LONTYP                         CHAR(1) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    PSNCOD                         CHAR(7) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    PAYDAY                         CHAR(8) NOT NULL,
    SALAMT                         NUMBER(13,0) NOT NULL,
    SALINT                         NUMBER(13,0) NOT NULL,
    SALCAP                         NUMBER(13,0) NOT NULL,
    SALBAL                         NUMBER(13,0) NOT NULL,
    BNSAMT                         NUMBER(13,0) NOT NULL,
    BNSINT                         NUMBER(13,0) NOT NULL,
    BNSCAP                         NUMBER(13,0) NOT NULL,
    BNSBAL                         NUMBER(13,0) NOT NULL,
    TOTBAL                         NUMBER(13,0) NOT NULL
)
/
CREATE UNIQUE INDEX ELP_LONPAY
ON ELP_LONPAY
(LONNUM, RECNUM)
/
