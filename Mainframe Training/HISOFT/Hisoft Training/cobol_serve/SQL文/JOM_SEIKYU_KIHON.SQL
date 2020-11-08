CREATE TABLE JOM_SEIKYU_KIHON
(
    契約番号                       CHAR(9) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    再リースコード                 CHAR(1) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    検収日                         CHAR(8) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    入金日                         CHAR(2) NOT NULL,
    当月リース料                   NUMBER(13,0) NOT NULL,
    当月債権残高                   NUMBER(13,0) NOT NULL,
    当月前受リース料残高           NUMBER(13,0) NOT NULL,
    日付                           CHAR(4) NOT NULL,
    充当回                         NUMBER(3,0) NOT NULL,
    総支払回数                     NUMBER(3,0) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    徴収区分                       CHAR(1) NOT NULL,
    税率                           NUMBER(3,1) NOT NULL,
    CONSTRAINT SYS_C0024447 PRIMARY KEY (契約番号) USING INDEX
)
/
