CREATE TABLE TSL_BNKMST
(
    BNKCOD                         CHAR(4) NOT NULL,
    BNKNAM                         VARCHAR2(20) NOT NULL,
    KANNAM                         VARCHAR2(20) NOT NULL,
    PRFCOD                         CHAR(2) NOT NULL,
    BRCCNT                         NUMBER(3,0) NOT NULL
)
/
CREATE UNIQUE INDEX TSL_BNKMST
ON TSL_BNKMST
(BNKCOD)
/
