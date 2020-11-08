CREATE TABLE PAY_BNSCLM
(
    JOBTYP                         CHAR(1) NOT NULL,
    JOBTIM                         CHAR(6) NOT NULL,
    CNTNUM                         CHAR(9) NOT NULL,
    RELEAS                         CHAR(1) NOT NULL,
    PLNDAY                         CHAR(8),
    PAYDAY                         CHAR(8),
    PAYCLT                         CHAR(8),
    PAYNAM                         VARCHAR2(60),
    TRNAMT                         NUMBER(13,0),
    DEMFLG                         CHAR(1),
    DEMFLG_O                       CHAR(1),
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
