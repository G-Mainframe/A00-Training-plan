CREATE TABLE MAN_JUSIN_CHK
(
    データ区分                     CHAR(1) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    再リースコード                 CHAR(1) NOT NULL,
    再リース周回コード             CHAR(1) NOT NULL,
    リース開始日                   CHAR(8) NOT NULL,
    リース終了日                   CHAR(8) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    資産コード                     CHAR(7) NOT NULL,
    残価額                         NUMBER(13,0) NOT NULL,
    物件名_漢字                    VARCHAR2(40) NOT NULL,
    物件名_カナ                    VARCHAR2(20) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    個別リース料                   NUMBER(13,0) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    受信購入金額                   NUMBER(13,0) NOT NULL,
    資産処分コード                 CHAR(1) NOT NULL,
    展開削除区分                   CHAR(1) NOT NULL,
    保守削除区分                   CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    CONSTRAINT P_MAN_JUSIN_CHK PRIMARY KEY (データ区分, 契約番号, 物件ＮＯ) USING INDEX
)
/
