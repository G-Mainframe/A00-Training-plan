CREATE TABLE JOM_FORM_0009_T
(
    JOBCOD                         NUMBER(2,0),
    契約番号                       CHAR(9),
    契約日                         CHAR(8) NOT NULL,
    第１回入金日                   CHAR(8),
    入金日                         CHAR(4) NOT NULL,
    税率                           NUMBER(3,1) NOT NULL,
    ジョモ商品コード               CHAR(4) NOT NULL,
    物件名                         VARCHAR2(30) NOT NULL,
    リース料１                     NUMBER(13,0) NOT NULL,
    リース料２                     NUMBER(13,0) NOT NULL,
    リース料３                     NUMBER(13,0) NOT NULL,
    リース料４                     NUMBER(13,0) NOT NULL,
    リース料５                     NUMBER(13,0) NOT NULL,
    リース料６                     NUMBER(13,0) NOT NULL,
    リース料７                     NUMBER(13,0) NOT NULL,
    リース料８                     NUMBER(13,0) NOT NULL,
    リース料９                     NUMBER(13,0) NOT NULL,
    リース料１０                   NUMBER(13,0) NOT NULL,
    リース料１１                   NUMBER(13,0) NOT NULL,
    リース料１２                   NUMBER(13,0) NOT NULL,
    リース料１３                   NUMBER(13,0) NOT NULL,
    リース料１４                   NUMBER(13,0) NOT NULL,
    リース料合計                   NUMBER(13,0) NOT NULL,
    消費税１                       NUMBER(13,0),
    消費税２                       NUMBER(13,0),
    消費税３                       NUMBER(13,0),
    消費税４                       NUMBER(13,0),
    消費税５                       NUMBER(13,0),
    消費税６                       NUMBER(13,0),
    消費税７                       NUMBER(13,0),
    消費税８                       NUMBER(13,0),
    消費税９                       NUMBER(13,0),
    消費税１０                     NUMBER(13,0),
    消費税１１                     NUMBER(13,0),
    消費税１２                     NUMBER(13,0),
    消費税１３                     NUMBER(13,0),
    消費税１４                     NUMBER(13,0),
    消費税合計                     NUMBER(13,0)
)
/
CREATE UNIQUE INDEX JOM_FORM_0009_T
ON JOM_FORM_0009_T
(税率, ジョモ商品コード)
/
