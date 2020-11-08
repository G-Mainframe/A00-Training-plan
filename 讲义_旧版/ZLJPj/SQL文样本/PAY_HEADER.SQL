CREATE TABLE PAY_HEADER
(
    DATTYP                         CHAR(1) NOT NULL,
    TRNCOD                         CHAR(2) NOT NULL,
    CODTYP                         CHAR(1) NOT NULL,
    CONSIG                         CHAR(10) NOT NULL,
    CONNAM                         CHAR(40) NOT NULL,
    TRNDAY                         CHAR(4) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         CHAR(15) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BRCNAM                         CHAR(15) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    OPEDAY                         CHAR(4) NOT NULL,
    DUMMY1                         CHAR(13) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_HEADER
ON PAY_HEADER
(OPEDAY, TRNDAY, DEPKND, DEPNUM)
/
