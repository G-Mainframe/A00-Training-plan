CREATE TABLE SWP_INTSWP
(
    CTLNUM                         CHAR(4) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BNKNAM                         VARCHAR2(50) NOT NULL,
    CONDAY                         CHAR(8) NOT NULL,
    CCYCOD                         CHAR(3) NOT NULL,
    CNTCAP                         NUMBER(13,0) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL,
    COLAMT                         NUMBER(13,0) NOT NULL,
    COLLST                         NUMBER(13,0) NOT NULL,
    COLCNT                         NUMBER(3,0) NOT NULL,
    RCVFIX                         CHAR(1) NOT NULL,
    RCVDAY                         CHAR(3) NOT NULL,
    RCVRAT                         NUMBER(8,6) NOT NULL,
    PAYFIX                         CHAR(1) NOT NULL,
    PAYDAY                         CHAR(3) NOT NULL,
    PAYRAT                         NUMBER(8,6) NOT NULL,
    MARGIN                         NUMBER(8,6) NOT NULL,
    HOLSFT                         CHAR(1) NOT NULL,
    ENDFIX                         CHAR(1) NOT NULL,
    FRACTN                         CHAR(1) NOT NULL,
    CCYRAT                         NUMBER(6,2),
    INTBGN                         CHAR(8) NOT NULL,
    DUEDAY                         CHAR(8),
    MONCNT                         NUMBER(3,0) NOT NULL,
    UPDCYC                         CHAR(2) NOT NULL,
    FRZTRM                         CHAR(2) NOT NULL,
    YLDTYP                         CHAR(1) NOT NULL,
    REMARK                         VARCHAR2(50),
    UPDFLG                         CHAR(1)
)
/
CREATE UNIQUE INDEX SWP_INTSWP
ON SWP_INTSWP
(CTLNUM)
/
