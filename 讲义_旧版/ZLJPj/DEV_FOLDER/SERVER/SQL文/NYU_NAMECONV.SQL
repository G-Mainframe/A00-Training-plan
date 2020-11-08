CREATE TABLE NYU_NAMECONV
(
    BNKCOD                         CHAR(4) NOT NULL,
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    PAYDAY                         CHAR(2) NOT NULL
)
/
CREATE UNIQUE INDEX NYU_NAMECONV
ON NYU_NAMECONV
(BNKCOD, PAYNUM, PAYDAY)
/
