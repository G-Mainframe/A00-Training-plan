CREATE TABLE PAY_CNVMOD
(
    JOBTYP                         CHAR(4) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    CSTNAM_O                       CHAR(30) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_CNVMOD
ON PAY_CNVMOD
(REGTIM, BNKCOD, BRCCOD, DEPKND, DEPNUM)
/
