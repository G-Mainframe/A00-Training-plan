CREATE TABLE ALM_GAPMST
(
    REGNUM                         CHAR(4) NOT NULL,
    ASTLIA                         CHAR(1) NOT NULL,
    ALMDET                         CHAR(2) NOT NULL,
    FIXFLT                         CHAR(1) NOT NULL,
    ACCCOD                         CHAR(5) NOT NULL,
    DUECOD                         CHAR(2) NOT NULL,
    MONCNT                         NUMBER(3,0) NOT NULL,
    FISYER                         CHAR(4) NOT NULL,
    BASYER                         CHAR(4) NOT NULL,
    BASMON                         CHAR(2) NOT NULL,
    COLAMT                         NUMBER(13,0) NOT NULL,
    COLRAT                         NUMBER(4,2) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL,
    AVEBAL                         NUMBER(13,0) NOT NULL,
    AVEINT                         NUMBER(13,0) NOT NULL,
    AVERAT                         NUMBER(4,2) NOT NULL,
    DIVCOD                         CHAR(1) NOT NULL,
    GAPFLG                         CHAR(1) NOT NULL,
    JOBTYP                         CHAR(3)
)
/
CREATE UNIQUE INDEX ALM_GAPMST
ON ALM_GAPMST
(REGNUM)
/
