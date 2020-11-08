CREATE TABLE NTT_WK_KIHON
(
    契約番号                       CHAR(9) NOT NULL,
    検収日                         CHAR(8) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    当月リース料                   NUMBER(13,0) NOT NULL,
    日付                           CHAR(4) NOT NULL,
    充当回                         CHAR(3) NOT NULL,
    総支払回数                     CHAR(3) NOT NULL,
    消費税額                       NUMBER(11,0) NOT NULL,
    請求コード                     CHAR(2) NOT NULL,
    税率                           NUMBER(3,1) NOT NULL,
    CONSTRAINT SYS_C0027590 PRIMARY KEY (契約番号, 請求コード) USING INDEX
)
/
