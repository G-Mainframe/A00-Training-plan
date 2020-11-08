CREATE TABLE SWP_BNKMST
(
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BNKNAM                         CHAR(30) NOT NULL,
    BRCNAM                         CHAR(20) NOT NULL,
    PRTSEQ                         CHAR(3) NOT NULL,
    LBLTYP                         CHAR(1),
    DIVCOD                         CHAR(4),
    ZIPCOD                         CHAR(7),
    ADRES1                         CHAR(50),
    ADRES2                         CHAR(50)
)
/
CREATE UNIQUE INDEX SWP_BNKMST
ON SWP_BNKMST
(BNKCOD, BRCCOD)
/
