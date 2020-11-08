CREATE TABLE PAY_CNVLST
(
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_CNVLST
ON PAY_CNVLST
(BNKCOD, BRCCOD, DEPKND, DEPNUM)
/
