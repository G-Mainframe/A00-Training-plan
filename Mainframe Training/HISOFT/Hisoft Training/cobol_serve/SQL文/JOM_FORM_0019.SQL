CREATE TABLE JOM_FORM_0019
(
    JOBCOD                         NUMBER(2,0),
    契約番号                       CHAR(9) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    検収日                         CHAR(8),
    リース期間                     NUMBER(3,0),
    充当回                         NUMBER(3,0),
    総支払回数                     NUMBER(3,0),
    第１回入金日                   CHAR(8),
    入金日                         CHAR(4),
    当月リース料                   NUMBER(13,0),
    当月債権残高                   NUMBER(13,0),
    税率                           NUMBER(3,1),
    ジョモ商品コード               CHAR(4),
    物件名                         VARCHAR2(30),
    設置場所名                     VARCHAR2(20)
)
/
