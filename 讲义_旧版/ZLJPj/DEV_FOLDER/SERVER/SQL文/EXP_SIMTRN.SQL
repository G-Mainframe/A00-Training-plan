CREATE TABLE EXP_SIMTRN
(
    TRNNUM                         CHAR(4) NOT NULL,
    EXTNUM                         CHAR(2) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    DIVCOD                         CHAR(4),
    ACCCOD                         CHAR(5),
    CLTCOD                         CHAR(8),
    PLNDAY                         CHAR(8) NOT NULL,
    TRNDAY                         CHAR(8),
    RCVFLG                         CHAR(1),
    PAYFLG                         CHAR(1),
    UPDFLG                         CHAR(1),
    PAYAMT                         NUMBER(13,0) NOT NULL,
    CONTAX                         NUMBER(13,0) NOT NULL,
    TOTAMT                         NUMBER(13,0) NOT NULL
)
/
CREATE UNIQUE INDEX EXP_SIMTRN
ON EXP_SIMTRN
(TRNNUM, EXTNUM, RECNUM, PLNDAY)
/
