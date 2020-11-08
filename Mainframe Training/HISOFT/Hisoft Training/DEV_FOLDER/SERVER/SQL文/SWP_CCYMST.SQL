CREATE TABLE SWP_CCYMST
(
    BASDAY                         CHAR(8) NOT NULL,
    CCYCOD                         CHAR(3) NOT NULL,
    SWIFTC                         CHAR(3) NOT NULL,
    CCYNAM                         CHAR(8) NOT NULL,
    NATION                         CHAR(20) NOT NULL,
    BLWCOL                         NUMBER(2,0) NOT NULL,
    CNVUNT                         NUMBER(3,0) NOT NULL,
    RATTTS                         NUMBER(6,2) NOT NULL,
    RATTTB                         NUMBER(6,2) NOT NULL,
    RATTTM                         NUMBER(6,2) NOT NULL
)
/
CREATE UNIQUE INDEX SWP_CCYMST
ON SWP_CCYMST
(CCYCOD)
/
