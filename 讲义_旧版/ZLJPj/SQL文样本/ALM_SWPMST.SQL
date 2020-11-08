CREATE TABLE ALM_SWPMST
(
    CTLNUM                         CHAR(4) NOT NULL,
    CLTNAM                         VARCHAR2(40) NOT NULL,
    ISUDAY                         CHAR(8) NOT NULL,
    INTBGN                         CHAR(8) NOT NULL,
    DUEDAY                         CHAR(8) NOT NULL,
    UPDCYC                         CHAR(2) NOT NULL,
    MONCNT                         NUMBER(3,0) NOT NULL,
    CNTCAP                         NUMBER(13,0) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL,
    COLAMT                         NUMBER(13,0) NOT NULL,
    COLLST                         NUMBER(13,0) NOT NULL,
    COLCNT                         NUMBER(2,0) NOT NULL,
    RCVDAY                         CHAR(3) NOT NULL,
    PAYDAY                         CHAR(3) NOT NULL,
    RCVRAT                         NUMBER(7,5) NOT NULL,
    PAYRAT                         NUMBER(7,5) NOT NULL,
    MARGIN                         NUMBER(7,5) NOT NULL,
    CCYCOD                         CHAR(3),
    CCYRAT                         NUMBER(6,2),
    AVEBAL                         NUMBER(13,0),
    UPDFLG                         CHAR(1)
)
/
CREATE UNIQUE INDEX ALM_SWPMST
ON ALM_SWPMST
(CTLNUM)
/
