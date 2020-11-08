CREATE TABLE JOM_FORM_0001
(
    JOBCOD                         NUMBER(2,0) NOT NULL,
    SHTNUM                         NUMBER(2,0) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    最終枝番                       CHAR(2) NOT NULL,
    第１回入金日                   CHAR(8) NOT NULL,
    入金基準日                     CHAR(4) NOT NULL,
    初回リース料                   NUMBER(13,0) NOT NULL,
    初回消費税額                   NUMBER(13,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    前受月数                       NUMBER(2,0) NOT NULL,
    前受リース料                   NUMBER(13,0) NOT NULL,
    月額消費税額                   NUMBER(13,0) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL
)
/
