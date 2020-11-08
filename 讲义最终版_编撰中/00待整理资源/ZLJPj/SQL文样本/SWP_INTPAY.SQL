CREATE TABLE SWP_INTPAY
(
    CTLNUM                         CHAR(4) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    INTBGN                         CHAR(8) NOT NULL,
    PAYDAY                         CHAR(8) NOT NULL,
    HOLFLG                         CHAR(1) NOT NULL,
    DAYCNT                         NUMBER(4,0) NOT NULL,
    BALCAP                         NUMBER(13,0) NOT NULL,
    COLAMT                         NUMBER(13,0) NOT NULL,
    RCVRAT                         NUMBER(8,6) NOT NULL,
    RCVINT                         NUMBER(15,2) NOT NULL,
    RCVYEN                         NUMBER(13,0) NOT NULL,
    PAYRAT                         NUMBER(8,6) NOT NULL,
    PAYINT                         NUMBER(15,2) NOT NULL,
    PAYYEN                         NUMBER(13,0) NOT NULL,
    DIFINT                         NUMBER(15,2) NOT NULL,
    DIFYEN                         NUMBER(13,0) NOT NULL
)
/
CREATE UNIQUE INDEX SWP_INTPAY
ON SWP_INTPAY
(CTLNUM, RECNUM)
/
