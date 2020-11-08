CREATE TABLE NYU_BANKMAST
(
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BNKNAM                         CHAR(15) NOT NULL,
    BRCNAM                         CHAR(15) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CONSIG                         CHAR(10) NOT NULL,
    FILNAM                         CHAR(8) NOT NULL,
    BNKKNJ                         CHAR(16) NOT NULL
)
/
CREATE UNIQUE INDEX NYU_BANKMAST
ON NYU_BANKMAST
(BNKCOD)
/
