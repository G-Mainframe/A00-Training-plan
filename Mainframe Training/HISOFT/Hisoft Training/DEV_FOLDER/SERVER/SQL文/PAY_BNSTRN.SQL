CREATE TABLE PAY_BNSTRN
(
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    TRNTYP                         CHAR(1) NOT NULL,
    PAYCLT                         CHAR(8),
    PLNDAY                         CHAR(8) NOT NULL,
    TRNDAY                         CHAR(8) NOT NULL,
    PAYDAY                         CHAR(8),
    RCVAMT                         NUMBER(13,0) NOT NULL,
    PAYAMT                         NUMBER(13,0) NOT NULL,
    BALAMT                         NUMBER(13,0) NOT NULL,
    RCVFLG                         CHAR(1) NOT NULL,
    DEMFLG                         CHAR(1) NOT NULL,
    PAYFLG                         CHAR(1) NOT NULL,
    DIFFLG                         CHAR(1) NOT NULL,
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX PAY_BNSTRN
ON PAY_BNSTRN
(CNTNUM, RELEAS, RECNUM, TRNTYP, PLNDAY)
/
