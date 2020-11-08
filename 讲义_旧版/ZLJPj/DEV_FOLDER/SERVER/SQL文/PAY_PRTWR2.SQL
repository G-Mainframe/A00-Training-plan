CREATE TABLE PAY_PRTWR2
(
    OFCCOD                         CHAR(4) NOT NULL,
    OPEDAY                         CHAR(4) NOT NULL,
    PAYDAY                         CHAR(4) NOT NULL,
    OFCNAM                         CHAR(30) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    PAYCNT                         NUMBER(5,0) NOT NULL,
    PAYAMT                         NUMBER(11,0) NOT NULL,
    CHGAMT                         NUMBER(5,0),
    TAXAMT                         NUMBER(5,0),
    CHGTOT                         NUMBER(5,0),
    SNDCNT                         NUMBER(5,0)
)
/
CREATE UNIQUE INDEX PAY_PRTWR2
ON PAY_PRTWR2
(OFCCOD, OPEDAY, PAYDAY)
/
