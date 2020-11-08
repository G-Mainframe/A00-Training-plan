CREATE TABLE PAY_GAFPAY
(
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    TRNTYP                         CHAR(1) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    PAYCLT                         CHAR(8) NOT NULL,
    PLNDAY                         CHAR(8) NOT NULL,
    TRNDAY                         CHAR(8) NOT NULL,
    TRNAMT                         NUMBER(13,0) NOT NULL,
    TRNTAX                         NUMBER(13,0) NOT NULL,
    PAYAMT                         NUMBER(13,0) NOT NULL,
    DEMFLG                         CHAR(1) NOT NULL,
    PAYFLG                         CHAR(1) NOT NULL,
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX PAY_GAFPAY
ON PAY_GAFPAY
(CNTNUM, RELEAS, RECNUM, PLNDAY)
/
