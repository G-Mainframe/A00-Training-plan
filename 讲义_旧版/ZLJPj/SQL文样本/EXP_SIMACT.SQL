CREATE TABLE EXP_SIMACT
(
    TRNNUM                         CHAR(4) NOT NULL,
    EXTNUM                         CHAR(2) NOT NULL,
    RECNUM                         CHAR(4),
    DIVCOD                         CHAR(4) NOT NULL,
    ADDNUM                         CHAR(4),
    ADDEXT                         CHAR(2),
    PAYDAY                         CHAR(8) NOT NULL,
    PAYMON                         CHAR(6) NOT NULL,
    FISYER                         CHAR(4) NOT NULL,
    ACCCOD                         CHAR(5) NOT NULL,
    ACCEXT                         CHAR(2),
    PAYTYP                         CHAR(1),
    APRNUM                         CHAR(10),
    CLTCOD                         CHAR(8),
    FRMNAM                         VARCHAR2(50),
    ITMNAM                         VARCHAR2(50),
    REMAK1                         VARCHAR2(50),
    REMAK2                         VARCHAR2(50),
    DEMFLG                         CHAR(1),
    RCVFLG                         CHAR(1),
    AUTFLG                         CHAR(1),
    TAXTYP                         CHAR(1),
    ITMCNT                         NUMBER(3,0) NOT NULL,
    PAYAMT                         NUMBER(13,0) NOT NULL,
    CONTAX                         NUMBER(13,0) NOT NULL,
    TOTAMT                         NUMBER(13,0) NOT NULL,
    UNTPRC                         NUMBER(13,0) NOT NULL,
    PAYFIS                         NUMBER(13,0) NOT NULL,
    ADDDAY                         CHAR(8),
    ADDTIM                         CHAR(6),
    ADDPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX EXP_SIMACT
ON EXP_SIMACT
(FISYER, TRNNUM, EXTNUM)
/
