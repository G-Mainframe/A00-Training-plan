CREATE TABLE PAY_EXPDWL
(
    DATTYP                         CHAR(1) NOT NULL,
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    CNTDAY                         CHAR(8),
    OFCCOD                         CHAR(4) NOT NULL,
    PLNDAY                         CHAR(8) NOT NULL,
    TRNDAY                         CHAR(8) NOT NULL,
    RCVBGN                         CHAR(8),
    RCVCYC                         CHAR(2),
    RCVDAY                         CHAR(2),
    RCVCNT                         NUMBER(3,0) DEFAULT 0,
    CLTCOD                         CHAR(8),
    TRNAMT                         NUMBER(13,0) NOT NULL,
    DEMCOD                         CHAR(3),
    REMARK                         VARCHAR2(46),
    CLTNAM                         VARCHAR2(60),
    ERRFLG                         CHAR(1),
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX PAY_EXPDWL
ON PAY_EXPDWL
(CNTNUM, RELEAS, DATTYP, PLNDAY, DEMCOD)
/
