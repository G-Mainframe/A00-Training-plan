CREATE TABLE EXP_SIMBUD
(
    DIVCOD                         CHAR(4) NOT NULL,
    FISYER                         CHAR(4) NOT NULL,
    ACCCOD                         CHAR(5) NOT NULL,
    BUDAMT                         NUMBER(13,0) NOT NULL,
    BUDBAL                         NUMBER(13,0) NOT NULL
)
/
CREATE UNIQUE INDEX EXP_SIMBUD
ON EXP_SIMBUD
(FISYER, DIVCOD, ACCCOD)
/
