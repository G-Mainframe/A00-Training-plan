CREATE TABLE LCF_CLTMST
(
    CLTCOD                         CHAR(7) NOT NULL,
    CLTNAM                         VARCHAR2(40) NOT NULL,
    BNKCOD                         CHAR(4),
    BRCCOD                         CHAR(3),
    DEPKND                         CHAR(1),
    DEPNUM                         CHAR(7),
    DEPNAM                         VARCHAR2(40)
)
/
CREATE UNIQUE INDEX LCF_CLTMST
ON LCF_CLTMST
(CLTCOD)
/
