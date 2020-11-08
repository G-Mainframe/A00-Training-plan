CREATE TABLE LCF_PAYTRN
(
    CTLNUM                         CHAR(6) NOT NULL,
    RECNUM                         CHAR(4) NOT NULL,
    PLNDAY                         CHAR(8) NOT NULL,
    CAPTYP                         CHAR(1) NOT NULL,
    PAYAMT                         NUMBER(13,0) NOT NULL,
    PAYCAP                         NUMBER(13,0) NOT NULL,
    CAPBAL                         NUMBER(13,0) NOT NULL,
    BNKINT                         NUMBER(13,0) NOT NULL,
    REGDAY                         CHAR(8),
    REGTIM                         CHAR(6),
    REGPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX LCF_PAYTRN
ON LCF_PAYTRN
(CTLNUM, PLNDAY, RECNUM)
/
