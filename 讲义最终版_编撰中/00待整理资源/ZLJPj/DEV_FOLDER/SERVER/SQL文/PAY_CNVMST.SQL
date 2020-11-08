CREATE TABLE PAY_CNVMST
(
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_CNVMST
ON PAY_CNVMST
(BNKCOD, BRCCOD, DEPKND, DEPNUM)
/
