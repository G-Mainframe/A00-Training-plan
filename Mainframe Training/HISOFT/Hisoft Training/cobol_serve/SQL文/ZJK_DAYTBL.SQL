CREATE TABLE ZJK_DAYTBL
(
    PSNCOD                         CHAR(7) NOT NULL,
    PSNNAM                         VARCHAR2(18) NOT NULL,
    SEXTYP                         CHAR(1) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    BASDAY                         CHAR(8) NOT NULL,
    WEKTYP                         CHAR(1) NOT NULL,
    HOLFLG                         CHAR(1) NOT NULL,
    HWKFLG                         CHAR(1) NOT NULL,
    VACFLG                         CHAR(1) NOT NULL,
    BGNTIM                         CHAR(4) NOT NULL,
    ENDTIM                         CHAR(4) NOT NULL,
    ATMHOR                         NUMBER(3,0) NOT NULL,
    ATMMIN                         NUMBER(2,0) NOT NULL,
    BTMHOR                         NUMBER(3,0) NOT NULL,
    BTMMIN                         NUMBER(2,0) NOT NULL,
    CTMHOR                         NUMBER(3,0) NOT NULL,
    CTMMIN                         NUMBER(2,0) NOT NULL,
    DTMHOR                         NUMBER(3,0) NOT NULL,
    DTMMIN                         NUMBER(2,0) NOT NULL,
    ETMHOR                         NUMBER(3,0) NOT NULL,
    ETMMIN                         NUMBER(2,0) NOT NULL,
    MONATM                         NUMBER(4,0) NOT NULL,
    MONBTM                         NUMBER(4,0) NOT NULL,
    MONCTM                         NUMBER(4,0) NOT NULL,
    MONDTM                         NUMBER(4,0) NOT NULL,
    MONETM                         NUMBER(4,0) NOT NULL,
    MONWRK                         NUMBER(4,0) NOT NULL,
    MONVAC                         NUMBER(2,0) NOT NULL,
    MONHOL                         NUMBER(2,0) NOT NULL
)
/
CREATE UNIQUE INDEX ZJK_DAYTBL
ON ZJK_DAYTBL
(PSNCOD, BASDAY)
/
