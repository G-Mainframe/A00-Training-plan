CREATE TABLE PAY_PRTWRK
(
    OFCCOD                         CHAR(4) NOT NULL,
    LEVEL1                         CHAR(2) NOT NULL,
    LEVEL2                         CHAR(2) NOT NULL,
    PAYAMT                         NUMBER(11,0) NOT NULL,
    CHGAMT                         NUMBER(5,0) NOT NULL,
    TAXAMT                         NUMBER(5,0) NOT NULL,
    CHGTOT                         NUMBER(5,0) NOT NULL,
    PAYCNT                         NUMBER(5,0)
)
/
CREATE UNIQUE INDEX PAY_PRTWRK
ON PAY_PRTWRK
(OFCCOD, LEVEL1, LEVEL2)
/
