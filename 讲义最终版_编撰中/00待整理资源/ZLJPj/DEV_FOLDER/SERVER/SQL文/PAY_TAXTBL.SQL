CREATE TABLE PAY_TAXTBL
(
    DOCTYP                         CHAR(1),
    MINAMT                         NUMBER(12,0),
    MAXAMT                         NUMBER(12,0),
    TAXAMT                         NUMBER(12,0)
)
/
CREATE UNIQUE INDEX PAY_TAXTBL
ON PAY_TAXTBL
(DOCTYP, MINAMT)
/
