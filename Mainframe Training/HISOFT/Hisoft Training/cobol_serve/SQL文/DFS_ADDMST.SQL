CREATE TABLE DFS_ADDMST
(
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNUM                         CHAR(12) NOT NULL,
    PAYDAY                         CHAR(2) NOT NULL,
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         CHAR(15) NOT NULL,
    BRCCOD                         CHAR(3) NOT NULL,
    BRCNAM                         CHAR(15) NOT NULL,
    DEPKND                         CHAR(1) NOT NULL,
    DEPNUM                         CHAR(7) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    TRNAMT                         NUMBER(10,0) NOT NULL,
    CONTAX                         NUMBER(5,0) NOT NULL
)
/
CREATE UNIQUE INDEX DFS_ADDMST
ON DFS_ADDMST
(PAYNUM)
/
