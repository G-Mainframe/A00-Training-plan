CREATE TABLE MFS_MEIMOD
(
    JOBTYP                         CHAR(4) NOT NULL,
    REGTIM                         CHAR(6) NOT NULL,
    PAYNUM                         CHAR(8) NOT NULL,
    CSTNAM                         CHAR(30) NOT NULL,
    CSTNAM_O                       CHAR(30) NOT NULL,
    CSTNAM_M                       CHAR(1) NOT NULL
)
/
CREATE INDEX MFS_MEIMOD
ON MFS_MEIMOD
(REGTIM)
/
