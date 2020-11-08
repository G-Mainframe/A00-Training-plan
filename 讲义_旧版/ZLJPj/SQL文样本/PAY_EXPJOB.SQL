CREATE TABLE PAY_EXPJOB
(
    OPEDAY                         CHAR(8) NOT NULL,
    PAYDAY                         CHAR(8) NOT NULL,
    GETTXT                         CHAR(1) NOT NULL,
    DATMAK                         CHAR(1) NOT NULL,
    LSTPRT                         CHAR(1) NOT NULL,
    PUTFDD                         CHAR(1) NOT NULL,
    SNDDAT                         CHAR(1) NOT NULL
)
/
CREATE UNIQUE INDEX PAY_EXPJOB
ON PAY_EXPJOB
(OPEDAY)
/
