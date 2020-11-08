CREATE TABLE OBA_PRTWRK
(
    CNTNUM                         CHAR(9) NOT NULL,
    TRNTYP                         CHAR(1),
    DIVCOD                         CHAR(4),
    DIVNAM                         VARCHAR2(20),
    USRCOD                         CHAR(8),
    USRNAM                         VARCHAR2(60),
    OBJNAM                         VARCHAR2(40),
    TRNDAY                         CHAR(8),
    BGNDAY                         CHAR(8),
    BASDAY                         CHAR(8),
    CRERNK                         CHAR(4),
    CNTAMT                         NUMBER(13,0) NOT NULL,
    RCVAMT                         NUMBER(13,0) NOT NULL,
    BALAMT                         NUMBER(13,0) NOT NULL,
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4),
    SRTWRK                         CHAR(9)
)
/
