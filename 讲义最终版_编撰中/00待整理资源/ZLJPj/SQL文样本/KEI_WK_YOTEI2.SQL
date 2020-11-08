CREATE TABLE KEI_WK_YOTEI2
(
    契約番号                       CHAR(9) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    契約日                         CHAR(8),
    リース開始日                   CHAR(8),
    リース期間満了日               CHAR(8),
    お支払回数                     NUMBER(3,0),
    リース料総額                   NUMBER(13,0),
    一回当たりリース料             CHAR(18),
    一回当たり消費税等             CHAR(18),
    代表物件名                     CHAR(40),
    物件設置場所                   CHAR(40),
    支払開始日                     CHAR(10),
    CONSTRAINT SYS_C0025856 PRIMARY KEY (契約番号, 端末番号) USING INDEX
)
/
