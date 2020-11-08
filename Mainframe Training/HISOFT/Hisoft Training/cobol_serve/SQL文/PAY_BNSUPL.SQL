CREATE TABLE PAY_BNSUPL
(
    OFCCOD                         CHAR(4) NOT NULL,
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    RECNUM                         CHAR(4),
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
    CHGTYP                         CHAR(1),
    TRNNUM                         CHAR(10),
    ERRFLG                         CHAR(1),
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX PAY_BNSUPL
ON PAY_BNSUPL
(CNTNUM, RELEAS, PAYDAY, RECNUM, TRNNUM)
/
