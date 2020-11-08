CREATE TABLE PAY_SNDREC
(
    DATTYP                         CHAR(1) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         CHAR(15) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BRCNAM                         CHAR(15) NOT NULL,
    PAYDAY                         CHAR(4) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    TRNAMT                         NUMBER(10,0) NOT NULL,
    TRNTYP                         CHAR(1) NOT NULL,
    TRNNUM                         CHAR(4) NOT NULL,
    DUMMY1                         CHAR(6),
    OPEDAY                         CHAR(4) NOT NULL,
    OFCCOD                         CHAR(4) NOT NULL,
    DUMMY2                         CHAR(2) NOT NULL,
    PAYTYP                         CHAR(1) NOT NULL,
    USRDEP                         CHAR(8) NOT NULL,
    CHGAMT                         NUMBER(5,0) NOT NULL,
    BNKSEQ                         CHAR(1) NOT NULL,
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4),
    ERRFLG                         CHAR(5)
)
/
CREATE UNIQUE INDEX PAY_SNDREC
ON PAY_SNDREC
(OFCCOD, OPEDAY, PAYDAY, TRNNUM)
/
