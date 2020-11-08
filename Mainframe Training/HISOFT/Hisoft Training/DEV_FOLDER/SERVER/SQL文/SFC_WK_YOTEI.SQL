CREATE TABLE SFC_WK_YOTEI
(
    端末番号                       VARCHAR2(16) NOT NULL,
    契約番号                       CHAR(7) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    入金基準日                     CHAR(2) NOT NULL,
    支払月                         NUMBER(6,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    CONSTRAINT SYS_C0028575 PRIMARY KEY (端末番号, 契約番号, 支払月) USING INDEX
)
/
