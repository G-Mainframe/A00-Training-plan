CREATE TABLE PAY_GAFUPL
(
    OFCCOD                         CHAR(4),
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    PAYCLT                         CHAR(8) NOT NULL,
    PAYNAM                         VARCHAR2(60),
    PAYDAY                         CHAR(8) NOT NULL,
    DIVCOD                         CHAR(4),
    EXPCOD                         CHAR(3),
    TRNAMT                         NUMBER(13,0) NOT NULL,
    TRNTAX                         NUMBER(13,0) NOT NULL,
    PAYAMT                         NUMBER(13,0) NOT NULL,
    CHGAMT                         NUMBER(13,0) NOT NULL,
    CHGTAX                         NUMBER(13,0) NOT NULL,
    TAXRAT                         NUMBER(3,1) NOT NULL,
    REMARK                         VARCHAR2(46),
    TRNNUM                         CHAR(10),
    ERRFLG                         CHAR(1)
)
/
CREATE UNIQUE INDEX PAY_GAFUPL
ON PAY_GAFUPL
(PAYDAY, CNTNUM, RELEAS, RECNUM)
/
