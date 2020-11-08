CREATE TABLE ELP_LONMST
(
    LONNUM                         CHAR(5) NOT NULL,
    LONTYP                         CHAR(1) NOT NULL,
    DIVCOD                         CHAR(4) NOT NULL,
    PSNCOD                         CHAR(7) NOT NULL,
    PSNNAM                         VARCHAR2(18) NOT NULL,
    LONDAY                         CHAR(8) NOT NULL,
    REPDAY                         CHAR(8) NOT NULL,
    OBJCOD                         CHAR(1) NOT NULL,
    LONTRM                         NUMBER(3,0) NOT NULL,
    FRZTRM                         NUMBER(3,0) NOT NULL,
    LONAMT                         NUMBER(13,0) NOT NULL,
    INTRAT                         NUMBER(8,6) NOT NULL,
    SALAMT                         NUMBER(13,0) NOT NULL,
    SALINT                         NUMBER(13,0) NOT NULL,
    SALCAP                         NUMBER(13,0) NOT NULL,
    SALBAL                         NUMBER(13,0) NOT NULL,
    SALREP                         NUMBER(13,0) NOT NULL,
    BNSAMT                         NUMBER(13,0) NOT NULL,
    BNSINT                         NUMBER(13,0) NOT NULL,
    BNSCAP                         NUMBER(13,0) NOT NULL,
    BNSBAL                         NUMBER(13,0) NOT NULL,
    BNSREP                         NUMBER(13,0) NOT NULL,
    DLYINT                         NUMBER(13,0) NOT NULL,
    REMARK                         VARCHAR2(40),
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX ELP_LONMST
ON ELP_LONMST
(LONNUM)
/
