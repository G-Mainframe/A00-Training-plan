CREATE TABLE ELP_PSNMST
(
    PSNCOD                         CHAR(7) NOT NULL,
    PSNNAM                         VARCHAR2(18) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    SEXTYP                         CHAR(1) NOT NULL,
    SHTCOD                         CHAR(4),
    PRTSEQ                         CHAR(3)
)
/
CREATE UNIQUE INDEX ELP_PSNMST
ON ELP_PSNMST
(PSNCOD)
/
