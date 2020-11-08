CREATE TABLE PAY_BNSMST
(
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    CNTDAY                         CHAR(8) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    CLTCOD                         CHAR(8) NOT NULL,
    CLTNAM                         VARCHAR2(60) NOT NULL,
    PAYCLT                         CHAR(8),
    PAYNAM                         VARCHAR2(60),
    RCVBGN                         CHAR(8) NOT NULL,
    RCVCYC                         CHAR(2) NOT NULL,
    RCVCNT                         NUMBER(3,0) NOT NULL,
    RCVDAY                         CHAR(2) NOT NULL,
    PAYBGN                         CHAR(8),
    PAYCYC                         CHAR(2),
    PAYCNT                         NUMBER(3,0) NOT NULL,
    HOLSFT                         CHAR(1) NOT NULL,
    CLTCNT                         NUMBER(2,0) NOT NULL,
    CHCKYN                         CHAR(1) NOT NULL,
    REMARK                         VARCHAR2(46) NOT NULL,
    TRNAMT                         NUMBER(13,0) NOT NULL,
    TRNTAX                         NUMBER(13,0) NOT NULL,
    TRNTOT                         NUMBER(13,0) NOT NULL,
    CHGAMT                         NUMBER(13,0) NOT NULL,
    CHGTAX                         NUMBER(13,0) NOT NULL,
    TAXRAT                         NUMBER(3,1) NOT NULL,
    UPDFLG                         CHAR(1),
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX PAY_BNSMST
ON PAY_BNSMST
(CNTNUM, RELEAS)
/
