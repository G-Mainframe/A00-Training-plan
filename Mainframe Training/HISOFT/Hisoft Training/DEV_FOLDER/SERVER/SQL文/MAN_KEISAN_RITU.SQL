CREATE TABLE MAN_KEISAN_RITU
(
    請求先コード                   CHAR(8) NOT NULL,
    適用年月日                     CHAR(8) NOT NULL,
    再リースコード                 CHAR(2) NOT NULL,
    計算単位                       CHAR(1) NOT NULL,
    端数処理区分                   CHAR(1) NOT NULL,
    分子                           NUMBER(3,0) NOT NULL,
    分母                           NUMBER(4,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_KEISAN_RITU PRIMARY KEY (請求先コード, 適用年月日, 再リースコード) USING INDEX
)
/
