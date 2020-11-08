CREATE TABLE ALM_CPPMST
(
    CTLNUM                         CHAR(6) NOT NULL,
    CLTNAM                         VARCHAR2(40) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL,
    COLAMT                         NUMBER(13,0) NOT NULL,
    ISUDAY                         CHAR(8) NOT NULL,
    DUEDAY                         CHAR(8) NOT NULL,
    UPDCYC                         CHAR(2) NOT NULL,
    AVEBAL                         NUMBER(13,0) NOT NULL,
    COLRAT                         NUMBER(7,5) NOT NULL,
    CHARGE                         NUMBER(7,5) NOT NULL,
    REFNUM                         VARCHAR2(20),
    FIXFLT                         CHAR(1),
    TRMTYP                         CHAR(1)
)
/
CREATE UNIQUE INDEX ALM_CPPMST
ON ALM_CPPMST
(CTLNUM)
/
