CREATE TABLE PAY_DATREC
(
    DATTYP                         CHAR(1) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         CHAR(15) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BRCNAM                         CHAR(15) NOT NULL,
    PAYDAY                         CHAR(4) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    TRNAMT                         NUMBER(10,0) NOT NULL,
    TRNTYP                         CHAR(1) NOT NULL,
    TRNNUM                         CHAR(4) NOT NULL,
    DUMMY1                         CHAR(6) NOT NULL,
    OPEDAY                         CHAR(4) NOT NULL,
    OFCCOD                         CHAR(4) NOT NULL,
    DUMMY2                         CHAR(2) NOT NULL,
    PAYTYP                         CHAR(1) NOT NULL,
    USRDEP                         CHAR(8) NOT NULL,
    CHGAMT                         NUMBER(5,0) NOT NULL,
    BNKSEQ                         CHAR(1) NOT NULL,
    REGDAY                         CHAR(8) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    REGPSN                         CHAR(4) NOT NULL,
    MODDAY                         CHAR(8) NOT NULL,
    MODTIM                         CHAR(6) NOT NULL,
    MODPSN                         CHAR(4) NOT NULL,
    ERRFLG                         CHAR(5) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_DATREC
ON PAY_DATREC
(OPEDAY, PAYDAY, USRDEP, TRNNUM, BNKCOD, BRCCOD, DEPKND, DEPNUM)
/
