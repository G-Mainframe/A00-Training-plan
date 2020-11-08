CREATE TABLE PAY_GAFPRT
(
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    CNTDAY                         CHAR(8),
    DIVCOD                         CHAR(4),
    PAYBGN                         CHAR(8),
    PAYCYC                         CHAR(2),
    PAYCNT                         NUMBER(3,0),
    PAYEND                         CHAR(8),
    PLNDAY                         CHAR(8),
    PAYDAY                         CHAR(8),
    HOLSFT                         CHAR(1),
    EXPCOD                         CHAR(3),
    PAYCLT                         CHAR(8),
    PAYNAM                         VARCHAR2(60),
    PAYTYP                         CHAR(1),
    BNKCOD                         CHAR(4),
    BRCCOD                         CHAR(3),
    DEPKND                         CHAR(1),
    DEPNUM                         CHAR(7),
    REMARK                         VARCHAR2(46),
    TRNAMT                         NUMBER(13,0) NOT NULL,
    CHGAMT                         NUMBER(13,0) NOT NULL,
    TRNTAX                         NUMBER(13,0) NOT NULL,
    CHGTAX                         NUMBER(13,0) NOT NULL,
    LEAAMT                         NUMBER(13,0) NOT NULL,
    TAXRAT                         NUMBER(3,1) NOT NULL,
    UNPBAL                         NUMBER(13,0) NOT NULL,
    TRNTOT                         NUMBER(13,0),
    PAYTOT                         NUMBER(13,0),
    PAYFIS                         NUMBER(13,0)
)
/
CREATE UNIQUE INDEX PAY_GAFPRT
ON PAY_GAFPRT
(CNTNUM, RELEAS, PAYCLT, PLNDAY, PAYDAY)
/
