CREATE TABLE NYU_NAMEMODL
(
    JOBTYP                         CHAR(4) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    BNKCOD_O                       CHAR(4),
    PAYNUM_O                       CHAR(8),
    CSTNAM_O                       CHAR(30) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    BNKCOD_M                       CHAR(1),
    PAYNUM_M                       CHAR(1),
    CSTNAM_M                       CHAR(1) NOT NULL
)
/
