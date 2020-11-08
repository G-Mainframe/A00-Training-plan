CREATE TABLE PAY_JOBCHK
(
    OPEDAY                         CHAR(4) NOT NULL,
    PAYDAY                         CHAR(4) NOT NULL,
    GETTXT                         CHAR(1) NOT NULL,
    DATMAK                         CHAR(1) NOT NULL,
    LSTPRT                         CHAR(1) NOT NULL,
    PUTFDD                         CHAR(1) NOT NULL,
    SNDDAT                         CHAR(1) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_JOBCHK
ON PAY_JOBCHK
(OPEDAY)
/
