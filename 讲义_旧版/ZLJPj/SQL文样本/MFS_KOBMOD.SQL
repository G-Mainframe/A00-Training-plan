CREATE TABLE MFS_KOBMOD
(
    JOBTYP                         CHAR(4) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNUM                         CHAR(12) NOT NULL,
    PAYDAY                         CHAR(2) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    TRNAMT                         NUMBER(10,0) NOT NULL,
    PAYDAY_O                       CHAR(2) NOT NULL,
    BNKCOD_O                       CHAR(4) NOT NULL,
    BRCCOD_O                       CHAR(3) NOT NULL,
    CSTNAM_O                       CHAR(30) NOT NULL,
    DEPKND_O                       CHAR(1) NOT NULL,
    DEPNUM_O                       CHAR(7) NOT NULL,
    TRNAMT_O                       NUMBER(10,0) NOT NULL,
    PAYDAY_M                       CHAR(1) NOT NULL,
    BNKCOD_M                       CHAR(1) NOT NULL,
    BRCCOD_M                       CHAR(1) NOT NULL,
    CSTNAM_M                       CHAR(1) NOT NULL,
    DEPKND_M                       CHAR(1) NOT NULL,
    DEPNUM_M                       CHAR(1) NOT NULL,
    TRNAMT_M                       CHAR(1) NOT NULL
)
/
