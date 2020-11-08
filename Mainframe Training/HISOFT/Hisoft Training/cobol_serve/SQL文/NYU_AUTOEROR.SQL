CREATE TABLE NYU_AUTOEROR
(
    BNKCOD                         CHAR(4),
    BNKNAM                         CHAR(15),
    BRCCOD                         CHAR(3),
    BRCNAM                         CHAR(15),
    DEPKND                         CHAR(1),
    DEPNUM                         CHAR(7),
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    TRNAMT                         NUMBER(10,0) NOT NULL,
    CONTAX                         NUMBER(8,0) NOT NULL,
    PAYDAY                         CHAR(4),
    ERRFLG                         CHAR(5)
)
/
