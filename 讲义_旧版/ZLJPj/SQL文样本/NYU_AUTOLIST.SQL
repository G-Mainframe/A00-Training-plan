CREATE TABLE NYU_AUTOLIST
(
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         CHAR(15),
    BRCCOD                         CHAR(3) NOT NULL,
    BRCNAM                         CHAR(15),
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    TRNAMT                         NUMBER(10,0) NOT NULL,
    CONTAX                         NUMBER(8,0) NOT NULL,
    PAYDAY                         CHAR(4),
    ERRFLG                         CHAR(5),
    DBLFLG                         CHAR(1)
)
/
