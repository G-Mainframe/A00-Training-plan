CREATE TABLE EXP_SIMPOF
(
    TRNNUM                         CHAR(4) NOT NULL,
    EXTNUM                         CHAR(2) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    CNTNUM                         CHAR(7),
    PAYDAY                         CHAR(8),
    PAYBGN                         CHAR(6),
    PAYEND                         CHAR(6),
    FIXDAY                         CHAR(2),
    FISYER                         CHAR(4),
    ACCCOD                         CHAR(5),
    ACCEXT                         CHAR(2),
    PAYTYP                         CHAR(1),
    PAYCYC                         CHAR(2),
    CLTCOD                         CHAR(8),
    FRMNAM                         VARCHAR2(50),
    ITMNAM                         VARCHAR2(50),
    DEMFLG                         CHAR(1),
    RCVFLG                         CHAR(1),
    PAYCNT                         NUMBER(3,0),
    PAYAMT                         NUMBER(13,0)
)
/
CREATE UNIQUE INDEX EXP_SIMPOF
ON EXP_SIMPOF
(TRNNUM, EXTNUM)
/
