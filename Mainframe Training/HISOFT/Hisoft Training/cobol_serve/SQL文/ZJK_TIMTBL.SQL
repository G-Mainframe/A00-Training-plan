CREATE TABLE ZJK_TIMTBL
(
    BASBGN                         CHAR(4) NOT NULL,
    BASEND                         CHAR(4) NOT NULL,
    BASNGT                         CHAR(4) NOT NULL,
    BASRST                         NUMBER(4,0) NOT NULL,
    BASWRK                         NUMBER(4,0) NOT NULL,
    BASAFT                         NUMBER(4,0) NOT NULL,
    BASATM                         NUMBER(4,0) NOT NULL,
    BASBTM                         NUMBER(4,0) NOT NULL,
    BASCTM                         NUMBER(4,0) NOT NULL
)
/
CREATE UNIQUE INDEX ZJK_TIMTBL
ON ZJK_TIMTBL
(BASBGN)
/
