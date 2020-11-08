CREATE TABLE TSL_INTMST
(
    CNTNUM                         CHAR(9) NOT NULL,
    PRFCOD                         CHAR(2) NOT NULL,
    PRFNAM                         CHAR(6) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         VARCHAR2(20) NOT NULL,
    BRCNAM                         VARCHAR2(20) NOT NULL,
    PROGRE                         CHAR(1) NOT NULL,
    USRCOD                         CHAR(8),
    USRNAM                         VARCHAR2(30),
    BUYNAM                         VARCHAR2(30),
    OBJNAM                         VARCHAR2(40),
    CNTDAY                         CHAR(8),
    APRDAY                         CHAR(8),
    DUEDAY                         CHAR(8),
    BASDAY                         CHAR(8),
    INDCOD                         CHAR(2),
    INTTYP                         CHAR(1),
    RELEAS                         CHAR(1),
    DELFLG                         CHAR(1),
    MONCNT                         NUMBER(4,0) NOT NULL,
    OBJAMT                         NUMBER(13,0) NOT NULL,
    CNTAMT                         NUMBER(13,0) NOT NULL,
    LEAAMT                         NUMBER(13,0) NOT NULL,
    DEPAMT                         NUMBER(13,0) NOT NULL,
    INTRAT                         NUMBER(8,6) NOT NULL,
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX TSL_INTMST
ON TSL_INTMST
(CNTNUM)
/
