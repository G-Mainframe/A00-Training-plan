CREATE TABLE ELP_INTRAT
(
    LONTYP                         CHAR(1) NOT NULL,
    LONNAM                         VARCHAR2(12) NOT NULL,
    APLDAY                         CHAR(8) NOT NULL,
    INTRAT                         NUMBER(8,6) NOT NULL,
    OLDAPL                         CHAR(8) NOT NULL,
    OLDRAT                         NUMBER(8,6) NOT NULL
)
/
CREATE UNIQUE INDEX ELP_INTRAT
ON ELP_INTRAT
(LONTYP)
/
