CREATE TABLE NYU_HOLDAY
(
    NATCOD                         CHAR(3) NOT NULL,
    HOLDAY                         CHAR(10) NOT NULL,
    HOLNAM                         CHAR(20) NOT NULL,
    HOLSW1                         CHAR(1) NOT NULL
)
/
CREATE UNIQUE INDEX NYU_HOLDAY
ON NYU_HOLDAY
(NATCOD, HOLDAY)
/
