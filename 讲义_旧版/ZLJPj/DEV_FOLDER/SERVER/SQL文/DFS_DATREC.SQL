CREATE TABLE DFS_DATREC
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
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNUM                         CHAR(12) NOT NULL,
    RESULT                         CHAR(1) NOT NULL,
    CONTAX                         NUMBER(8,0) NOT NULL,
    REGDAY                         CHAR(8) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    REGPSN                         CHAR(4) NOT NULL,
    MODDAY                         CHAR(8) NOT NULL,
    MODTIM                         CHAR(6) NOT NULL,
    MODPSN                         CHAR(4) NOT NULL,
    ERRFLG                         CHAR(5) NOT NULL,
    DBLFLG                         CHAR(1)
)
/
