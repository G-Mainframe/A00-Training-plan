CREATE TABLE ALM_FORM_0006
(
    ACCCOD                         CHAR(5) NOT NULL,
    ACCNAM                         VARCHAR2(32) NOT NULL,
    MONCNT                         NUMBER(3,0) NOT NULL,
    BASYER                         CHAR(4) NOT NULL,
    BASMON                         CHAR(2) NOT NULL,
    COLAMT                         NUMBER(13,0) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL
)
/
CREATE UNIQUE INDEX ALM_FORM_0006
ON ALM_FORM_0006
(ACCCOD, BASYER, BASMON)
/
