CREATE TABLE MST_JIGYO
(
    事業所コード                   CHAR(4) NOT NULL,
    事業所名_１                    VARCHAR2(20) NOT NULL,
    事業所名_２                    VARCHAR2(20) NOT NULL,
    事業所名略称_１                VARCHAR2(10) NOT NULL,
    事業所名略称_２                VARCHAR2(12) NOT NULL,
    事業所住所                     VARCHAR2(90) NOT NULL,
    事業所電話番号                 CHAR(15) NOT NULL,
    事業所ＦＡＸ番号               CHAR(15) NOT NULL,
    支払先コード上一桁エリア       CHAR(1) NOT NULL,
    適用日                         CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    ワーク                         CHAR(1) NOT NULL,
    CONSTRAINT P_MST_JIGYO PRIMARY KEY (事業所コード) USING INDEX
)
/
