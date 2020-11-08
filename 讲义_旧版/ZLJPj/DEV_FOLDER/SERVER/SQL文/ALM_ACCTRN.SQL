CREATE TABLE ALM_ACCTRN
(
    ACCCOD                         CHAR(5) NOT NULL,
    ACCNAM                         VARCHAR2(32) NOT NULL,
    ASTLIA                         CHAR(1) NOT NULL,
    ALMDET                         CHAR(2) NOT NULL,
    DUECOD                         CHAR(2) NOT NULL,
    ALMTYP                         CHAR(1) NOT NULL,
    OPEDAY                         CHAR(8) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL,
    OPEFLG                         CHAR(1)
)
/
