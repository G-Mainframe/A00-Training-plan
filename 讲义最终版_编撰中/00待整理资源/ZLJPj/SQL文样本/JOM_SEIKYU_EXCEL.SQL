CREATE TABLE JOM_SEIKYU_EXCEL
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    支店                           CHAR(2) NOT NULL,
    ジョモ契約番号                 CHAR(6) NOT NULL,
    ジョモ商品コード               CHAR(4) NOT NULL,
    再リースコード                 CHAR(1) NOT NULL,
    検収日                         CHAR(8) NOT NULL,
    購入金額合計                   NUMBER(13,0) NOT NULL,
    期間                           NUMBER(3,0) NOT NULL,
    物件名                         VARCHAR2(30) NOT NULL,
    設置場所名                     VARCHAR2(20) NOT NULL,
    個別リース料                   NUMBER(13,0) NOT NULL,
    CONSTRAINT SYS_C0024428 PRIMARY KEY (契約番号, 物件ＮＯ) USING INDEX
)
/
